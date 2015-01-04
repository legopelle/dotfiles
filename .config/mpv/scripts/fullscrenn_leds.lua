require 'os'
require 'mp.msg'

function on_fullscreen_change(name, value)
	if value == true then
		os.execute("sudo kbdledoff")
		mp.msg.info("kbdledoff")
	else
		os.execute("sudo kbdledon")
		mp.msg.info("kbdledon")
	end
end

mp.observe_property("fullscreen", "bool", on_fullscreen_change)

