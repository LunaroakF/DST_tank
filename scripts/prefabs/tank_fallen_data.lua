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
        if owner:HasTag("player") then
            owner.components.talker:Say(STRINGS.TANK_FALLEN_DATA_USED_BY_OTHERS)
        end
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

    
    inst:AddTag("tank_fallen_data")
    inst:AddComponent("inspectable") --可检查组件
    inst:AddComponent("inventoryitem") --物品组件
    inst.components.inventoryitem.atlasname = "images/items/tank_fallen_data.xml" --物品贴图

    local Periodic = inst:DoPeriodicTask(4,function()
        inst:Remove()
    end)
    
inst.components.inventoryitem:SetOnPickupFn(function(inst, owner)

    if owner == nil or owner.components.inventory == nil then
        return
    end
    --非 tank 才处理
    if not owner:HasTag("tank") then
        --防止同一帧疯狂触发
        if owner._tank_fallen_lock then
            return
        end
        owner._tank_fallen_lock = true
        inst:DoTaskInTime(0, function()
            local dropped = false
            for k, v in pairs(owner.components.inventory.itemslots) do
                if v ~= nil and v:HasTag("tank_fallen_data") then
                    owner.components.inventory:DropItem(v)
                    dropped = true
                end
            end
            if dropped then
                owner.components.talker:Say(STRINGS.TANK_FALLEN_DATA_PICKED_BY_OTHERS)
            end
            --解锁（防止短时间重复触发）
            owner:DoTaskInTime(0.2, function()
                owner._tank_fallen_lock = nil
            end)
        end)
    end
end)

    inst.components.inventoryitem:SetOnDroppedFn(function(inst,owner)
        local Periodic = inst:DoPeriodicTask(4,function()
            inst:Remove()
        end)
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