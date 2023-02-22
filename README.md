# Personal Linux Config Files

These dotfiles are very minimalistic.  
I realized that the minimal approach is the BEST way to avoid headaches.

## Directory Structure

``` shell
.
├── configs
│   ├── git
│   │   └── config
│   ├── tmux
│   │   └── tmux.conf
│   └── zsh
│       └── zshrc
├── configs.deprecated
│   ├── alacritty
│   │   └── alacritty.yml
│   ├── bash
│   │   └── bashrc
│   ├── bspwm
│   │   └── bspwmrc
│   ├── dmenu
│   │   └── config.def.h
│   ├── dunst
│   │   └── dunstrc
│   ├── dwm
│   │   ├── config.def.h
│   │   └── status.sh
│   ├── emacs
│   │   └── Emacs.org
│   ├── env
│   │   └── environment
│   ├── exwm
│   │   └── exwm.org
│   ├── kitty
│   │   └── kitty.conf
│   ├── nvim
│   │   ├── after
│   │   │   └── plugin
│   │   │       ├── fugitive.lua
│   │   │       ├── ib.lua
│   │   │       ├── lsp.lua
│   │   │       ├── telescope.lua
│   │   │       └── treesitter.lua
│   │   ├── init.lua
│   │   ├── lua
│   │   │   ├── j.lua
│   │   │   ├── plugins.lua
│   │   │   ├── remap.lua
│   │   │   └── set.lua
│   │   └── plugin
│   │       └── packer_compiled.lua
│   ├── picom
│   │   └── picom.conf
│   ├── polybar
│   │   ├── config.ini
│   │   └── launch.sh
│   ├── st
│   │   └── config.def.h
│   ├── sxhkd
│   │   └── sxhkdrc
│   ├── urxvt
│   │   └── Xresources
│   ├── xmobar
│   │   └── xmobarrc
│   ├── xmonad
│   │   └── xmonad.hs
│   └── xorg
│       ├── 40-libinput.conf
│       └── xinitrc
├── distro-specifics
│   ├── arch
│   │   └── reflector.conf
│   └── gentoo
│       └── tp
│           ├── etc
│           │   └── portage
│           │       ├── make.conf
│           │       └── package.use
│           │           └── package.use
│           ├── usr
│           │   └── src
│           │       └── linux
│           │           ├── config-5.11.0-vanilla
│           │           ├── config-5.11.1-vanilla
│           │           ├── config-5.11.2-vanilla
│           │           ├── config-5.11.5-vanilla
│           │           └── config-5.15.75-gentoo
│           └── var
│               └── lib
│                   └── portage
│                       └── world
└── README.md

41 directories, 45 files
```
