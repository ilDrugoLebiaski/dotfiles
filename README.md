# dotfiles

Personal configuration files managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

```
.
├── btop
│   └── .config
│       └── btop
│           ├── btop.conf
│           └── themes
├── fuzzel
│   └── .config
│       └── fuzzel
│           ├── fuzzel.ini
│           └── themes
├── gtk
│   └── .config
│       ├── gtk-3.0
│       │   ├── bookmarks
│       │   ├── gtk.css
│       │   ├── noctalia.css
│       │   └── settings.ini
│       └── gtk-4.0
│           ├── assets -> /usr/share/themes/adw-gtk3/gtk-4.0/assets
│           ├── gtk-dark.css -> /usr/share/themes/adw-gtk3/gtk-4.0/gtk-dark.css
│           ├── gtk.css
│           ├── noctalia.css
│           └── settings.ini
├── kitty
│   └── .config
│       └── kitty
│           ├── current-theme.conf
│           └── kitty.conf
├── niri
│   └── .config
│       └── niri
│           ├── cfg
│           ├── config.kdl
│           └── noctalia.kdl
├── noctalia
│   └── .config
│       └── noctalia
│           ├── colors.json
│           ├── colorschemes
│           ├── plugins
│           ├── plugins.json
│           ├── settings.json
│           └── user-templates.toml
├── nvim
│   └── .config
│       └── nvim
│           ├── init.lua
│           ├── lazy-lock.json
│           └── lua
│               ├── config
│               │   ├── keybinds.lua
│               │   ├── lazy.lua
│               │   ├── misc.lua
│               │   └── options.lua
│               ├── matugen-template.lua
│               ├── matugen.lua
│               └── plugins
│                   ├── autocompletion.lua
│                   ├── base-16.lua
│                   ├── colors.lua
│                   ├── conform.lua
│                   ├── dashboard.lua
│                   ├── gitsigns.lua
│                   ├── harpoon.lua
│                   ├── lsp.lua
│                   ├── lualine.lua
│                   ├── mini-nvim.lua
│                   ├── neo-tree.lua
│                   ├── telescope.lua
│                   ├── theme.lua
│                   ├── treesitter.lua
│                   ├── undo.lua
│                   ├── vim-tmux-navigator.lua
│                   └── which-key.lua
├── qt
│   └── .config
│       ├── qt5ct
│       │   └── colors
│       └── qt6ct
│           ├── colors
│           ├── qss
│           └── qt6ct.conf
├── tmux
│   ├── .tmux
│   │   └── plugins
│   │       ├── tmux-ukiyo
│   │       ├── tpm
│   │       └── vim-tmux-navigator
│   └── .tmux.conf
├── vim
│   ├── .vim
│   │   ├── autoload
│   │   │   └── plug.vim
│   │   ├── colors.vim
│   │   ├── fzf.vim
│   │   ├── keybinds.vim
│   │   ├── lightline.vim
│   │   ├── options.vim
│   │   ├── plugged
│   │   │   ├── fzf
│   │   │   ├── fzf.vim
│   │   │   ├── lightline.vim
│   │   │   ├── lsp
│   │   │   ├── nvim-colorizer.lua
│   │   │   └── vim-polyglot
│   │   ├── plugins.vim
│   │   └── vimrc
│   └── .vimrc
├── xsettings
│   └── .config
│       └── xsettingsd
│           └── xsettingsd.conf
├── yazi
│   └── .config
│       └── yazi
│           ├── flavors
│           ├── theme.toml
│           └── yazi.toml
└── zsh
    └── .zshrc
```

## Packages

| Package | Description |
|---------|-------------|
| `btop` | Resource monitor |
| `fuzzel` | Wayland application launcher |
| `gtk` | GTK theme and settings |
| `kitty` | GPU-accelerated terminal emulator |
| `niri` | Scrollable-tiling Wayland compositor |
| `noctalia` | [Noctalia](https://docs.noctalia.dev/v4/) — minimal Wayland desktop shell built with Quickshell |
| `nvim` | Neovim — main editor |
| `qt` | Qt theme and settings |
| `tmux` | Terminal multiplexer |
| `vim` | Vim — fallback editor |
| `xsettings` | X11 settings daemon config |
| `yazi` | Terminal file manager |
| `zsh` | Shell configuration and plugins |

## Requirements

- [GNU Stow](https://www.gnu.org/software/stow/) (`sudo pacman -S stow` / `sudo apt install stow`)

## Installation

Clone the repo into your home directory:

```bash
git clone https://github.com/<user>/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

### Apply all packages

```bash
stow */
```

### Apply a single package

```bash
stow nvim
```

### Apply multiple packages

```bash
stow zsh tmux nvim kitty
```

### Remove a package

```bash
stow -D nvim
```

### Dry run (simulate without applying)

```bash
stow -n -v nvim
```

## Notes

- Stow creates symlinks from each package folder into `$HOME`, mirroring the directory structure.  
  Example: `~/.dotfiles/nvim/.config/nvim/init.lua` → `~/.config/nvim/init.lua`
- If a file already exists at the target path, remove or back it up before running `stow`.
- To adopt an existing file into the repo: `stow --adopt nvim` (moves the file into the repo and creates the symlink).
