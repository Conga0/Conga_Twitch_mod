dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform(entity_id)
local r = 256
local players = EntityGetInRadiusWithTag( pos_x, pos_y, r, "player_unit" )

if #players == 0 then
    GamePrint("ESCAPE DETECTED")
    GamePrintImportant( "$log_congatwitch_popquiz_escape_name", "$log_congatwitch_popquiz_escape_desc", "mods/conga_twitch_mod/files/ui_gfx/decorations/3piece_creature_shift.png" )

    local players = EntityGetWithTag("player_unit")
    for i,escapee in ipairs(players) do
        local x, y = EntityGetTransform(escapee)

        GamePlaySound( "data/audio/Desktop/event_cues.snd", "event_cues/greed_curse/create", x, y)
        GamePlaySound( "data/audio/Desktop/event_cues.snd", "event_cues/greed_curse/create", x, y)

        EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/portal_skoude.xml", x, y - 64 )
        EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/portal_skoude.xml", x, y + 64 )
        EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/portal_skoude.xml", x - 64, y )
        EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/portal_skoude.xml", x + 64, y )
        
        EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/portal_skoude.xml", x - 128, y )
        EntityLoad( "mods/conga_twitch_mod/files/streaming_integration/entities/portal_skoude.xml", x + 128, y )

    end

    local deletetable = EntityGetInRadius(pos_x, pos_y, r)
    for i,target in ipairs(deletetable) do

        if (EntityGetName(target) == "popquiz_entity") and (target ~= entity_id) then
            EntityKill(target)
        end
    end

    EntityKill(entity_id)
end