pickupids = {}
RegisterServerEvent('dropItem')
AddEventHandler('dropItem', function(data)
    newid = "pickup"..math.random(100000,999999)
    if pickupids[newid] then
        newid = "pickup"..math.random(100000,999999)
        pickupids[newid] = true
    else
        pickupids[newid] = true
    end
    TriggerClientEvent('addPickup',-1,data.hash,data.ammo,data.x,data.y,data.z,newid)
end)
RegisterServerEvent('pickupItem')
AddEventHandler('pickupItem', function(id)
    if pickupids[id] then
        TriggerClientEvent('killPickup',-1,id)
        pickupids[id] = nil
    end
end)