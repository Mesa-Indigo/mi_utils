-- teleport function
Teleport = function(ped, x, y, z, w)
    DoScreenFadeOut(100)
    Citizen.Wait(1000)
    SetEntityCoords(ped, x, y, z, false, false, false, false)
    SetEntityHeading(ped, w)
    DoScreenFadeIn(750)
end

-- load shell function
CreateShell = function(shell, model, coord, head)
    shell = CreateObject(model, coord.x,
    coord.y, coord.z, true, false, false)
    SetEntityHeading(shell, head)
    FreezeEntityPosition(shell, true)
end

-- delete shell function
DeleteShell = function(shell)
    if not shell then
        print('not shell to delete') return end
    DeleteEntity(shell)
    shell = nil
end

-- create object function
CreateObj = function(obj, model, coord, head)
    obj = CreateObject(model, coord.x,
    coord.y, coord.z, true, false, false)
    SetEntityHeading(obj, head)
    FreezeEntityPosition(obj, true)
end

-- delete object function
DeleteObj = function(obj)
    if not obj then
        print('not object to delete') return end
    DeleteEntity(obj)
    obj = nil
end

-- create ped function
CreateObj = function(ped, model, coord, head, anim)
    ped = CreateObject(model, coord.x,
    coord.y, coord.z, true, false, false)
    SetEntityHeading(ped, head)
    TaskStartScenarioInPlace(ped, anim, 0, true)
    FreezeEntityPosition(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
end

-- delete ped function
DeleteObj = function(ped)
    if not ped then
        print('not object to delete') return end
    DeleteEntity(ped)
    ped = nil
end