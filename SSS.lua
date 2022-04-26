---------By _90_#0001------------
-- Auto Collect
Co = true
-- Booster
-- WARNING: Makes game look awful
Bo = true
-- Auto Rebirth
Re = true
---------------------------------
if  game:GetService("ReplicatedStorage").Assets.Lighting ~= nil then
    game:GetService("ReplicatedStorage").Assets.Lighting:Destroy()
end

if Co then coroutine.wrap(function(Collector)
    while true do
        for i,v in pairs(game:GetService("Workspace").Map.Objects:GetDescendants()) do
	        if v.ClassName == "Part" and v.Name == "Hitbox" then
		    	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
		    	game:GetService("ReplicatedStorage").Knit.Services.WorldCurrencyService.RE.PickupCurrency:FireServer(v.Parent.Name)
		    	v.Parent:Destroy()
	    	end
        end
        wait()
    end
end)() end

if Bo then coroutine.wrap(function(Booster)
    while true do coroutine.wrap(function()
            RequestTeleportToZone = game:GetService("ReplicatedStorage").Knit.Services.ZoneService.RF.RequestTeleportToZone
            CompleteZoneObby = game:GetService("ReplicatedStorage").Knit.Services.ZoneService.RF.CompleteZoneObby
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
    end)() wait () end 
end)() end

if Re then coroutine.wrap(function(Rebirther)
    while true do
        game:GetService("ReplicatedStorage").Knit.Services.LevelingService.RF.AttemptRebirth:InvokeServer()
        wait()
    end
end)() end
