
dofile("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID() 
local player = EntityGetRootEntity( entity_id ) 
local children = EntityGetAllChildren( player )
local permitted = true

for i,v in ipairs(children) do
    local name = EntityGetName(v)
    if (name == "flight_buff") and (v ~= entity_id) then
        permitted = false
    end
end

if permitted == true then
    ComponentSetValue2(EntityGetFirstComponentIncludingDisabled(player, "CharacterDataComponent"), "flying_needs_recharge", true)
end
