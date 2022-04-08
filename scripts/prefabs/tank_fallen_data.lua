local assets =
{
    Asset("ANIM", "anim/tank_fallen_data.zip"),  --地上的动画
    Asset("ATLAS", "images/items/tank_fallen_data.xml"), --加载物品栏贴图
    Asset("IMAGE", "images/items/tank_fallen_data.tex"),
}

local function ItemEating(inst, owner)
    if owner:HasTag("tank") then
        owner.components.tank_data:DoDelta(1.5)
    else
        owner.components.talker:Say(STRINGS.TANK_FALLEN_DATA_USED_BY_OTHERS)
    end
end


local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("tank_fallen_data")  --地上动画
    inst.AnimState:SetBuild("tank_fallen_data")
    inst.AnimState:PlayAnimation("idle")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

   -------
    local Periodic = inst:DoPeriodicTask(4,function()
        inst:Remove()
    end)
    inst:AddTag("tank_fallen_data")
    inst:AddComponent("inspectable") --可检查组件
    inst:AddComponent("inventoryitem") --物品组件
    inst.components.inventoryitem.atlasname = "images/items/tank_fallen_data.xml" --物品贴图
    inst.components.inventoryitem:SetOnPickupFn(function(inst,owner)
        if owner:HasTag("tank") then
            Periodic:Cancel()
        else
            inst.tank_data_Periodic = owner:DoPeriodicTask(1,function()
                owner.components.inventory:DropEverythingWithTag("tank_fallen_data")
                owner.components.talker:Say(STRINGS.TANK_FALLEN_DATA_PICKED_BY_OTHERS)
                inst.tank_data_Periodic:Cancel()
            end)
        end
    end)

    inst:AddComponent("stackable")
    inst:AddComponent("edible") --可食用组件
    inst.components.edible.healthvalue = 0
    inst.components.edible.sanityvalue = 0
    inst.components.edible.hungervalue = 0
    inst.components.edible:SetOnEatenFn(ItemEating)

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("tank_fallen_data", fn, assets)