local tool = game.ReplicatedStorage["Soop Potato"]
local giver = script.Parent
local canGive = false

local function GiveTool(player)
	if canGive == false then
		canGive = true
		local clone = tool:Clone()
		clone.Parent = player.Backpack
		wait(1)
		canGive = false
	end
end

giver.ClickDetector.MouseClick:Connect(function(player)
	GiveTool(player)
end) 