-----------------------------------
-- Area: Carpenters' Landing
--  NPC: Guilloud
-- Involved with mission "The Road Forks"
-- !pos -123.770 -6.654 -469.062 2
-----------------------------------
require("scripts/zones/Carpenters_Landing/MobIDs")
require("scripts/globals/missions")
-----------------------------------

function onTrade(player,npc,trade)
end

function onTrigger(player,npc)
    local cop = player:getCurrentMission(COP)
    local emeraldWaterStatus = player:getVar("EMERALD_WATERS_Status")
    
    if cop == THE_ROAD_FORKS and emeraldWaterStatus == 4 and not GetMobByID(OVERGROWN_IVY):isSpawned() then
        SpawnMob(OVERGROWN_IVY):updateClaim(player)
    elseif cop == THE_ROAD_FORKS and emeraldWaterStatus == 5 then
        player:startEvent(0)
    else
        player:startEvent(1)
    end
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
    if csid == 0 then
        player:setVar("EMERALD_WATERS_Status", 6)
    end
end