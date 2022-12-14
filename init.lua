dofile("data/scripts/lib/utilities.lua")

--Twitch Integration
ModLuaFileAppend( "data/scripts/streaming_integration/event_list.lua", "mods/Conga_Twitch_mod/files/streaming_integration/event_list_populator.lua" )

local content = ModTextFileGetContent("data/translations/common.csv")
ModTextFileSetContent("data/translations/common.csv", content .. [[
integration_congatwitch_RANDOM_CATS_name,Kitty Cats!!,Кошечки!!!,,,,,,,,,,,,
integration_congatwitch_RANDOM_CATS_desc,Cat! I'm a kitty cat! And I dance dance dance! And I dance dance dance!!,Кошка!! Я кошечка!! И я танцую туц-туц!! И я танцую танцую танцую танцую!!!,,,,,,,,,,,,
integration_congatwitch_RANDOM_CATS_name,Kitty Cats!!,Кошечки!!!,,,,,,,,,,,,
integration_congatwitch_RANDOM_CATS_desc,Cat! I'm a kitty cat! And I dance dance dance! And I dance dance dance!!,Кошка!! Я кошечка!! И я танцую туц-туц!! И я танцую танцую танцую танцую!!!,,,,,,,,,,,,
integration_congatwitch_WAND_WONDERS_name,Spawn Wand of Wonders,Создать Жезл чудес,,,,,,,,,,,,
integration_congatwitch_WAND_WONDERS_desc,A wonderful wand capable of anything. Cast It!,"Чудесный жезл, способный на всё. Колдуйте!!",,,,,,,,,,,,
integration_congatwitch_PANDORA_CHEST_name,Pandora's Chest,Сундук Пандоры,,,,,,,,,,,,
integration_congatwitch_PANDORA_CHEST_desc,Do you dare open?,Осмелитесь ли вы открыть?,,,,,,,,,,,,
integration_congatwitch_TRANSFORM_WORMS_name,Spells to Worms,Превращение в червяков,,,,,,,,,,,,
integration_congatwitch_TRANSFORM_WORMS_desc,All projectiles currently in the air turn into worms!,"Все снаряды, находящиеся в воздухе, превращаются в червей!!",,,,,,,,,,,,
integration_congatwitch_MUD_MEN_name,Summon Mud Men,Призыв грязевика,,,,,,,,,,,,
integration_congatwitch_MUD_MEN_desc,MUD MEN are here to save the day!!,"ГРЯЗЕВИК пришёл, чтобы помочь вам!!!",,,,,,,,,,,,
integration_congatwitch_SUMMON_SKOUDE_name,Summon Skoude,Призыв Скоуде,,,,,,,,,,,,
integration_congatwitch_SUMMON_SKOUDE_desc,Skoude will arrive shortly.,Скоуде вскоре прибудет.,,,,,,,,,,,,
integration_congatwitch_HUNGRY_ORB_name,Hungry Orb,Голодный шар,,,,,,,,,,,,
integration_congatwitch_HUNGRY_ORB_desc,???,???,,,,,,,,,,,,
integration_congatwitch_DELUSIONAL_name,Delusional Streamer,Стример-шизик,,,,,,,,,,,,
integration_congatwitch_DELUSIONAL_desc,Your senses deceive you.,Ваши чувства обманывают вас.,,,,,,,,,,,,
integration_congatwitch_CLOWNS_name,CLOWNS,КЛОУНЫ,,,,,,,,,,,,
integration_congatwitch_CLOWNS_desc,"You're not a clown, you're the entire circus!!","Вы не клоун, вы целый цирк!!!",,,,,,,,,,,,
integration_congatwitch_SWAPPER_CURSE_name,Curse of Swapping,Проклятие подмены,,,,,,,,,,,,
integration_congatwitch_SWAPPER_CURSE_desc,You feel the blood of Swapper Mages runs through you,"Вы чувствуете, как в вас течёт кровь магов-подменщиков.",,,,,,,,,,,,
integration_congatwitch_MIRROR_CURSE_name,Reflect Projectiles,Отражение снарядов,,,,,,,,,,,,
integration_congatwitch_MIRROR_CURSE_desc,You feel like reflecting enemy projectiles.,Вам хочется отражать вражеские снаряды.,,,,,,,,,,,,
integration_congatwitch_RANDOM_WRAITHS_name,Random Creeps,Случайные твари,,,,,,,,,,,,
integration_congatwitch_RANDOM_WRAITHS_desc,Weirdos sold seperately.,Чудаки продаются по отдельности.,,,,,,,,,,,,
integration_congatwitch_RANDOM_WRAITHS_name_mocreepcompat,Random Wraiths,Случайные фантомы,,,,,,,,,,,,
integration_congatwitch_RANDOM_WRAITHS_desc_mocreepcompat,Creeps & Weirdos included.,В том числе из мода «Creeps & Weirdos».,,,,,,,,,,,,
integration_congatwitch_TWWE_TEMP_name,Temporary Wand Tinkering,Временное изменение жезла,,,,,,,,,,,,
integration_congatwitch_TWWE_TEMP_desc,Tinker with Wands anywhere for the next 3 minutes!,Изменяйте свои жезлы в любом месте в течение следующих 3 минут!!,,,,,,,,,,,,
integration_congatwitch_MANA_DRAIN_name,Mana Degradation,Разложение маны,,,,,,,,,,,,
integration_congatwitch_MANA_DRAIN_desc,You are loosing Mana Rapidly!!,Вы стремительно теряете ману!!!,,,,,,,,,,,,
integration_congatwitch_MANAINFINITE_name,Infinite Mana,Бесконечная мана,,,,,,,,,,,,
integration_congatwitch_MANAINFINITE_desc,Unlimited mana regeneration for the next 40 seconds!,Неограниченное восстановление маны в течение следующих 40 секунд!!,,,,,,,,,,,,
integration_congatwitch_SHIELD_PLAYER_BIG_name,Oversized Shield,Огромный щит,,,,,,,,,,,,
integration_congatwitch_SHIELD_PLAYER_BIG_desc,This shield is nigh-indestructible!.. but a bit too big for you.,Этот щит несокрушим!!.. но немного великоват для вас.,,,,,,,,,,,,
integration_congatwitch_SAMPO_name,Sampo,Сампо,,,,,,,,,,,,
integration_congatwitch_SAMPO_desc,Is it real....?,Это настоящий....?,,,,,,,,,,,,
integration_congatwitch_TRANSFORM_BULLETS_name,Spells to Bullets,Превращение в пули,,,,,,,,,,,,
integration_congatwitch_TRANSFORM_BULLETS_desc,All projectiles currently in the air turn into high-calibre bullets!,"Все снаряды, находящиеся в воздухе, превращаются в крупнокалиберные пули!",,,,,,,,,,,,
integration_congatwitch_GOOD_SPELL_DROP_name,Good Spell Package,Комплект хороших заклинаний,,,,,,,,,,,,
integration_congatwitch_GOOD_SPELL_DROP_desc,A care package of good spells to start a god-run appears on the floor!,На полу появляется комплект с хорошими заклинаниями для начала крёстного прохождения!,,,,,,,,,,,,
integration_congatwitch_CAGE_name,Cage Fight,Схватка в клетке,,,,,,,,,,,,
integration_congatwitch_CAGE_desc,Fight to the death!,Боритесь насмерть!,,,,,,,,,,,,
integration_congatwitch_MASS_STATUS_WET_name,Mass Wet,Массовая влага,,,,,,,,,,,,
integration_congatwitch_MASS_STATUS_WET_desc,It's like a trip to the beach!,Это как поездка на пляж!!,,,,,,,,,,,,
integration_congatwitch_MASS_STATUS_DRUNK_name,Mass Drunk,Массовое опьянение,,,,,,,,,,,,
integration_congatwitch_MASS_STATUS_DRUNK_desc,You're the life of the party!,Вы - жизнь вечеринки!!,,,,,,,,,,,,
integration_congatwitch_MASS_STATUS_FIRE_name,Mass Burning,Массовое горение,,,,,,,,,,,,
integration_congatwitch_MASS_STATUS_FIRE_desc,Hell Fire!!!,Адский огонь!!!!,,,,,,,,,,,,
integration_congatwitch_STATUS_AILMENT_GHOST_name,Status Ailment Ghost,Призрак болезненных эффектов,,,,,,,,,,,,
integration_congatwitch_STATUS_AILMENT_GHOST_desc,You get a ghostly friend who will clear negative status effects,"Вы получили друга-призрака, который снимет негативные эффекты с вас",,,,,,,,,,,,
integration_congatwitch_LAG_PLAYER_name,Dial up Internet,Коммутируемый интернет,,,,,,,,,,,,
integration_congatwitch_LAG_PLAYER_desc,Your connection looks a bit shoddy,Ваше интернет-соединение выглядит немного убого,,,,,,,,,,,,
integration_congatwitch_SEA_BERSERKIUM_name,Sea of Berserkium,Море неиствовиума,,,,,,,,,,,,
integration_congatwitch_SEA_BERSERKIUM_desc,A huge body of Berserkium is summoned.,Призыв огромного объёма неиствовиума.,,,,,,,,,,,,
integration_congatwitch_POLY_WORM_END_name,Polymorph into Hell Worm,Превращение в адского червя,,,,,,,,,,,,
integration_congatwitch_POLY_WORM_END_desc,You’re a Hell Worm now!!,Теперь вы адский червь!!!,,,,,,,,,,,,
integration_congatwitch_CIRCLE_SMOKE_name,Circle of Smoke,Круг дыма,,,,,,,,,,,,
integration_congatwitch_CIRCLE_SMOKE_desc,Remember to breathe.,Не забывайте дышать.,,,,,,,,,,,,
integration_congatwitch_SUMMON_PATA_name,Summon Pata,Призыв паты,,,,,,,,,,,,
integration_congatwitch_SUMMON_PATA_desc,Shoot it! Enjoy the show!,Стреляйте по ней!! Наслаждайтесь шоу!!,,,,,,,,,,,,
integration_congatwitch_SPELLS_TO_DEATHCROSS_name,Spells to Death Cross,Превращение в кресты смерти,,,,,,,,,,,,
integration_congatwitch_SPELLS_TO_DEATHCROSS_desc,All projectiles currently in the air transform into Deathly Crosses!,"Все снаряды, находящиеся в воздухе, превращаются в кресты смерти!",,,,,,,,,,,,
integration_congatwitch_RANDOM_ENEMY_ATTACKS_name,Randomise Enemy Projectiles,Случайные снаряды противников,,,,,,,,,,,,
integration_congatwitch_RANDOM_ENEMY_ATTACKS_desc,Randomized enemy projectiles!,Случайные снаряды противника!,,,,,,,,,,,,
integration_congatwitch_SPARKBOLT_FLOOD_name,Flood of Sparkbolts,Потоп из искровых молний,,,,,,,,,,,,
integration_congatwitch_SPARKBOLT_FLOOD_desc,You need these?,Они вам нужны?,,,,,,,,,,,,
integration_congatwitch_CRIT_100_name,Ask Nicely for Crits,Просите вежливее для получения критов,,,,,,,,,,,,
integration_congatwitch_CRIT_100_desc,Hahaha! Oktober Fest!,Хахаха! Октобер Фест!,,,,,,,,,,,,
integration_congatwitch_NETHER_PORTAL_name,Nether Portal,Портал в нижнее измерение,,,,,,,,,,,,
integration_congatwitch_NETHER_PORTAL_desc,We Need To Go Deeper,Нам нужно идти глубже,,,,,,,,,,,,
integration_congatwitch_FLIGHT_INFINITE_name,Temporary Flight,Временный полёт,,,,,,,,,,,,
integration_congatwitch_FLIGHT_INFINITE_desc,"Soar high, as high as your heart desires","Парите высоко, так высоко, как только пожелает ваше сердце",,,,,,,,,,,,
integration_congatwitch_SPELLS_TO_HAMIS_name,Spells to Hämis,Превращение в хямисы,,,,,,,,,,,,
integration_congatwitch_SPELLS_TO_HAMIS_desc,All projectiles currently in the air transform into Hämis,"Все снаряды, находящиеся в воздухе, превращаются в хямис",,,,,,,,,,,,
integration_congatwitch_JUMPSCARE_name,Jumpscare,Скример,,,,,,,,,,,,
integration_congatwitch_JUMPSCARE_desc,BOO!,БУ!,,,,,,,,,,,,
integration_congatwitch_THEEND_name,What does that mean?,Что это значит?,,,,,,,,,,,,
integration_congatwitch_THEEND_desc,All nearby material is turned into 'the_end',Весь близлежащий материал превращается в «конец».,,,,,,,,,,,,
integration_congatwitch_FLUTE_HOLY_BOMB_name,Soothing Music,Успокаивающая музыка,,,,,,,,,,,,
integration_congatwitch_FLUTE_HOLY_BOMB_desc,Listen carefully and enjoy,Слушайте внимательно и наслаждайтесь,,,,,,,,,,,,
integration_congatwitch_LUKKI_SOUL_name,Lukki Soul,Душа лукки,,,,,,,,,,,,
integration_congatwitch_LUKKI_SOUL_desc,Temporarily eat all nearby terrain,Временно поедает всю близлежащую землю,,,,,,,,,,,,
integration_congatwitch_NAVI_name,Navi,Нави,,,,,,,,,,,,
integration_congatwitch_NAVI_desc,"Hey, Listen!","Эй, слушайте!",,,,,,,,,,,,
integration_congatwitch_POPQUIZ_name,Pop Quiz,Викторина,,,,,,,,,,,,
integration_congatwitch_POPQUIZ_desc,Don't even think about skipping class,Даже не думайте пропускать занятия,,,,,,,,,,,,
status_congatwitch_delusional_name,Delusional,Галлюцинации,,,,,,,,,,,,
status_congatwitch_delusional_desc,Your senses deceive you.,Ваши чувства обманывают вас.,,,,,,,,,,,,
status_congatwitch_reflective_weirdo_name,Reflective,Светоотражающий,,,,,,,,,,,,
status_congatwitch_manadrain_name,Mana Degradation,Разложение маны,,,,,,,,,,,,
status_congatwitch_manadrain_desc,You are loosing Mana Rapidly!!,Вы стремительно теряете ману!!!,,,,,,,,,,,,
status_congatwitch_manainfinite_name,Infinite Mana,Бесконечная мана,,,,,,,,,,,,
status_congatwitch_manainfinite_desc,You feel you can cast without limits!,"Вы чувствуете, что можете колдовать без ограничений!",,,,,,,,,,,,
status_congatwitch_magicwet_ui_name,Magical Wetness,Магическая влажность,,,,,,,,,,,,
status_congatwitch_magicwet_ui_desc,Wet clothes protect you from fire.,Мокрая одежда защищает вас от огня.,,,,,,,,,,,,
status_congatwitch_magicfire_ui_name,Magical Fire,Волшебный огонь,,,,,,,,,,,,
status_congatwitch_magicfire_ui_desc,You're on fire! Find water quickly!,Вы горите! Быстро найдите воду!,,,,,,,,,,,,
status_congatwitch_flightinfinite_name,Infinite Flight,Бесконечный полёт,,,,,,,,,,,,
status_congatwitch_flightinfinite_desc,You feel you can soar without limits!,"Вы чувствуете, что можете парить без ограничений!",,,,,,,,,,,,
item_congatwitch_chest_cursed,Pandora's Chest,Сундук Пандоры,,,,,,,,,,,,
item_congatwitch_orb_mattereater_name,Hungry Orb,Голодный шар,,,,,,,,,,,,
item_congatwitch_orb_mattereater_desc,You feel like kicking it...,Вам хочется его пнуть...,,,,,,,,,,,,
log_congatwitch_popquiz_answer_correct_name,Correct Answer!,Верный ответ!,,,,,,,,,,,,
log_congatwitch_popquiz_answer_correct_desc,Enjoy your prize!,Наслаждайтесь призом!,,,,,,,,,,,,
log_congatwitch_popquiz_answer_wrong_name,Wrong Answer!,Неверный ответ!,,,,,,,,,,,,
log_congatwitch_popquiz_answer_wrong_desc,Someone hasn't been studying!,Кто-то не учился!,,,,,,,,,,,,
log_congatwitch_popquiz_timeout_name,Time's Up!!!,Время вышло!!!,,,,,,,,,,,,
log_congatwitch_popquiz_timeout_desc,Someone hasn't been studying!,Кто-то не учился!,,,,,,,,,,,,
log_congatwitch_popquiz_escape_name,I told you not to skip class!!!,Я говорил вам не прогуливать занятия!!!,,,,,,,,,,,,
log_congatwitch_popquiz_escape_desc,Go directly to detention! In Hell!,Отправляйтесь прямо в тюрьму! В ад!,,,,,,,,,,,,
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