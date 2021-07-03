Citizen.CreateThread(function()
	while true do
		local ped = PlayerPedId()
		local veh = GetVehiclePedIsIn(ped, false)
		local sleep = true
		Citizen.Wait(0)
		if veh then
			sleep = false
			local fuel = GetVehicleFuelLevel(veh)
			local speed = GetEntitySpeed(veh)*3.6 -- Value in KM/H
			local gear = GetVehicleCurrentGear(veh)
			SendNUIMessage({
				isInCoche = veh;
				speed = speed;
				fuel = fuel;
				gear = gear;
			})
		else
			SendNUIMessage({
				isInCoche = veh;
			})
		end
		if sleep then Citizen.Wait(500) end
	end
end)
