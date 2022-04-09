--预设
PrefabFiles = {
	"tank",
	"tank_none",
    "tank_useless_scarf",
    "tank_fire_axe",
	"tank_luxury_sandwich",
	"tank_fallen_data"
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

--三明治
TUNING.STARTING_ITEM_IMAGE_OVERRIDE["tank_luxury_sandwich"] = {
	name = STRINGS.NAMES.TANK_LUXURY_SANDWICH,
	atlas = "images/items/tank_luxury_sandwich.xml",
	image = "tank_luxury_sandwich.tex",
}

TUNING.STARTING_ITEM_IMAGE_OVERRIDE["tank_fallen_data"] = {
	name = STRINGS.NAMES.TANK_FALLEN_DATA,
	atlas = "images/items/tank_fallen_data.xml",
	image = "tank_fallen_data.tex",
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

local function UseData(inst)
	if inst:HasTag("tank") then
		if inst.components.tank_data:GetCD()==0 then
			local defaultscreen = false
			if TheFrontEnd:GetActiveScreen() and TheFrontEnd:GetActiveScreen().name and type(TheFrontEnd:GetActiveScreen().name) == "string" and TheFrontEnd:GetActiveScreen().name == "HUD" then
				defaultscreen = true
			end
			if  inst.components.tank_data.current>=8 and defaultscreen then
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "tank_speed_mod", 1.6)
				inst.components.health:DoDelta(5,false,inst.health)
				inst.components.health:SetAbsorptionAmount(1)
				inst.components.talker:Say("你是想和我比寿命吗？")
				inst.components.tank_data.current=inst.components.tank_data.current-8
				inst.components.tank_data:SetCD(10)
			end
		end
	end
end
AddModRPCHandler("tank", "use_data", UseData)


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
