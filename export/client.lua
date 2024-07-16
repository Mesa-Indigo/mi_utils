-- export for teleporting player
exports('mi_utils_c_teleport', function(ped, x, y, z, h)
    DoScreenFadeOut(150) Citizen.Wait(1000)
    SetEntityCoords(ped, x, y, z-1, false, false, false, false)
    SetEntityHeading(ped, h) DoScreenFadeIn(750)
end)

-- export for creating a shell object
exports('mi_utils_c_create_shell', function(shell, model, coord, head)
    if Debug then
        if model == nil then
            print('no model to reference for shell')
        end
    end
    shell = CreateObject(model, coord.x, coord.y, coord.z, true, false, false)
    SetEntityHeading(shell, head) FreezeEntityPosition(shell, true)
end)

-- export to delete shell
exports('mi_utils_c_delete_shell', function(shell)
    if Debug then
        if shell == nil then
            print('no shell to delete') end
    end
    DeleteEntity(shell) shell = nil
end)

-- export for creating an object
exports('mi_utils_c_create_object', function(obj, model, coord, head)
    if Debug then
        if obj == nil then
            print('no object to spawn')
        end
        if model == nil then
            print('no model to reference for object')
        end
    end
    obj = CreateObject(model, coord.x, coord.y, coord.z, true, false, false)
    SetEntityHeading(obj, head) FreezeEntityPosition(obj, true)
end)

-- export to delete object
exports('mi_utils_c_delete_object', function(obj)
    if Debug then
        if obj == nil then
            print('no object to delete')end
    end
    DeleteEntity(obj) obj = nil
end)

-- export for creating a ped
exports('mi_utils_c_create_ped', function(ped, model, coord, head, anim)
    if Debug then
        if model == nil then
            print('no model to reference for object')
        end
    end
    ped = CreateObject(model, coord.x,
    coord.y, coord.z, true, false, false)
    SetEntityHeading(ped, head)
    TaskStartScenarioInPlace(ped, anim, 0, true)
    FreezeEntityPosition(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
end)

-- export to delete ped
exports('mi_utils_c_delete_ped', function(ped)
    if Debug then
        if ped == nil then
            print('no ped to delete') end
    end
    DeleteEntity(ped) ped = nil
end)