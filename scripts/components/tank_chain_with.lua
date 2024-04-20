local function OnTaskTick(inst, self)--每秒执行的重复动作
    
end

local tank_chain_with = Class(function(self,inst)
    self.inst=inst
    
    self.inst:DoPeriodicTask(1, OnTaskTick, nil, self)--每秒执行的重复动作
    
end)

return tank_chain_with