hs.loadSpoon('RoundedCorners')

spoon.RoundedCorners:start();

function sleep(n)
  os.execute("sleep " .. tonumber(n))
end

hs.hotkey.bind({"cmd", "alt"}, "s", function()
	for i = 0,50 do
		hs.spotify.setVolume(100 - i);
		sleep(.01)
	end
end)


hs.hotkey.bind({"cmd", "alt", "shift"}, "s", function()
	for i = 0,50 do
		hs.spotify.setVolume(50 + i);
		sleep(.01)
	end
end)

hs.hotkey.bind({"cmd", "alt"}, "m", function()
	hs.spotify.displayCurrentTrack()
end)

hs.hotkey.bind({"fn"}, "F12", function ()
	hs.spotify.playpause()
end)