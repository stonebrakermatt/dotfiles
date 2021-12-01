#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && source ~/.bashrc
eval $(ssh-agent -s)
eval $(keychain --eval --quiet ~/.ssh/github)
exec startx

