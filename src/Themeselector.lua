pad = nil

--Colors
black = Color.new(0,0,0)
red = Color.new(255,0,0)
green = Color.new(0,255,0)
blue = Color.new(0,0,255)
white = Color.new(255,255,255)
yellow = Color.new(255,255,0)
shadow = Color.new(255,255,0,250)
skyblue = Color.new(98,170,255)

theme1 = Image.load("images/theme1.png")
theme2 = Image.load("images/theme2.png")
theme3 = Image.load("images/theme3.png")

--font
font = Font.load("font/m.ttf")
font:setPixelSizes(16,16)

--selector
oldpad = Controls.read()

while true do
	screen:clear()
	pad = Controls.read()

	if pad:triangle() then
		dofile("files/game3.lua")
		file:close()
	end

	if pad:circle() and not oldpad:circle() then 
		dofile("files/game2.lua")
		file:close()
	end

	if pad:cross() and not oldpad:cross() then 
		dofile("files/game.lua")
		file:close()
	end

	screen:blit(7,99,theme1)
	screen:blit(164,99,theme2)
	screen:blit(322,99,theme3)
	screen:fontPrint(font, 100,20, "Choose The Theme Of the Level", shadow)
	screen:fontPrint(font, 37 , 93 , "Cross",shadow)
	screen:fontPrint(font, 194 , 93 , "Circle",shadow)
	screen:fontPrint(font, 352 , 93 , "Triangle",shadow)

	oldpad = pad
	screen.waitVblankStart()
	screen.flip()
end
