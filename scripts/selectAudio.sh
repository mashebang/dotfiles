#!/bin/bash
OUTPUTS=$(pacmd list-sinks | grep name: | awk '{ print $2 }' | sed -e 's/[<|>]//g')
CURRENT_OUTPUT=$(pacmd stat | grep 'Default sink name' | awk '{print $4}')
KEY=0
INDEX=0
echo "SELECT AUDIO DEVICE"

for OUTPUT in $OUTPUTS
do
    echo '['$INDEX']: -> '$OUTPUT
    ((INDEX=INDEX+1))
done

read -n 1 KEY <&1
echo

INDEX=0

for OUTPUT in $OUTPUTS
do
    if [[ $INDEX == $KEY ]]; then
        echo 'new audio sink set: ' $OUTPUT
        pacmd set-default-sink $OUTPUT
    fi
    ((INDEX=INDEX+1))
done


exit 0
