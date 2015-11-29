AddEventHandler('onPlayerJoining', function(playerId, name)
	TriggerServerEvent('playerCheck')
end)
RegisterNetEvent('playerCheck')
AddEventHandler('playerCheck', function(data)
    playerdenied = false
    reason = ""
    if not data.isserverop then
        if data.serverwhitelisted then
            if not data.whitelisted then
                playerdenied = true
                reason = "notwhitelisted"
            end
        end
        if data.blacklisted then
            playerdenied = true
            reason = "blacklisted"
        end
    end
    if playerdenied then
        kickPlayer(reason)
    end
end)

RegisterNetEvent('kickPlayer')
AddEventHandler('kickPlayer', function(name,explanation)
    if string.lower(GetPlayerName(PlayerId())) == string.lower(name) then
        kickPlayer('kicked',explanation)
    end
end)
RegisterNetEvent('banPlayer')
AddEventHandler('banPlayer', function(name,explanation)
    if string.lower(GetPlayerName(PlayerId())) == string.lower(name) then
        kickPlayer('blacklisted',explanation)
    end
end)
function kickPlayer(reason,explanation)
    SendNUIMessage({
        message = 'kickPlayer',
        reason = reason,
        explanation = explanation
    })
    ShutdownAndLaunchSinglePlayerGame()
end