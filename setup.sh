#!/bin/sh

echo "Setting up your Mac..."

if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/in/brew shellenv)"
fi

# Install all dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file $HOME/.dotfiles/Brewfile

# Setup nvm directory
mkdir $HOME/.nvm

# Setup git lfs
git lfs install

# Setup powerlevel10k and zsh related stuff last because it requires you to reload the terminal
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> $HOME/.zshrc
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >> $HOME/.zshrc
p10k configure