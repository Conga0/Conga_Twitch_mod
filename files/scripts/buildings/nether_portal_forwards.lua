dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger( player_id )
    
    local entity_id = GetUpdatedEntityID()
				
	EntityLoad( "mods/conga_twitch_mod/files/entities/buildings/portal_nether_outof.xml", -155, 15408 )
	EntityLoad( "mods/conga_twitch_mod/files/entities/buildings/remove_ground_small.xml", -155, 15408 )
	
	EntitySetTransform( player_id, -155, 15468 )

	EntityKill( entity_id )
end