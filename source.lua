loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

-- Dependencies --
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerScripts = Player:FindFirstChildOfClass("PlayerScripts")
local Backpack = Player:FindFirstChildOfClass("Backpack")
local Police_Revolver = Backpack:FindFirstChild("Police Revolver")
local Configuration = Police_Revolver:FindFirstChildOfClass("Configuration")

if Player and Backpack and Police_Revolver then
    print("[DRIVEN] - ✅ Driven has successfully loaded with all Dependencies operational")
else
    warn("[DRIVEN] - ❌ Player, Backpack, or Police Revolver is missing")
end

if Configuration then
    print("[DRIVEN] - ✅ Configuration has successfully loaded with all Dependencies operational")
    
    local FireMode = Police_Revolver:FindFirstChildOfClass("FireMode")
    if not FireMode then
        warn("[DRIVEN] - ❌ FireMode is nil. Attempting to create a new instance...")
        FireMode = Instance.new("StringValue")
        FireMode.Name = "FireMode"
        FireMode.Parent = Configuration
        FireMode.Value = "Automatic"
        wait(1)
        if FireMode then
            print("[DRIVEN] - ✅ FireMode has successfully been created.")
        end
    else
        print("[DRIVEN] - FireMode is already set")
    end
else
    warn("[DRIVEN] - ❌ Configuration is missing")
end

-- AmmoReserves and CurrentAmmo
local AmmoReserves = Police_Revolver:FindFirstChild("AmmoReserves")
local CurrentAmmo = Police_Revolver:FindFirstChild("CurrentAmmo")
local ShotCooldown = Configuration:FindFirstChild("ShotCooldown")

if AmmoReserves then
    print("[DRIVEN] - ✅ AmmoReserves has successfully loaded with all Dependencies operational")
else
    warn("[DRIVEN] - ❌ AmmoReserves is nil")
end

if CurrentAmmo then
    print("[DRIVEN] - ✅ CurrentAmmo has successfully loaded with all Dependencies operational")
else
    warn("[DRIVEN] - ❌ CurrentAmmo is nil")
end

if ShotCooldown then
    print("[DRIVEN] - ✅ ShotCooldown has successfully loaded with all Dependencies operational")
else
    warn("[DRIVEN] - ❌ ShotCooldown is nil")
end

-- Shitty loop
while true do
    wait(0.1)
    if AmmoReserves then
        AmmoReserves.Value = 99999999
    end
    if CurrentAmmo then
        CurrentAmmo.Value = 99999999
    end
    if ShotCooldown then
        ShotCooldown.Value = 0
    end
end
