# Dotfiles

## Install

1. Clone the repo in `$HOME`
1. Change to the repo directory
1. Run [Stow](https://www.gnu.org/software/stow/manual/):
  ```
  stow .
  ```

## Additional Mac Steps

1. Copy SSH keys
1. Remap caps lock > control in settings
1. Update mouse settings (direction, speed, etc)
1. Clone home directory repo: temp and copy .git (needs fixing!)
1. Clone submodules (i.e. fonts)
1. Set font and colours in iterm2
1. Install vim plugins
1. https://gist.github.com/jaibeee/9a4ea6aa9d428bc77925 for multi-user Homebrew
1. Install Homebrew
1. brew bundle
1. Sign in to Chrome with Gmail ID
1. Turn off spelling auto-correction, “smart” quotes

## To Do

* Move fonts to brew (rather than submodule)

### MacOS

* Remap caps lock > control
* Tmux profile > use Solarized Dark
* Messages:
  ```
  ./.macos
  Password:
  Password:
  Set: Entry, ":FK_StandardViewSettings:IconViewSettings:showItemInfo", Does Not Exist
  Set: Entry, ":FK_StandardViewSettings:IconViewSettings:arrangeBy", Does Not Exist
  Set: Entry, ":FK_StandardViewSettings:IconViewSettings:gridSpacing", Does Not Exist
  Set: Entry, ":FK_StandardViewSettings:IconViewSettings:iconSize", Does Not Exist
  410:479: execution error: Terminal got an error: The file /Users/rowan/init/Solarized Dark xterm-256color.terminal does not exist. (1)
  Done. Note that some of these changes require a logout/restart to take effect.
  ```
