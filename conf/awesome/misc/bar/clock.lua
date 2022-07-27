local awful = require "awful"
local gears = require "gears"
local wibox = require "wibox"
local beautiful = require "beautiful"

-- Clock
local clock = wibox.widget.textbox()
clock.font = "Roboto Medium 14"

gears.timer {
	timeout = 60,
	autostart = true,
	call_now = true,
	callback = function()
		clock.markup = os.date("%H:%M")
	end
}

return clock