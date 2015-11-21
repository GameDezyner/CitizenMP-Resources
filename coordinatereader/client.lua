Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		playerPed = GetPlayerPed(-1)
		if playerPed and playerPed ~= -1 then
			pos = GetEntityCoords(playerPed)
            is, imppos = GetPedLastWeaponImpactCoord(playerPed)
            heading = GetEntityHeading(playerPed)
			if IsControlJustPressed(2,20) then
				exports.notificationmanager:showNotification('Location: '..pos.x..', '..pos.y..', '..pos.z)
                data = {
                    x = pos.x,
                    y = pos.y,
                    z = pos.z,
                    heading = heading
                }
                TriggerServerEvent('saveCoords', data)
			end
            if is then
                data = {
                    x = imppos.x,
                    y = imppos.y,
                    z = imppos.z,
                    heading = nil
                }
                TriggerServerEvent('saveCoords', data)
            end
		end
	end
end)