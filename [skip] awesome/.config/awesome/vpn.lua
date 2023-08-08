local wibox = require("wibox")
local awful = require("awful")
local naughty = require("naughty")
local watch = require("awful.widget.watch")

vpn_widget = wibox.widget.textbox()
watch(
    "ip addr show tun0", 2,
    function(widget, stdout, stderr, exitreason, exitcode)
    if(stdout == '' or stdout==nil or stdout=='Device "tun0" does not exist.') then
	widget:set_markup("VPN: <span color='#FF0000'>OFF</span>")    
    else
	widget:set_markup("VPN: <span color='#00FF00'>ON</span>")    
    end
end,
vpn_widget
)
