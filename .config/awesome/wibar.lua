local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")
local battery_widget = require("awesome-wm-widgets.battery-widget.battery")
local logout_popup = require("awesome-wm-widgets.logout-popup-widget.logout-popup")
require("taglist")
require("tasklist")
require("textclock")

awful.screen.connect_for_each_screen(function(s)

    s.mywibox = awful.wibar({ position = "top", screen = s,
        border_width = 16,
        border_color = "#00000000",
            shape = function(cr,w,h)
            gears.shape.rounded_rect(cr,w,h,24)
        end,})

    -- Add widgets to the wibox
    s.mywibox:setup {
	layout = wibox.layout.align.horizontal,
	expand = "none",
        { -- Left widgets
            layout = wibox.layout.align.horizontal,
            s.mytaglist,
	    s.mytasklist,
        },
	mytextclock,
        { -- Right widgets
            layout = wibox.layout.align.horizontal,
            battery_widget(),
	    wibox.widget.systray(),
	    logout_popup.widget{},
        },
    }
end)

