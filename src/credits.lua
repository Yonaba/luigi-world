BackGround_Cache = Image.load("images/cr2.png")
fader = Image.createEmpty(480,272)
alphaValue = 255
faderColor = Color.new(0,0,0,alphaValue)
fader:clear(faderColor)

while true do
	screen:clear()
	screen:blit(0,0,BackGround_Cache)
	screen:blit(0,0,fader)
	if alphaValue > 0 then
		alphaValue = alphaValue - 5
	else
		break
	end
	faderColor = Color.new(0,0,0,alphaValue)
	fader:clear(faderColor)
	
	screen.waitVblankStart()
	screen.flip()
end

screen.waitVblankStart(200)

while true do
	screen:clear()
	screen:blit(0,0,BackGround_Cache)
	screen:blit(0,0,fader)
	if alphaValue < 255 then
		alphaValue = alphaValue + 5
	else
		break
	end
	faderColor = Color.new(0,0,0,alphaValue)
	fader:clear(faderColor)
	
	screen.waitVblankStart()
	screen.flip()
end

BackGround_Cache = Image.load("images/cr3.png")
fader = Image.createEmpty(480,272)
alphaValue = 255
faderColor = Color.new(0,0,0,alphaValue)
fader:clear(faderColor)

while true do
	screen:clear()
	screen:blit(0,0,BackGround_Cache)
	screen:blit(0,0,fader)
	if alphaValue > 0 then
		alphaValue = alphaValue - 5
	else
		break
	end
	faderColor = Color.new(0,0,0,alphaValue)
	fader:clear(faderColor)
	
	screen.waitVblankStart()
	screen.flip()
end

screen.waitVblankStart(200)

while true do
	screen:clear()
	screen:blit(0,0,BackGround_Cache)
	screen:blit(0,0,fader)
	if alphaValue < 255 then
		alphaValue = alphaValue + 5
	else
		break
	end
	faderColor = Color.new(0,0,0,alphaValue)
	fader:clear(faderColor)

	screen.waitVblankStart()
	screen.flip()
end

BackGround_Cache = Image.load("images/cr4.png")
fader = Image.createEmpty(480,272)
alphaValue = 255
faderColor = Color.new(0,0,0,alphaValue)
fader:clear(faderColor)

while true do
	screen:clear()
	screen:blit(0,0,BackGround_Cache)
	screen:blit(0,0,fader)
	if alphaValue > 0 then
		alphaValue = alphaValue - 5
	else
		break
	end
	faderColor = Color.new(0,0,0,alphaValue)
	fader:clear(faderColor)
	
	screen.waitVblankStart()
	screen.flip()
end

screen.waitVblankStart(200)

while true do
	screen:clear()
	screen:blit(0,0,BackGround_Cache)
	screen:blit(0,0,fader)
	if alphaValue < 255 then
		alphaValue = alphaValue + 5
	else
		break
	end
	faderColor = Color.new(0,0,0,alphaValue)
	fader:clear(faderColor)
	
	screen.waitVblankStart()
	screen.flip()
end

BackGround_Cache = Image.load("images/cr5.png")
fader = Image.createEmpty(480,272)
alphaValue = 255
faderColor = Color.new(0,0,0,alphaValue)
fader:clear(faderColor)

while true do
	screen:clear()
	screen:blit(0,0,BackGround_Cache)
	screen:blit(0,0,fader)
	if alphaValue > 0 then
		alphaValue = alphaValue - 5
	else
		break
	end
	faderColor = Color.new(0,0,0,alphaValue)
	fader:clear(faderColor)
	
	screen.waitVblankStart()
	screen.flip()
end

screen.waitVblankStart(200)

while true do
	screen:clear()
	screen:blit(0,0,BackGround_Cache)
	screen:blit(0,0,fader)
	if alphaValue < 255 then
		alphaValue = alphaValue + 5
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
