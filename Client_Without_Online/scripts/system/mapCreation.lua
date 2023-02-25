 require "settings"

 tileSet = love.graphics.newImage("assets/special_sites/tile.png")
 tile = {
    love.graphics.newQuad(0*32, 0, 32, 32, tileSet:getDimensions()),
    love.graphics.newQuad(1*32, 0, 32, 32, tileSet:getDimensions()),
    love.graphics.newQuad(2*32, 0, 32, 32, tileSet:getDimensions()),
    love.graphics.newQuad(3*32, 0, 32, 32, tileSet:getDimensions()),
    love.graphics.newQuad(4*32, 0, 32, 32, tileSet:getDimensions()),
    love.graphics.newQuad(5*32, 0, 32, 32, tileSet:getDimensions())
 }



map = {
    1,2,6,6,6,6,6,6,6,6,6,6,6,6,
    6,6,6,6,6,6,6,6,6,6,6,6,6,6,
    6,6,6,1,6,6,6,6,6,6,6,6,6,6,
    6,6,6,6,6,6,6,6,6,6,6,6,6,6,
    6,6,6,6,6,6,6,6,6,6,6,6,6,6,
    6,6,6,6,6,6,6,6,6,6,6,6,6,6,
    6,6,6,6,6,6,6,6,6,6,6,6,6,6,
    6,6,6,6,6,6,6,1,6,6,6,6,6,6,
    6,6,6,6,6,6,6,6,6,6,6,6,6,6,
    6,6,6,6,6,6,6,6,6,6,6,6,6,6,
    6,5,3,6,6,6,6,6,6,6,6,6,6,6,
    6,6,6,6,6,6,6,6,6,6,6,6,6,6,
    6,6,6,6,3,6,6,6,6,6,6,6,6,6,
    6,6,6,6,6,6,6,6,6,6,6,6,6,6
}

--[[function loadTile()
    for i=0, 5 do
        table.insert(tile, love.graphics.newQuad(i*32, 0, 32, 32, tileSet:getDimensions()))
    end
end]]--

function drawMap(map)
    cpt=1
    for y=32, 14*32, 32 do
        for x=32, 14*32, 32 do
            love.graphics.draw(tileSet,tile[map[cpt]], x, y)
            cpt = cpt+1
        end
    end
end


function drawGridOwner(gridOwner)
    opacity = 0.3
    for i = 1, #gridOwner do
        for j = 1, #gridOwner[i] do
            if gridOwner[i][j] == 0 then
                -- Quand personne ne possède encore
            elseif gridOwner[i][j] == 1 then -- Possédé par le joueur
                love.graphics.setColor(blue_color)
                love.graphics.rectangle("fill", j*32, i*32, 32, 32)
                love.graphics.setColor(1,1,1)
            elseif gridOwner[i][j] == 2 then -- Possédé par l'ennemi
                love.graphics.setColor(red_color)
                love.graphics.rectangle("fill", j*32, i*32, 32, 32)
                love.graphics.setColor(1,1,1)
            end
        end
    end


end