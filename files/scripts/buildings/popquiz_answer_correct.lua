dofile_once("data/scripts/lib/utilities.lua")

function item_pickup( entity_item, entity_who_picked, name )
	local entity_id = GetUpdatedEntityID()
	local x,y = EntityGetTransform(entity_id)

    GamePrintImportant( "$log_congatwitch_popquiz_answer_correct_name", "$log_congatwitch_popquiz_answer_correct_desc", "mods/conga_twitch_mod/files/ui_gfx/decorations/3piece_creature_shift_green.png" )

    SetRandomSeed( GameGetFrameNum() + 1432, GameGetFrameNum() + 1432 + 8 )
    local prize = Random(1,100)

    if prize >= 95 then
        EntityLoad( "mods/conga_twitch_mod/files/entities/misc/cloud_healthium.xml", x, y - 32)
    elseif prize >= 90 then
        EntityLoad( "data/entities/items/pickup/heart_fullhp_temple.xml", x, y - 32)
        EntityLoad( "mods/conga_twitch_mod/files/entities/particles/smoke_cloud_generator.xml", x, y - 32 )
    elseif prize >= 80 then
        local cid = EntityLoad( "mods/conga_twitch_mod/files/entities/misc/effect_flight_infinite_long.xml", x, y )
        EntityAddChild( entity_who_picked, cid )
        GamePlaySound( "data/audio/Desktop/projectiles.bank", "player_projectiles/megalaser/launch", x, y )
    elseif prize >= 80 then
        local effect_id = EntityLoad( "mods/conga_twitch_mod/files/entities/misc/effect_crit_100_long.xml", x, y )
        EntityAddChild( entity_who_picked, effect_id )
    elseif prize >= 60 then
        EntityLoad( "data/entities/items/pickup/heart_better.xml", x, y - 32)
        EntityLoad( "mods/conga_twitch_mod/files/entities/particles/smoke_cloud_generator.xml", x, y - 32 )
    elseif prize >= 50 then
        EntityLoad( "data/entities/items/pickup/potion_starting.xml", x + 8, y - 4)
        EntityLoad( "data/entities/items/pickup/potion_starting.xml", x + 4, y - 4)
        EntityLoad( "data/entities/items/pickup/potion_starting.xml", x - 4, y - 4)
        EntityLoad( "data/entities/items/pickup/potion_starting.xml", x - 8, y - 4)
        EntityLoad( "mods/conga_twitch_mod/files/entities/particles/smoke_cloud_generator.xml", x, y - 4 )
    elseif prize >= 40 then
        EntityLoad( "mods/conga_twitch_mod/files/entities/items/pickups/orb_mattereater.xml", x, y - 32 )
        EntityLoad( "mods/conga_twitch_mod/files/entities/particles/smoke_cloud_generator.xml", x, y - 32 )
    elseif prize >= 30 then
        EntityLoad( "data/entities/items/wand_unshuffle_05.xml", x, y - 32 )
        EntityLoad( "mods/conga_twitch_mod/files/entities/particles/smoke_cloud_generator.xml", x, y - 32 )
    elseif prize >= 20 then
        EntityLoad( "data/entities/items/wand_unshuffle_04.xml", x, y - 32 )
        EntityLoad( "mods/conga_twitch_mod/files/entities/particles/smoke_cloud_generator.xml", x, y - 32 )
    elseif prize >= 4 then
        EntityLoad( "data/entities/items/wand_unshuffle_02.xml", x, y - 32 )
        EntityLoad( "mods/conga_twitch_mod/files/entities/particles/smoke_cloud_generator.xml", x, y - 32 )
    else
        EntityLoad( "data/entities/items/wand_unshuffle_08.xml", x, y - 32 )
        EntityLoad( "mods/conga_twitch_mod/files/entities/particles/smoke_cloud_generator.xml", x, y - 32 )
    end

    local targets = EntityGetInRadius( x, y, 512 )

    for i,v in ipairs( targets ) do
        if ( v ~= entity_id ) and ( EntityGetName( v ) == "popquiz_entity" ) then
            EntityKill ( v )
        end
    end

    EntityLoad( "mods/conga_twitch_mod/files/entities/buildings/remove_ground_small.xml", x + 96, y - 96 )
    EntityLoad( "mods/conga_twitch_mod/files/entities/buildings/remove_ground_small.xml", x, y - 96 )
    EntityLoad( "mods/conga_twitch_mod/files/entities/buildings/remove_ground_small.xml", x - 96, y - 96 )
    EntityLoad( "mods/conga_twitch_mod/files/entities/buildings/remove_ground_tiny.xml", x, y + 5 )
    GamePlaySound( "data/audio/Desktop/event_cues.bank", "event_cues/heart_fullhp/create", x, y )
    EntityKill( entity_item )

end

function physics_body_modified( is_destroyed )
	-- GamePrint( "A chest was broken open" )
	-- GameTriggerMusicCue( "item" )
	local entity_item = GetUpdatedEntityID()
end
