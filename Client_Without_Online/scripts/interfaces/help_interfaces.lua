require "settings"


function helpInterfaceInit()
    ui_help = "Skip>"
end

function helpInterfaceManager(interface_choice, dt)
    if interface_choice == 2 and love.mouse.isDown(1) then

        -- Récupération de la position du curseur en pixels
        local x = love.mouse.getX()
        local y = love.mouse.getY()
        -- Conversion pixer vers cases de la grille
        mousePosX = math.floor((x/16)+1)
        mousePosY = math.floor((y/16)+1)

        if mousePosY >= 42.5 and mousePosY <= 45 and mousePosX >= 39.5 and mousePosX <= 48 then -- Clique sur skip
            interface_choice = 3
            delay_s(1.1)
        end
    end

    return interface_choice
end

function drawHelpInterface()

    love.graphics.draw(interface_image.help, 0*tileSize, 0*tileSize)
    --love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("line", 39.5*tileSize, 42.5*tileSize, 8.5*tileSize, 2.5*tileSize)
    love.graphics.setFont(font_4)
    love.graphics.print(ui_help, 40*tileSize, 43*tileSize)

end