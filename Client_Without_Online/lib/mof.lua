--[[
    Nom : M.O.F (Mix Of Functions)
    Description : Recueil de différent type de fonctions utiles 
    Createur Pseudo on Git : Hounnankan7
    Version : 1.0
    Copyright : 
]]

function randomNumber(a, b) -- Fonction pour créer un nombre aléatoire en fonction de a et b
    math.randomseed(os.time())
    local x = a
    local y = b
    turn = {}
    for i=1, 2 do
        turn[i] = math.random(x, y)
    end
    return turn[1]
end


function delay_s(delay) -- Fonction pour mettre en pause tout le système sur une durée "delay"
    delay = delay or 1
    local time_to = os.time() + delay
    while os.time() < time_to do end
end

