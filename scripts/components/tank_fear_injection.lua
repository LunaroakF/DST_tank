local function OnTaskTick(inst, self)
    local sanitytotal = 0
    local isevergreens = false
    local isbutterflywings = false
    local isstinger = false

    --靠近松树掉san
    local x,y,z = self.inst.Transform:GetWorldPosition() 
    local ents = TheSim:FindEntities(x,y,z, 1)
    for k,v in pairs(ents) do
        if v:HasTag("evergreens") and v:HasTag("shelter") and not self.inst:HasTag("sanityaura") then
            if not isevergreens then
                sanitytotal=sanitytotal-2--每秒-2
                isevergreens = true
            end
        elseif isevergreens then
            sanitytotal=sanitytotal+2
            isevergreens = false
        end
    end

    --包里有蝴蝶加san
    if self.inst.components.inventory:FindItem(function(item) return item.prefab == "butterflywings" end) then
        if not isbutterflywings then--一天+0.5
            sanitytotal=sanitytotal+(0.5/(TUNING.DAY_TIME_DEFAULT+TUNING.DUSK_TIME_DEFAULT+TUNING.NIGHT_TIME_DEFAULT))
            isbutterflywings = true
        end
    elseif isbutterflywings then
        sanitytotal=sanitytotal-(0.5/(TUNING.DAY_TIME_DEFAULT+TUNING.DUSK_TIME_DEFAULT+TUNING.NIGHT_TIME_DEFAULT))
        isbutterflywings = false
    end

    for i=1,table.getn(self.fearinjectionitems) do
        if self.inst.components.inventory:FindItem(function(item) return item.prefab == self.fearinjectionitems[i] end) then
            self.inst.components.tank_fear_injection.hascurrentitem=self.inst.components.tank_fear_injection.hascurrentitem+1
            --sanitytotal=sanitytotal-0.5
        end
    end
    
    if self.inst.components.tank_fear_injection.oldhascurrentitem ~= self.inst.components.tank_fear_injection.hascurrentitem then
        sanitytotal=sanitytotal+(0.5*self.inst.components.tank_fear_injection.oldhascurrentitem)
        sanitytotal=sanitytotal-(0.5*self.inst.components.tank_fear_injection.hascurrentitem)
        self.inst.components.tank_fear_injection.oldhascurrentitem = self.inst.components.tank_fear_injection.hascurrentitem
    end

    if sanitytotal ~= 0 then
        self.inst.components.sanity.rate_modifier = 1--解锁san
        self.inst.components.sanity.dapperness=sanitytotal
    else
        self.inst.components.sanity.dapperness=sanitytotal
        self.inst.components.sanity.rate_modifier = 0--锁定san
    end

end


local tank_fear_injection = Class(function(self,inst)
    self.inst=inst
    self.oldhascurrentitem = 0
    self.hascurrentitem = 0
    --蜂针,荆棘外壳,蜜蜂地雷,蓝宝石,吹箭,尖刺灌木,仙人掌,羽毛笔,鱼,一角鲸的角,强心针,伏特羊角,弹簧秤,针线包,触手尖刺,刺耳三叉戟
    self.fearinjectionitems={"stinger","armor_bramble","beemine","bluegem","blowdart","marsh_bush","cactus",
    "featherpencil","fish","gnarwail_horn","lifeinjector","lightninggoathorn","pocket_scale","sewingkit",
    "tentaclespike","trident"}
    self.inst.components.sanity.night_drain_mult = 0 --晚上不掉san
    self.inst.components.sanity.rate_modifier = 0--锁定san
    self.inst:DoPeriodicTask(1, OnTaskTick, nil, self)
    --喜爱玫瑰
	inst:ListenForEvent("thorns",function(inst)
		inst.components.sanity:DoDelta(-1)
		inst.components.hunger:DoDelta(10)
	end)
end)

return tank_fear_injection