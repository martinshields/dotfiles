# Martin Waybar Backup

Backup of working waybar configuration for easy reload.

## Files

- `config.jsonc` — bar layout and modules
- `style.css` — styling
- `cava.sh` — audio visualizer script for the cava module
- `rose-pine.css` — Rose Pine theme CSS

## Reload

To restore this config as the active waybar config:

```bash
\cp ~/.config/martin_waybar/config.jsonc ~/.config/waybar/config.jsonc
\cp ~/.config/martin_waybar/style.css ~/.config/waybar/style.css
omarchy-restart-waybar
```

> Note: Use `\cp` (with backslash) to bypass the `cp -i` alias that prompts for confirmation.

## Update Backup

To update this backup with your current waybar config:

```bash
\cp ~/.config/waybar/config.jsonc ~/.config/martin_waybar/config.jsonc
\cp ~/.config/waybar/style.css ~/.config/martin_waybar/style.css
yadm add ~/.config/martin_waybar/config.jsonc ~/.config/martin_waybar/style.css
yadm commit -m "Update martin_waybar backup"
```
