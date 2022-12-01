dofile_once("data/scripts/lib/utilities.lua")
local entity_id    = GetUpdatedEntityID()
local parent_id = EntityGetParent(entity_id)
if EntityHasTag(parent_id, "player_unit") then
	
    --wizard_returner is not on the list, keeps causing burning for some reason
    local illusion_list = { "roboguard", "roboguard", "shotgunner", "skullfly", "skullrat", "shaman", "wizard_poly", "zombie", "bat", "frog_big", "shaman", "firebug", }

    local pos_x, pos_y = EntityGetTransform( entity_id )
    SetRandomSeed( GameGetFrameNum(), pos_x + entity_id )
    local pos_x = pos_x + Random(200,-200)
    local pos_y = pos_y + Random(200,-200)

    local rnd = Random( 1, #illusion_list )
    local target = illusion_list[rnd]

    EntityLoad( "mods/conga_twitch_mod/files/entities/animals/psychotic/" .. target .. ".xml", pos_x, pos_y )
else
    EntityKill(entity_id)
end

--[[
    else
    local JumpComp2 = EntityGetFirstComponent(entity_id, "ControlsComponent")
    if JumpComp2 then
        edit_component( parent_id, "ControlsComponent", function(comp,vars)
            ComponentSetValueVector2( comp, "mJumpVelocity", Random(-70, 70), Random(-150, -300))
        end)
    end
end
]]--