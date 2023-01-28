local showPlayerBlips = false
local ignorePlayerNameDistance = false
local playerNamesDist = 15
local displayIDHeight = 1.5
local red, green, blue = 255, 255, 255

function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px, py, pz, x, y, z, 1)

    if onScreen then
        local scale = (1 / dist) * 2 * (1 / GetGameplayCamFov()) * 100
        SetTextScale(0.0 * scale, 0.55 * scale)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(red, green, blue, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        World3dToScreen2d(x, y, z, 0)
        DrawText(_x, _y)
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlPressed(1, 48) then
            for i = 0, 99 do
                N_0x31698aa80e0223f8(i)
            end
            for id = 0, 31 do
                if NetworkIsPlayerActive(id) and GetPlayerPed(id) ~= GetPlayerPed(-1) then
                    local ped = GetPlayerPed(id)
                    local blip = GetBlipFromEntity(ped)

                    local x1, y1, z1 = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
                    local x2, y2, z2 = table.unpack(GetEntityCoords(ped, true))
                    local distance = math.floor(GetDistanceBetweenCoords(x1, y1, z1, x2, y2, z2, true))

                    if ignorePlayerNameDistance or distance < playerNamesDist then
                        if NetworkIsPlayerTalking(id) then
                            red, green, blue = 0, 0, 255
                        else
                            red, green, blue = 255, 255, 255
                        end
                        DrawText3D(x2, y2, z2 + displayIDHeight, GetPlayerServerId(id))
                    end
                end
            end
        elseif not IsControlPressed(1, 48) then
            DrawText3D(0, 0, 0, "")
        end
    end
end)
