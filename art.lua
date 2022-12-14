local args = {...}

local mon = peripheral.find("monitor")
local image = paintutils.loadImage(args[1])
local oldTerm = term.redirect(mon)

mon.setTextScale(0.5)
paintutils.drawImage(image, 1, 1)

term.redirect(oldTerm)
