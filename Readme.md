# Dotfiles

This repository bootstraps a system's dotfiles and provides a long term idempotent method for continued 
management.  The repository leverage several tools to automatically setup a new system.

* Homebrew
* DOTBOT

## Starting Fresh

```bash
git clone --recurse-submodules https://github.com/calvinbui/dotfiles.git
cd dotfiles/bootstrap
./bootstrap_new_mac.sh
````

### Freshen Dotfiles

````bash
cd ~/dotfiles
git pull origin master
git pull --recurse-submodules
./install
````

## Setup ITerm2

* Theme: solarized 2
* Font: inconsola-nerd

## A Note about the License & Copyright

Unless attributed otherwise, everything is under the MIT license (see LICENSE for more info).

## Acknowledgements

* [Dotbot](https://github.com/anishathalye/dotbot) for installation.
* [Dotbot wiki](https://github.com/anishathalye/dotbot/wiki) for support.
* [managing-dotfiles-post](http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/) for overview.
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) for zsh foundation.
* [Vundle](https://github.com/VundleVim/Vundle.vim) for vim.
