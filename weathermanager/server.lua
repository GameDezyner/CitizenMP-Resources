RegisterServerEvent('setWeather')
AddEventHandler('setWeather',function(weather)
    setWeather(weather)
end)
function setWeather(weather)
    TriggerClientEvent('setWeather',-1,weather)
end