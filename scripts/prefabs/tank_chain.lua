local assets =
{
    Asset("ANIM", "anim/tank_chain.zip"),  --地上的动画
}

SetSharedLootTable('chain_actived',--掉落物组"chain"
{
    {'tank_useless_scarf',   1.00},
    --{'tank_fallen_data',   3.00},
})

SetSharedLootTable('chain_noactived',--掉落物组"chain"
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

local function BeActived(inst,haunter)
    local x,y,z = inst.Transform:GetWorldPosition() 
    local older = SpawnPrefab("tank_chain_actived")
    older.Transform:SetPosition(x, y, z)
    haunter.SoundEmitter:PlaySound("dontstarve/common/fireAddFuel")
    local fx = SpawnPrefab("alterguardian_lasertrail")
    fx.entity:SetParent(older.entity)
    inst:Remove()
end

local function OnHaunt(inst, haunter)--作祟后
    if haunter:HasTag("tank") then
        if inst:HasTag("tank_chain_actived")then
            haunter:PushEvent("respawnfromghost", { source = inst })
            onhammered(inst)
            return true
        end
        if inst:HasTag("tank_chain_noactived") and haunter.components.tank_data.current>=45 then
            haunter.components.tank_data:DoDelta(-45)
            BeActived(inst,haunter)
        end
    end
end

local function OnActivate(inst,doer)
    if inst:HasTag("tank_chain_noactived") and doer.components.tank_data.current>=45 then
        doer.components.tank_data:DoDelta(-45)
        inst.components.activatable.inactive = false
        BeActived(inst,doer)
    else
        inst.components.activatable.inactive = true
        doer.components.talker:Say("没有足够的数据捏")
    end
end



local function HasPhysics(obj)
    return obj.Physics ~= nil
end

local function fn_noactived()
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


    inst.AnimState:SetBank("tank_chain_noactived")  --地上动画
    inst.AnimState:SetBuild("tank_chain")
    inst.AnimState:PlayAnimation("idle")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddTag("tank_chain")
    inst:AddTag("tank_chain_noactived")
    inst:AddComponent("inspectable") --可检查组件
    inst:AddComponent("lootdropper")--有掉落物
    inst.components.lootdropper:SetChanceLootTable('chain_noactived')--掉落物组:chain
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

local function fn_actived()
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


    inst.AnimState:SetBank("tank_chain_actived")  --地上动画
    inst.AnimState:SetBuild("tank_chain")
    inst.AnimState:PlayAnimation("idle")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddTag("tank_chain")
    inst:AddTag("tank_chain_actived")
    inst:AddComponent("inspectable") --可检查组件
    inst:AddComponent("lootdropper")--有掉落物
    inst.components.lootdropper:SetChanceLootTable('chain_actived')--掉落物组:chain
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

local function fn_item()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)
    inst.AnimState:SetBank("tank_luxury_sandwich")  --地上动画
    inst.AnimState:SetBuild("tank_luxury_sandwich")
    inst.AnimState:PlayAnimation("idle")
    
    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable") --可检查组件
    inst:AddComponent("inventoryitem") --物品组件
	inst.components.inventoryitem.atlasname = "images/items/tank_luxury_sandwich.xml" --物品贴图
    MakeSmallBurnable(inst, TUNING.MED_BURNTIME)

    inst:AddComponent("stackable")
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_MEDITEM
	
    inst:AddComponent("edible") --可食用组件

    if GetPlayer():HasTag("tank") then
        inst.components.edible.healthvalue = 20
    else
        inst.components.edible.healthvalue = -101
    end

    inst.components.edible.sanityvalue = 2
    inst.components.edible.hungervalue = 66

    inst:AddComponent("perishable")
    inst.components.perishable:SetPerishTime(TUNING.PERISH_ONE_DAY)
    inst.components.perishable:StartPerishing()
    inst.components.perishable.onperishreplacement = "spoiled_food"


    MakeHauntableLaunch(inst)
    return inst
end

return Prefab("tank_chain_noactived", fn_noactived, assets),
       Prefab("tank_chain_actived", fn_actived, assets)
