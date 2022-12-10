local ModEnabledMoCreep = ModIsEnabled("Mo_Creeps")
local MocreepTest = HasFlagPersistent( "mocreeps_card_unlocked_welcome_hint" )
local congatwitch_random_wraiths_name = "$integration_congatwitch_RANDOM_WRAITHS_name"
local congatwitch_random_wraiths_desc = "$integration_congatwitch_RANDOM_WRAITHS_desc"

if ModEnabledMoCreep then
	congatwitch_random_wraiths_name = "$integration_congatwitch_RANDOM_WRAITHS_name_mocreepcompat"
	congatwitch_random_wraiths_desc = "$integration_congatwitch_RANDOM_WRAITHS_desc_mocreepcompat"
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
		weight = 0.7,
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

	if ModEnabledMoCreep == false and (MocreepTest == true) then
    table.insert(streaming_events,
	{
		id = "CONGATWITCH_MUD_MEN",
		ui_name = "$integration_congatwitch_MUD_MEN_name",
		ui_description = "$integration_congatwitch_MUD_MEN_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 1.0,
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

	if ModEnabledMoCreep == false and (MocreepTest == true) then
    table.insert(streaming_events,
	{
		id = "CONGATWITCH_SUMMON_SKOUDE",
		ui_name = "$integration_congatwitch_SUMMON_SKOUDE_name",
		ui_description = "$integration_congatwitch_SUMMON_SKOUDE_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 0.9,
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


	if ModEnabledMoCreep == false and (MocreepTest == true) then
    table.insert(streaming_events,
	{
		id = "CONGATWITCH_HUNGRY_ORB",
		ui_name = "$integration_congatwitch_HUNGRY_ORB_name",
		ui_description = "$integration_congatwitch_HUNGRY_ORB_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 0.4,
		kind = STREAMING_EVENT_GOOD,
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


	if ModEnabledMoCreep == false and (MocreepTest == true) then
    table.insert(streaming_events,
	{
		id = "CONGATWITCH_DELUSIONAL",
		ui_name = "$integration_congatwitch_DELUSIONAL_name",
		ui_description = "$integration_congatwitch_DELUSIONAL_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 1.0,
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


	if ModEnabledMoCreep == false and (MocreepTest == true) then
    table.insert(streaming_events,
	{
		id = "CONGATWITCH_CLOWNS",
		ui_name = "$integration_congatwitch_CLOWNS_name",
		ui_description = "$integration_congatwitch_CLOWNS_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 1.0,
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


	if ModEnabledMoCreep == false and (MocreepTest == true) then
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

				EntityAddComponent2(
					entity_id,
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
				GlobalsSetValue( "ctep_startswapper", tostring(start_frame) )

                local x, y = EntityGetTransform( entity_id )
                local cid = EntityLoad( "mods/conga_twitch_mod/files/entities/misc/effect_plagiarize_swapper_visual.xml", x, y )
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
		weight = 0.8,
		kind = STREAMING_EVENT_GOOD,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do

				--Visuals
                local x, y = EntityGetTransform( entity_id )

                local cid = EntityLoad( "mods/conga_twitch_mod/files/entities/misc/effect_plagiarize_reflective_weirdo_new.xml", x, y )
                EntityAddChild( entity_id, cid )

				--Adds reflective weirdo effect to player
				EntityAddComponent2(
					entity_id,
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
					entity_id,
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
					entity_id,
					"VariableStorageComponent",
					{
						name="proj_file_ctm",
						value_string="data/entities/projectiles/wraith_glowing_laser.xml",
						value_float=0.5
					}
				)

				local start_frame = GameGetFrameNum()
				GlobalsSetValue( "ctep_startreflective", tostring(start_frame) )
                GamePlaySound( "data/audio/Desktop/projectiles.bank", "player_projectiles/megalaser/launch", x, y )
			end
		end,
	})


    table.insert(streaming_events,
	{
		id = "CONGATWITCH_RANDOM_WRAITHS",
		ui_name = congatwitch_random_wraiths_name,
		ui_description = congatwitch_random_wraiths_desc,
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
		weight = 0.75,
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
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_SHIELD_PLAYER_BIG",
		ui_name = "$integration_congatwitch_SHIELD_PLAYER_BIG_name",
		ui_description = "$integration_congatwitch_SHIELD_PLAYER_BIG_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 1.00,
		kind = STREAMING_EVENT_GOOD,
		action = function(event)
			for i,entity_id in pairs( get_players() ) do
				local x, y = EntityGetTransform( entity_id )
				
				local effect_id = EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/shield_oversized.xml", x, y )
				set_lifetime( effect_id )
				EntityAddChild( entity_id, effect_id )
				
				add_icon_in_hud( effect_id, "mods/conga_twitch_mod/files/ui_gfx/status_indicators/shield_oversized.png", event )
			end
		end,
	})

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_SAMPO",
		ui_name = "$integration_congatwitch_SAMPO_name",
		ui_description = "$integration_congatwitch_SAMPO_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.0001,
		kind = STREAMING_EVENT_GOOD,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
                local x, y = EntityGetTransform( entity_id )

                EntityLoad( "data/entities/animals/boss_centipede/sampo.xml", x, y )
                EntityLoad("mods/conga_twitch_mod/files/entities/particles/image_emitters/magical_symbol_materia_blue.xml", x, y)
				GameTriggerMusicFadeOutAndDequeueAll( 5.0 )
				GameTriggerMusicEvent( "music/oneshot/tripping_balls_01", false, x, y )
			end
		end,
	})

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_TRANSFORM_BULLETS",
		ui_name = "$integration_congatwitch_TRANSFORM_BULLETS_name",
		ui_description = "$integration_congatwitch_TRANSFORM_BULLETS_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/protect_enemies.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.8,
		kind = STREAMING_EVENT_BAD,
		delay_timer = 180,
		action_delayed = function(event)
			for i,entity_id in pairs( get_players() ) do
				local x, y = EntityGetTransform( entity_id )
				
				local effect_id = EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/effect_spells_to_bullets.xml", x, y )
				set_lifetime( effect_id )
				EntityAddChild( entity_id, effect_id )
				
				add_icon_in_hud( effect_id, "mods/conga_twitch_mod/files/ui_gfx/status_indicators/spells_to_bullets.png", event )
			end
		end,
	})

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_GOOD_SPELL_DROP",
		ui_name = "$integration_congatwitch_GOOD_SPELL_DROP_name",
		ui_description = "$integration_congatwitch_GOOD_SPELL_DROP_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/protect_enemies.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 1.0,
		kind = STREAMING_EVENT_GOOD,
		action = function(event)
			for i,entity_id in pairs( get_players() ) do
				local x, y = EntityGetTransform( entity_id )

				local opts = { "LIGHT_BULLET_TRIGGER", "LIGHT_BULLET_TRIGGER_2", "LIGHT", "BUCKSHOT", "BLOOD_MAGIC", "MANA_REDUCE", "CHAINSAW", "RECHARGE", "HOMING", "BLOODLUST", "BURST_8", "BURST_2", "DAMAGE", "BLACK_HOLE", "HEAL_BULLET", "PIERCING_SHOT", }
    
				
				local count = 3
	
				-- reward
				SetRandomSeed( GameGetFrameNum(), x + y + entity_id )
				--EntityLoad("data/entities/particles/image_emitters/magical_symbol_hobo_money.xml", x, y)
                EntityLoad("mods/conga_twitch_mod/files/entities/particles/image_emitters/magical_symbol_materia_blue.xml", x, y)
				GamePlaySound( "data/audio/Desktop/projectiles.snd", "player_projectiles/crumbling_earth/create", x, y)
			
				for i = 1, count do
					local rnd = Random(1, #opts)
					CreateItemActionEntity(opts[rnd], x - 8 * count + (i - 0.5) * 16, y)
					table.remove(opts, rnd)
				end
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_CAGE",
		ui_name = "$integration_congatwitch_CAGE_name",
		ui_description = "$integration_congatwitch_CAGE_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.90,
		kind = STREAMING_EVENT_BAD,
		action = function(event)
			for i,entity_id in pairs( get_players() ) do
				local x, y = EntityGetTransform( entity_id )
				
				EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/cage.xml", x, y )
				local effect_id = EntityLoad( "mods/conga_twitch_mod/files/entities/misc/event_cage_visual.xml", x, y )
				EntityAddChild( entity_id, effect_id )

				local enemy_list = EntityGetWithTag("enemy")
				SetRandomSeed(x,y)
				local fighter = enemy_list[Random(1,#enemy_list)]
				EntitySetTransform(fighter, x - 30, y)
				EntityLoad( "mods/conga_twitch_mod/files/entities/misc/poof_green_dense.xml", x - 30, y )
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_MASS_STATUS_WET",
		ui_name = "$integration_congatwitch_MASS_STATUS_WET_name",
		ui_description = "$integration_congatwitch_MASS_STATUS_WET_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.7,
		kind = STREAMING_EVENT_GOOD,
		action = function(event)
			for i,entity_id in pairs( get_players() ) do
				local x, y = EntityGetTransform( entity_id )
				
				EntityLoad( "mods/conga_twitch_mod/files/entities/projectiles/mass_status_wet.xml", x, y )
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_MASS_STATUS_DRUNK",
		ui_name = "$integration_congatwitch_MASS_STATUS_DRUNK_name",
		ui_description = "$integration_congatwitch_MASS_STATUS_DRUNK_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.7,
		kind = STREAMING_EVENT_NEUTRAL,
		action = function(event)
			for i,entity_id in pairs( get_players() ) do
				local x, y = EntityGetTransform( entity_id )
				
				EntityLoad( "mods/conga_twitch_mod/files/entities/projectiles/mass_status_drunk.xml", x, y )
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_MASS_STATUS_FIRE",
		ui_name = "$integration_congatwitch_MASS_STATUS_FIRE_name",
		ui_description = "$integration_congatwitch_MASS_STATUS_FIRE_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.7,
		kind = STREAMING_EVENT_BAD,
		action = function(event)
			for i,entity_id in pairs( get_players() ) do
				local x, y = EntityGetTransform( entity_id )
				
				EntityLoad( "mods/conga_twitch_mod/files/entities/projectiles/mass_status_fire.xml", x, y )
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_STATUS_AILMENT_GHOST",
		ui_name = "$integration_congatwitch_STATUS_AILMENT_GHOST_name",
		ui_description = "$integration_congatwitch_STATUS_AILMENT_GHOST_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.9,
		kind = STREAMING_EVENT_GOOD,
		action = function(event)
			local players = get_players()
			
			for a,player in ipairs( players ) do
				if EntityGetComponent(player, "GenomeDataComponent") ~= nil then
					local count = 1
					local random_viewer_names = nil
					local entity_id = nil
					for i=1,count do
						entity_id = EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/ghost_status_ailment.xml" )

						set_lifetime( entity_id, 2.0 )
						EntityAddChild( player, entity_id )
						
						local random_viewer_name = StreamingGetRandomViewerName()
						add_text_above_head( entity_id, random_viewer_name )

						if random_viewer_name ~= "" then
							if random_viewer_names == nil then
								random_viewer_names = random_viewer_name
							else
								random_viewer_names = random_viewer_names .. ", " .. random_viewer_name
							end
						end
					end

					if random_viewer_names ~= nil then
						random_viewer_names = random_viewer_names .. " "
						add_icon_in_hud( entity_id, "mods/conga_twitch_mod/files/ui_gfx/status_indicators/ghost_status_ailment.png", event, random_viewer_names )
					end
				end
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_LAG_PLAYER",
		ui_name = "$integration_congatwitch_LAG_PLAYER_name",
		ui_description = "$integration_congatwitch_LAG_PLAYER_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.8,
		delay_timer = 180,
		kind = STREAMING_EVENT_BAD,
		action_delayed = function(event)
			for i,entity_id in pairs( get_players() ) do
				local x, y = EntityGetTransform( entity_id )
				
				local cid = EntityLoad( "mods/conga_twitch_mod/files/entities/misc/effect_lag_player.xml", x, y )
                EntityAddChild( entity_id, cid )
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_SEA_BERSERKIUM",
		ui_name = "$integration_congatwitch_SEA_BERSERKIUM_name",
		ui_description = "$integration_congatwitch_SEA_BERSERKIUM_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 1.0,
		kind = STREAMING_EVENT_BAD,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
				local x, y = EntityGetTransform( entity_id )

				EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/sea_berserkium.xml", x, y )
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_POLY_WORM_END",
		ui_name = "$integration_congatwitch_POLY_WORM_END_name",
		ui_description = "$integration_congatwitch_POLY_WORM_END_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.9,
		kind = STREAMING_EVENT_AWFUL,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
				local x, y = EntityGetTransform( entity_id )
				
				local cid = EntityLoad( "mods/conga_twitch_mod/files/entities/misc/effect_polymorph_forced_hellworm.xml", x, y )
                EntityAddChild( entity_id, cid )
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_CIRCLE_SMOKE",
		ui_name = "$integration_congatwitch_CIRCLE_SMOKE_name",
		ui_description = "$integration_congatwitch_CIRCLE_SMOKE_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 1.0,
		kind = STREAMING_EVENT_BAD,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
				local x, y = EntityGetTransform( entity_id )

				EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/circle_smoke.xml", x, y )
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_SUMMON_PATA",
		ui_name = "$integration_congatwitch_SUMMON_PATA_name",
		ui_description = "$integration_congatwitch_SUMMON_PATA_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 1.0,
		kind = STREAMING_EVENT_BAD,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
				local x, y = EntityGetTransform( entity_id )

				EntityLoad( "data/entities/props/physics_pata.xml", x, y - 20 )
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_SPELLS_TO_DEATHCROSS",
		ui_name = "$integration_congatwitch_SPELLS_TO_DEATHCROSS_name",
		ui_description = "$integration_congatwitch_SPELLS_TO_DEATHCROSS_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.9,
		kind = STREAMING_EVENT_BAD,
		delay_timer = 180,
		action_delayed = function(event)
			for i,entity_id in pairs( get_players() ) do
				local x, y = EntityGetTransform( entity_id )
				
				local effect_id = EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/effect_spells_to_deathcross.xml", x, y )
				set_lifetime( effect_id )
				EntityAddChild( entity_id, effect_id )
				
				add_icon_in_hud( effect_id, "mods/conga_twitch_mod/files/ui_gfx/status_indicators/death_crosses.png", event )
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_RANDOM_ENEMY_ATTACKS",
		ui_name = "$integration_congatwitch_RANDOM_ENEMY_ATTACKS_name",
		ui_description = "$integration_congatwitch_RANDOM_ENEMY_ATTACKS_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 1.7,
		kind = STREAMING_EVENT_BAD,
		delay_timer = 180,
		action = function(event)
			local t = GameGetFrameNum()
			for id,enemy in pairs(get_enemies_in_radius(800)) do
				local pos_x, pos_y = EntityGetTransform(enemy)
				SetRandomSeed(pos_x + pos_y, pos_x * pos_y)

				local projPool = {
					"acidburst",
					"acidshot",
					"acidshot_slow",
					"arrow",
					"bat",
					"bloomshot",
					"bomb",
					"bomb_cart",
					"bomb_holy",
					"cocktail",
					--"bomb_holy_giga",
					"bomb_small",
					"bossdragon",
					"bossdragon_ray",
					"buckshot",
					"bullet_poison",
					"chaos_polymorph",
					"chunk_of_soil",
					"circle_acid_small",
					"circle_blood_small",
					"circle_lava_small",
					--"circle_water",
					"clusterbomb",
					"cocktail",
					"coward_bullet",
					"darkflame",
					"darkflame_stationary",
					"dotshot",
					"dotshot_strong",
					--"egg_fire",
					--"egg_monster",
					--"egg_purple",
					--"egg_red",
					--"egg_slime",
					--"egg_worm",
					"enlightened_laser_dark_wand",
					"enlightened_laser_elec_wand",
					"enlightened_laser_fire_wand",
					"enlightened_laser_light_wand",
					"explosion",
					"fire_trap",
					"fireball",
					"fireball_bigfirebug",
					"fireball_firebug", 
					"fireball_ghostly",
					"flamethrower",
					"freeze_circle",
					"fungus",
					"fungus_big_explosion",
					"fungus_explosion",
					"gasblob",
					"glitter_bomb",
					"glue",
					"glue_shot",
					"grenade_leader",
					"grenade_scavenger",
					"healshot",
					"healshot_safe_haven",
					"healshot_slow",
					"hiddenshot",
					"ice",
					"iceball",
					"icethrower",
					"invisshot",
					"laser_bouncy",
					"laser_lasergun",
					"laser_spear",
					"laser_turret",
					"laserbeam",
					"laserbeam_green",
					"lavashot",
					"meteor_green",
					"lightning",
					"lurkershot",
					"machinegun_bullet_roboguard_big",
					"machinegun_bullet_slow",
					"machinegun_bullet_slower",
					"machinegun_bullet_tank",
					"machinegun_bullet_tank_super",
					"megalaser_blue",
					"megalaser_blue_beam",
					"meteor_green",
					"mine",
					"mine_scavenger",
					"neutralizershot",
					"orb",
					"orb_blue",
					"orb_cursed",
					"orb_dark",
					"orb_expanding",
					"orb_green",
					"orb_green_accelerating",
					"orb_green_boss_dragon",
					"orb_green_spin",
					"orb_hearty",
					"orb_homing",
					"orb_neutral",
					"orb_pink",
					"orb_pink_big",
					"orb_pink_big_slow",
					"orb_pink_big_super",
					"orb_pink_big_super_shrapnel",
					"orb_pink_fast",
					"orb_pink_super",
					--"orb_poly",
					"orb_purple",
					"orb_swapper",
					"orb_tele",
					"orb_tiny",
					"orb_twitchy",
					"orb_weaken",
					"orb_wither",
					"orb_weaken",
					"orb_wither",
					"orbspawner",
					"orbspawner_blue",
					"orbspawner_green",
					"pebble",
					"pollen",
					"pollen_ball",
					--"polyorb",
					"present",
					"propane_tank",
					"radioactive_blob",
					"radioactive_blob_trail",
					"radioactive_liquid",
					--"rain_gold",
					--"remove_ground",
					"rocket_tank",
					"rocket_tiny",
					"rocket_tiny_roll",
					"sentryshot",
					"shieldshot",
					"shieldshot_small",
					"slimeblob",
					"slimetrail",
					"smalltentacle",
					"smalltentacle_melee",
					"sniperbullet",
					"soldiershot",
					"spit_trap",
					"summonshine",
					"tentacle",
					"thunder_trap",
					"thunderball",
					"thunderball_line",
					"thunderball_slow",
					"tnt",
					"wraith_glowing_laser",
					"deck/all_blackholes",
					"deck/all_deathcrosses",
					"deck/all_discs",
					--"deck/all_nukes",
					"deck/all_rockets",
					"deck/berserk_field",
					"deck/big_magic_shield_start",
					"deck/black_hole",
					"deck/black_hole_big",
					"deck/black_hole_giga",
					"deck/bloodtentacle",
					"deck/bomb_detonator",
					"deck/bouncy_orb",
					"deck/bubbleshot",
					"deck/bullet",
					"deck/bullet_heavy",
					"deck/bullet_slow",
					"deck/chain_bolt",
					"deck/chainsaw",
					"deck/chaos_polymorph_field",
					"deck/charm_field",
					"deck/cloud_acid",
					"deck/cloud_blood",
					"deck/cloud_water",
					"deck/crumbling_earth",
					"deck/disc_bullet",
					"deck/disc_bullet_big",
					"deck/disc_bullet_bigger",
					"deck/grenade",
					"deck/grenade_tier_2",
					"deck/grenade_tier_3",
					"deck/infestation",
					"deck/luminous_drill",
					"deck/sausage",
					--"deck/sea_acid",
					--"deck/sea_alcohol",
					"deck/sea_water",
					--"deck/sea_lava",
					"deck/spitter",
					"deck/spitter_tier_2",
					"deck/spitter_tier_3",
					"deck/swarm_wasp",
					"deck/swarm_fly",
					"deck/swarm_firebug",
					"deck/touch_gold",
					"deck/worm_shot",
					"deck/megalaser",
					"deck/light_bullet",
					"deck/spiral_shot",
					"deck/spore_pod",
				}

				local projFile = projPool[Random(1,#projPool)]

				local comp = EntityGetFirstComponent( enemy, "AnimalAIComponent" )
				if comp ~= nil then
					ComponentSetValue2( comp, "attack_ranged_entity_file", "data/entities/projectiles/" .. projFile .. ".xml" )
					if (projFile == "healshot") or (projFile == "healshot_safe_haven") or (projFile == "healshot_slow") or (projFile == "invisshot") or (projFile == "shieldshot") or (projFile == "shieldshot_small") then
						ComponentSetValue2( comp, "tries_to_ranged_attack_friends", true )
						ComponentSetValue2( comp, "attack_if_damaged_probability", 0 )
						ComponentSetValue2( comp, "escape_if_damaged_probability", 100 )
						ComponentSetValue2( comp, "attack_ranged_enabled", true )
						--GamePrint("My status on shooting friends is true and my projectile is " .. projFile)
					else 
						ComponentSetValue2( comp, "tries_to_ranged_attack_friends", false )
						ComponentSetValue2( comp, "attack_ranged_enabled", true )
						--GamePrint("My status on shooting friends is false and my projectile is " .. projFile)
					end
				end

				local attackComp = EntityGetComponentIncludingDisabled( enemy, "AIAttackComponent" )
				if attackComp ~= nil then
					for i,comp in ipairs(attackComp) do
						ComponentSetValue2( comp, "attack_ranged_entity_file", "data/entities/projectiles/" .. projFile .. ".xml" )
					end
				end
			end
		end,
	})

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_SPARKBOLT_FLOOD",
		ui_name = "$integration_congatwitch_SPARKBOLT_FLOOD_name",
		ui_description = "$integration_congatwitch_SPARKBOLT_FLOOD_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/protect_enemies.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.8,
		kind = STREAMING_EVENT_NEUTRAL,
		action = function(event)
			for i,entity_id in pairs( get_players() ) do
				local x, y = EntityGetTransform( entity_id )

				local opts = { "LIGHT_BULLET", "LIGHT_BULLET", "LIGHT_BULLET", "LIGHT_BULLET", "LIGHT_BULLET", "LIGHT_BULLET", "LIGHT_BULLET_TRIGGER", "LIGHT_BULLET_TRIGGER", "LIGHT_BULLET_TRIGGER_2", }
    
				
				local count = 20
	
				-- reward
				SetRandomSeed( GameGetFrameNum(), x + y + entity_id )
				--EntityLoad("data/entities/particles/image_emitters/magical_symbol_hobo_money.xml", x, y)
                EntityLoad("mods/conga_twitch_mod/files/entities/particles/image_emitters/magical_symbol_materia_blue.xml", x, y)
				GamePlaySound( "data/audio/Desktop/projectiles.snd", "player_projectiles/crumbling_earth/create", x, y)
			
				for i = 1, count do
					local rnd = Random(1, #opts)
					CreateItemActionEntity(opts[rnd], x - 8 * count + (i - 0.5) * 16, y)
				end
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_CRIT_100",
		ui_name = "$integration_congatwitch_CRIT_100_name",
		ui_description = "$integration_congatwitch_CRIT_100_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 1.00,
		kind = STREAMING_EVENT_GOOD,
		action = function(event)
			for i,entity_id in pairs( get_players() ) do
				local x, y = EntityGetTransform( entity_id )
				
				local effect_id = EntityLoad( "mods/conga_twitch_mod/files/entities/misc/effect_crit_100.xml", x, y )
				--set_lifetime( effect_id )
				EntityAddChild( entity_id, effect_id )
				
				add_icon_in_hud( effect_id, "mods/conga_twitch_mod/files/ui_gfx/status_indicators/crit_100.png", event )
			end
		end,
	})


    table.insert(streaming_events,
	{
		id = "CONGATWITCH_NETHER_PORTAL",
		ui_name = "$integration_congatwitch_NETHER_PORTAL_name",
		ui_description = "$integration_congatwitch_NETHER_PORTAL_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.9,
		kind = STREAMING_EVENT_BAD,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
				local x, y = EntityGetTransform( entity_id )
				GlobalsSetValue( "ctep_nether_x", tostring(x) )
				GlobalsSetValue( "ctep_nether_y", tostring(y) )

				EntityLoad( "mods/conga_twitch_mod/files/entities/buildings/portal_nether_into.xml", x, y - 60 )
				EntityLoad( "mods/conga_twitch_mod/files/entities/buildings/remove_ground_small.xml", x, y - 60 )
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_FLIGHT_INFINITE",
		ui_name = "$integration_congatwitch_FLIGHT_INFINITE_name",
		ui_description = "$integration_congatwitch_FLIGHT_INFINITE_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 1.00,
		kind = STREAMING_EVENT_GOOD,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
                local x, y = EntityGetTransform( entity_id )

                local cid = EntityLoad( "mods/conga_twitch_mod/files/entities/misc/effect_flight_infinite.xml", x, y )
                EntityAddChild( entity_id, cid )
                GamePlaySound( "data/audio/Desktop/projectiles.bank", "player_projectiles/megalaser/launch", x, y )
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_SPELLS_TO_HAMIS",
		ui_name = "$integration_congatwitch_SPELLS_TO_HAMIS_name",
		ui_description = "$integration_congatwitch_SPELLS_TO_HAMIS_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.9,
		kind = STREAMING_EVENT_BAD,
		delay_timer = 180,
		action_delayed = function(event)
			for i,entity_id in pairs( get_players() ) do
				local x, y = EntityGetTransform( entity_id )
				
				local effect_id = EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/effect_spells_to_hamis.xml", x, y )
				set_lifetime( effect_id )
				EntityAddChild( entity_id, effect_id )
				
				add_icon_in_hud( effect_id, "mods/conga_twitch_mod/files/ui_gfx/status_indicators/spells_to_hamis.png", event )
			end
		end,
	})


    table.insert(streaming_events,
	{
		id = "CONGATWITCH_JUMPSCARE",
		ui_name = "$integration_congatwitch_JUMPSCARE_name",
		ui_description = "$integration_congatwitch_JUMPSCARE_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "(Concept by Pitogiiyo) Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.9,
		kind = STREAMING_EVENT_AWFUL,
		action = function(event)

			local creep_id = 0
			local pool = {
				"boss_alchemist/boss_alchemist",
				"boss_fish/fish_giga",
				"boss_ghost/boss_ghost",
				"boss_limbs/boss_limbs",
				"boss_pit/boss_pit",
				"boss_robot/boss_robot",
				"boss_wizard/boss_wizard",
				"maggot_tiny/maggot_tiny",
				"boss_dragon",
			}

			local boss = pool[Random(1, #pool)]


			local players = get_players()
			SetRandomSeed( GameGetFrameNum(), GameGetFrameNum() + 353 )
			
			for i,entity_id in ipairs( players ) do
                local x, y = EntityGetTransform( entity_id )

				EntityLoad( "data/entities/particles/image_emitters/magical_symbol_fast.xml", x, y - 80 )
				GamePlaySound( "data/audio/Desktop/event_cues.snd", "event_cues/greed_curse/create", x, y - 80 )
				if pool == "maggot_tiny" then
                	creep_id = EntityLoad( "data/entities/animals/".. boss ..".xml", x, y - 140 )
				else
                	creep_id = EntityLoad( "data/entities/animals/".. boss ..".xml", x, y - 80 )
				end
				EntityAddComponent2(
					creep_id,
					"LifetimeComponent",
					{
						lifetime=100
					}
				)
			end
		end,
	})


    table.insert(streaming_events,
	{
		id = "CONGATWITCH_THEEND",
		ui_name = "$integration_congatwitch_THEEND_name",
		ui_description = "$integration_congatwitch_THEEND_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "(Concept by Pitogiiyo) Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 1.0,
		kind = STREAMING_EVENT_BAD,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
				local x, y = EntityGetTransform( entity_id )

				EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/convert_the_end.xml", x, y )
			end
		end,
	})


    table.insert(streaming_events,
	{
		id = "CONGATWITCH_FLUTE_HOLY_BOMB",
		ui_name = "$integration_congatwitch_FLUTE_HOLY_BOMB_name",
		ui_description = "$integration_congatwitch_FLUTE_HOLY_BOMB_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "(Concept by Pitogiiyo) Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 1.2,
		kind = STREAMING_EVENT_NEUTRAL,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
				local x, y = EntityGetTransform( entity_id )

				--I could ray cast a perfect circle, but this is faster, easier, less resource intensive and gets a similar enough effect
				EntityLoad( "mods/conga_twitch_mod/files/entities/items/wands/custom/flute.xml", x + 30, y )
				EntityLoad( "mods/conga_twitch_mod/files/entities/items/wands/custom/flute.xml", x - 30, y )
				EntityLoad( "mods/conga_twitch_mod/files/entities/items/wands/custom/flute.xml", x + 15, y - 20 )
				EntityLoad( "mods/conga_twitch_mod/files/entities/items/wands/custom/flute.xml", x - 15, y - 20 )
				EntityLoad( "mods/conga_twitch_mod/files/entities/items/wands/custom/flute.xml", x + 15, y + 20 )
				EntityLoad( "mods/conga_twitch_mod/files/entities/items/wands/custom/flute.xml", x - 15, y + 20 )
			end

			if GameHasFlagRun( "ctep_soothing_holybomb" ) == true and GameHasFlagRun( "ctep_soothing_worm" ) ~= true then
				GameAddFlagRun( "ctep_soothing_worm" )
			elseif GameHasFlagRun( "ctep_soothing_holybomb" ) ~= true and GameHasFlagRun( "ctep_soothing_worm" ) ~= true then
				GameAddFlagRun( "ctep_soothing_holybomb" )
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_LUKKI_SOUL",
		ui_name = "$integration_congatwitch_LUKKI_SOUL_name",
		ui_description = "$integration_congatwitch_LUKKI_SOUL_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "(Concept by Pitogiiyo) Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.8,
		kind = STREAMING_EVENT_GOOD,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
                local x, y = EntityGetTransform( entity_id )

                local cid = EntityLoad( "mods/conga_twitch_mod/files/entities/misc/effect_lukki_soul.xml", x, y )
                EntityAddChild( entity_id, cid )
                GamePlaySound( "data/audio/Desktop/projectiles.bank", "player_projectiles/megalaser/launch", x, y )
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_NAVI",
		ui_name = "$integration_congatwitch_NAVI_name",
		ui_description = "$integration_congatwitch_NAVI_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "(Concept by Pitogiiyo) Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 0.9,
		kind = STREAMING_EVENT_GOOD,
		action = function(event)
			local players = get_players()
			
			for a,player in ipairs( players ) do
				if EntityGetComponent(player, "GenomeDataComponent") ~= nil then
					local count = 1
					local random_viewer_names = nil
					local entity_id = nil
					for i=1,count do
						entity_id = EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/ghost_navi.xml" )

						set_lifetime( entity_id, 2.0 )
						EntityAddChild( player, entity_id )
						
						local random_viewer_name = StreamingGetRandomViewerName()
						add_text_above_head( entity_id, random_viewer_name )

						if random_viewer_name ~= "" then
							if random_viewer_names == nil then
								random_viewer_names = random_viewer_name
							else
								random_viewer_names = random_viewer_names .. ", " .. random_viewer_name
							end
						end
					end

					if random_viewer_names ~= nil then
						random_viewer_names = random_viewer_names .. " "
						add_icon_in_hud( entity_id, "mods/conga_twitch_mod/files/ui_gfx/status_indicators/ghost_navi.png", event, random_viewer_names )
					end
				end
			end
		end,
	})
	

    table.insert(streaming_events,
	{
		id = "CONGATWITCH_POPQUIZ",
		ui_name = "$integration_congatwitch_POPQUIZ_name",
		ui_description = "$integration_congatwitch_POPQUIZ_desc",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "(Concept by Pitogiiyo) Conga Lyne - Conga's Twitch Expansion Pack",
		weight = 1.8,
		kind = STREAMING_EVENT_BAD,
		action = function(event)
			local players = get_players()

			for i,entity_id in ipairs( players ) do
				
				local pos_x, pos_y = EntityGetTransform(entity_id)

				GamePlaySound( "data/audio/Desktop/event_cues.bank", "event_cues/heart_fullhp/create", pos_x, pos_y )
				EntityLoad("mods/conga_twitch_mod/files/entities/buildings/popquiz_class_room.xml", pos_x, pos_y )

			end
		end,
	})