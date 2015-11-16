function showNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end
RegisterNetEvent('showNotification')
AddEventHandler('showNotification',function(message)
    showNotification(message)
end)