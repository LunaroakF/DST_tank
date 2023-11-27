local assets =
{
    Asset("ANIM", "anim/tank_chain.zip"),  --地上的动画
}

SetSharedLootTable('chain',--掉落物组"chain"
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

local function OnHaunt(inst, haunter)--作祟后
    if haunter:HasTag("tank") then
        if haunter.components.tank_data.current>=45 then
            haunter.components.tank_data.current = haunter.components.tank_data.current-45
            haunter:PushEvent("respawnfromghost", { source = inst })
            onhammered(inst)
            return true
        end
    end
end

local function HasPhysics(obj)
    return obj.Physics ~= nil
end

local function fn__noactived()
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
    inst.AnimState:SetBuild("tank_chain_noactived")
    inst.AnimState:PlayAnimation("idle")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    
    inst:AddTag("tank_chain_noactived")
    inst:AddComponent("inspectable") --可检查组件
    inst:AddComponent("lootdropper")--有掉落物
    inst.components.lootdropper:SetChanceLootTable('chain')--掉落物组:chain
    inst:AddComponent("workable")--可破坏

    inst:AddComponent("hauntable")--可作祟
    inst.components.hauntable:SetHauntValue(TUNING.HAUNT_INSTANT_REZ)
    inst.components.hauntable:SetOnHauntFn(OnHaunt)

    inst.components.workable:SetWorkAction(ACTIONS.HAMMER)--用锤子
    inst.components.workable:SetWorkLeft(1)--敲1下
    inst.components.workable:SetOnFinishCallback(onhammered)

    -- MakeHauntableLaunch(inst)

    return inst
end

return Prefab("tank_chain_noactived", fn_noactived, assets)