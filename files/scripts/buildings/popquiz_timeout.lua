dofile_once("data/scripts/lib/utilities.lua")


local entity_id = GetUpdatedEntityID()
local entity_who_picked = EntityGetWithTag("player_unit")[1]
local x,y = EntityGetTransform(entity_who_picked)

GamePrintImportant( "$log_congatwitch_popquiz_timeout_name", "$log_congatwitch_popquiz_timeout_desc", "mods/conga_twitch_mod/files/ui_gfx/decorations/3piece_creature_shift.png" )

SetRandomSeed( GameGetFrameNum() + 1432, GameGetFrameNum() + 1432 + 8 )
local prize = Random(1,100)

if prize >= 95 then
    local pool = {
        "boss_alchemist/boss_alchemist",
        "boss_ghost/boss_ghost",
        "boss_limbs/boss_limbs",
        "boss_pit/boss_pit",
        "boss_wizard/boss_wizard",
        "boss_dragon",
    }

    EntityLoad( "data/entities/particles/image_emitters/magical_symbol_fast.xml", x, y - 90 )
    GamePlaySound( "data/audio/Desktop/event_cues.snd", "event_cues/greed_curse/create", x, y - 90 )
    EntityLoad( "data/entities/animals/"..pool[Random(1, #pool)]..".xml", x, y - 90 )

elseif prize >= 90 then
    EntityLoad( "data/entities/items/pickup/heart_evil.xml", x, y - 32)
    EntityLoad( "mods/conga_twitch_mod/files/entities/particles/smoke_cloud_generator.xml", x, y - 32 )
elseif prize >= 80 then
    local pos_x, pos_y = EntityGetTransform( entity_who_picked )
    EntityLoad( "mods/conga_twitch_mod/files/entities/projectiles/orb_psychotic_nodmg.xml", pos_x, pos_y )
    GamePlaySound( "data/audio/Desktop/projectiles.bank", "player_projectiles/megalaser/launch", pos_x, pos_y )
elseif prize >= 80 then
    local effect_id = EntityLoad( "mods/conga_twitch_mod/files/entities/buildings/popquiz_pandora_punishment.xml", x, y )
elseif prize >= 60 then
    local cid = EntityLoad( "mods/conga_twitch_mod/files/entities/misc/effect_plagiarize_swapper_long.xml", x, y )
    EntityAddChild( entity_who_picked, cid )
    GamePlaySound( "data/audio/Desktop/projectiles.bank", "player_projectiles/megalaser/launch", x, y )
elseif prize >= 50 then
    EntityLoad( "data/entities/items/pickup/potion_aggressive.xml", x + 8, y - 48)
    EntityLoad( "data/entities/items/pickup/potion_aggressive.xml", x + 4, y - 48)
    EntityLoad( "data/entities/items/pickup/potion_aggressive.xml", x - 4, y - 48)
    EntityLoad( "data/entities/items/pickup/potion_aggressive.xml", x - 8, y - 48)
    EntityLoad( "mods/conga_twitch_mod/files/entities/particles/smoke_cloud_generator.xml", x, y - 48 )
elseif prize >= 40 then
    EntityLoad( "data/entities/animals/crypt/skullfly.xml", x - 32, y - 64 )
    EntityLoad( "mods/conga_twitch_mod/files/entities/particles/smoke_cloud_generator.xml", x - 32, y - 64 )
    EntityLoad( "data/entities/animals/crypt/skullfly.xml", x - 16, y - 64 )
    EntityLoad( "mods/conga_twitch_mod/files/entities/particles/smoke_cloud_generator.xml", x - 16, y - 64 )
    EntityLoad( "data/entities/animals/crypt/skullfly.xml", x, y - 64 )
    EntityLoad( "mods/conga_twitch_mod/files/entities/particles/smoke_cloud_generator.xml", x, y - 64 )
    EntityLoad( "data/entities/animals/crypt/skullfly.xml", x + 16, y - 64 )
    EntityLoad( "mods/conga_twitch_mod/files/entities/particles/smoke_cloud_generator.xml", x + 16, y - 64 )
    EntityLoad( "data/entities/animals/crypt/skullfly.xml", x + 32, y - 64 )
    EntityLoad( "mods/conga_twitch_mod/files/entities/particles/smoke_cloud_generator.xml", x + 32, y - 64 )
elseif prize >= 30 then
    local cid = EntityLoad( "mods/conga_twitch_mod/files/entities/misc/effect_mana_drain.xml", x, y )
    EntityAddChild( entity_who_picked, cid )
    GamePlaySound( "data/audio/Desktop/projectiles.bank", "player_projectiles/megalaser/launch", x, y )
else
    local cid = EntityLoad( "mods/conga_twitch_mod/files/entities/misc/effect_lukki_soul_noflight.xml", x, y )
    EntityAddChild( entity_who_picked, cid )
end

local targets = EntityGetInRadius( x, y, 512 )

for i,v in ipairs( targets ) do
    if ( v ~= entity_id ) and ( EntityGetName( v ) == "popquiz_entity" ) then
        EntityKill ( v )
    end
end

--EntityLoad( "mods/conga_twitch_mod/files/entities/buildings/remove_ground_small.xml", x + 96, y - 96 )
--EntityLoad( "mods/conga_twitch_mod/files/entities/buildings/remove_ground_small.xml", x, y - 96 )
--EntityLoad( "mods/conga_twitch_mod/files/entities/buildings/remove_ground_small.xml", x - 96, y - 96 )
GamePlaySound( "data/audio/Desktop/event_cues.snd", "event_cues/greed_curse/create", x, y)

local pos_x = tonumber( GlobalsGetValue( "ctep_popquiz_x", "0" ) )
local pos_y = tonumber( GlobalsGetValue( "ctep_popquiz_y", "0" ) )
EntityLoad("mods/conga_twitch_mod/files/entities/buildings/popquiz_class_room_deleter.xml", pos_x , pos_y )

EntityKill( entity_item )

