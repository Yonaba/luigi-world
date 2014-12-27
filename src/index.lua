--Loading colors
black = Color.new(0,0,0)
red = Color.new(255,0,0)
green = Color.new(0,255,0)
blue = Color.new(0,0,255)
white = Color.new(255,255,255)
yellow = Color.new(255,255,0)
custom = Color.new(255,255,0,250)
shadow = Color.new(255,255,0,250)

--loading images
wall= Image.load("images/wallpaper.png")

--Selector
selector = 1

--load fonts
font = Font.load("font/m.ttf")
font:setPixelSizes(16,20)
oldpad =Controls.read()

while true do
	screen:clear()
	pad = Controls.read()
	screen:blit(0,0,wall)

	if pad:down() and not oldpad:down() then selector = selector +1
	elseif pad:up() and not oldpad:up() then selector = selector -1
	end
	 
	if selector < 1 then selector = 4 
	elseif selector > 4 then selector = 1 
	end 

	if selector == 1 then screen:fillRect(50,79,70,20,shadow) end
	if selector == 2 then screen:fillRect(50,99,70,20,shadow) end
	if selector == 3 then screen:fillRect(50,119,70,20,shadow) end
	if selector == 4 then screen:fillRect(50,139,70,20,shadow) end

	screen:fontPrint(font,55,100,"Play",blue)
	screen:fontPrint(font,55,120,"Credits",blue)
	screen:fontPrint(font,55,140,"Help",blue)
	screen:fontPrint(font,55,160,"Exit",blue)

	if pad:cross() and not oldpad:cross() and selector == 1 then
		dofile("themeselector.lua")
		file:close()
	end

	if pad:cross() and not oldpad:cross() and selector == 2 then
		dofile("credits.lua")
		file:close()
	end

	if pad:cross() and not oldpad:cross() and selector == 3 then
		dofile("help.lua")
		file:close()
	end

	if pad:cross() and not oldpad:cross() and selector == 4 then
		file:close()
		System.Quit()
	end

	oldpad = pad
	screen.waitVblankStart()
	screen.flip()
	pad = nil
end

