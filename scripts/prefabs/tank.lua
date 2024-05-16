local MakePlayerCharacter = require "prefabs/player_common"

--资源引用
local assets = {
	Asset("ANIM", "anim/tank.zip"),
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
prefabs = FlattenTree(start_inv, true)

--当玩家变成复活或变成(人类？)时执行
local function onbecamehuman(inst)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "tank_speed_mod", 1)
end

--当玩家死亡或变成鬼魂时执行
local function onbecameghost(inst)
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
          	--local fx = SpawnPrefab("alterguardian_lasertrail")
			local fx1 = SpawnPrefab("wanda_attack_pocketwatch_old_fx")
			local fx2 = SpawnPrefab("wanda_attack_shadowweapon_old_fx")
			
			local a = math.random(0,100)
			if a < 50 then
            	fx1.entity:SetParent(inst.entity)
			else
				fx2.entity:SetParent(inst.entity)
			--fx.entity: 666666666
			end
		end
    end
end
 
local function ChangeFireAxe(inst)
	--传送
	
	end

	--切换斧子
	local ExistItem = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
	local ForwardItem = nil
	if ExistItem:HasTag("tank_fire_axe") and ExistItem:HasTag("tank_fire_axe_speed") then
		inst.components.talker:Say(STRINGS.TANK_CHANGE_AXE_TO_NORMAL)
		inst.components.locomotor:SetExternalSpeedMultiplier(inst, "tank_speed_mod", 1.0)
		ForwardItem = SpawnPrefab("tank_fire_axe")
	else
		inst.components.talker:Say(STRINGS.TANK_CHANGE_AXE_TO_SPEED)
		inst.components.locomotor:SetExternalSpeedMultiplier(inst, "tank_speed_mod", 1.2)
		ForwardItem = SpawnPrefab("tank_fire_axe_speed")
	end
	inst.components.inventory:RemoveItem(ExistItem)
	inst.components.inventory:Equip(ForwardItem)
end

--服务器和客户端初始化的时候，推荐在这里加一系列Tags
local common_postinit = function(inst) 
	-- Minimap icon
	inst:AddTag("tank")
	inst:AddTag("nowormholesanityloss")
	inst.tank_data = net_ushortint(inst.GUID, "tank_data", "tank_dataevent")
	inst.MiniMapEntity:SetIcon( "tank.tex" )
end

--仅针对服务器优化的
local master_postinit = function(inst)
	--设置初始物品
    inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
	
	local IsAxeCanShoot = false
	local Axex,Axey,Axez = nil
	inst:ListenForEvent("TargetRan", function(inst,data)--不允许玩家继续传送
		inst.IsAxeCanShoot = false
	end)

	inst:ListenForEvent("AxeThrown", function(inst,data)--允许玩家传送
		inst.IsAxeCanShoot = true
	end)

	--人物的声音
	inst.soundsname = "willow"
	inst:AddComponent("tank_data")
	inst:AddComponent("tank_fear_injection")
	inst:AddComponent("tank_loves_you")
	inst:AddComponent("tank_chain_with")
	--inst:AddComponent("combat")
	--inst.components.combat.onhitotherfn = OnHitOther

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

	
	inst:ListenForEvent("equip",function(inst)

		local ExistItem = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
		if ExistItem == nil then
			return 
		end
		if ExistItem:HasTag("tank_fire_axe") and ExistItem:HasTag("tank_fire_axe_speed") then
			inst.components.locomotor:SetExternalSpeedMultiplier(inst, "tank_speed_mod", 1.2)
		else
			inst.components.locomotor:SetExternalSpeedMultiplier(inst, "tank_speed_mod", 1.0)
		end
	end)

	inst:ListenForEvent("unequip",function(inst)
		inst.components.locomotor:SetExternalSpeedMultiplier(inst, "tank_speed_mod", 1.0)
	end)

	inst:ListenForEvent("DontTouchMeTimesChanged",function(inst)
		--CustomSetSkinMode(inst, "dash")
		if inst.DontTouchMeTimes > 0 then
			inst.components.health:SetAbsorptionAmount(1)
		else
			inst.components.health:SetAbsorptionAmount(0)
		end
	end)

	--inst:ListenForEvent("ChangeWeapon",ChangeFireAxe)

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
TheInput:AddKeyUpHandler(KEY_X, function()
	SendModRPCToServer( MOD_RPC["tank"]["use_data"])
end)

--Z键切换斧子
--TheInput:AddMouseButtonHandler(function()
--	if TheInput:IsMouseDown(MOUSEBUTTON_RIGHT) and ThePlayer.components.inventory:EquipHasTag("tank_fire_axe") then
--		SendModRPCToServer( MOD_RPC["tank"]["switch_axe"])
--	end
--end)
TheInput:AddKeyUpHandler(KEY_Z, function()
	SendModRPCToServer(MOD_RPC["tank"]["switch_axe"])
end)

return MakePlayerCharacter("tank", prefabs, assets, common_postinit, master_postinit, prefabs)
