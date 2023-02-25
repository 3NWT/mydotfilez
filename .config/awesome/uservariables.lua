local menubar = require("menubar")
local beautiful = require("beautiful")
local gears = require("gears")


beautiful.init(gears.filesystem.get_configuration_dir() .. "theme.lua")
terminal = "st"
editor = os.getenv("EDITOR") or "nvim"
editor_cmd = terminal .. " -e " .. editor
modkey = "Mod4"
menubar.utils.terminal = terminal
