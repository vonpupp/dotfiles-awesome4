#Xephyr :1 -ac -br -noreset -screen 1152x720 &
#export DISPLAY=:1.0 awesome -c ~/.config/awesome/rc.lua.new
#cd ~/.config/awesome.test
#awmtt start #-C ~/.config/awesome.test/rc.lua
#awmtt start -C ~/.config/awesome.test/rc.lua
awmtt start -C \
~/.homesick/repos/dotfiles-awesome/home/.config/awesome/rc.lua.test
