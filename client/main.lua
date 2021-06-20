Citizen.CreateThread(function()
    while true do
local msec = 250
        local ped = PlayerPedId()
        local isInCoche = IsPedInAnyVehicle(ped, false)


        if isInCoche then
msec = 0

            Citizen.Wait(100)

            local coche = GetVehiclePedIsIn(ped, false)
            local gasofa = GetVehicleFuelLevel(coche)
            local marcha = GetVehicleCurrentGear(coche)
            local speed = GetEntitySpeed(coche)*3.6 -- KMH

            SendNUIMessage({
                isInCoche = isInCoche;
                speed = speed;
                gasofa = gasofa;
                marcha = marcha;
            });
        else
            -- Citizen.Wait(250)
            SendNUIMessage({
                isInCoche = false;
            });
        end
Wait(msec)
    end
end)