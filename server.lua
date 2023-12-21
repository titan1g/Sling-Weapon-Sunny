local QBCore = exports['qb-core']:GetCoreObject()

-- Ajout d'une commande pour changer la position de la bretelle
QBCore.Commands.Add("sling", "Change weapon sling position", {{name="position", help="1 for Back, 2 for Front"}}, false, function(source, args)
    local position = tonumber(args[1])
    if position == 1 then
        TriggerClientEvent("mg-weapon-sling:client:setSlingPosition", source, "Back")
    elseif position == 2 then
        TriggerClientEvent("mg-weapon-sling:client:setSlingPosition", source, "Front")
    else

    end
end)
