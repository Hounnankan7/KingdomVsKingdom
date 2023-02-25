require "settings"
require "scripts/system/ennemy/ennemyCreation"
require "scripts/system/player/playerCreation"
require "scripts/system/mapCreation"



function onGameInterfaceInit()
    gameMap = {
        gridDisplay = map;
        gridOwner = { -- si joueur 1 / si ennemy 2
            {1,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
            {0,0,0,0,0,0,0,0,0,0,0,0,0,0,2}
        }
    }


end

function onGameInterfaceManager(interface_choice, dt)
    if interface_choice == 3 and love.mouse.isDown(1) then

        -- Récupération de la position du curseur en pixels
        local x = love.mouse.getX()
        local y = love.mouse.getY()
        -- Conversion pixer vers cases de la grille
        mousePosX = math.floor((x/16)+1)
        mousePosY = math.floor((y/16)+1)

    end

    return interface_choice
end

function drawOnGameInterface()

    love.graphics.draw(interface_image.onGame, 0*tileSize, 0*tileSize)

    drawMap(gameMap.gridDisplay)

    

   -- Lignes verticales
	for x=mapTileSize, 15*mapTileSize, mapTileSize do
		love.graphics.line(x, 32, x, 15*mapTileSize)
	end
	-- Lignes horizontales
	for y=mapTileSize, 15*mapTileSize, mapTileSize do
		love.graphics.line(32, y, 15*mapTileSize, y)
	end

    drawGridOwner(gameMap.gridOwner)

end