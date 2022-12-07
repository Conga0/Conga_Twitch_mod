dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger( player_id )
    
    local entity_id = GetUpdatedEntityID()

    local pos_x = tonumber( GlobalsGetValue( "ctep_nether_x", "0" ) )
    local pos_y = tonumber( GlobalsGetValue( "ctep_nether_y", "0" ) )
	
	EntitySetTransform( player_id, pos_x, pos_y )

	EntityKill( entity_id )
end