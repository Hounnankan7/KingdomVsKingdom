--Code pour les paramètres du jeu (taille fenetre, titre fenetre,...)

function love.conf(fenetre)
    --Config graphic de la fenetre
        fenetre.window.title = "Kingdom Vs Kingdom"
        fenetre.window.icon = "assets/icons/SGI_147_11zon.png"
        fenetre.window.width = 819
        fenetre.window.height = 768


    --Config audio de la fenetre
        --


    --Config system de la fenetre
        fenetre.modules.keyboard = true           -- Enable the keyboard module (boolean)
        fenetre.modules.mouse = true              -- Enable the mouse module (boolean)

        fenetre.console = true -- Pour activer la console de debug
end