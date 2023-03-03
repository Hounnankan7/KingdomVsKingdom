require "settings"
require "scripts/system/ennemy/ennemyCreation"
require "scripts/system/player/playerCreation"
require "scripts/system/ennemy/ennemyCreation"
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

    -- Infos player
    love.graphics.print("PLAYER", 31.5*tileSize, 2.3*tileSize)
    love.graphics.draw(icon.coins, 31.5*tileSize, 4.5*tileSize)
    love.graphics.print(player.coins, 34*tileSize, 4.6*tileSize)

    love.graphics.draw(icon.food, 31.5*tileSize, 6.5*tileSize)
    love.graphics.print(player.foods, 34*tileSize, 7*tileSize)

    love.graphics.draw(icon.army, 31.5*tileSize, 9.5*tileSize)
    love.graphics.print(player.armyPower, 34*tileSize, 9.7 *tileSize)

    -- Infos CPU
    love.graphics.print("CPU", 31.5*tileSize, 14.3*tileSize)
    love.graphics.draw(icon.coins, 31.5*tileSize, 16.5*tileSize)
    love.graphics.print(ennemy.coins, 34*tileSize, 16.6*tileSize)

    love.graphics.draw(icon.food, 31.5*tileSize, 18.5*tileSize)
    love.graphics.print(ennemy.foods, 34*tileSize, 19*tileSize)

    love.graphics.draw(icon.army, 31.5*tileSize, 21.5*tileSize)
    love.graphics.print(ennemy.armyPower, 34*tileSize, 21.7 *tileSize)


    --LES BUTTONS D'INTERACTIONS
    love.graphics.setFont(font_5)

    love.graphics.rectangle("line", 1*mapTileSize, 16*mapTileSize, 32*3, 32)
    love.graphics.print("Explore", 1.5*mapTileSize, 16.5*mapTileSize)

    love.graphics.rectangle("line", 8*mapTileSize, 16*mapTileSize, 32*3, 32)
    love.graphics.print("End Turn", 8.5*mapTileSize, 16.2*mapTileSize)

    

    love.graphics.rectangle("line", 1*mapTileSize, 18*mapTileSize, 32*3, 32)
    love.graphics.print("War", 1.5*mapTileSize, 18.6*mapTileSize)

    love.graphics.rectangle("line", 1*mapTileSize, 20*mapTileSize, 32*3, 32)
    love.graphics.print("My Army", 1.5*mapTileSize, 20.6*mapTileSize)

    love.graphics.rectangle("line", 1*mapTileSize, 22*mapTileSize, 32*3, 32)
    love.graphics.print("Surrender", 1.5*mapTileSize, 22.6*mapTileSize)

    love.graphics.rectangle("line", 8*mapTileSize, 18*mapTileSize, 32*15, 32*3)
    love.graphics.print("Last Actions :".."", 8.5*mapTileSize, 18.5*mapTileSize)


    love.graphics.setFont(font_4)

    love.graphics.print("Action Point:"..player.turn_point.."/"..player.total_turn_point, 11.5*mapTileSize, 16 *mapTileSize)

end