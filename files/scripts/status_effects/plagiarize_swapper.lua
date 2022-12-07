function damage_received( damage, desc, entity_who_caused, is_fatal )
	if not EntityGetIsAlive( entity_who_caused ) then
		return
	end

	local frame = GameGetFrameNum()
	local last_frame = tonumber( GlobalsGetValue( "ctep_swapper_curse", "-3200" ) )
	if frame >= last_frame + 3010 then
		dofile_once("mods/conga_twitch_mod/files/scripts/status_effects/plagiarize_swapper_end.lua")
	end

	local entity_a    = GetUpdatedEntityID()
	local xa,ya = EntityGetTransform( entity_a )
	
	local entity_b = entity_who_caused
	local xb,yb = EntityGetTransform( entity_b )

	EntitySetTransform( entity_a, xb, yb )
	EntitySetTransform( entity_b, xa, ya )

	GamePlaySound( "data/audio/Desktop/projectiles.bank", "player_projectiles/swapper/swap", xb, yb );
end
