local awful = require("awful")

--awful.spawn_with_shell("killall unagi; sleep 5; unagi &")
awful.spawn.with_shell(wallpaper_change_cmd)
