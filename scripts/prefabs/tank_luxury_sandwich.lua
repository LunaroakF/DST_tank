local assets =
{
    Asset("ANIM", "anim/tank_luxury_sandwich.zip"),  --地上的动画
	Asset("ATLAS", "images/items/tank_luxury_sandwich.xml"), --加载物品栏贴图
    Asset("IMAGE", "images/items/tank_luxury_sandwich.tex"),
}


local function fn()
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

return Prefab("tank_luxury_sandwich", fn, assets)