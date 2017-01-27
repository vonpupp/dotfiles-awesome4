-- {{{ apps
altkey = "Mod1"

home_dir        = os.getenv("HOME") .. "/"
bin_dir         = home_dir .. "bin/"
conf_dir        = rc_path()
scripts_dir     = bin_dir .. "awesomewm-scripts/"
themes_dir      = conf_dir .. "themes/"
language        = string.gsub(os.getenv("LANG"), ".utf8", "")

--active_theme    = themes_dir .. "greenish/"
--beautiful.init(active_theme .. "theme.lua")

terminal        = os.getenv("TERMINAL") or "urxvt"

editor          = os.getenv("EDITOR") or "vim"
editor_cmd      = terminal .. " -e " .. editor

xeditor_bin     = os.getenv("XEDITOR_BIN") or "gvim"
xeditor_cmd     = xeditor_bin

browser_bin         = os.getenv("BROWSER_BIN") or "firefox" -- or "dwb"
file_manager_bin    = os.getenv("FILEMANAGER_BIN") or "spacefm"

pw_mgr_bin      = os.getenv("PW_MGR_BIN") or "keepassx"

video_mgr_bin   = os.getenv("VIDEO_MGR_BIN") or "arandr"
video_mgr_cmd   = video_mgr_bin

wifi_mgr_bin    = os.getenv("X_WIFI_MGR_BIN") or "nmtui"
wifi_mgr_cmd    = terminal .. " -e " .. wifi_mgr_bin

mail_bin        = os.getenv("X_MAIL_ENV_SCRIPT") or ""
mail_cmd        = terminal .. " -e " .. mail_bin

--music_cmd       = terminal .. " -g 130x34-320+16 -e ncmpcpp "
music_cmd       = terminal .. " -e " .. "ncmpcpp"
chat_cmd        = terminal .. " -e weechat-curses"
mixer_cmd       = terminal .. " -e alsamixer"
processes_cmd   = terminal .. " -e htop"
wallpaper_change_cmd    = "feh --bg-scale -z ~/Pictures/wallpapers"
-- }}}

