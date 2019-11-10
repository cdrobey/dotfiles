Dotfiles
========
This repository bootstraps a system's dotfiles and provides a long term idempotent method for continued 
management.  The repository leverage several tools to automatically setup a new system.

* Homebrew 
* DOTBOT

### Starting Fresh?

```bash
git clone https://github.com/cdrobey/dotfiles
cd ~/.dotfiles # replace with the path to your dotfiles
./install
cd bootstrap
./bootstrap_new_mac.sh
````

### Freshen Dotfiles?

````bash
git clone https://github.com/cdrobey/dotfiles
cd ~/.dotfiles # replace with the path to your dotfiles
./install
````

# Setup iterm2  profile
theme solarized 2
font inconsola-nerd


[PyPI]: https://pypi.org/project/dotbot/
[init-dotfiles]: https://github.com/Vaelatern/init-dotfiles
[dotfiles-template]: https://github.com/anishathalye/dotfiles_template
[inspiration]: https://github.com/anishathalye/dotbot/wiki/Users
[managing-dotfiles-post]: http://www.anishathalye.com/2014/08/03/managing-your-dotfiles/
[json-equivalent]: https://gist.github.com/anishathalye/84bd6ba1dbe936e05141e07ec45f5fd4
[json2yaml]: https://www.json2yaml.com/
[wiki]: https://github.com/anishathalye/dotbot/wiki
[contributing]: CONTRIBUTING.md
[license]: LICENSE.md
