-----------------------------------------
-- ID: 5935
-- Item: Bowl of Moogurt
-- Food Effect: 30Min, All Races
-----------------------------------------
-- HP % 20 Cap 20
-- Vitality 3
-- HP Healing 3
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:hasStatusEffect(EFFECT_FOOD) == true or target:hasStatusEffect(EFFECT_FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
    return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
    target:addStatusEffect(EFFECT_FOOD,0,0,1800,5935);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
    target:addMod(MOD_FOOD_HPP, 20);
    target:addMod(MOD_FOOD_HP_CAP, 20);
    target:addMod(MOD_VIT, 3);
    target:addMod(MOD_HPHEAL, 3);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target,effect)
    target:delMod(MOD_FOOD_HPP, 20);
    target:delMod(MOD_FOOD_HP_CAP, 20);
    target:delMod(MOD_VIT, 3);
    target:delMod(MOD_HPHEAL, 3);
end;
