local assets =
{
    Asset("ANIM", "anim/tank_chain.zip"),  --地上的动画
    Asset("ATLAS", "images/items/tank_chain_armor.xml"), --加载物品栏贴图
    Asset("IMAGE", "images/items/tank_chain_armor.tex"),
}

SetSharedLootTable('chain_activated',--掉落物组"chain"
{
    --{'tank_useless_scarf',   1.00},
    {'tank_chain_armor',   1.00},
})

SetSharedLootTable('chain_noactivated',--掉落物组"chain"
{
    {'tank_useless_scarf',   1.00},
})

local function onhammered(inst)--被挖了后
    inst.components.lootdropper:DropLoot()
    local fx = SpawnPrefab("collapse_small")--生成灰尘效果
    fx.Transform:SetPosition(inst.Transform:GetWorldPosition())
    fx:SetMaterial("rock")
    inst:Remove()
end

local function BeActivated(inst,haunter)
    local x,y,z = inst.Transform:GetWorldPosition() 
    local older = SpawnPrefab("tank_chain_activated")
    older.Transform:SetPosition(x, y, z)
    older.AnimState:PlayAnimation("activating")--激活闪烁动画
    haunter.SoundEmitter:PlaySound("dontstarve/common/fireAddFuel")
    local fx = SpawnPrefab("alterguardian_lasertrail")
    fx.entity:SetParent(older.entity)
    inst:Remove()
    older.AnimState:PushAnimation("idle", true)
end

local function OnHaunt(inst, haunter)--作祟后
    if haunter:HasTag("tank") then
        if inst:HasTag("tank_chain_activated")then
            haunter:PushEvent("respawnfromghost", { source = inst })
            onhammered(inst)
            return true
        end
        if inst:HasTag("tank_chain_noactivated") and haunter.components.tank_data.current>=45 then
            haunter.components.tank_data:DoDelta(-45)
            BeActivated(inst,haunter)
        end
    end
end

local function OnActivate(inst,doer)
    if doer:HasTag("tank") then
        if inst:HasTag("tank_chain_noactivated") and doer.components.tank_data.current>=45 then
            doer.components.tank_data:DoDelta(-45)
            inst.components.activatable.inactive = false
            BeActivated(inst,doer)
        else
            inst.components.activatable.inactive = true
            doer.components.talker:Say(STRINGS.TANK_NOT_ENOUGH_DATA)
        end
    else
        doer.components.talker:Say(STRINGS.TANK_NOT_FOR_ME)
    end
end

local function onequip(inst, owner) --装备
	owner.AnimState:OverrideSymbol("swap_body", "tank_chain_armor", "swap_body")
    --三个参数分别是替换的贴图是swap_body  使用的动画是yifu  第三个这个注意 这个swap_body是你的动画里装图片的文件夹的名字
    --inst:ListenForEvent("blocked", OnBlocked, owner)
end

local function onunequip(inst, owner)  --脱下
    owner.AnimState:ClearOverrideSymbol("swap_body")
    --inst:RemoveEventCallback("blocked", OnBlocked, owner)
end

local function HasPhysics(obj)
    return obj.Physics ~= nil
end

local function fn_noactivated()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddMiniMapEntity()
    inst.entity:AddNetwork()

    -- MakeSmallObstaclePhysics(inst, 0.25)--小障碍物碰撞箱
    MakeObstaclePhysics(inst, 1)
    inst.Physics:SetCollisionGroup(COLLISION.OBSTACLES)
    inst.Physics:ClearCollisionMask()
    inst.Physics:CollidesWith(COLLISION.WORLD)
    inst.Physics:CollidesWith(COLLISION.ITEMS)
    inst.Physics:CollidesWith(COLLISION.CHARACTERS)

    inst.AnimState:SetBuild("tank_chain")
    inst.AnimState:SetBank("tank_chain_noactivated")  --地上动画
    inst.AnimState:PlayAnimation("idle")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddTag("tank_chain")
    inst:AddTag("tank_chain_noactivated")
    
    inst:AddComponent("inspectable") --可检查组件
    inst:AddComponent("lootdropper")--有掉落物
    inst:AddComponent("heavyobstaclephysics")
    inst.components.lootdropper:SetChanceLootTable('chain_noactivated')--掉落物组:chain
    inst:AddComponent("workable")--可破坏
    inst:AddComponent("hauntable")--可作祟
    inst:AddComponent("activatable")--可以激活
    

    inst.components.hauntable:SetHauntValue(TUNING.HAUNT_INSTANT_REZ)
    inst.components.hauntable:SetOnHauntFn(OnHaunt)
    inst.components.workable:SetWorkAction(ACTIONS.HAMMER)--用锤子
    inst.components.workable:SetWorkLeft(1)--敲1下
    inst.components.workable:SetOnFinishCallback(onhammered)
    inst.components.activatable.OnActivate = OnActivate
    -- MakeHauntableLaunch(inst)

    return inst
