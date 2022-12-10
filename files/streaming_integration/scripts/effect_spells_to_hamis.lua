dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()

local projectiles = EntityGetWithTag( "projectile" )

if ( #projectiles > 0 ) then
	for i,projectile_id in ipairs( projectiles ) do
		local pos_x,pos_y = EntityGetTransform(projectile_id)

		EntityLoad("data/entities/animals/longleg.xml", pos_x, pos_y )
		EntityKill( projectile_id )
	end
end