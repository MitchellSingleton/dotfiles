MitchellSingleton's dotfiles
=====================

Copied from [sheharyarn's](https://github.com/sheharyarn/dotfiles) dotfiles

Inspired by [Ryan Bates'](https://github.com/ryanb/dotfiles) and [Zach Holman's](https://github.com/holman/dotfiles) Dotfiles. For more information check out [Github Does Dotfiles](http://dotfiles.github.io/) and [Dotfiles are meant to be Forked](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

![Screenshot](http://i.imgur.com/b6v3e8g.png)

### To Install:

#### With a prep script:

Following commands will clone files from this repository and install several things automatically:

```bash
$ cd ~
$ bash <(curl -s https://raw.githubusercontent.com/MitchellSingleton/dotfiles/main/bin/prep.sh)
```
#### Using Git clone
```bash
git clone https://github.com/MitchellSingleton/dotfiles ~/.dotfiles
```

### To Configure bash

```bash
echo "# Use dotfile
if [ -f ~/.dotfiles/Bash/bash_profile ]; then
    . ~/.dotfiles/Bash/bash_profile
fi" >> ~/.bashrc
```

### To Configure zsh

```bash
#Create file links
# zshrc file link
mv ~/.zshrc ~/old.zshrc.old
ln -fs ~/.dotfiles/ZSH/zshrc ~/.zshrc
```

### To Configure mac app iterm

```bash
#iTerm2 install (macos specific)
# Specify the preferences directory (macos specific)
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.dotfiles/iterm2_profile"

# Tell iTerm2 to use the custom preferences in the directory (macos specific)
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
```

### To Configure all

```bash
# vim .vimrc install
mv ~/.vimrc ~/old.vimrc.old
ln -fs ~/.dotfiles/vimrc ~/.vimrc

# root / sudo
sudo mv /root/.vimrc /root/old.vimrc.old
sudo ln -fs ~/.dotfiles/vimrc /root/.vimrc

# vim PaperColor theme install
mkdir -p ~/.vim/colors
ln -fs ~/.dotfiles/PaperColor.vim ~/.vim/colors/PaperColor.vim

# vim PaperColor theme install
sudo mkdir -p /root/.vim/colors
sudo ln -fs ~/.dotfiles/PaperColor.vim /root/.vim/colors/PaperColor.vim
```

### To Update from git (overwriting any local changes):

```bash
cd ~/.dotfiles
git fetch && git reset --hard origin
```

### To Update to git (pushing local changes up to git):
```
# add files to the local git repo
git add filename
# commit changes that have been made to the local repo
git commit
# push committed changes to the remote repo
git push
```

### To Uninstall:

```bash
# Remove reference to the .bash_profile
grep -v "~/.dotfiles/Bash/bash_profile" ~/.bash_profile > bashtemp
mv bashtemp ~/.bash_profile

# Delete the dotfiles
rm -rf ~/.dotfiles

# check for a file link and then delete the file link
if [[ -L ~/.zshrc ]]; then
   # zshrc file link
   rm -f ~/.zshrc
   if [[ -f ~/old.zshrc.old ]]; then
      mv ~/old.zshrc.old ~/.zshrc 
   fi
if
if [[ -L ~/.vimrc ]]; then
   rm -f ~/.vimrc
fi
if [[ -L ~/.vim/colors/PaperColor.vim ]]; then
   ln -fs ~/.dotfiles/PaperColor.vim ~/.vim/colors/PaperColor.vim
fi
```
