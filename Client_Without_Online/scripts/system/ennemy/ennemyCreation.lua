function initEnnemyCreation()
    ennemy = {
        coins = 110,
        foods = 150,

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

    table.insert(ennemy.army, units.villager)
    table.insert(ennemy.army, units.man_at_arm)

    for i = 1, #ennemy.army do
        ennemy.armyPower = ennemy.armyPower + ennemy.army[i].quantity
    end

    table.insert(ennemy.ownedZone, special_sites.cave_1)
    table.insert(ennemy.ownedZone, special_sites.cave_2)
    table.insert(ennemy.ownedZone, special_sites.farm)
    table.insert(ennemy.ownedZone, special_sites.forest)
    table.insert(ennemy.ownedZone, special_sites.plaine)

end