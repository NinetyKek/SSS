if game:GetService("ReplicatedStorage").Assets.Lighting ~= nil then
	game:GetService("ReplicatedStorage").Assets.Lighting:Destroy()
end

if St then coroutine.wrap(function(Stepper)
local Players = game:GetService("Players");
local TweenService = game:GetService("TweenService");
local RunService = game:GetService("RunService");
local RootPart = Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart");
local TweenData = TweenInfo.new(math.random(1,99), Enum.EasingStyle.Linear);
local Rand = math.random(1,999999999);

function TP()
    local TPCFrame = CFrame.new(Rand,Rand,Rand);
    local tween,err = pcall(function()
        local tween = TweenService:Create(RootPart, TweenData, {CFrame=TPCFrame});
        tween:Play();
    end)
end

RunService.RenderStepped:Connect(function()
    pcall(function() TP(); end)
end)
end)() end



			

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
    while true do 
	coroutine.wrap(function()
	    while true do					
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
	    end
    	end)() 
     	wait(120) 
	end 
    end)() 
end

if Re then coroutine.wrap(function(Rebirther)
    while true do
        game:GetService("ReplicatedStorage").Knit.Services.LevelingService.RF.AttemptRebirth:InvokeServer()
        wait()
    end
end)() end
