RegisterNetEvent('setWeather')
AddEventHandler('setWeather',function(weather)
    setWeather(weather)
end)
function setWeather(weather)
    SetWeatherTypeNowPersist(weather)
end
