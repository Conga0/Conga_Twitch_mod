
dofile("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID() 
local player = EntityGetRootEntity( entity_id ) 

--Adds swapper effect to player
EntityAddComponent2(
	player,
	"LuaComponent",
	{
		execute_on_added = false,
		execute_every_n_frame=-1,
		script_damage_received="mods/conga_twitch_mod/files/scripts/status_effects/plagiarize_swapper.lua",
		remove_after_executed = false,
		execute_times=-1
	}
)

local start_frame = GameGetFrameNum()
GlobalsSetValue( "ctep_swapper_curse", tostring(start_frame) )