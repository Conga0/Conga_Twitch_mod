dofile("data/scripts/lib/utilities.lua")

--Twitch Integration
ModLuaFileAppend( "data/scripts/streaming_integration/event_list.lua", "mods/Conga_Twitch_mod/files/streaming_integration/event_list_populator.lua" )

local content = ModTextFileGetContent("data/translations/common.csv")
ModTextFileSetContent("data/translations/common.csv", content .. [[
integration_congatwitch_RANDOM_CATS_name,"Kitty Cats!!",,,,,,,,,,,,,
integration_congatwitch_RANDOM_CATS_desc,"Cat! I'm a kitty cat! And I dance dance dance! And I dance dance dance!!",,,,,,,,,,,,,
integration_congatwitch_RANDOM_CATS_name,"Kitty Cats!!",,,,,,,,,,,,,
integration_congatwitch_RANDOM_CATS_desc,"Cat! I'm a kitty cat! And I dance dance dance! And I dance dance dance!!",,,,,,,,,,,,,
integration_congatwitch_WAND_WONDERS_name,"Spawn Wand of Wonders",,,,,,,,,,,,,
integration_congatwitch_WAND_WONDERS_desc,"A wonderful wand capable of anything. Cast It!",,,,,,,,,,,,,
integration_congatwitch_PANDORA_CHEST_name,"Pandora's Chest",,,,,,,,,,,,,
integration_congatwitch_PANDORA_CHEST_desc,"Do you dare open?",,,,,,,,,,,,,
integration_congatwitch_TRANSFORM_WORMS_name,"Spells to Worms",,,,,,,,,,,,,
integration_congatwitch_TRANSFORM_WORMS_desc,"All projectiles currently in the air turn into worms!",,,,,,,,,,,,,
integration_congatwitch_MUD_MEN_name,"Summon Mud Men",,,,,,,,,,,,,
integration_congatwitch_MUD_MEN_desc,"MUD MEN are here to save the day!!",,,,,,,,,,,,,
integration_congatwitch_SUMMON_SKOUDE_name,"Summon Skoude",,,,,,,,,,,,,
integration_congatwitch_SUMMON_SKOUDE_desc,"Skoude will arrive shortly.",,,,,,,,,,,,,
integration_congatwitch_HUNGRY_ORB_name,"Hungry Orb",,,,,,,,,,,,,
integration_congatwitch_HUNGRY_ORB_desc,"???",,,,,,,,,,,,,
integration_congatwitch_DELUSIONAL_name,"Delusional Streamer",,,,,,,,,,,,,
integration_congatwitch_DELUSIONAL_desc,"Your senses deceive you.",,,,,,,,,,,,,
integration_congatwitch_CLOWNS_name,"CLOWNS",,,,,,,,,,,,,
integration_congatwitch_CLOWNS_desc,"You're not a clown, you're the entire circus!!",,,,,,,,,,,,,
integration_congatwitch_SWAPPER_CURSE_name,"Curse of Swapping",,,,,,,,,,,,,
integration_congatwitch_SWAPPER_CURSE_desc,"You feel the blood of Swapper Mages runs through you",,,,,,,,,,,,,
integration_congatwitch_MIRROR_CURSE_name,"Reflect Projectiles",,,,,,,,,,,,,
integration_congatwitch_MIRROR_CURSE_desc,"You feel like reflecting enemy projectiles.",,,,,,,,,,,,,
integration_congatwitch_RANDOM_WRAITHS_name,"Random Creeps",,,,,,,,,,,,,
integration_congatwitch_RANDOM_WRAITHS_desc,"Weirdos sold seperately.",,,,,,,,,,,,,
integration_congatwitch_RANDOM_WRAITHS_name_mocreepcompat,"Random Wraiths",,,,,,,,,,,,,
integration_congatwitch_RANDOM_WRAITHS_desc_mocreepcompat,"Creeps & Weirdos included.",,,,,,,,,,,,,
integration_congatwitch_TWWE_TEMP_name,"Temporary Wand Tinkering",,,,,,,,,,,,,
integration_congatwitch_TWWE_TEMP_desc,"Tinker with Wands anywhere for the next 3 minutes!",,,,,,,,,,,,,
integration_congatwitch_MANA_DRAIN_name,Mana Degradation,Разложение маны,,,,,,,,,,,,
integration_congatwitch_MANA_DRAIN_desc,You are loosing Mana Rapidly!!,Вы стремительно теряете ману!!!,,,,,,,,,,,,
integration_congatwitch_MANAINFINITE_name,"Infinite Mana",,,,,,,,,,,,,
integration_congatwitch_MANAINFINITE_desc,"Unlimited mana regeneration for the next 40 seconds!",,,,,,,,,,,,,
integration_congatwitch_SHIELD_PLAYER_BIG_name,"Oversized Shield",,,,,,,,,,,,,
integration_congatwitch_SHIELD_PLAYER_BIG_desc,"This shield is nigh-indestructible!.. but a bit too big for you.",,,,,,,,,,,,,
integration_congatwitch_SAMPO_name,"Sampo",,,,,,,,,,,,,
integration_congatwitch_SAMPO_desc,"Is it real....?",,,,,,,,,,,,,
integration_congatwitch_TRANSFORM_BULLETS_name,"Spells to Bullets",,,,,,,,,,,,,
integration_congatwitch_TRANSFORM_BULLETS_desc,"All projectiles currently in the air turn into high-calibre bullets!",,,,,,,,,,,,,
integration_congatwitch_GOOD_SPELL_DROP_name,"Good Spell Package",,,,,,,,,,,,,
integration_congatwitch_GOOD_SPELL_DROP_desc,"A care package of good spells to start a god-run appears on the floor!",,,,,,,,,,,,,
integration_congatwitch_CAGE_name,"Cage Fight",,,,,,,,,,,,,
integration_congatwitch_CAGE_desc,"Fight to the death!",,,,,,,,,,,,,
integration_congatwitch_MASS_STATUS_WET_name,"Mass Wet",,,,,,,,,,,,,
integration_congatwitch_MASS_STATUS_WET_desc,"It's like a trip to the beach!",,,,,,,,,,,,,
integration_congatwitch_MASS_STATUS_DRUNK_name,"Mass Drunk",,,,,,,,,,,,,
integration_congatwitch_MASS_STATUS_DRUNK_desc,"You're the life of the party!",,,,,,,,,,,,,
integration_congatwitch_MASS_STATUS_FIRE_name,"Mass Burning",,,,,,,,,,,,,
integration_congatwitch_MASS_STATUS_FIRE_desc,"Hell Fire!!!",,,,,,,,,,,,,
integration_congatwitch_STATUS_AILMENT_GHOST_name,"Status Ailment Ghost",,,,,,,,,,,,,
integration_congatwitch_STATUS_AILMENT_GHOST_desc,"You get a ghostly friend who will clear negative status effects",,,,,,,,,,,,,
integration_congatwitch_LAG_PLAYER_name,"Dial up Internet",,,,,,,,,,,,,
integration_congatwitch_LAG_PLAYER_desc,"Your connection looks a bit shoddy",,,,,,,,,,,,,
integration_congatwitch_SEA_BERSERKIUM_name,"Sea of Berserkium",,,,,,,,,,,,,
integration_congatwitch_SEA_BERSERKIUM_desc,"A huge body of Berserkium is summoned.",,,,,,,,,,,,,
integration_congatwitch_POLY_WORM_END_name,"Polymorph into Hell Worm",,,,,,,,,,,,,
integration_congatwitch_POLY_WORM_END_desc,"You’re a Hell Worm now!!",,,,,,,,,,,,,
integration_congatwitch_CIRCLE_SMOKE_name,"Circle of Smoke",,,,,,,,,,,,,
integration_congatwitch_CIRCLE_SMOKE_desc,"Remember to breathe.",,,,,,,,,,,,,
integration_congatwitch_SUMMON_PATA_name,"Summon Pata",,,,,,,,,,,,,
integration_congatwitch_SUMMON_PATA_desc,"Shoot it! Enjoy the show!",,,,,,,,,,,,,
integration_congatwitch_SPELLS_TO_DEATHCROSS_name,"Spells to Death Cross",,,,,,,,,,,,,
integration_congatwitch_SPELLS_TO_DEATHCROSS_desc,"All projectiles currently in the air transform into Deathly Crosses!",,,,,,,,,,,,,
integration_congatwitch_RANDOM_ENEMY_ATTACKS_name,"Randomise Enemy Projectiles",,,,,,,,,,,,,
integration_congatwitch_RANDOM_ENEMY_ATTACKS_desc,"Randomized enemy projectiles!",,,,,,,,,,,,,
integration_congatwitch_SPARKBOLT_FLOOD_name,"Flood of Sparkbolts",,,,,,,,,,,,,
integration_congatwitch_SPARKBOLT_FLOOD_desc,"You need these?",,,,,,,,,,,,,
integration_congatwitch_CRIT_100_name,"Ask Nicely for Crits",,,,,,,,,,,,,
integration_congatwitch_CRIT_100_desc,"Hahaha! Oktober Fest!",,,,,,,,,,,,,
integration_congatwitch_NETHER_PORTAL_name,"Nether Portal",,,,,,,,,,,,,
integration_congatwitch_NETHER_PORTAL_desc,"We Need To Go Deeper",,,,,,,,,,,,,
integration_congatwitch_FLIGHT_INFINITE_name,"Temporary Flight",,,,,,,,,,,,,
integration_congatwitch_FLIGHT_INFINITE_desc,"Soar high, as high as your heart desires",,,,,,,,,,,,,
integration_congatwitch_SPELLS_TO_HAMIS_name,"Spells to Hämis",,,,,,,,,,,,,
integration_congatwitch_SPELLS_TO_HAMIS_desc,"All projectiles currently in the air transform into Hämis",,,,,,,,,,,,,
integration_congatwitch_JUMPSCARE_name,"Jumpscare",,,,,,,,,,,,,
integration_congatwitch_JUMPSCARE_desc,"BOO!",,,,,,,,,,,,,
integration_congatwitch_THEEND_name,"What does that mean?",,,,,,,,,,,,,
integration_congatwitch_THEEND_desc,"All nearby material is turned into 'the_end'",,,,,,,,,,,,,
integration_congatwitch_FLUTE_HOLY_BOMB_name,"Soothing Music",,,,,,,,,,,,,
integration_congatwitch_FLUTE_HOLY_BOMB_desc,"Listen carefully and enjoy",,,,,,,,,,,,,
integration_congatwitch_LUKKI_SOUL_name,"Lukki Soul",,,,,,,,,,,,,
integration_congatwitch_LUKKI_SOUL_desc,"Temporarily eat all nearby terrain",,,,,,,,,,,,,
integration_congatwitch_NAVI_name,"Navi",,,,,,,,,,,,,
integration_congatwitch_NAVI_desc,"Hey, Listen!",,,,,,,,,,,,,
integration_congatwitch_POPQUIZ_name,"Pop Quiz",,,,,,,,,,,,,
integration_congatwitch_POPQUIZ_desc,"Don't even think about skipping class",,,,,,,,,,,,,
status_congatwitch_delusional_name,"Delusional",,,,,,,,,,,,,
status_congatwitch_delusional_desc,"Your senses deceive you.",,,,,,,,,,,,,
status_congatwitch_reflective_weirdo_name,"Reflective","Светоотражающий",,,,,,,,,,,,
status_congatwitch_manadrain_name,Mana Degradation,Разложение маны,,,,,,,,,,,,
status_congatwitch_manadrain_desc,You are loosing Mana Rapidly!!,Вы стремительно теряете ману!!!,,,,,,,,,,,,
status_congatwitch_manainfinite_name,Infinite Mana,,,,,,,,,,,,,
status_congatwitch_manainfinite_desc,You feel you can cast without limits!,,,,,,,,,,,,,
status_congatwitch_magicwet_ui_name,Magical Wetness,Магическая влажность,,,,,,,,,,,,
status_congatwitch_magicwet_ui_desc,Wet clothes protect you from fire.,Мокрая одежда защищает вас от огня.,,,,,,,,,,,,
status_congatwitch_magicfire_ui_name,Magical Fire,Волшебный огонь,,,,,,,,,,,,
status_congatwitch_magicfire_ui_desc,You're on fire! Find water quickly!,Вы горите! Быстро найдите воду!,,,,,,,,,,,,
status_congatwitch_flightinfinite_name,"Infinite Flight",,,,,,,,,,,,,
status_congatwitch_flightinfinite_desc,"You feel you can soar without limits!",,,,,,,,,,,,,
item_congatwitch_chest_cursed,"Pandora's Chest",Сундук Пандоры,,,,,,,,,,,,
item_congatwitch_orb_mattereater_name,"Hungry Orb",,,,,,,,,,,,,
item_congatwitch_orb_mattereater_desc,"You feel like kicking it...",,,,,,,,,,,,,
log_congatwitch_popquiz_answer_correct_name,"Correct Answer!",,,,,,,,,,,,,
log_congatwitch_popquiz_answer_correct_desc,"Enjoy your prize!",,,,,,,,,,,,,
log_congatwitch_popquiz_answer_wrong_name,"Wrong Answer!",,,,,,,,,,,,,
log_congatwitch_popquiz_answer_wrong_desc,"Someone hasn't been studying!",,,,,,,,,,,,,
log_congatwitch_popquiz_timeout_name,"Time's Up!!!",,,,,,,,,,,,,
log_congatwitch_popquiz_timeout_desc,"Someone hasn't been studying!",,,,,,,,,,,,,
log_congatwitch_popquiz_escape_name,"I told you not to skip class!!!",,,,,,,,,,,,,
log_congatwitch_popquiz_escape_desc,"Go directly to detention! In Hell!",,,,,,,,,,,,,
]])


