# tell programs to use the default language
export LC_ALL=C

# set the node environment
export NODE_ENV=development

# add /usr/scripts to $PATH
export PATH=$PATH:/usr/scripts

# set the default text editor to vim
export EDITOR=vim

# input method
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im-ibus

# set tty colors
if [ $TERM = "linux" ]; then
    echo -en '\e]P0000000'
    echo -en '\e]P1FF0000'
    echo -en '\e]P200FF00'
    echo -en '\e]P3FFFF00'
    echo -en '\e]P40000FF'
    echo -en '\e]P5FF00FF'
    echo -en '\e]P600FFFF'
    echo -en '\e]P7FFFFFF'
    echo -en '\e]P8000000'
    echo -en '\e]P9FF0000'
    echo -en '\e]PA00FF00'
    echo -en '\e]PBFFFF00'
    echo -en '\e]PC0000FF'
    echo -en '\e]PDFF00FF'
    echo -en '\e]PE00FFFF'
    echo -en '\e]PFFFFFFF'
fi

# ssh into web server
alias sio-login='ssh -i ~/.ssh/focus.pem ubuntu@stonebraker.io'
alias aw-login='ssh -i ~/.ssh/focus.pem ubuntu@abolishwages.com'

# discord
alias discord='/usr/src/Discord/Discord'

# add useful variables
if [ -f ~/.config/bash/colors ]; then
    source ~/.config/bash/colors
fi
if [ -f ~/.config/bash/styles ]; then
    source ~/.config/bash/styles
fi
if [ -f ~/.config/bash/prompts ]; then
    source ~/.config/bash/prompts
fi
