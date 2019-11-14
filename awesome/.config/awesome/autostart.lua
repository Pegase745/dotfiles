-------------------------------------------------------
-- Defines all applications to be started on startup --
-------------------------------------------------------


-------------------------------------------------------
-- The function to start/run the applications        --
-------------------------------------------------------
local awful = require('awful')
local function run_once(prg,arg_string,pname,screen)
    if not prg then
        do return nil end
    end

    if not pname then
       pname = prg
    end

    if not arg_string then
        awful.util.spawn_with_shell("pgrep " .. pname .. " || (" .. prg .. ")",screen)
    else
        awful.util.spawn_with_shell("pgrep " .. pname .. " || (" .. prg .. " " .. arg_string .. ")",screen)
    end
end

-------------------------------------------------------
-- start the applications                            --
-- modify this to your preferences                   --
-------------------------------------------------------

-- most importantly load the Xresources file for all X configs
-- (Xterm, urvxt, etc)
run_once('xrdb', '-load ~/.Xresources')

-- update notifications
-- run_once('update-notifier')

-- sound: pulse & applet
-- run_once('start-pulseaudio-x11')
-- run_once('gnome-sound-applet')

-- network applet
run_once('nm-applet')
run_once('volumeicon')
run_once('cbatticon')
run_once('flameshot')
-- run_once('pa-applet')
-- run_once('blueman-applet')
-- run_once('$HOME/bin/autoxrandr')

-- printer applet
-- run_once('system-config-printer-applet')

-- os.execute("pgrep -u $USER -x cbatticon || (cbatticon &)")
-- os.execute("pgrep -u $USER -x volumeicon || (volumeicon &)")