--integration_congatwitch_CAGE_name,"Streamer Cage",,,,,,,,,,,,,
--integration_congatwitch_CAGE_desc,"You belong in time out for a bit",,,,,,,,,,,,,

-- Adds musical_stone tag to the worm projectile, not to make musical ghosts appear but rather to make it double for a "spells to worms" effect
if ModIsEnabled("Mo_Creeps") == false then
    local nxml = dofile_once("mods/conga_twitch_mod/lib/nxml.lua")
    local content = ModTextFileGetContent("data/entities/projectiles/deck/worm_shot.xml")
    local xml = nxml.parse(content)
    xml.attr.tags = xml.attr.tags .. ",musical_stone"
    ModTextFileSetContent("data/entities/projectiles/deck/worm_shot.xml", tostring(xml))
end


-- Fixes Giga Death Cross duplicating infinitely
local nxml = dofile_once("mods/conga_twitch_mod/lib/nxml.lua")
local content = ModTextFileGetContent("data/entities/projectiles/deck/death_cross_big_laser.xml")
local xml = nxml.parse(content)
xml.attr.tags = xml.attr.tags .. ",death_cross"
ModTextFileSetContent("data/entities/projectiles/deck/death_cross_big_laser.xml", tostring(xml))


--Adds variable storage component for Reflective twitch event
--local content = ModTextFileGetContent("data/entities/player_base.xml")
--local xml = nxml.parse(content)
--xml:add_child(nxml.parse([[
--    <VariableStorageComponent
--    name="proj_file_ctm"
--    value_string="data/entities/projectiles/wraith_glowing_laser.xml"
--    value_float="0.5"
--    >
--    </VariableStorageComponent>
--]]))
--ModTextFileSetContent("data/entities/player_base.xml", tostring(xml))


--Poly Tools
--
dofile_once( "mods/conga_twitch_mod/lib/polytools/polytools_init.lua").init( "mods/conga_twitch_mod/lib/polytools/" )

--Appending extra modiifers
ModLuaFileAppend( "data/scripts/gun/gun_extra_modifiers.lua", "mods/conga_twitch_mod/files/scripts/gun/gun_extra_modifiers_populator.lua")

--Debugging
--[[
local ModEnabledMoCreep = ModIsEnabled("Mo_Creeps")
local MocreepTest = HasFlagPersistent( "mocreeps_card_unlocked_welcome_hint" )

function OnPlayerSpawned()
    if ModEnabledMoCreep == false then
    GamePrint("SUCCESS INITIALISED 666")
    end
    if MocreepTest == true then
    GamePrint("SUCCESS INITIALISED 777")
    end
    if (ModEnabledMoCreep == true) and (MocreepTest == true) then
    GamePrint("SUCCESS INITIALISED 999")
    end
end
]]--