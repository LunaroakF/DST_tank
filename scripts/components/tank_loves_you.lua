local function OnTaskTick(inst, self)--每秒执行的重复动作
    local isbutterflywings = false
    local sanitytotal = 0
    --包里有蝴蝶加san↓
    if self.inst.components.inventory:FindItem(function(item) return item.prefab == "butterflywings" end) then
        if not isbutterflywings then--一天+0.5,无法叠加
            sanitytotal=sanitytotal+(0.5/(TUNING.DAY_TIME_DEFAULT+TUNING.DUSK_TIME_DEFAULT+TUNING.NIGHT_TIME_DEFAULT))
            isbutterflywings = true
        end
    elseif isbutterflywings then
        sanitytotal=sanitytotal-(0.5/(TUNING.DAY_TIME_DEFAULT+TUNING.DUSK_TIME_DEFAULT+TUNING.NIGHT_TIME_DEFAULT))
        isbutterflywings = false
    end
    --包里有蝴蝶加san↑
    
    --san值结算↓
    if sanitytotal ~= 0 then
        self.inst.components.sanity.rate_modifier = 1--解锁san
        self.inst.components.sanity.dapperness=sanitytotal
    else
        self.inst.components.sanity.dapperness=sanitytotal
        self.inst.components.sanity.rate_modifier = 0--锁定san
    end
    --san值结算↑

end

local function AttackOther(inst, data)
	--攻击携带兔耳罩的实体一秒恢复一滴血持续5秒
    local target = data.target
	if target.components.inventory and target.components.health.currenthealth > 0 and target.components.inventory.equipslots[EQUIPSLOTS.HEAD] ~= nil then
		if target.components.inventory:GetEquippedItem(EQUIPSLOTS.HEAD):HasTag("open_top_hat") then
		--if target.components.inventory ~= nil and target.components.inventory:IsItemEquipped(data.earmuffshat) then
			if inst.components.tank_fear_injection.PHrefill == 0 then
				inst.components.talker:Say(STRINGS.TANK_FIRST_GET_BLOOD)
			end
			inst.components.tank_fear_injection:PHrefillDoDelta(5)
		end
	end
end

local tank_loves_you = Class(function(self,inst)
    self.inst=inst
    inst:ListenForEvent("onhitother",AttackOther)
    self.inst:DoPeriodicTask(1, OnTaskTick, nil, self)--每秒执行的重复动作
    --喜爱玫瑰
	inst:ListenForEvent("thorns",function(inst)
		inst.components.sanity:DoDelta(-1)
		inst.components.hunger:DoDelta(10)
	end)
end)

return tank_loves_you