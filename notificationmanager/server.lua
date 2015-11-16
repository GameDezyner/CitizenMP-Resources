function sendNotification(targetNetID,message)
    TriggerClientEvent('showNotification',targetNetID,message)
end
AddEventHandler('sendNotification',function(targetNetID,message)
    sendNotification(targetNetID,message)
end)