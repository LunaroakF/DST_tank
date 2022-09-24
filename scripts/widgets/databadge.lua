local Badge = require "widgets/badge"
local UIAnim = require "widgets/uianim"

local databadge = Class(Badge, function(self, owner)
    Badge._ctor(self, nil, owner, { 0 / 255, 0 / 255, 0 / 255, 1 }, "status_data")
    self.owner = owner

    self.inst:ListenForEvent("tank_dataevent", function(inst,data)
		self:SetPercent(self.owner.tank_data:value()/60, 60)
	end,self.owner)

    self:SetPercent(self.owner.tank_data:value()/60, 60)
end)

function databadge:SetPercent(val, max)
    Badge.SetPercent(self, val, max)
end

return databadge
