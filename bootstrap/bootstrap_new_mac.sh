#!/usr/bin/env bash
#
# Run this on a stock Mac to bootstrap it with Nate's dotfiles and customizations
#

PROJECTS="~/Projects"
DOTFILES="~/.dotfiles"

# Ask for the administrator password upfront
echo "Asking for your sudo password upfront..."
sudo -v

# Keep-alive: update existing `sudo` time stamp until this has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install homebrew and git (xcode tools)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# Create our code directory
[[ -d "$PROJECTS" ]] || mkdir "$PROJECTS"

# Install HomeBrew apps
brew bundle --file=~"$DOTFILES"/boostrap/Brewfile
brew cask cleanup

# Pin Ruby versions so I don't lose all my gems on upgrade.
brew pin ruby
brew pin ruby-build
brew pin rbenv

# Get Homesick for dotfiles
cd ~/."$DOTFILES"} && ./install

# Run MACOS config script
echo "Configuring a bunch of MACOS things"
sh ~/"$DOTFILES"/boostrap/macos.sh

echo
echo "Finished!"
echo
read -r -p "Also, you should reboot. Do that now? [Y/n]: " answer
if [[ $answer =~ ^[Yy]$ ]]; then
  sudo reboot
fi
