--loading Polices
agency = Font.load("font/m.ttf")
agency:setPixelSizes(20,20)

--Loading Colors
black = Color.new(0,0,0)
red = Color.new(255,0,0)
green = Color.new(0,255,0)
blue = Color.new(0,0,255)
white = Color.new(255,255,255)
yellow = Color.new(255,255,0)
shadow = Color.new(255,255,0,250)
skyblue = Color.new(98,170,255)

--Loading Images
luigi_stand = Image.load("images/luigi-stand.png")
luigi_run1 = Image.load("images/luigi-run1.png")
luigi_run2 = Image.load("images/luigi-run2.png")
luigi_run3 = Image.load("images/luigi-run3.png")
luigi_jump = Image.load("images/luigi-jump.png")
luigi_fall = Image.load("images/luigi-fall.png")
ground = Image.load("images/ground.png")
diamond= Image.load("images/diamond.png")
background = Image.load("images/background.png")

--ground parameters
floor = {  x = 0;  y = 150;  img = ground  }

--Player Parameters
player = {
  img = link_stand;
  x = 200;
  y = 150;
  width = 20;
  height = 40;
  name = "";
  jumpstate = "floor";
  gravity =  150;
  jumpspeed  = 10;
  walk = 0;
  health = 100;
  score = 0
}

diamond = {
  x = math.random(600,1000);
  y = math.random(40,160);
  width = 9;
  height = 14;
  img = diamond
}


oldpad=Controls.read()

while true do
  screen:blit(0, 0, background, false)
  pad = Controls.read()

  if pad:cross() and not oldpad:cross() and player.jumpstate == "floor" then 
    player.jumpstate = "jumping"
  end

  if player.jumpstate == "jumping" then 
    player.img = luigi_jump   
    player.jumpspeed = player.jumpspeed - 0.3
    player.gravity = player.gravity - player.jumpspeed 
  end
 
  if player.gravity < 0 then
    player.jumpstate = "falling"
  end   
 
  if player.gravity < 150 and player.jumpstate == "falling" then
    player.img = luigi_fall
    player.gravity = player.gravity + (player.jumpspeed + 3)
  end

  if player.gravity == 150 then
    player.jumpspeed = 10
    player.jumpstate = "floor"
    player.img = luigi_stand
  end
 
  if player.gravity > 150 then 
    player.gravity = 150
  end

  player.y = player.gravity


  player.walk = player.walk + 1
  floor.x = floor.x - 1.5
  
  if floor.x < - 480 then floor.x = 0 end
  diamond.x = diamond.x - 3
  if diamond.x < -10 then diamond.x = math.random(600,1000) end

  --Diamond Collision
  if (player.x + player.width > diamond.x) and 
     (player.x < diamond.x + diamond.width) and 
     (player.y + player.height > diamond.y) and 
     (player.y < diamond.y + diamond.height) then 
        player.score = player.score + 3
        diamond.x = math.random(600,1000)
        diamond.y = math.random(40,160)
  end
 
  if pad:square() then dofile("index.lua") end

  if player.walk >= 1 and player.walk <= 5 and player.jumpstate == "floor" then player.img = luigi_run1
  elseif player.walk >= 5 and player.walk <= 10 and player.jumpstate == "floor" then player.img = luigi_run2
  elseif player.walk >= 10 and player.walk <= 15 and player.jumpstate == "floor" then player.img = luigi_run3
  elseif player.walk >= 15 and player.walk <= 20 and player.jumpstate == "floor" then player.img = luigi_run1
  elseif player.walk >= 20 and player.walk <= 25 and player.jumpstate == "floor" then player.img = luigi_run2   
  elseif player.walk >= 25 and player.walk <= 30 and player.jumpstate == "floor" then player.img =luigi_run3
  elseif player.walk >= 30 and player.walk <= 45 and player.jumpstate == "floor" then player.img = luigi_run1
  end
  
  if player.walk > 35 then player.walk = 1 end

  screen:fontPrint(agency,100,262,"Press Square to exit The Level",red)
  screen:blit(floor.x,floor.y + 32,floor.img)
  screen:blit(floor.x + 480,floor.y + 32,floor.img)
  screen:blit(player.x,player.y,player.img)
  screen:blit(diamond.x, diamond.y, diamond.img)
  
  --Score printing
  screen:fontPrint(agency,200,20,""..player.score,blue)

  oldpad=pad
  screen.waitVblankStart()
  screen.flip()
end
