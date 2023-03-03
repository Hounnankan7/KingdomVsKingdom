--Variables pour repairage----------------------
tileSize = 16
iconSet_TileSize = 64
mapTileSize = 32

mapW = 15
mapH = 15


--Fonts-----------------------------------------
font_1_size = 50
font_2_size = 40
font_3_size = 30 
font_4_size = 25
font_5_size = 10
font_1 = love.graphics.newFont("assets/fonts/PressStart2P.ttf", font_1_size)
font_2 = love.graphics.newFont("assets/fonts/PressStart2P.ttf", font_2_size)
font_3 = love.graphics.newFont("assets/fonts/PressStart2P.ttf", font_3_size)
font_4 = love.graphics.newFont("assets/fonts/PressStart2P.ttf", font_4_size)
font_5 = love.graphics.newFont("assets/fonts/PressStart2P.ttf", font_5_size)

--interfaces-----------------------------------------
interface_image = {
    main = love.graphics.newImage("assets/main_image.png");
    help = love.graphics.newImage("assets/help_ui.png");
    onGame = love.graphics.newImage("assets/onGame_ui.png");
}

--Icons-----------------------------------------------
icon = {
    food = love.graphics.newImage("assets/icons/TradingIcons_140_t_11zon.png");
    coins = love.graphics.newImage("assets/icons/TradingIcons_113_t_11zon.png");
    army = love.graphics.newImage("assets/icons/SGI_13_11zon.png");
}
