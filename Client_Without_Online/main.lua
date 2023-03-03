--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "lib/mof"
    require "lib/color_lib"
    require "settings"
    require "scripts/interfaces/interfaces_manager" 
    

    -- Data requirement
    require "data/units"
    require "data/special_sites"

    require "scripts/system/mapCreation"

--LES VARIABLES------------------------------------------------------------------------------

    

---------------------------------------------------------------------------------------------


--LES FONCTIONS PROPRES A LOVE2D-------------------------------------------------------------

    function love.load(...) --Fonction d'initialisation des éléments

        now_ui = 1

        initPlayerCreation()
        initEnnemyCreation()
        
        ALL_INTERFACES_INIT()
        --print(now_ui)

    end


    function love.update(dt) --Fonction LOve2D en execution tout le temps
        
        now_ui = ALL_INTERFACES_MANAGER(now_ui, dt)
        --print(now_ui)
        --print(player.armyPower)
    end


    function love.draw() --Fonction Love2D pour dessiner à l'écran

        if now_ui == 1 then
            drawMainInterface()
        elseif now_ui == 2 then
            drawHelpInterface()
        elseif now_ui == 3 then
            drawOnGameInterface()
        elseif now_ui == 4 then

        end

    end

---------------------------------------------------------------------------------------------


--MES FONCTIONS CREES------------------------------------------------------------------------



---------------------------------------------------------------------------------------------