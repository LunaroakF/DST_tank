--ThePlayer.components.tank_data:DoDelta(60)

local function oncurrent(self, current)
    if self.inst.tank_data then 
        self.inst.tank_data:set(current)
    end
end

local function OnTaskTick(inst, self)
    if self.counttime ~= nil and self.counttime ~= 0 then
        self.counttime=self.counttime-1
        if self.counttime <=0 then--and self.current<48 then
            self:DoDelta(1)
            self.counttime=self.addtime
        end
    else
        self.counttime=self.addtime
    end

    if self.cd > 0 then
        if self.cd < 8 then
            self.inst.components.locomotor:SetExternalSpeedMultiplier(inst, "tank_speed_mod", 1)
        end
        --if self.cd < 5 then
            --self.inst.components.health:SetAbsorptionAmount(0)
        --end
    end
    self:cdDoDelta(-1)
end

local tank_data = Class(function(self, inst)
    self.inst = inst
    self.cd=0
    self.addtime=500
    self.max = 0
    self.current = 0
    self.counttime=self.addtime
    self.addbonus = nil
    self.inst:DoPeriodicTask(1, OnTaskTick, nil, self)
end,
nil,
{
    current = oncurrent,
})

function tank_data:OnSave()
    return  { 
        current = self.current,
        counttime = self.counttime
 }
end

function tank_data:OnLoad(data)
    
    if data.current ~= nil  then
        self.current = data.current
    end
    if data.counttime ~= nil then
        self.counttime = data.counttime
    end
end

function tank_data:SetMax(amount)
    self.max = amount
end

function tank_data:DoDelta(delta)
    local old = self.current
    self.current = math.clamp(self.current + delta, 0, self.max)
    self.inst:PushEvent("tank_datadelta", { current = self.current })
end

function tank_data:cdDoDelta(delta)
	local old = self.cd
	self.cd = math.clamp(self.cd + delta, 0, 10)
end

function tank_data:GetCD()
    return self.cd
end

function tank_data:GetCurrent()
    return self.current
end

function tank_data:SetCD(amount)
    self.cd=amount
end

function tank_data:GetPercent()
    return self.current / self.max
end

return tank_data
