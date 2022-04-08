local assets =
{
    Asset("ANIM", "anim/tank_useless_scarf.zip"),  --地上的动画
	Asset("ATLAS", "images/items/tank_useless_scarf.xml"), --加载物品栏贴图
    Asset("IMAGE", "images/items/tank_useless_scarf.tex"),
}

local function onequip(inst, owner) --装备
	owner.AnimState:OverrideSymbol("swap_body", "tank_useless_scarf", "swap_body")
						 --三个参数分别是替换的贴图是swap_body  使用的动画是yifu  第三个这个注意 这个swap_body是你的动画里装图片的文件夹的名字
   
    --inst:ListenForEvent("blocked", OnBlocked, owner)
end

local function onunequip(inst, owner)  --脱下
    owner.AnimState:ClearOverrideSymbol("swap_body")
    --inst:RemoveEventCallback("blocked", OnBlocked, owner)
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)
    inst.AnimState:SetBank("tank_useless_scarf")  --动画 --SP软件里面动画的总名字
    inst.AnimState:SetBuild("tank_useless_scarf") --smcl文件的名字
    inst.AnimState:PlayAnimation("idle")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable") --可检查组件

    inst:AddComponent("inventoryitem") --物品组件
	inst.components.inventoryitem.atlasname = "images/items/tank_useless_scarf.xml" --物品贴图

    inst:AddComponent("insulator")--隔热
    inst.components.insulator:SetInsulation(TUNING.INSULATION_SMALL)--保暖60 每秒掉30/(30+60)℃
    inst.components.insulator:SetWinter()

    inst:AddComponent("armor")--护甲
    inst.components.armor:InitIndestructible(0.1*TUNING.MULTIPLAYER_ARMOR_ABSORPTION_MODIFIER)--10%防护
	
    inst:AddComponent("equippable") --可装备组件
    inst.components.equippable.dapperness = 0.5/TUNING.DAY_TIME_DEFAULT
    inst.components.equippable.equipslot = EQUIPSLOTS.BODY
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("tank_useless_scarf", fn, assets)