#!/bin/bash
OUTPUTS=$(pacmd list-sinks | grep name: | awk '{ print $2 }' | sed -e 's/[<|>]//g')
CURRENT_OUTPUT=$(pacmd stat | grep 'Default sink name' | awk '{print $4}')

for OUTPUT in $OUTPUTS
do
    if [[ $OUTPUT != $CURRENT_OUTPUT ]]; then
        pacmd set-default-sink $OUTPUT
    fi
done
exit 0
