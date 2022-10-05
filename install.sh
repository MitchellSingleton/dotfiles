#!/usr/bin/env bash
## .bash_profile
## #############
export dotfiles=$HOME/.dotfiles
export DOTFILES=$dotfiles


if [[ -n $BASH ]] ; then
  echo "This is a bash shell"
  echo "appending _bash_styles.sh on the end of ~/.bash_profiles"
  source $DOTFILES/Bash/_bash_styles.sh
  #source $DOTFILES/_bash_aliases.sh
  #source $DOTFILES/_bash_functions.sh
  #my_aliases=($DOTFILES/**/aliases.sh)
  #my_functions=($DOTFILES/**/functions.sh)

  #for f in ${my_aliases[@]};   do source $f; done
  #for f in ${my_functions[@]}; do source $f; done

elif [[ -n $ZSH_NAME ]] ; then
  echo "This is a zsh shell"
  # https://weimergeeks.com/wp/linux-bash/changing-the-prompt-in-zsh/
  #source $DOTFILES/ZSH/_zsh_styles.sh
  #typeset -U my_aliases
  #typeset -U my_functions
  #my_aliases=($DOTFILES/**/aliases.sh)
  #my_functions=($DOTFILES/**/functions.sh)
  #my_files=($my_aliases $my_functions)

  #for file in ${my_files}; do
  #  source $file
  #done
fi
