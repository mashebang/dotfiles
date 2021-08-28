test -s ~/.alias && . ~/.alias || true

branch_name() {
    NAME=$(git branch 2> /dev/null | grep "\*" | cut -b 3-)
    if [ "$NAME" == "" ]
    then
        NAME=$(hg branch 2> /dev/null)
    fi

    echo "$NAME"
}

git_branch_changes() {
    CHANGES=$(git status 2> /dev/null | wc -l)
    if [ "$CHANGES" -gt 4 ]
    then
        STR_CHANGES="*"
    else
        STR_CHANGES=""
    fi

    echo "$STR_CHANGES"
}

hg_branch_changes() {
    CHANGES=$(hg status 2> /dev/null | wc -l)
    if [ "$CHANGES" -gt 6 ]
    then
        STR_CHANGES="*"
    else
        STR_CHANGES=""
    fi

    echo "$STR_CHANGES"
}

export PS1="$(tput setab 99; tput setaf 224)\W\[$(tput sgr0)\] \360\237\220\231 $(tput setab 211; tput setaf 236)\$(branch_name)\$(git_branch_changes)\$(tput sgr0)\$(hg_branch_changes) \[\033[38;5;133m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
