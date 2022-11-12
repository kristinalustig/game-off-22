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
  chest.shape = love.physics.newPolygonShape(765, 1739, 842, 1590, 1632, 1590, 1632, 1949, 1553, 2107, 765, 2107)
  
  curtainsOpen = {}
  curtainsOpen.img = lg.newImage("/assets/level-one/curtains-open.png")
  curtainsOpen.coords = {
    {}
  }
  
  curtainsClosed = {}
  curtainsClosed.img = lg.newImage("/assets/level-one/curtains-closed.png")
  curtainsClosed.coords = {
    {}
  }
  
  lampLight = {}
  lampLight = lg.newImage("/assets/level-one/lamp-light.png")
  
  drawerOpenLeft = {}
  drawerOpenLeft.img = lg.newImage("/assets/level-one/drawer-open-left.png")
  
  drawerOpenRight = {}
  drawerOpenRight.img = lg.newImage("/assets/level-one/drawer-open-right.png")
  
  --title screen
  
  --intstructions/help
  
  --briefing
  
  --level
  
  --debrief
  
  --upgrade screen (stretch goal)
  
  --level select screen (stretch goal)
  
end

return G