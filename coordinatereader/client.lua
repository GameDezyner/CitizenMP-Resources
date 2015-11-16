function showNotification(message)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(message)
    DrawNotification(false, false)
end
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		playerPed = GetPlayerPed(-1)
		if playerPed and playerPed ~= -1 then
			pos = GetEntityCoords(playerPed)
			if IsControlJustPressed(2,249) then
				showNotification('('..pos.x..', '..pos.y..', '..pos.z..')')
			end
		end
	end
end)