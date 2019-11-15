# dotfiles

## Usage

The files in this repository must be symlinked to their respective paths in the
$HOME folder. We can do this manually or using [GNU Stow](https://www.gnu.org/software/stow/).
Since GNU Stow can automatically manage symlinked files, it is the recommended
tool for setting up the dotfiles.

Clone this repository in your **$HOME** folder:

```sh
git clone git@github.com:Pegase745/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow -n git		# To simulate changes
./install 		# To write changes
```
