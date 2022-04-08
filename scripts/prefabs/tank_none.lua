local assets =
{
	Asset( "ANIM", "anim/tank.zip" ),
	Asset( "ANIM", "anim/ghost_tank_build.zip" ),
}

local skins =
{
	normal_skin = "tank",
	ghost_skin = "ghost_tank_build",
}

return CreatePrefabSkin("tank_none",
{
	base_prefab = "tank",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"tank", "CHARACTER", "BASE"},
	build_name_override = "tank",
	rarity = "Character",
})