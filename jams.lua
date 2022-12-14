function bonk()
	shell.run("art.lua liaBonk")
	shell.run("clear")
	print("Flip the switch to JAM!")
end

function waitForRS()
	repeat until os.pullEvent("redstone")
end

function jam()
	sleep(0)
	if rs.getInput("bottom") then
		shell.run("art.lua liaRave")
		shell.run('speaker play "Polyphia - The Worst.dfpwm"')
	else
		shell.run("speaker stop")
		bonk()
	end
end

function stop()
	waitForRS()
end

shell.run("monitor left clear")
bonk()
waitForRS()
while true do
	parallel.waitForAny(jam, stop)
end
