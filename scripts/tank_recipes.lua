GLOBAL.setmetatable(env, {__index=function(t, k) return GLOBAL.rawget(GLOBAL, k) end})

local _G = GLOBAL
local cooking = require("cooking")
local FRAMES = _G.FRAMES
local TimeEvent = _G.TimeEvent
local EventHandler = _G.EventHandler
-- local require = _G.require
-- local STRINGS = _G.STRINGS
local EQUIPSLOTS = _G.EQUIPSLOTS
local ACTIONS = _G.ACTIONS
-- local ActionHandler = _G.ActionHandler
local IsServer = _G.TheNet:GetIsServer() or _G.TheNet:IsDedicated()

local tank_luxury_sandwich = AddRecipe2("tank_luxury_sandwich", {Ingredient("frogglebunwich", 1),Ingredient("spoiled_food", 4),Ingredient("stinger", 1),Ingredient("berries_juicy", 1)}, TECH.NONE, {builder_tag = "tank", atlas = "images/items/tank_luxury_sandwich.xml", image = "tank_luxury_sandwich.tex"}, {"CHARACTER","COOKING"})
--tank_luxury_sandwich.tagneeded = false