globalkeys = awful.util.table.join(globalkeys,
    -- {{{ Keys for apps
    awful.key({ modkey, "Shift"   }, "b",  function () awful.spawn(browser_bin) end,
              {description="Browser", group="MY: apps"}),
    awful.key({ modkey, "Shift"   }, "e",  function () awful.spawn(xeditor_cmd) end,
              {description="Gvim", group="MY: apps"}),
    awful.key({ modkey, "Shift"   }, "v",  function () awful.spawn(editor_cmd) end,
              {description="Vim", group="MY: apps"}),
    awful.key({ modkey, "Shift"   }, "f",  function () awful.spawn(file_manager_bin) end,
              {description="File manager", group="MY: apps"}),

    awful.key({ modkey, "Shift"   }, "p",  function () awful.spawn(pw_cmd) end,
              {description="pass", group="MY: apps"}),
    awful.key({ modkey, "Shift"   }, "m",  function () awful.spawn(mail_cmd) end,
              {description="mutt", group="MY: apps"}),
--    awful.key({ modkey, "Shift"   }, "e",  function () awful.spawn(chat_cmd) end,
--              {description="weechat", group="MY: apps"}),
    awful.key({ modkey, "Shift"   }, "t",  function () awful.spawn(processes_cmd) end,
              {description="htop", group="MY: apps"}),

    awful.key({ modkey, "Shift"   }, "w",  function () awful.spawn(wifi_mgr_cmd) end,
              {description="Wifi (nmtui)", group="MY: apps"}),
    awful.key({ modkey, "Shift"   }, "a",  function () awful.spawn(mixer_cmd) end,
              {description="weechat", group="MY: apps"}),
    -- }}}

    -- {{{ Keys for XF86 and multimedia
    awful.key({ }, "XF86MonBrightnessDown",  function () awful.spawn(scripts_dir .. "brightness-dec.sh") end,
              {description="Dec brightness", group="MY: apps"}),
    awful.key({ }, "XF86MonBrightnessUp",  function () awful.spawn(scripts_dir .. "brightness-inc.sh") end,
              {description="Inc brightness", group="MY: apps"}),
    awful.key({ modkey, "Shift"  }, "F8",  function () awful.spawn(scripts_dir .. "brightness-dec.sh") end,
              {description="Dec brightness", group="MY: apps"}),
    awful.key({ modkey, "Shift"  }, "F9",  function () awful.spawn(scripts_dir .. "brightness-inc.sh") end,
              {description="Inc brightness", group="MY: apps"}),

    awful.key({ }, "XF86AudioRaiseVolume",  function () awful.spawn(scripts_dir .. "alsa-master-inc.sh") end,
              {description="Inc volume", group="MY: apps"}),
    awful.key({ }, "XF86AudioLowerVolume",  function () awful.spawn(scripts_dir .. "alsa-master-dec.sh") end,
              {description="Dec volume", group="MY: apps"}),
    awful.key({ }, "XF86AudioMute",  function () awful.spawn(scripts_dir .. "alsa-master-mute-toggle.sh") end,
              {description="Toggle mute output", group="MY: apps"}),
    awful.key({ }, "XF86AudioMicMute",  function () awful.spawn(scripts_dir .. "alsa-capture-mute-toggle.sh") end,
              {description="Toggle mute mic", group="MY: apps"}),
    awful.key({ }, "XF86AudioPlay",  function () awful.spawn("mpc toggle") end,
              {description="MPD toggle", group="MY: apps"}),
    awful.key({ }, "XF86AudioPrev",  function () awful.spawn("mpc prev") end,
              {description="MPD prev", group="MY: apps"}),
    awful.key({ }, "XF86AudioNext",  function () awful.spawn("mpc next") end,
              {description="MPD prev", group="MY: apps"}),
    awful.key({ modkey }, "F11",  function () awful.spawn("mpc toggle") end,
              {description="MPD toggle", group="MY: apps"}),
    awful.key({ modkey }, "F10",  function () awful.spawn("mpc prev") end,
              {description="MPD prev", group="MY: apps"}),
    awful.key({ modkey }, "F12",  function () awful.spawn("mpc next") end,
              {description="MPD prev", group="MY: apps"}),
    -- }}}

    -- {{{ Keys for screen
    awful.key({ altkey, "Shift"   }, "s",  redshift.toggle,
              {description="Redshift toggle", group="MY: apps"}),

    awful.key({ }, "Print",  function () awful.spawn(scripts_dir .. "print-screen.sh") end,
              {description="Print screen", group="MY: apps"}),
    awful.key({ altkey, "Shift"   }, "w",  function () awful.spawn(wallpaper_change_cmd) end,
              {description="Wallpaper change", group="MY: apps"}),

    awful.key({ }, "XF86Display",  function () awful.spawn(video_mgr_cmd) end,
              {description="arandr", group="MY: apps"}),
    awful.key({ modkey, "Shift"   }, "F7",  function () awful.spawn(video_mgr_cmd) end,
              {description="arandr", group="MY: apps"}),

    awful.key({ modkey, "Shift"   }, "l",  function () awful.spawn(scripts_dir .. "start-locker.sh") end,
              {description="Lock screen", group="MY: apps"}),
    awful.key({ modkey, "Shift"   }, "F3",  function () awful.spawn(scripts_dir .. "start-locker.sh") end,
              {description="Lock screen", group="MY: apps"})
--    awful.key({ modkey, "Control"   }, "l",  function () awful.spawn(scripts_dir .. "start-locker-screensaver.sh") end,
--              {description="Scrensaver lock", group="MY: apps"}),
    -- }}}
) -- end of keys

root.keys(globalkeys)

--    awful.key({ altkey, "Shift" }, "m", function () xkbmap.original_switch() end,
--        "Keyboard layout toggle"),
--    --awful.key({ altkey }, "Shift_L", function () xkbmap.backward_switch() end,
--    --    "Keyboard layout toggle"),

-- vim: set fdm=marker fmr={{{,}}} fdl=0:
