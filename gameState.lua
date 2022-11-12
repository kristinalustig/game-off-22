G = {}
G.__index = G

function G.loadAssets()
  
  --load up everything for each scene
  bg = {}
  bg.img = lg.newImage("/assets/level-one/background.png")
  bg.x = 0
  bg.y = 0
  bg.w = 3200
  bg.h = 2400
  
  chest = {}
  chest.img = lg.newImage("/assets/level-one/chest-closed.png")
  
  
  --title screen
  
  --intstructions/help
  
  --briefing
  
  --level
  
  --debrief
  
  --upgrade screen (stretch goal)
  
  --level select screen (stretch goal)
  
end

return G