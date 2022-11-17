local assets =
{
    Asset("ANIM", "anim/tank_chain_noactived.zip"),  --地上的动画
}

SetSharedLootTable('chain',--掉落物
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

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeSmallObstaclePhysics(inst, 0.25)--小障碍物碰撞箱

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
    inst.components.workable:SetWorkAction(ACTIONS.HAMMER)--用锤子
    inst.components.workable:SetWorkLeft(3)--敲3下
    inst.components.workable:SetOnFinishCallback(onhammered)

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("tank_chain_noactived", fn, assets)