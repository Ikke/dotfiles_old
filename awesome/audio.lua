require('naughty')

local print = print
local naughty = naughty
local os = os
local io = io
local table = table

module("audio")

local function get_sound_status()
	status = {}
	f = io.popen('amixer get Speaker')
	speaker = f:read("*all")
	
	status['speaker'] = speaker:find("off") == nil

	f = io.popen('amixer get Master')
	master = f:read("*all")

	status['master'] = master:find("off") == nill 
	
	return status
end


function toggle_mute()
	speaker_status = get_sound_status()

	if speaker_status['master'] and speaker_status['speaker'] then
		status = "Muting speaker"
		os.execute('amixer set Speaker mute')
	elseif speaker_status['master'] then
		status = "Muting master"
		os.execute('amixer set Master mute')
	else
		status = "Unmuting all"
		os.execute('amixer set Master unmute')
		os.execute('amixer set Speaker unmute')
	end

	naughty.notify({text = status})
end

function louder()
	os.execute('amixer set Master 5%+')
end

function softer()
	os.execute('amixer set Master 5%-')
end

