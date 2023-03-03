

function initPlayerCreation()
    player = {
        coins = 210,
        foods = 100,

        coins_base = 0, 
        foods_base = 0,
        coins_add = 0,
        foods_add = 0,

        army = {},
        armyPower = 0,
        ownedZone = {},

        turn_point = 4,
        total_turn_point = 4,
    }

    table.insert(player.army, units.villager)
    table.insert(player.army, units.man_at_arm)

    for i = 1, #player.army do
        player.armyPower = player.armyPower + player.army[i].quantity
    end

    table.insert(player.ownedZone, special_sites.cave_1)
    table.insert(player.ownedZone, special_sites.cave_2)
    table.insert(player.ownedZone, special_sites.farm)
    table.insert(player.ownedZone, special_sites.forest)
    table.insert(player.ownedZone, special_sites.plaine)

end

--[[function armyPowerCalculation(army, armyPOwer)

    cpt_villager = 0;
    cpt_archer = 0;
    cpt_catapult = 0;
    cpt_hcavalry = 0;
    cpt_lcavalry = 0;
    cpt_swordman = 0;
    cpt_man = 0;
    cpt_scorpion = 0;
    cpt_spearman = 0;


    for i = 1, #army do
        for j = 1, #army[i] do

            power = power + army[i].quantity
            if army[i].name == "Villager" then
                cpt_villager = army[i].quantity
            elseif army[i].name == "Archer" then

            elseif army[i].name == "Catapult" then

            elseif army[i].name == "Heavy Cavalry" then

            elseif army[i].name == "Light Cavalry" then

            elseif army[i].name == "Long Swordman" then

            elseif army[i].name == "Man At Arm" then

            elseif army[i].name == "Scorpion" then

            elseif army[i].name == "Spearman" then
                
            end
        end
    end

    return power
end]]--