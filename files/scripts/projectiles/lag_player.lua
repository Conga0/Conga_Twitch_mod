dofile_once("data/scripts/lib/utilities.lua")

local entity_id    = GetUpdatedEntityID()
entity_id = EntityGetRootEntity( entity_id )

local pos_x, pos_y = EntityGetTransform( entity_id )

SetRandomSeed( GameGetFrameNum() + GetUpdatedComponentID(), pos_x + pos_y + entity_id )

if Random(1,2) == 1 then
    shoot_projectile( entity_id, "mods/conga_twitch_mod/files/entities/projectiles/player_lag_proj.xml", pos_x, pos_y, 0, 0 )
end