
dofile("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID() 
local player = EntityGetRootEntity( entity_id ) 

ComponentSetValue2(EntityGetFirstComponentIncludingDisabled(player, "CharacterDataComponent"), "flying_needs_recharge", false)