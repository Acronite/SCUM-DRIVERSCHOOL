local Drivingschool = {}

-- Configuration
Drivingschool.Config = {
    -- Add your configuration here
}

-- Functions
function Drivingschool.checkSpeedLimit(speedLimit)
    local playerPed = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(playerPed, false)
    local speed = GetEntitySpeed(vehicle) * 3.6 -- Convert speed from m/s to km/h

    if speed > speedLimit then
        -- If the player is driving above the speed limit, fail the test and display a message
        TriggerEvent('esx_dmvschool:failed', _U('driving_too_fast', speedLimit))
    end
end

function Drivingschool.Function2()
    -- Your function implementation
end

-- Add more functions and variables as needed

return Drivingschool