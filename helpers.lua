local p = require "pointWithinShape"

H = {}

function H.checkShapeOverlap(shape, mx, my)
  
  local overlap = p.PointWithinShape(shape, mx, my)
  
  if overlap == 1 then
    return true
  else
    return false
  end
  
end


return H