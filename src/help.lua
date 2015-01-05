--Color 
blue= Color.new(0,0,255)

--loading image
help= Image.load("images/help.png")

while true do
  screen:clear()
  pad= Controls.read()
  if pad:circle() then dofile("index.lua") end

  pad=nil

  screen:print( 100 , 50 , "Jump To Collect Diamonds", blue)
  screen:print( 100 , 60 , "Each Diamond Gives  3 Points", blue)
  screen:print( 100 , 70 , "Try Differents Themes", blue)
  screen:print(250,252,"Press Circle to go Back", blue)

  screen.waitVblankStart()
  screen.flip()
end
