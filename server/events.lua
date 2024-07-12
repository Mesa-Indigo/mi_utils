-- create object
lib.callback.register('miut:server:spawn:obj', function(obj, crds, model)
    obj = CreateObject(model, crds.x, crds.y, crds.z-1, true, false, false)
end)

lib.callback.register('miut:server:call', function(obj, crds, model)
    obj = CreateObject(model, crds.x, crds.y, crds.z-1, true, false, false)
end)

RegisterServerEvent('miut:server:firework')
AddEventHandler('miut:server:firework', function(crds, box)
    TriggerClientEvent('miut:client:firework', crds, box)
end)