local awful = require("awful")

awful.util.spawn_with_shell("killall unagi; sleep 5; unagi &")
awful.util.spawn_with_shell(wallpaper_change_cmd)
