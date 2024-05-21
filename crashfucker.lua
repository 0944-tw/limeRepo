-- Vari
local Game = GetService("StarterGui").Parent 
print("Patching BSOD")
local ReplicatedStorage = Game.ReplicatedStorage
local HttpService = Game.HttpService
local Players = Game.Players.LocalPlayer
print(Players.Name)
-- Vari
ReplicatedStorage.RemoteEvents.SystemCrash:Destroy()
print("SystemCrash Removed")
Players.PlayerGui.LimeOS.CrashFrame:Destroy()
print("CrashGUI Removed. Now Will Prevent ClientSide Crash and make Crash Handler Errors")
