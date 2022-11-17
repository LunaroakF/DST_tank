local MakePlayerCharacter = require "prefabs/player_common"

--资源引用
local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}

--初始物品
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.TANK = {
	"tank_useless_scarf",
	"tank_fire_axe",
}
local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
    start_inv[string.lower(k)] = v.TANK
end
local prefabs = FlattenTree(start_inv, true)

--当玩家变成复活或变成(人类？)时执行
local function onbecamehuman(inst)
	-- Set speed when not a ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "tank_speed_mod", 1)
end
--当玩家死亡或变成鬼魂时执行
local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "tank_speed_mod")
end

--当玩家被加载时执行
local function onload(inst)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end

local function SomeBodyTouchMe(inst,data)
    if inst and data then
        if inst.DontTouchMeTimes > 0 then
            inst.components.health:SetAbsorptionAmount(1)
          	local fx = SpawnPrefab("alterguardian_lasertrail")
            fx.entity:SetParent(inst.entity)
			--fx.entity:
		end
    end
end

--服务器和客户端初始化的时候，推荐在这里加一系列Tags
local common_postinit = function(inst) 
	-- Minimap icon
	inst:AddTag("tank")
	inst:AddTag("nowormholesanityloss")
	inst.tank_data = net_ushortint(inst.GUID, "tank_data", "tank_dataevent")
	inst.MiniMapEntity:SetIcon( "tank.tex" )
end

--仅针对服务器优化
local master_postinit = function(inst)
	--设置初始物品
    inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
	
	--人物的声音
	inst.soundsname = "willow"
	inst:AddComponent("tank_data")
	inst:AddComponent("tank_fear_injection")

	inst.components.health:SetMaxHealth(TUNING.TANK_HEALTH)
	inst.components.hunger:SetMax(TUNING.TANK_HUNGER)
	inst.components.sanity:SetMax(TUNING.TANK_SANITY)
	inst.components.tank_data:SetMax(60)
	
    inst:ListenForEvent("attacked", function(inst,data)--受伤掉数据块
		if inst.DontTouchMeTimes == 0 then
			local pt = inst:GetPosition()
			SpawnPrefab("tank_fallen_data").Transform:SetPosition(pt.x, pt.y, pt.z)
		end
	end)

	inst:ListenForEvent("DontTouchMeTimesChanged",function(inst)
		if inst.DontTouchMeTimes > 0 then
			inst.components.health:SetAbsorptionAmount(1)
		else
			inst.components.health:SetAbsorptionAmount(0)
		end
	end)

	--免伤
	inst.DontTouchMeTimes = 0
	inst:ListenForEvent("attacked", SomeBodyTouchMe)

	--伤害倍率
    inst.components.combat.damagemultiplier = 1
	--饥饿倍率
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
	inst.OnLoad = onload
    inst.OnNewSpawn = onload
end

--X键使用数据
TheInput:AddKeyUpHandler(120, function()
	SendModRPCToServer( MOD_RPC["tank"]["use_data"])
end)

return MakePlayerCharacter("tank", prefabs, assets, common_postinit, master_postinit, prefabs)
