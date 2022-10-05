# STYLING & COLORS
# ################


## LSCOLORS
#> http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#> http://apple.stackexchange.com/questions/100297/changing-terminal-color

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
#export LSCOLORS=exBxhxDxfxhxhxhxhxcxcx


## Prompt Style/Colors
#> http://blog.taylormcgann.com/2012/06/13/customize-your-shell-command-prompt/
#> http://www.kirsle.net/wizards/ps1.html

export PS1_OLD=$PS1
#export PS1="\[\033[1;97m\]\u: \[\033[1;94m\]\w \[\033[1;97m\]\$\[\033[0m\] "
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '

if [[ -f ~/.dotfiles/vimrc ]]; then
    export MYVIMRC=~/.dotfiles/vimrc
fi

if [[ -z "$STY" ]]; then
#    read && screen -xRRq default
    screen -xRRq default -c ~/.dotfiles/screenrc
fi

# Install the VIM color scheme
if [[ ! -f ~/.vim/colors/PaperColor.vim ]]; then
    mkdir -p ~/.vim/colors
    cp ~/.dotfiles/PaperColor.vim ~/.vim/colors/PaperColor.vim
fi
