
dofile("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID() 
local player = EntityGetRootEntity( entity_id ) 

--Adds reflective weirdo effect to player
EntityAddComponent2(
	player,
	"LuaComponent",
	{
		execute_on_added = false,
		execute_every_n_frame=-1,
		script_damage_received="mods/conga_twitch_mod/files/streaming_integration/scripts/wraith_returner_damage.lua",
		remove_after_executed = false,
		execute_times=-1
	}
)


EntityAddComponent2(
	player,
	"LuaComponent",
	{
		execute_on_added = false,
		execute_every_n_frame=3,
		script_source_file="mods/conga_twitch_mod/files/streaming_integration/scripts/wraith_returner_memory.lua",
		remove_after_executed = false,
		execute_times=-1
	}
)


EntityAddComponent2(
	player,
	"VariableStorageComponent",
	{
		name="proj_file_ctm",
		value_string="data/entities/projectiles/wraith_glowing_laser.xml",
		value_float=0.5
	}
)