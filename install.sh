#!/usr/bin/env bash

check_if_target_exists() {
    FULLPATH=$1
    FILE=$(basename $FULLPATH)
    DIR=$(dirname $FULLPATH)

    if [[ ! -e $FULLPATH ]]; then
        mkdir -p $DIR
        touch $DIR/$FILE
        echo "Create $FILE"
    else
        echo "$FILE already exists" 1>&2
    fi
    
}

compare() {
    FILE_A=$1
    FILE_B=$2

    check_if_target_exists $FILE_B
    meld $FILE_A $FILE_B
}

### compare SOURCE TARGET
compare .bashrc       $HOME/.bashrc
compare .bash_aliases $HOME/.bash_aliases
compare .vimrc        $HOME/.vimrc
compare .tmux.conf    $HOME/.config/tmux/.tmux.conf
