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

Also, options `-v` can be added to enable verbose.

If you're not sure, you can add `-n` option to simulate the process (nothing
happens and output the simulated result).

#### Git

``` bash
stow -t ~ git
```

#### Tmux

``` bash
# If doesn't exist yet
mkdir -pv ~/.config

# Then
stow -t ~ tmux
```

#### nvim

``` bash
stow -t ~ nvim
```

#### emacs

``` bash
stow -t ~ emacs
```
