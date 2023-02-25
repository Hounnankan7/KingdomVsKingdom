Tile = Object:extend()

function Tile:new(tile, x, y, id, gridX, gridY)
	self.tile = tile
	self.id = id
	self.x = (x-1)*tileSize
	self.y = (y-1)*tileSize
	self.gridX = x
	self.gridY = y
end

function Tile:draw()
	love.graphics.draw(tileset, self.tile, self.x, self.y)
end