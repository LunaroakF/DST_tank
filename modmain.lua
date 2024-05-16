--预设
PrefabFiles = {
	"tank",
	"tank_none",
    "tank_useless_scarf",
    "tank_fire_axe",
	"tank_luxury_sandwich",
	"tank_fallen_data",
	"tank_chain",

}

--资源引用
Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/tank.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/tank.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/tank.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/tank.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/tank_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/tank_silho.xml" ),

    Asset( "IMAGE", "bigportraits/tank.tex" ),
    Asset( "ATLAS", "bigportraits/tank.xml" ),
	
	Asset( "IMAGE", "images/map_icons/tank.tex" ),
	Asset( "ATLAS", "images/map_icons/tank.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_tank.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_tank.xml" ),

    Asset("ANIM", "anim/status_data.zip"),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_tank.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_tank.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_tank.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_tank.xml" ),
	
	Asset( "IMAGE", "images/names_tank.tex" ),
    Asset( "ATLAS", "images/names_tank.xml" ),
	
	Asset( "IMAGE", "images/names_gold_tank.tex" ),
    Asset( "ATLAS", "images/names_gold_tank.xml" ),
}
AddMinimapAtlas("images/map_icons/tank.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local Vector3 = GLOBAL.Vector3

--初始三维
TUNING.TANK_HEALTH = 300--GetModConfigData("healthcfg")
TUNING.TANK_HUNGER = 190
TUNING.TANK_SANITY = 15

--无用围巾
TUNING.STARTING_ITEM_IMAGE_OVERRIDE["tank_useless_scarf"] = {
	name = STRINGS.NAMES.TANK_USELESS_SCARF,
	atlas = "images/items/tank_useless_scarf.xml",
	image = "tank_useless_scarf.tex",
}

--消防斧
TUNING.STARTING_ITEM_IMAGE_OVERRIDE["tank_fire_axe"] = {
	name = STRINGS.NAMES.TANK_FIRE_AXE,
	atlas = "images/items/tank_fire_axe.xml",
	image = "tank_fire_axe.tex",
}

--消防飞斧
TUNING.STARTING_ITEM_IMAGE_OVERRIDE["tank_fire_axe_speed"] = {
	name = STRINGS.NAMES.TANK_FIRE_AXE_SPEED,
	atlas = "images/items/tank_fire_axe_speed.xml",
	image = "tank_fire_axe_speed.tex",
}

--三明治
TUNING.STARTING_ITEM_IMAGE_OVERRIDE["tank_luxury_sandwich"] = {
	name = STRINGS.NAMES.TANK_LUXURY_SANDWICH,
	atlas = "images/items/tank_luxury_sandwich.xml",
	image = "tank_luxury_sandwich.tex",
}

--数据块
TUNING.STARTING_ITEM_IMAGE_OVERRIDE["tank_fallen_data"] = {
	name = STRINGS.NAMES.TANK_FALLEN_DATA,
	atlas = "images/items/tank_fallen_data.xml",
	image = "tank_fallen_data.tex",
}

--未激活的锁链
TUNING.STARTING_ITEM_IMAGE_OVERRIDE["tank_chain_noactived"] = {
	name = STRINGS.NAMES.TANK_CHAIN_NOACTIVED,
	atlas = "images/items/tank_chain_noactived.xml",
	image = "tank_chain_noactived.tex",
}

--激活的锁链
TUNING.STARTING_ITEM_IMAGE_OVERRIDE["tank_chain_actived"] = {
	name = STRINGS.NAMES.TANK_CHAIN_ACTIVED,
	atlas = "images/items/tank_chain_actived.xml",
	image = "tank_chain_actived.tex",
}

--数据GUI
local Data = require("widgets/databadge")
local function Add_Data(self) 
    if self.owner:HasTag("tank") then
	    self.databadge = self:AddChild(Data(self.owner))
	    self.owner:DoTaskInTime(0.5, function()
		    local x1 ,y1,z1 = self.stomach:GetPosition():Get()
		    local x2 ,y2,z2 = self.brain:GetPosition():Get()		
		    local x3 ,y3,z3 = self.heart:GetPosition():Get()		
		    if y2 == y1 or  y2 == y3 then
		    	self.databadge:SetPosition(self.stomach:GetPosition() + Vector3(x1-x2, 0, 0))
		    else
		    	self.databadge:SetPosition(self.stomach:GetPosition() + Vector3(x1-x3, 0, 0))
		    end
	    end)
	    local old_SetGhostMode = self.SetGhostMode
	    function self:SetGhostMode(ghostmode,...)
		    old_SetGhostMode(self,ghostmode,...)
		    if ghostmode then		
			    if self.databadge ~= nil then 
			    	self.databadge:Show()--死后数据GUI仍可见 隐藏请将Show改为Hide
			    end	
		    else
			    if self.databadge ~= nil then
			    	self.databadge:Show()
			    end
		    end
	    end
    end
end
AddClassPostConstruct("widgets/statusdisplays", Add_Data)

--导入合成表
local function import(t)
	for _,v in ipairs(t)do modimport("scripts/"..v) end
end
import{
	'tank_recipes',
}

--数据
local function UseData(inst)
	if inst:HasTag("tank") and not inst:HasTag("playerghost") then
		if inst.components.tank_data:GetCD()==0 then
			local defaultscreen = false
			if TheFrontEnd:GetActiveScreen() and TheFrontEnd:GetActiveScreen().name and type(TheFrontEnd:GetActiveScreen().name) == "string" and TheFrontEnd:GetActiveScreen().name == "HUD" then
				defaultscreen = true
			end
			if  inst.components.tank_data.current>=8 and defaultscreen then
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "tank_speed_mod", 1.6)
				inst.components.health:DoDelta(5,false,inst.health)
				--inst.components.health:SetAbsorptionAmount(1)无敌
				inst.DontTouchMeTimes = inst.DontTouchMeTimes + 2
				if inst.DontTouchMeTimes >= 3 then
					inst.DontTouchMeTimes = 3
				end
				inst:PushEvent("DontTouchMeTimesChanged")
				inst.components.talker:Say(STRINGS.TANK_USE_DATA)
				inst.components.tank_data.current=inst.components.tank_data.current-8
				inst.components.tank_data:SetCD(14)
			end
		end
	end
