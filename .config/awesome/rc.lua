-- Solarized Nokto by 3NWT
--          __             _                _  __       _____  __
-- _   _   / / ____      _| |_ __ _ ___  __| |/ _| __ _|___ / / /_
--| | | | / / '_ \ \ /\ / / __/ _` / __|/ _` | |_ / _` | |_ \| '_ \
--| |_| |/ /| | | \ V  V /| || (_| \__ \ (_| |  _| (_| |___) | (_) |
-- \__,_/_/ |_| |_|\_/\_/  \__\__,_|___/\__,_|_|  \__, |____/ \___/
--                                                |___/
pcall(require, "luarocks.loader")
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")
local wibox = require("wibox")
local beautiful = require("beautiful")
local naughty = require("naughty")
local menubar = require("menubar")
local hotkeys_popup = require("awful.hotkeys_popup")
require("awful.hotkeys_popup.keys")
require("errorhandling")
require("keybindings")
require("autostart")
require("uservariables")
require("layouts")
require("rules")
require("wibar")

-- Run garbage collector regularly to prevent memory leaks
gears.timer {
       timeout = 30,
       autostart = true,
       callback = function() collectgarbage() end
}