end

local function fn_activated()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddMiniMapEntity()
    inst.entity:AddNetwork()

    -- MakeSmallObstaclePhysics(inst, 0.25)--小障碍物碰撞箱
    MakeObstaclePhysics(inst, 1)
    inst.Physics:SetCollisionGroup(COLLISION.OBSTACLES)
    inst.Physics:ClearCollisionMask()
    inst.Physics:CollidesWith(COLLISION.WORLD)
    inst.Physics:CollidesWith(COLLISION.ITEMS)
    inst.Physics:CollidesWith(COLLISION.CHARACTERS)

    inst.AnimState:SetBuild("tank_chain")
    inst.AnimState:SetBank("tank_chain_activated")  --地上动画
    inst.AnimState:PlayAnimation("idle")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddTag("tank_chain")
    inst:AddTag("tank_chain_activated")
    inst:AddComponent("inspectable") --可检查组件
    inst:AddComponent("lootdropper")--有掉落物
    inst:AddComponent("heavyobstaclephysics")
    inst.components.lootdropper:SetChanceLootTable('chain_activated')--掉落物组:chain
    inst:AddComponent("workable")--可破坏
    inst:AddComponent("hauntable")--可作祟
    inst.components.hauntable:SetHauntValue(TUNING.HAUNT_INSTANT_REZ)
    inst.components.hauntable:SetOnHauntFn(OnHaunt)--作祟后执行的函数

    inst.components.workable:SetWorkAction(ACTIONS.HAMMER)--用锤子
    inst.components.workable:SetWorkLeft(1)--敲1下
    inst.components.workable:SetOnFinishCallback(onhammered)

    -- MakeHauntableLaunch(inst)

    return inst
end

local function fn_armor()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)
    inst.AnimState:SetBuild("tank_chain")--smcl文件的名字
    inst.AnimState:SetBank("tank_chain_armor")  --动画 --SP软件里面动画的总名字
    inst.AnimState:PlayAnimation("idle")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable") --可检查组件
    inst:AddComponent("inventoryitem") --物品组件
	inst.components.inventoryitem.atlasname = "images/items/tank_chain_armor.xml" --物品贴图

    -- inst:AddComponent("insulator")--隔热
    -- inst.components.insulator:SetInsulation(TUNING.INSULATION_SMALL)--保暖60 每秒掉30/(30+60)℃
    -- inst.components.insulator:SetWinter()

    inst:AddComponent("armor")--护甲
    inst.components.armor:InitIndestructible(0.1*TUNING.MULTIPLAYER_ARMOR_ABSORPTION_MODIFIER)--10%防护
	
    inst:AddComponent("equippable") --可装备组件
    inst.components.equippable.dapperness = 0.5/TUNING.DAY_TIME_DEFAULT
    inst.components.equippable.equipslot = EQUIPSLOTS.BODY
    -- inst.components.equippable:SetOnEquip(onequip)
    -- inst.components.equippable:SetOnUnequip(onunequip)

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("tank_chain_armor", fn_armor, assets),
       Prefab("tank_chain_noactivated", fn_noactivated, assets),
       Prefab("tank_chain_activated", fn_activated, assets),
       MakePlacer(
           "tank_chain_noactivated_placer",
           "tank_chain_noactivated",
           "tank_chain_noactivated",
           "idle"
       )