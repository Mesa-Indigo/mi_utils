-- export for teleporting player
exports('mi_utils:c:teleport', function(ped, x, y, z, h)
    DoScreenFadeOut(150) Citizen.Wait(1000)
    SetEntityCoords(ped, x, y, z-1, false, false, false, false)
    SetEntityHeading(ped, h) DoScreenFadeIn(750)
end)

-- export for creating a shell object
exports('mi_utils:c:create:shell', function(shell, model, coord, head)
    if Debug then
        if shell == nil then
            print('no shell object to spawn')
        return end
        if model == nil then
            print('no model to reference for shell')
        return end
    end
    shell = CreateObject(model, coord.x, coord.y, coord.z, true, false, false)
    SetEntityHeading(shell, head) FreezeEntityPosition(shell, true)
end)

-- export to delete shell
exports('mi_utils:c:delete:shell', function(shell)
    if Debug then
        if shell == nil then
            print('no shell to delete') return end
    end
    DeleteEntity(shell) shell = nil
end)

-- export for creating an object
exports('mi_utils:c:create:object', function(obj, model, coord, head)
    if Debug then
        if obj == nil then
            print('no shell object to spawn')
        return end
        if model == nil then
            print('no model to reference for shell')
        return end
    end
    obj = CreateObject(model, coord.x, coord.y, coord.z, true, false, false)
    SetEntityHeading(obj, head) FreezeEntityPosition(obj, true)
end)

-- export to delete object
exports('mi_utils:c:delete:object', function(obj)
    if Debug then
        if obj == nil then
            print('no shell to delete') return end
    end
    DeleteEntity(obj) obj = nil
end)

-- create ped function
CreatePed = function(ped, model, coord, head, anim)
    ped = CreateObject(model, coord.x,
    coord.y, coord.z, true, false, false)
    SetEntityHeading(ped, head)
    TaskStartScenarioInPlace(ped, anim, 0, true)
    FreezeEntityPosition(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
end

-- export to delete ped
exports('mi_utils:c:delete:ped', function(ped)
    if Debug then
        if ped == nil then
            print('no shell to delete') return end
    end
    DeleteEntity(ped) ped = nil
end)