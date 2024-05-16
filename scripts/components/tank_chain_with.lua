local function OnTaskTick(inst, self)--每秒执行的重复动作
    
end

local function MakeChain(inst)
    -- 死亡后生成锁链
	local x,y,z = inst.Transform:GetWorldPosition() 
	SpawnPrefab("tank_chain_noactived").Transform:SetPosition(x, y, z)
	--删除生成的骷髅
	local ents = TheSim:FindEntities(x,y,z, 1)--检索距离为1
	for k,v in pairs(ents) do
		if v:HasTag("playerskeleton")then
			v:Remove()
		end
	end
end

local tank_chain_with = Class(function(self,inst)
    self.inst=inst
    inst:ListenForEvent("ms_becameghost",MakeChain)
    self.inst:DoPeriodicTask(1, OnTaskTick, nil, self)--每秒执行的重复动作
    
end)

return tank_chain_with