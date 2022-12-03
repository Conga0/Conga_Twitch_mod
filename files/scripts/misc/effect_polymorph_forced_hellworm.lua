dofile_once("data/scripts/lib/utilities.lua")

local polytools = dofile_once( "mods/conga_twitch_mod/lib/polytools/polytools.lua" )
local effect_id = GetUpdatedEntityID() 
local root_entity = EntityGetRootEntity( effect_id )
EntityKill( effect_id )
if not EntityHasTag( player, "polymorphed" ) then
	local new_effect = polytools.polymorph(root_entity, "data/entities/animals/the_end/worm_end.xml", 1140, true, nil, true)
end