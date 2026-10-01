local enabled=GetConvarInt('szcore_queue_enabled',1)==1
if not enabled then return end
local queue={};local bySource={}
local function id(src)return GetPlayerIdentifierByType(src,'license')or GetPlayerIdentifierByType(src,'license2')end
local function priority(identifier,src)
    local p=IsPlayerAceAllowed(src,'szcore.priority') and 100 or 0
    local row=MySQL.single.await('SELECT priority FROM szcore_queue_priorities WHERE identifier=? AND (expires_at IS NULL OR expires_at>NOW())',{identifier})
    return math.max(p,row and tonumber(row.priority)or 0)
end
local function sort()table.sort(queue,function(a,b)if a.priority==b.priority then return a.joined<b.joined end;return a.priority>b.priority end)end
AddEventHandler('playerConnecting',function(name,_,deferrals)
    local src=source;deferrals.defer();Wait(0)
    local identifier=id(src);if not identifier then deferrals.done('Nem található Rockstar license.');return end
    local ban=MySQL.single.await('SELECT reason FROM szcore_bans WHERE identifier=? AND (expires_at IS NULL OR expires_at>NOW()) ORDER BY id DESC LIMIT 1',{identifier})
    if ban then deferrals.done('Tiltva: '..ban.reason);return end
    local e={source=src,identifier=identifier,name=name,priority=priority(identifier,src),joined=os.time()}
    queue[#queue+1]=e;bySource[src]=e;sort()
    while true do
        local pos;for i=1,#queue do if queue[i]==e then pos=i;break end end
        if not pos then deferrals.done('Queue hiba.');return end
        local max=GetConvarInt('sv_maxclients',48);local reserve=GetConvarInt('szcore_reserved_slots',0);local count=#GetPlayers()
        local allowed=count<(max-reserve) or e.priority>=100
        if pos==1 and allowed then table.remove(queue,1);bySource[src]=nil;deferrals.done();return end
        deferrals.update(('SzCore queue | Pozíció: %d/%d | Prioritás: %d'):format(pos,#queue,e.priority))
        Wait(1500);sort()
    end
end)
AddEventHandler('playerDropped',function()
    local e=bySource[source];if not e then return end
    for i=#queue,1,-1 do if queue[i]==e then table.remove(queue,i)break end end
    bySource[source]=nil
end)
