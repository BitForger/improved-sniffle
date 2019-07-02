--hs.loadSpoon('RoundedCorners')

--spoon.RoundedCorners:start();

local logger = hs.logger.new('Chooser', 'debug')

function sleep(n)
  os.execute("sleep " .. tonumber(n))
end

hs.hotkey.bind({"cmd", "alt"}, "s", function()
	if hs.spotify.getVolume() >= 100 then
		for i = 0,50 do
			hs.spotify.setVolume(100 - i);
			sleep(.01)
		end
	end
end)


hs.hotkey.bind({"cmd", "alt", "shift"}, "s", function()
	if hs.spotify.getVolume() <= 50 then
		for i = 0,50 do
			hs.spotify.setVolume(50 + i);
			sleep(.01)
		end
	end
end)

hs.hotkey.bind({"cmd", "alt"}, "m", function()
	hs.spotify.displayCurrentTrack()
end)

hs.hotkey.bind({"alt"}, "F12", function ()
	hs.spotify.playpause()
end)

hs.hotkey.bind({"shift", "cmd"}, "u", function ()
	local choices = {
		{
			["text"] = "First",
			["subText"] = "This is subtext",
			["uuid"] = hs.host.uuid()
		},
		{
			["text"] = "Second",
			["subText"] = "This is subtext",
			["uuid"] = hs.host.uuid()
		}
	}
	local chooser = hs.chooser.new(function (item)
		logger.i(hs.json.encode(item))
	end)
	chooser:choices(choices)
	
	chooser:show()
end)