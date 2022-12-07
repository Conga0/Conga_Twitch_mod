dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()
local x = EntityGetTransform(entity_id)

if GameHasFlagRun( "ctep_soothing_holybomb" ) ~= true then
    AddGunAction( entity_id, "OCARINA_F" )
    AddGunAction( entity_id, "OCARINA_C" )
    AddGunAction( entity_id, "OCARINA_D" )
    AddGunAction( entity_id, "OCARINA_C" )
elseif GameHasFlagRun( "ctep_soothing_worm" ) ~= true then
    AddGunAction( entity_id, "OCARINA_GSHARP" )
    AddGunAction( entity_id, "OCARINA_F" )
    AddGunAction( entity_id, "OCARINA_E" )
    AddGunAction( entity_id, "OCARINA_B" )
    AddGunAction( entity_id, "OCARINA_D" )
else
    AddGunAction( entity_id, "OCARINA_A" )
    AddGunAction( entity_id, "OCARINA_F" )
    AddGunAction( entity_id, "OCARINA_D" )
    AddGunAction( entity_id, "OCARINA_E" )
    AddGunAction( entity_id, "OCARINA_A2" )
end