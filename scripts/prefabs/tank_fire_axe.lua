local assets =
{
    Asset("ANIM", "anim/tank_fire_axe.zip"),  --地上的动画
    Asset("ANIM", "anim/swap_tank_fire_axe.zip"), --手里的动画
	Asset("ATLAS", "images/items/tank_fire_axe.xml"), --加载物品栏贴图
    Asset("IMAGE", "images/items/tank_fire_axe.tex"),
}

local function onequip(inst, owner) --装备
    owner.AnimState:OverrideSymbol("swap_object", "swap_tank_fire_axe", "swap_wuqi")
								--替换的动画部件	使用的动画	替换的文件夹（注意这里也是文件夹的名字）
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner) --解除装备
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("tank_fire_axe")  --地上动画
    inst.AnimState:SetBuild("tank_fire_axe")
    inst.AnimState:PlayAnimation("idle")

    inst:AddTag("sharp") --武器的标签跟攻击方式跟攻击音效有关 没有特殊的话就用这两个
    inst:AddTag("pointy")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("weapon") --增加武器组件 有了这个才可以打人
    inst.components.weapon:SetRange(1,2)    
    inst:AddComponent("tool")
    inst.components.tool:SetAction(ACTIONS.CHOP)--允许砍树
    inst.components.weapon:SetDamage(46) --设置伤害46

    -------

    --inst:AddComponent("finiteuses") --使用次数（叫耐久也可以）
    --inst.components.finiteuses:SetMaxUses(1000)
    --inst.components.finiteuses:SetUses(1000)

    --inst.components.finiteuses:SetOnFinished(inst.Remove) --没有耐久了移除武器

    inst:AddComponent("inspectable") --可检查组件

    inst:AddComponent("inventoryitem") --物品组件
	inst.components.inventoryitem.atlasname = "images/items/tank_fire_axe.xml" --物品贴图
	
    inst:AddComponent("equippable") --可装备组件
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("tank_fire_axe", fn, assets)