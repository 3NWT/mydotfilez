local menubar = require("menubar")

terminal = "st"
editor = os.getenv("EDITOR") or "nvim"
editor_cmd = terminal .. " -e " .. editor
modkey = "Mod4"
menubar.utils.terminal = terminal
