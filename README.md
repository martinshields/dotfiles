# dotfiles

Personal dotfiles for Arch Linux / Omarchy (Hyprland) managed with [yadm](https://yadm.io/).

## Install

Dotfiles are applied automatically by [opsys](https://github.com/martinshields/opsys) via `dotfiles-setup.sh`. To apply manually:

```bash
yadm clone git@github.com:martinshields/dotfiles.git
```

## Contents

### Shell — Zsh + Oh My Zsh

| File | Description |
|------|-------------|
| `.zshrc` | Main Zsh config — theme: `pygmalion`, plugins: git, sudo, z, zsh-autosuggestions, zsh-completions, fzf, mcfly |
| `aliasmartin.zsh` | Custom aliases and the `fullupdate()` function for full system updates |
| `functions.zsh` | `yp()` — dotfile sync/backup via yadm; `command_not_found_handler` — suggests the Arch package to install a missing command |

### Hyprland (`.config/hypr/`)

| File | Description |
|------|-------------|
| `hyprland.conf` | Sources Omarchy defaults, then applies overrides from the files below |
| `bindings.conf` | Custom keybindings |
| `monitors.conf` | Monitor layout |
| `autostart.conf` | Autostart applications |
| `looknfeel.conf` | Gaps, borders, animations |
| `hypridle.conf` | Idle timeout rules |
| `hyprlock.conf` | Lock screen config |

### Neovim (`.config/nvim/`)

Lazy.nvim setup. Core config in `lua/core/` (options, keymaps, autocommands). Plugins include:

LSP, Treesitter, nvim-cmp, Harpoon, bufferline, lualine, nvim-tree, Oil, DAP/DAP-UI, flash, yanky, snacks, and more.

### Kitty Terminal (`.config/kitty/`)

Catppuccin Mocha theme with CodeNewRoman Nerd Font.

### Waybar (`.config/waybar/`)

Waybar config with Cava audio visualizer integration and Rose Pine theme. `martin_waybar/` contains an alternative layout.

### Other configs

| Path | Description |
|------|-------------|
| `.config/wofi/style.css` | Wofi launcher styles |
| `.config/vifm/vifmrc` | Vifm file manager config |
| `.config/mpv/input.conf` | MPV media player keybinds |

### bin/ scripts

| Script | Description |
|--------|-------------|
| `pkg-install` | fzf + yay interactive package installer with preview |
| `pkg-remove` | fzf + yay interactive package remover with preview |
| `autoscript` | Creates a new executable bash script in `~/bin` and opens it in nvim |
| `isitup` | Polls a host with ping until it's reachable, then sends a desktop notification |
| `wofi-file-picker.sh` | Wofi menu to pick and open video files from `~/adata/` |
| `openconfig.sh` | Quick-open config files |
| `wifia` | Launch nmtui for Wi-Fi management |

### Docker

`Documents/buDocker/compose.yaml` — Deluge torrent client via Docker (linuxserver image, web UI on port 8112, downloads to `~/adata/temp/downloads`).

### Fonts

Code New Roman Nerd Font (regular, bold, italic — mono and standard variants).

### Wallpapers

Located in `Pictures/wallpapers/`: `basement.jpg`, `clouds-2.png`, `signal.jpg`, `smallcity.jpg`.

## Syncing

Run `yp` in the shell to sync dotfiles back to the repo:

- Copies `aliasmartin.zsh` and `functions.zsh` from oh-my-zsh custom to `~/`
- Backs up `~/.config/nvim` to `~/nvimbu`
- Generates `pkglist.txt` and `pkglistAUR.txt`
- Commits and pushes via yadm
