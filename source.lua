-- IY

loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()

-- Main Variables
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerScripts = Player:FindFirstChildOfClass("PlayerScripts")
local Backpack = Player:FindFirstChildOfClass("Backpack")
local Police_Revolver = Backpack:FindFirstChild("Police Revolver")
local Configuration = Police_Revolver:FindFirstChildOfClass("Configuration")

if Player and PlayerScripts and Backpack and Police_Revolver and Configuration then
    print("✅ Driven has successfully loaded with all Dependencies operational.")
end

-- Revolver Variables
local AmmoReserves = Police_Revolver:FindFirstChild("AmmoReserves")
local CurrentAmmo = Police_Revolver:FindFirstChild("CurrentAmmo")

-- Configuration Variables
local AmmoCapacity = Configuration:FindFirstChild("AmmoCapacity")
local ConfigurationAmmoReserves = Configuration:FindFirstChild("AmmoReserves")
local FullMagazineSize = Configuration:FindFirstChild("FullMagazineSize")
local MaxSpread = Configuration:FindFirstChild("MaxSpread")
local RecoilMax = Configuration:FindFirstChild("RecoilMax")
local ShotCooldown = Configuration:FindFirstChild("ShotCooldown")
local FireMode = Configuration:FindFirstChild("FireMode")

if not FireMode then
    print("✅ Creating FireMode...")
    FireMode = Instance.new("StringValue")
    FireMode.Name = "FireMode"
    FireMode.Parent = Configuration
    FireMode.Value = "Automatic"
    wait(1)
    if FireMode then
        print("✅ FireMode successfully created in the specified directory")
    end
    else
    warn("❌ Failed to create new instance")
end

-- Check if values exist in the directory

if AmmoReserves then
    print("✅ AmmoReserves currently exists in the specified directory")
    else
    warn("❌ Failed to find AmmoReserves in the specified directory")
end

if CurrentAmmo then
    print("✅ CurrentAmmo currently exists in the specified directory")
    else
    warn("❌ Failed to find CurrentAmmo in the specified directory")
end

if AmmoCapacity then
    print("✅ AmmoCapacity currently exists in the specified directory")
    else
    warn("❌ Failed to find AmmoCapacity in the specified directory")
end

if ConfigurationAmmoReserves then
    print("✅ ConfigurationAmmoReserves currently exists in the specified directory")
    else
    warn("❌ Failed to find ConfigurationAmmoReserves in the specified directory")
end

if FullMagazineSize then
    print("✅ FullMagazineSize currently exists in the specified directory")
    else
    warn("❌ Failed to find FullMagazineSize in the specified directory")
end

if MaxSpread then
    print("✅ MaxSpread currently exists in the specified directory")
    else
    warn("❌ Failed to find MaxSpread in the specified directory")
end

if RecoilMax then
    print("✅ RecoilMax currently exists in the specified directory")
    else
    warn("❌ Failed to find RecoilMax in the specified directory")
end

if ShotCooldown then
    print("✅ ShotCooldown currently exists in the specified directory")
    else
    warn("❌ Failed to find ShotCooldown in the specified directory")
end

if FireMode then
    print("✅ FireMode currently exists in the specified directory")
    else
    warn("❌ Failed to find FireMode in the specified directory")
end

-- INF Ammo

while wait() do

    if AmmoReserves then
        AmmoReserves.Value = 9999
    end

    if CurrentAmmo then
        CurrentAmmo.Value = 9999
    end

    if AmmoCapacity then
        AmmoCapacity.Value = 9999
    end

    if ConfigurationAmmoReserves then
        ConfigurationAmmoReserves.Value = 9999
    end

    if FullMagazineSize then
        FullMagazineSize.Value = 9999
    end

    if MaxSpread then
        MaxSpread.Value = 0
    end

    if RecoilMax then
        RecoilMax.Value = 0
    end

    if ShotCooldown then
        ShotCooldown.Value = 0
    end
    end
