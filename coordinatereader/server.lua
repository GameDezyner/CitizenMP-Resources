RegisterServerEvent('saveCoords')
AddEventHandler('saveCoords', function(data)
    file = io.open("coords.txt", "a")
    file:write("x = "..data.x..', y = '..data.y..', z = '..data.z)
    if data.heading ~= nil then
        file:write(', heading = '..data.heading..'\n')
    else
        file:write('\n')
    end
    file:close()
    print("Coordinates received and saved to coords.txt")
end)
