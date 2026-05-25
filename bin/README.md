# bin/

Personal scripts available on `$PATH` via `~/bin`.

## Scripts

### pkg-install

Interactive package installer using fzf + yay.

```bash
pkg-install
```

Opens a fuzzy finder over all available packages (AUR + official repos) with an info preview. Installs the selected package(s) with yay and runs `updatedb`.

---

### pkg-remove

Interactive package remover using fzf + yay.

```bash
pkg-remove
```

Opens a fuzzy finder over installed packages with an info preview. Removes selected package(s) with `yay -Rns` and runs `updatedb`.

---

### autoscript

Creates a new executable bash script in `~/bin` and opens it in nvim.

```bash
autoscript <scriptname>
```

If the file already exists it opens it directly instead.

---

### isitup

Polls a host until it responds to ping, then fires a desktop notification.

```bash
isitup
```

Prompts for a hostname or IP, then pings every 2 seconds until it's reachable.

---

### openconfig.sh

Wofi menu to quickly open common config files in Neovim (inside a Kitty window).

```bash
openconfig.sh
```

Preconfigured list includes: `aliasmartin.zsh`, `functions.zsh`, `.zshrc`, `.bashrc`, waybar config, kitty config, and the bin scripts themselves.

---

### wifia

Rescans Wi-Fi networks and opens `nmtui` in an Alacritty terminal.

```bash
wifia
```

---

### wofi-file-picker.sh

Wofi menu to browse and open video files from `~/adata/`.

```bash
wofi-file-picker.sh
```

Finds all `.mkv`, `.mp4`, and `.avi` files under `~/adata/` and opens the selected file with `xdg-open`.
