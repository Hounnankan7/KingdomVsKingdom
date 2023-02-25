--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "scripts/interfaces/main_interface"
    require "scripts/interfaces/help_interfaces"


    function ALL_INTERFACES_INIT()

        mainInterfaceInit()
        helpInterfaceInit()

    end


    function ALL_INTERFACES_MANAGER(interface_choice, dt)
        
        if interface_choice == 1  then
            a = mainInterfaceManager(interface_choice, dt)
        elseif interface_choice == 2 then
            a = helpInterfaceManager(interface_choice, dt)
        --elseif interface_choice == 3 then

        end

        return a
    end


    --[[function ALL_INTERFACES_DRAW(interface_choice)
       
        if interface_choice == 1 then
            drawMainInterface()
        elseif interface_choice == 2 then
            drawHelpInterface()
        elseif interface_choice == 3 then

            
        end

    end]]--


