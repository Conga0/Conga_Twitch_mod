dofile_once("data/scripts/lib/utilities.lua")


local pool = {
    "acidshooter",
    "chest_leggy",
    "alchemist",
    "assassin",
    "bigbat",
    "blob",
    "bloodcrystal_physics",
    "enlightened_alchemist",
    "flamer",
    "icer",
    "failed_alchemist",
    "failed_alchemist_b",
    "fungus_big",
    "fungus_giga",
    "firemage_weak",
    "monk",
    "necromancer",
    "slimeshooter",
    "skullrat",
    "skullfly",
    "spitmonster",
    "scavenger_heal",
    "scavenger_smg",
    "shaman",
    "thunderskull",
    "tank",
    "tank_rocket",
    "tank_super",
    "tentacler",
    "thundermage",
    "wizard_neutral",
    "wizard_dark",
    "wizard_returner",
    "spearbot",
    "worm",
    "worm_big",
    "basebot_hidden",
    "basebot_neutralizer",
    "basebot_sentry",
    "basebot_soldier",
}

-- A weighted table would be great here but when I tried to find a tutorial I found some retard making his tutorial using black characters on a black background.. fuck you tutorial maker I can't see any of that.
-- If you know how or know a decent tutorial, please let me know.
local prizePool = {
    "data/entities/items/pickup/potion_secret.xml", --1
    "data/entities/items/pickup/potion_random_material.xml",
    "data/entities/items/pickup/potion_random_material.xml",
    "data/entities/items/pickup/potion_random_material.xml",
    "data/entities/items/pickup/potion_random_material.xml",
    "data/entities/items/pickup/potion_random_material.xml",
    "data/entities/items/pickup/potion_random_material.xml",
    "data/entities/items/pickup/potion_random_material.xml",
    "data/entities/items/pickup/potion_random_material.xml", -- 8
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml", -- 15
    "data/entities/projectiles/rain_gold.xml",
    "data/entities/projectiles/rain_gold.xml", -- 2
}


local entity_id = GetUpdatedEntityID()
local x,y = EntityGetTransform(entity_id)
local loot_level = 4
local currbiome = BiomeMapGetName( x, y )
currbiome = tostring(currbiome)
local prefix = "$biome_"

--[[
elseif (currbiome == "rainforest") or (currbiome == "rainforest_open") or (currbiome == "rainforest_dark") or (currbiome == "fungicave") or (currbiome == "fungiforest") or (currbiome == "vault") then
    loot_level = 4
]]--

if (currbiome == prefix .. "coalmine") or (currbiome == prefix .. "coalmine_alt") or (currbiome == prefix .. "forest") or (currbiome == prefix .. "excavationsite") then
    loot_level = 2
elseif (currbiome == prefix .. "snowcave") or (currbiome == prefix .. "snowcastle") or (currbiome == prefix .. "desert") then
    loot_level = 3
elseif (currbiome == prefix .. "crypt") or (currbiome == prefix .. "robobase") or (currbiome == prefix .. "wizardcave") or (currbiome == prefix .. "clouds") then
    loot_level = 5
elseif (currbiome == prefix .. "boss_victoryroom") then
    loot_level = 8
end

SetRandomSeed( GameGetFrameNum(), x, calcVar )
local rnd = Random(1, #pool)

local enemyCount = 25
local calcVar = 77

repeat
    local x, y = EntityGetTransform( entity_id )
    
    local angle = Random( 0, 31415 ) * 0.0001
    local length = 200
    
    local ex = x + math.cos( angle ) * length
    local ey = y - math.sin( angle ) * length

    EntityLoad( "data/entities/animals/" .. pool[rnd] .. ".xml", ex, ey )
    --EntityLoad( "data/entities/particles/poof_red_sparse.xml", ex, ey )  Wasn't very noticable, may as well save performance
    EntityLoad( "data/scripts/streaming_integration/entities/empty_circle.xml", ex, ey )

    enemyCount = enemyCount - 1
    calcVar = calcVar * 1.57

until (enemyCount < 1)





local rewardCount = 18
local calcVar = 77
--EntityLoad( "data/entities/projectiles/rain_gold.xml", ex, ey )

repeat
    local x, y = EntityGetTransform( entity_id )
    
    local angle = Random( 0, 31415 ) * 0.0001
    local length = 150
    
    local ex = x + math.cos( angle ) * length
    local ey = y - math.sin( angle ) * length
    local rnd = Random(1, #prizePool)

    EntityLoad( prizePool[rnd], ex, ey )
    EntityLoad( "data/scripts/streaming_integration/entities/empty_circle.xml", ex, ey )

    rewardCount = rewardCount - 1
    calcVar = calcVar * 1.57

until (rewardCount < 1)

EntityLoad("data/entities/particles/image_emitters/magical_symbol_fast.xml", x, y)
GamePlaySound( "data/audio/Desktop/projectiles.snd", "player_projectiles/crumbling_earth/create", x, y)
GamePlaySound( "data/audio/Desktop/event_cues.snd", "event_cues/greed_curse/create", x, y)
EntityLoad( "data/entities/animals/worm_big.xml",  x + 100, y + 250 )

if loot_level ~= 1 then
    loot_level = loot_level - 1
end


if ModIsEnabled("purgatory") or ModIsEnabled("nightmare") then
    loot_level = loot_level + 2
    if loot_level >= 10 then
        EntityLoad( "data/entities/items/wand_unshuffle_10.xml", x, y - 16 )
    else
        EntityLoad( "data/entities/items/wand_unshuffle_0" .. loot_level .. ".xml", x, y - 16 )
    end
else
    if loot_level >= 10 then
        EntityLoad( "data/entities/items/wand_unshuffle_10.xml", x, y - 16 )
    else
        EntityLoad( "data/entities/items/wand_unshuffle_0" .. loot_level .. ".xml", x, y - 16 )
    end
end

--[[
--Debugging Data
GamePrint("Loot Level is " .. loot_level)
GamePrint("Current biome name is `" .. currbiome .. "`")
]]--

EntityKill( entity_item )
