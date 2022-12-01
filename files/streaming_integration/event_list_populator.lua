local ModEnabledMoCreep = ModIsEnabled("Mo_Creeps")
local congatwitch_random_wraiths_name = "$integration_mocreep_RANDOM_WRAITHS_name"
local congatwitch_random_wraiths_desc = "$integration_mocreep_RANDOM_WRAITHS_desc"

if ModEnabledMoCreep then
	congatwitch_random_wraiths_name = "$integration_mocreep_RANDOM_WRAITHS_name_mocreepcompat"
	congatwitch_random_wraiths_desc = "$integration_mocreep_RANDOM_WRAITHS_desc_mocreepcompat"
end


	if ModEnabledMoCreep == false then
    table.insert(streaming_events,
	{
		id = "CONGATWITCH_RANDOM_CATS",
		ui_name = "$integration_congatwitch_RANDOM_CATS_name",
		ui_description = "$integration_congatwitch_RANDOM_CATS_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 1.0,
		kind = STREAMING_EVENT_GOOD,
		action = function(event)
			local players = get_players()
			SetRandomSeed( GameGetFrameNum(), GameGetFrameNum() + 353 )

            local catcount = 20
			
			for i,entity_id in ipairs( players ) do
                repeat
                    local x, y = EntityGetTransform( entity_id )
                    
                    local angle = Random( 0, 31415 ) * 0.0001
                    local length = 35
                    
                    local ex = x + math.cos( angle ) * length
                    local ey = y - math.sin( angle ) * length

                    EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/cat_spawner.xml", ex, ey )

                    catcount = catcount - 1
        
                until (catcount < 1)
			end
		end,
	})
	end


	if ModEnabledMoCreep == false then
    table.insert(streaming_events,
	{
		id = "CONGATWITCH_WAND_WONDERS",
		ui_name = "$integration_congatwitch_WAND_WONDERS_name",
		ui_description = "$integration_congatwitch_WAND_WONDERS_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 0.8,
		kind = STREAMING_EVENT_NEUTRAL,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
                local x, y = EntityGetTransform( entity_id )

                EntityLoad( "mods/conga_twitch_mod/files/entities/items/wands/custom/wand_of_wonders.xml", x, y )
                EntityLoad("mods/conga_twitch_mod/files/entities/particles/image_emitters/magical_symbol_materia_blue.xml", x, y)
                GamePlaySound( "data/audio/Desktop/projectiles.snd", "player_projectiles/crumbling_earth/create", x, y)
			end
		end,
	})
	end


	if ModEnabledMoCreep == false then
    table.insert(streaming_events,
	{
		id = "CONGATWITCH_PANDORA_CHEST",
		ui_name = "$integration_congatwitch_PANDORA_CHEST_name",
		ui_description = "$integration_congatwitch_PANDORA_CHEST_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 0.75,
		kind = STREAMING_EVENT_BAD,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
                local x, y = EntityGetTransform( entity_id )

                EntityLoad( "mods/conga_twitch_mod/files/entities/items/pickups/chest_random_cursed.xml", x, y - 32 )
                GamePlaySound( "data/audio/Desktop/projectiles.snd", "player_projectiles/crumbling_earth/create", x, y)
			end
		end,
	})
	end


	if ModEnabledMoCreep == false then
    table.insert(streaming_events,
	{
		id = "CONGATWITCH_TRANSFORM_WORMS",
		ui_name = "$integration_congatwitch_TRANSFORM_WORMS_name",
		ui_description = "$integration_congatwitch_TRANSFORM_WORMS_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/protect_enemies.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 0.6,
		kind = STREAMING_EVENT_BAD,
		delay_timer = 180,
		action_delayed = function(event)
			for i,entity_id in pairs( get_players() ) do
				local x, y = EntityGetTransform( entity_id )
				
				local effect_id = EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/effect_spells_to_worms.xml", x, y )
				set_lifetime( effect_id )
				EntityAddChild( entity_id, effect_id )
				
				add_icon_in_hud( effect_id, "mods/conga_twitch_mod/files/ui_gfx/status_indicators/worm.png", event )
			end
		end,
	})
	end

	if ModEnabledMoCreep == false then
    table.insert(streaming_events,
	{
		id = "CONGATWITCH_MUD_MEN",
		ui_name = "$integration_congatwitch_MUD_MEN_name",
		ui_description = "$integration_congatwitch_MUD_MEN_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 0.75,
		kind = STREAMING_EVENT_GOOD,
		action = function(event)
			local players = get_players()
			SetRandomSeed( GameGetFrameNum(), GameGetFrameNum() + 353 )

            local count = 10
			
			for i,entity_id in ipairs( players ) do
                repeat
                    local x, y = EntityGetTransform( entity_id )
                    
                    local angle = Random( 0, 31415 ) * 0.0001
                    local length = 45
                    
                    local ex = x + math.cos( angle ) * length
                    local ey = y - math.sin( angle ) * length

                    local creep_id = EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/mudman_spawner.xml", ex, ey )
                    add_text_above_head( creep_id, StreamingGetRandomViewerName() )

                    count = count - 1
        
                until (count < 1)
			end
		end,
	})
	end

	if ModEnabledMoCreep == false then
    table.insert(streaming_events,
	{
		id = "CONGATWITCH_SUMMON_SKOUDE",
		ui_name = "$integration_congatwitch_SUMMON_SKOUDE_name",
		ui_description = "$integration_congatwitch_SUMMON_SKOUDE_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 0.4,
		kind = STREAMING_EVENT_AWFUL,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
                local x, y = EntityGetTransform( entity_id )
                EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/portal_skoude.xml", x, y - 16 )
			end
		end,
	})
	end


	if ModEnabledMoCreep == false then
    table.insert(streaming_events,
	{
		id = "CONGATWITCH_HUNGRY_ORB",
		ui_name = "$integration_congatwitch_HUNGRY_ORB_name",
		ui_description = "$integration_congatwitch_HUNGRY_ORB_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 0.05,
		kind = STREAMING_EVENT_NEUTRAL,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
                local x, y = EntityGetTransform( entity_id )

                EntityLoad( "mods/conga_twitch_mod/files/entities/items/pickups/orb_mattereater.xml", x, y - 16 )
                GamePlaySound( "data/audio/Desktop/projectiles.snd", "player_projectiles/crumbling_earth/create", x, y)
			end
		end,
	})
	end


	if ModEnabledMoCreep == false then
    table.insert(streaming_events,
	{
		id = "CONGATWITCH_DELUSIONAL",
		ui_name = "$integration_congatwitch_DELUSIONAL_name",
		ui_description = "$integration_congatwitch_DELUSIONAL_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 0.9,
		kind = STREAMING_EVENT_BAD,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
                local x, y = EntityGetTransform( entity_id )

                EntityLoad( "mods/conga_twitch_mod/files/entities/projectiles/orb_psychotic_nodmg.xml", x, y )
                GamePlaySound( "data/audio/Desktop/projectiles.bank", "player_projectiles/megalaser/launch", x, y )
			end
		end,
	})
	end


	if ModEnabledMoCreep == false then
    table.insert(streaming_events,
	{
		id = "CONGATWITCH_CLOWNS",
		ui_name = "$integration_congatwitch_CLOWNS_name",
		ui_description = "$integration_congatwitch_CLOWNS_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 0.4,
		kind = STREAMING_EVENT_NEUTRAL,
		action = function(event)
			local players = get_players()
			SetRandomSeed( GameGetFrameNum(), GameGetFrameNum() + 353 )

            local catcount = 7
			
			for i,entity_id in ipairs( players ) do
                repeat
                    local x, y = EntityGetTransform( entity_id )
                    
                    local angle = Random( 0, 31415 ) * 0.0001
                    local length = 50
                    
                    local ex = x + math.cos( angle ) * length
                    local ey = y - math.sin( angle ) * length

                    local creep_id = EntityLoad( "mods/conga_twitch_mod/files/entities/animals/hisii_clown.xml", ex, ey )
                    add_text_above_head( creep_id, StreamingGetRandomViewerName() )

                    catcount = catcount - 1
        
                until (catcount < 1)
			end
		end,
	})
	end


	if ModEnabledMoCreep == false then
    table.insert(streaming_events,
	{
		id = "CONGATWITCH_SWAPPER_CURSE",
		ui_name = "$integration_congatwitch_SWAPPER_CURSE_name",
		ui_description = "$integration_congatwitch_SWAPPER_CURSE_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 0.8,
		kind = STREAMING_EVENT_BAD,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
                local x, y = EntityGetTransform( entity_id )

                local cid = EntityLoad( "mods/conga_twitch_mod/files/entities/misc/effect_plagiarize_swapper.xml", x, y )
                EntityAddChild( entity_id, cid )
                GamePlaySound( "data/audio/Desktop/projectiles.bank", "player_projectiles/megalaser/launch", x, y )
			end
		end,
	})
	end



    table.insert(streaming_events,
	{
		id = "CONGATWITCH_MIRROR_CURSE",
		ui_name = "$integration_congatwitch_MIRROR_CURSE_name",
		ui_description = "$integration_congatwitch_MIRROR_CURSE_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.6,
		kind = STREAMING_EVENT_GOOD,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
                local x, y = EntityGetTransform( entity_id )

                local cid = EntityLoad( "mods/conga_twitch_mod/files/entities/misc/effect_plagiarize_reflective_weirdo.xml", x, y )
                EntityAddChild( entity_id, cid )
                GamePlaySound( "data/audio/Desktop/projectiles.bank", "player_projectiles/megalaser/launch", x, y )
			end
		end,
	})


    table.insert(streaming_events,
	{
		id = "CONGATWITCH_RANDOM_WRAITHS",
		ui_name = ongatwitch_random_wraiths_name,
		ui_description = ongatwitch_random_wraiths_desc,
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.8,
		kind = STREAMING_EVENT_BAD,
		delay_timer = 300,
		action_delayed = function(event)
                
			local pool = {
				"wraith",
				"wraith_glowing",
				"wraith_storm",
			}

			if ModIsEnabled("Mo_Creeps") then
				pool = {
					"wraith",
					"wraith_glowing",
					"wraith_storm",
					"wraith_returner_mocreep",
					"wraith_weirdo_shield",
				}
			end
		
			local players = get_players()
			SetRandomSeed( GameGetFrameNum(), GameGetFrameNum() + 353 )

            local catcount = 6
			
			for i,entity_id in ipairs( players ) do
                repeat
                    local x, y = EntityGetTransform( entity_id )
                    
                    local angle = Random( 0, 31415 ) * 0.0001
                    local length = 100
                    
                    local ex = x + math.cos( angle ) * length
                    local ey = y - math.sin( angle ) * length

                    local creep_id =EntityLoad( "data/entities/animals/"..pool[Random(1, #pool)]..".xml", ex, ey )
                    add_text_above_head( creep_id, StreamingGetRandomViewerName() )

                    catcount = catcount - 1
            
                until (catcount < 1)
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_TWWE_TEMP",
		ui_name = "$integration_congatwitch_TWWE_TEMP_name",
		ui_description = "$integration_congatwitch_TWWE_TEMP_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 1.0,
		kind = STREAMING_EVENT_GOOD,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
                local x, y = EntityGetTransform( entity_id )

                local cid = EntityLoad( "mods/conga_twitch_mod/files/entities/misc/effect_tinker_temporary.xml", x, y )
                EntityAddChild( entity_id, cid )
                GamePlaySound( "data/audio/Desktop/projectiles.bank", "player_projectiles/megalaser/launch", x, y )
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_MANA_DRAIN",
		ui_name = "$integration_congatwitch_MANA_DRAIN_name",
		ui_description = "$integration_congatwitch_MANA_DRAIN_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.65,
		kind = STREAMING_EVENT_BAD,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
                local x, y = EntityGetTransform( entity_id )

                local cid = EntityLoad( "mods/conga_twitch_mod/files/entities/misc/effect_mana_drain.xml", x, y )
                EntityAddChild( entity_id, cid )
                GamePlaySound( "data/audio/Desktop/projectiles.bank", "player_projectiles/megalaser/launch", x, y )
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_MANA_INFINITE",
		ui_name = "$integration_congatwitch_MANAINFINITE_name",
		ui_description = "$integration_congatwitch_MANAINFINITE_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 1.00,
		kind = STREAMING_EVENT_GOOD,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
                local x, y = EntityGetTransform( entity_id )

                local cid = EntityLoad( "mods/conga_twitch_mod/files/entities/misc/effect_mana_infinite.xml", x, y )
                EntityAddChild( entity_id, cid )
                GamePlaySound( "data/audio/Desktop/projectiles.bank", "player_projectiles/megalaser/launch", x, y )
			end
		end,
	})