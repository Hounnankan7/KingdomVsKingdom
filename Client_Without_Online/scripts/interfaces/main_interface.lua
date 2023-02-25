require "settings"


function mainInterfaceInit()
    
    interface_image_1 = love.graphics.newImage("assets/0.png")

    ui_principal = {}
    ui_principal.title = "Kingdom Vs Kingdom"
    ui_principal.text_1 = "New Game"
    ui_principal.text_2 = "Saved Game"
    ui_principal.text_3 = "Credits"
    ui_principal.text_4 = "Quit Game"
end

function mainInterfaceManager(interface_choice, dt)
    if interface_choice == 1 and love.mouse.isDown(1) then

        -- Récupération de la position du curseur en pixels
        local x = love.mouse.getX()
        local y = love.mouse.getY()
        -- Conversion pixer vers cases de la grille
        mousePosX = math.floor((x/16)+1)
        mousePosY = math.floor((y/16)+1)

        if mousePosY >= 0 and mousePosY <= 45 and mousePosX >= 0 and mousePosX <= 48 then -- Clique play
            interface_choice = 2
            delay_s(1.1)
        end

    end

    return interface_choice
end

function drawMainInterface()

    love.graphics.draw(interface_image.main, 0*tileSize, 0*tileSize)
    love.graphics.draw(interface_image_1, 1*tileSize, 25*tileSize)

    --love.graphics.setColor(1, 1, 1, 0.5)

    --love.graphics.setColor(color_1)
    love.graphics.setFont(font_4)
    love.graphics.print(ui_principal.title, 2.5*tileSize, 27*tileSize)
    love.graphics.setFont(font_3)
    love.graphics.print(ui_principal.text_1, 6*tileSize, 31*tileSize)
    love.graphics.print(ui_principal.text_2, 6*tileSize, 35*tileSize)
    love.graphics.print(ui_principal.text_3, 6*tileSize, 39*tileSize)
    love.graphics.print(ui_principal.text_4, 6*tileSize, 43*tileSize)

end