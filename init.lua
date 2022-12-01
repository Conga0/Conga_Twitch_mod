dofile("data/scripts/lib/utilities.lua")

--Twitch Integration
ModLuaFileAppend( "data/scripts/streaming_integration/event_list.lua", "mods/Conga_Twitch_mod/files/streaming_integration/event_list_populator.lua" )

local content = ModTextFileGetContent("data/translations/common.csv")
ModTextFileSetContent("data/translations/common.csv", content .. [[
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
status_congatwitch_delusional_name,"Delusional",,,,,,,,,,,,,
status_congatwitch_delusional_desc,"Your senses deceive you.",,,,,,,,,,,,,
status_congatwitch_reflective_weirdo_name,"Reflective","Светоотражающий",,,,,,,,,,,,
status_congatwitch_manadrain_name,Mana Degradation,Разложение маны,,,,,,,,,,,,
status_congatwitch_manadrain_desc,You are loosing Mana Rapidly!!,Вы стремительно теряете ману!!!,,,,,,,,,,,,
status_congatwitch_manainfinite_name,Infinite Mana,,,,,,,,,,,,,
status_congatwitch_manainfinite_desc,You feel you can cast without limits!,,,,,,,,,,,,,
item_congatwitch_chest_cursed,"Pandora's Chest",Сундук Пандоры,,,,,,,,,,,,
item_congatwitch_orb_mattereater_name,"Hungry Orb",,,,,,,,,,,,,
item_congatwitch_orb_mattereater_desc,"You feel like kicking it...",,,,,,,,,,,,,

]])


-- Adds musical_stone tag to the worm projectile, not to make musical ghosts appear but rather to make it double for a "spells to worms" effect
local nxml = dofile_once("mods/conga_twitch_mod/lib/nxml.lua")
local content = ModTextFileGetContent("data/entities/projectiles/deck/worm_shot.xml")
local xml = nxml.parse(content)
xml.attr.tags = xml.attr.tags .. ",musical_stone"
ModTextFileSetContent("data/entities/projectiles/deck/worm_shot.xml", tostring(xml))

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

