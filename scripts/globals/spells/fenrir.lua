-----------------------------------------
-- Spell: Fenrir
-- Summons Fenrir to fight by your side
-----------------------------------------
require("scripts/globals/summon");
require("scripts/globals/bcnm");
require("scripts/globals/pets");
require("scripts/globals/msg");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    if (not caster:canUsePet()) then
        return dsp.msg.basic.CANT_BE_USED_IN_AREA;
    elseif (caster:hasPet()) then
        return dsp.msg.basic.ALREADY_HAS_A_PET;
    elseif (caster:getObjType() == TYPE_PC) then
        return avatarMiniFightCheck(caster);
    end
    return 0;
end;

function onSpellCast(caster,target,spell)
    caster:spawnPet(PET_FENRIR);

    return 0;
end;
