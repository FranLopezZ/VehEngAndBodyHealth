local vehBH = math.floor(GetVehicleBodyHealth(GetVehiclePedIsIn(GetPlayerPed(-1),false))/10)
local vehEH = math.floor(GetVehicleEngineHealth(GetVehiclePedIsIn(GetPlayerPed(-1),false))/10)
Citizen.CreateThread(function()
    Wait(50)
	while true do
		if IsPedInAnyVehicle(PlayerPedId())
		then
--			statevh(0.675, 1.250, 1.0,1.0,0.45, "~b~Bodywork:~r~  ".. vehBH .. ' %', 255, 255, 255, 255) --English
			statevh(0.675, 1.250, 1.0,1.0,0.45, "~b~Carroceria:~r~  ".. vehBH .. ' %', 255, 255, 255, 255) --Spanish
--			statevh(0.675, 1.225, 1.0,1.0,0.45, "~b~Engine:~r~  ".. vehEH .. ' %', 255, 255, 255, 255) --English
			statevh(0.675, 1.225, 1.0,1.0,0.45, "~b~Motor:~r~  ".. vehEH .. ' %', 255, 255, 255, 255) --Spanish
			Citizen.Wait(500)
		else
			Citizen.Wait(500)
		end
	end
end)

function statevh(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(scale, scale)
	SetTextColour( 0,0,0, 255 )
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
	SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end