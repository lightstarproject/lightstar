-----------------------------------
-- Area: Western Altepa Desert
--  NPC: ??? (Beastmen Treasure qm8/chest5)
--   ID: 17289777
-- !pos -223.055 -0.085 -672.207 125
-----------------------------------
local ID = require("scripts/zones/Western_Altepa_Desert/IDs")

function onTrigger(player,npc)
    dsp.bmt.handleQmOnTrigger(player,npc,ID.text.SOMETHING_IS_BURIED_HERE,ID.text.NOTHING_OUT_OF_ORDINARY,ID.npc.BEASTMEN_TREASURE)
end

function onTrade(player,npc,trade)
    dsp.bmt.handleQmOnTrade(player,npc,trade,ID.npc.BEASTMEN_TREASURE)
end

function onEventFinish(player,csid)
    dsp.bmt.handleQmOnEventFinish(player,csid)
end
