# Personal Linux Config Files

These dotfiles are very minimalistic.  
I realized that the minimal approach is the BEST way to avoid headaches.

## Prerequisite

### System Requirements

- `git`
- GNU `stow`

### Neovim Requirements

- `neovim`
- `ripgrep`
- `fd`              (optional)
- `npm` & `cargo`   (optional)
- nerd fonts    (optional)

#### Install Pakcer

``` bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Install

### Link via `stow`

#### Git

``` bash
stow git
```

#### Tmux

``` bash
# If doesn't exist yet
mkdir -pv ~/.config

# Then
stow tmux
```
