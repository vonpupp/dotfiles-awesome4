redshift = require("redshift")

-- {{{ Redshift
redshift.redshift = "/usr/bin/redshift"
-- set additional redshift arguments (optional)
--redshift.options = "-c ~/.config/redshift.conf"
-- 1 for dim, 0 for not dimmed
redshift.init(1)
-- }}}
