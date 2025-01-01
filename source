loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

-- Function(s) --
function waitForChild(childName, childParent, childTime)
	if childParent[childName] then
		return childParent[childName]
	end
	while childParent:FindFirstChild(childName) == nil do
		wait(childName ~= nil and childTime or 0)
	end
	return childParent:FindFirstChild(childName)
end

function Create(className, defaultParent)
	return function(propertyList)
		local object = Instance.new(className)
		local parent = nil

		for index, value in next, propertyList do
			if typeof(index) == 'string' then
				if index == 'Parent' then
					parent = value
				else
					object[index] = value
				end
			else
				local valueType = typeof(value)
				if valueType == 'function' then
					value(object)
				elseif valueType == 'Instance' then
					value.Parent = object
				end
			end
		end

		if parent then
			object.Parent = parent
		end

		if object.Parent == nil then
			object.Parent = defaultParent
		end

		return object
	end
end

-- Dependencies --
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Player = Players.LocalPlayer or Players.localPlayer
local Backpack = Player:FindFirstChildOfClass("Backpack")
local Police_Revolver = waitForChild("Police Revolver", Backpack)
local Police_Revolver_Configuration, FireMode, ShotCooldown = nil
if Player and Backpack and Police_Revolver then
	RunService.RenderStepped:Connect(function()
		local AmmoReserves = Police_Revolver:FindFirstChild("AmmoReserves")
		if not AmmoReserves then
			AmmoReserves = Create("IntValue") {
				Name = "AmmoReserves",
				Parent = Police_Revolver,
				Value = 10,
			}
		end
		AmmoReserves.Value = 999999
		local CurrentAmmo = Police_Revolver:FindFirstChild("CurrentAmmo")
		if not CurrentAmmo then
			CurrentAmmo = Create("IntValue") {
				Name = "CurrentAmmo",
				Parent = Police_Revolver,
				Value = 10,
			}
		end
		CurrentAmmo.Value = 999999
		Police_Revolver_Configuration = Police_Revolver:FindFirstChildOfClass("Configuration")
		if Police_Revolver_Configuration then
			FireMode = Create("StringValue") {
				Name = "FireMode",
				Parent = Police_Revolver_Configuration,
				Value = "Automatic",
			}
			ShotCooldown = Create("NumberValue") {
				Name = "ShotCooldown",
				Parent = Police_Revolver_Configuration,
				Value = 0,
			}
		end
	end)
end
