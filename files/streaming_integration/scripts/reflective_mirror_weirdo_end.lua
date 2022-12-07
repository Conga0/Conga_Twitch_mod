
dofile("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID() 
local player = EntityGetRootEntity( entity_id ) 

--Removes swapper effect to player
local comp_lua = EntityGetComponentIncludingDisabled( player, "LuaComponent" )
if ( comp_lua ~= nil ) then
	for i,v in ipairs( comp_lua ) do
		local name = ComponentGetValue2( v, "script_damage_received" )
		
		if ( name == "mods/conga_twitch_mod/files/streaming_integration/scripts/wraith_returner_damage.lua" ) or ( name == "mods/conga_twitch_mod/files/streaming_integration/scripts/wraith_returner_memory.lua" ) then
			EntityRemoveComponent(player, v)
		end
	end
end


local comp_lua = EntityGetComponentIncludingDisabled( player, "VariableStorageComponent" )
if ( comp_lua ~= nil ) then
	for i,v in ipairs( comp_lua ) do
		local name = ComponentGetValue2( v, "name" )
		
		if ( name == "proj_file_ctm" ) then
			EntityRemoveComponent(player, v)
		end
	end
end

