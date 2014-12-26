BackGround_Cache = Image.load("images/2.png")
fader = Image.createEmpty(480,272)
alphaValue = 255
faderColor = Color.new(0,0,0,alphaValue)
fader:clear(faderColor)

while true do
	screen:clear()
	screen:blit(0,0,BackGround_Cache)
	screen:blit(0,0,fader)
	if alphaValue > 0 then
		alphaValue = alphaValue - 10
	else
		break
	end
	faderColor = Color.new(0,0,0,alphaValue)
	fader:clear(faderColor)

	screen.waitVblankStart()
	screen.flip()
end

screen.waitVblankStart(50)

while true do
	screen:clear()
	screen:blit(0,0,BackGround_Cache)
	screen:blit(0,0,fader)
	if alphaValue < 255 then
		alphaValue = alphaValue + 10
	else
		break
	end
	faderColor = Color.new(0,0,0,alphaValue)
	fader:clear(faderColor)
	
	screen.waitVblankStart()
	screen.flip()
end

while true do
	dofile("index.lua")
end

