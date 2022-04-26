---------By _90_#0001------------
-- Auto Collect
_C = true
-- Booster (Massive income boost)
-- WARNING: Makes game look awful
_B = true
-- Auto Rebirth
_R = true
---------------------------------

if _C then coroutine.wrap(function(Collector)
    while wait() do
        for i,v in pairs(game:GetService("Workspace").Map.Objects:GetDescendants()) do
	        if v.ClassName == "Part" and v.Name == "Hitbox" then
		    	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
		    	game:GetService("ReplicatedStorage").Knit.Services.WorldCurrencyService.RE.PickupCurrency:FireServer(v.Parent.Name)
		    	v.Parent:Destroy()
	    	end
        end
    end
end)() end

if _B then coroutine.wrap(function(Booster)
    local Knit = game:GetService("ReplicatedStorage").Knit;
    local RequestTeleportToZone = Knit.Services.ZoneService.RF.RequestTeleportToZone;
    local CompleteZoneObby = Knit.Services.ZoneService.RF.CompleteZoneObby;
    while true do
        RequestTeleportToZone:InvokeServer("Lost Valley Obby", "Green Hill Exit")
        CompleteZoneObby:InvokeServer()
        wait(0.3)
        RequestTeleportToZone:InvokeServer("Emerald Hill Obby", "Lost Valley Exit")
        CompleteZoneObby:InvokeServer()
        wait(0.3)
        RequestTeleportToZone:InvokeServer("Snow Valley Obby", "Emerald Hill Exit")
        CompleteZoneObby:InvokeServer()
        RequestTeleportToZone:InvokeServer("Green Hill", "Lost Valley Obby Entrance")
        wait(0.3)
    end
end)() end

if _R then coroutine.wrap(function(Rebirther)
    while wait() do
        local Knit = game:GetService("ReplicatedStorage").Knit;
        local AttemptRebirth = Knit.Services.LevelingService.RF.AttemptRebirth;
        AttemptRebirth:InvokeServer();
    end
end)() end
