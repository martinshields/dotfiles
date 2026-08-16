-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- ============================================================
-- Personal bindings, migrated from the old (no longer sourced) bindings.conf
-- ============================================================
-- Dropped instead of duplicated, because Omarchy's defaults already do this:
--   SUPER+RETURN (Terminal), SUPER+ALT+RETURN (Tmux), SUPER+SHIFT+F (nautilus)
-- Also dropped the old duplicate/broken "SUPER SHIFT+F -> $fileManager" bind
-- ($fileManager was never defined in bindings.conf).

o.bind("SUPER + SHIFT + Q", "Close window", hl.dsp.window.close())

o.bind("SUPER + B", "Browser", { launch = "brave --new-tab --ozone-platform=wayland" })
o.bind("SUPER + N", "Neovim", { tui = "nvim" })
o.bind("SUPER + D", "Vifm", { tui = "vifm" })

-- old command "omarchy-launch-walker -m clipboard" no longer exists;
-- this is the current equivalent (also on SUPER+CTRL+V by default)
o.bind("ALT + Q", "Clipboard", "omarchy-shell shell toggle omarchy.clipboard")

o.bind("SUPER + M", "Video picker", "~/bin/wofi-file-picker.sh")
o.bind("SUPER + I", "Open config", "~/bin/openconfig.sh")

o.bind("SUPER + A", "ChatGPT", { launch = "brave --new-tab --ozone-platform=wayland https://chatgpt.com" })
o.bind("SUPER + E", "Gmail", { launch = "brave --new-tab --ozone-platform=wayland https://mail.google.com" })
o.bind("SUPER + Y", "YouTube", { launch = "brave --new-tab --ozone-platform=wayland https://youtube.com" })

-- Unbind Omarchy defaults before repurposing these keys, same as bindings.conf did
-- SUPER+SHIFT+A was: ChatGPT (Omarchy still has Grok on SUPER+SHIFT+ALT+A by default)
hl.unbind("SUPER + SHIFT + A")
o.bind("SUPER + SHIFT + A", "Grok", { launch = "brave --new-tab --ozone-platform=wayland https://grok.com" })

-- SUPER+SHIFT+Y was: YouTube
hl.unbind("SUPER + SHIFT + Y")
o.bind("SUPER + SHIFT + Y", "Local WebUI", { launch = "brave --new-tab --ozone-platform=wayland http://localhost:8112/" })

-- SUPER+W was: Close window
-- impala isn't used in Omarchy 4; network is now the Quickshell panel
-- (also on SUPER+CTRL+W by default)
hl.unbind("SUPER + W")
o.bind("SUPER + W", "Network", "omarchy-shell shell toggle omarchy.network")
