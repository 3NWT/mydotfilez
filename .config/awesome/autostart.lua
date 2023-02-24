local awful = require("awful")

-- Add apps to autostart here
local autostart_apps = {
    "setxkbmap tr",
    "xclip",
    "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1",
    "picom",
    "nm-applet",
    "xrandr --output eDP1 --set scaling\\ mode Full"
}

for app = 1, #autostart_apps do awful.spawn(autostart_apps[app], false) end
