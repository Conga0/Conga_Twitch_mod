dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform(entity_id)
			
SetRandomSeed( GameGetFrameNum() + 1432, GameGetFrameNum() + 1432 + 8 )

local question = Random(1,8)

EntityLoad("mods/conga_twitch_mod/files/entities/props/popquiz/question_0" .. question .. ".xml", pos_x , pos_y - 24 )

local opts = {"answer_0" .. question .. "_wrong_01", "answer_0" .. question .. "_wrong_02", "answer_0" .. question .. "_correct", }

local rnd = Random(1,#opts)
local choice = opts[rnd]
table.remove(opts, rnd)
EntityLoad("mods/conga_twitch_mod/files/entities/items/pickups/popquiz/" .. choice .. ".xml", pos_x - 48 , pos_y )

local rnd = Random(1,#opts)
local choice = opts[rnd]
table.remove(opts, rnd)
EntityLoad("mods/conga_twitch_mod/files/entities/items/pickups/popquiz/" .. choice .. ".xml", pos_x , pos_y )

local choice = opts[1]
EntityLoad("mods/conga_twitch_mod/files/entities/items/pickups/popquiz/" .. choice .. ".xml", pos_x + 48 , pos_y )


GamePlaySound( "data/audio/Desktop/event_cues.snd", "event_cues/wand/create", pos_x, pos_y)


EntityLoad("mods/conga_twitch_mod/files/entities/props/popquiz/timer_01.xml", pos_x , pos_y - 60 )
EntityLoad("mods/conga_twitch_mod/files/entities/props/popquiz/timer_02.xml", pos_x , pos_y - 60 )
EntityLoad("mods/conga_twitch_mod/files/entities/props/popquiz/timer_03.xml", pos_x , pos_y - 60 )
EntityLoad("mods/conga_twitch_mod/files/entities/props/popquiz/timer_04.xml", pos_x , pos_y - 60 )
EntityLoad("mods/conga_twitch_mod/files/entities/props/popquiz/timer_05.xml", pos_x , pos_y - 60 )
EntityLoad("mods/conga_twitch_mod/files/entities/props/popquiz/timer_06.xml", pos_x , pos_y - 60 )
EntityLoad("mods/conga_twitch_mod/files/entities/props/popquiz/timer_07.xml", pos_x , pos_y - 60 )
EntityLoad("mods/conga_twitch_mod/files/entities/props/popquiz/timer_08.xml", pos_x , pos_y - 60 )
EntityLoad("mods/conga_twitch_mod/files/entities/props/popquiz/timer_09.xml", pos_x , pos_y - 60 )
EntityLoad("mods/conga_twitch_mod/files/entities/props/popquiz/timer_10.xml", pos_x , pos_y - 60 )
EntityLoad("mods/conga_twitch_mod/files/entities/props/popquiz/timer_11.xml", pos_x , pos_y - 60 )
EntityLoad("mods/conga_twitch_mod/files/entities/props/popquiz/timer_12.xml", pos_x , pos_y - 60 )

EntityKill( entity_id )
