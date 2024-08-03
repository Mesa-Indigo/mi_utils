-- callback to get players in set group
lib.callback.register('mi_util:getgroup:total', function(source, groupname)
    local player = Ox.GetPlayer(source)
    local group = GlobalState[('group.%s'):format(groupname)]
end)