end
AddModRPCHandler("tank", "use_data", UseData)

local function SwitchAxe(inst)
	--inst:PushEvent("ChangeWeapon")
	--传送
	if inst:HasTag("tank")then
		if inst.components.inventory:EquipHasTag("tank_fire_axe") or ThePlayer.IsAxeCanShoot then
			if inst.IsAxeCanShoot then
				--随机说话
				local a = math.random(0,100)
				if a < 33 then
					inst.components.talker:Say(STRINGS.TANK_TP_TO_AXE1)
				elseif a>=33 and a<66 then
					inst.components.talker:Say(STRINGS.TANK_TP_TO_AXE2)
				else
					inst.components.talker:Say(STRINGS.TANK_TP_TO_AXE3)
				end
				inst.IsAxeCanShoot = false
				inst.SoundEmitter:PlaySound("dontstarve/creatures/together/deer/chain")--锁链的音效
				inst.Transform:SetPosition(inst.Axex,inst.Axey,inst.Axez)	
				return
			end
		end
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
AddModRPCHandler("tank", "switch_axe", SwitchAxe)


--免疫硬直，from myth
AddStategraphPostInit("wilson", function(sg)
    local old_onattacked = sg.events['attacked'].fn
    sg.events['attacked'] = EventHandler('attacked', function(inst,data,...)
        if inst:HasTag("tank") and inst.DontTouchMeTimes > 0 then
            inst.DontTouchMeTimes = inst.DontTouchMeTimes - 1
			inst:PushEvent("DontTouchMeTimesChanged")
            if not inst.sg:HasStateTag('frozen') and not inst.sg:HasStateTag('sleeping') then
                return
            end
        end     
        return old_onattacked(inst,data,...)
    end)
end)

--对话
STRINGS.CHARACTERS.TANK = require "speech_tank"

--不知道是啥
local skin_modes = {
    { 
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle", 
        scale = 0.75, 
        offset = { 0, -25 } 
    },
}

--将人物添加到Mod Character List性别可以是MALE, FEMALE, ROBOT, NEUTRAL, PLURAL.
AddModCharacter("tank", "NEUTRAL", skin_modes)
