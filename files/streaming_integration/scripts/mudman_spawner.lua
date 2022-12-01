dofile_once("data/scripts/lib/utilities.lua")

local entity_id    = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )


eid = EntityLoad( "mods/conga_twitch_mod/files/entities/animals/mudman_friendly.xml", x, y )
local charm_component = GetGameEffectLoadTo( eid, "CHARM", true )
if( charm_component ~= nil ) then
	ComponentSetValue( charm_component, "frames", -1 )
end

EntityKill( entity_id )