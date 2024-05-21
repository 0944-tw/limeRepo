-- Vari
local Game = GetService("StarterGui").Parent 
print("Patching LimitedEnv")
local ReplicatedStorage = Game.ReplicatedStorage
local HttpService = Game.HttpService
local Players = Game.Players.LocalPlayer
print(Players.Name)
-- Vari
--Libs
local LimeLib = ReplicatedStorage.Libraries
local Kernel = LimeLib.LimeKernel

local OldLimitedEnv = Kernel.LimeLimitedEnv
local PatchKernel = function()

	local LimeEnv = Kernel.LimeEnv:Clone()
	LimeEnv.Name ="LimeLimitedEnv"
	LimeEnv.Parent = Kernel
	OldLimitedEnv:Destroy()
	print("Patched")
end

local LycheeApp = createapp("Lychee")
local Instance = {
	new = new
}
local makeUIPadding = function(parent,px)
	local UIPadding =  Instance.new("UIPadding")
	UIPadding.PaddingLeft = UDim.new(0,px)
	UIPadding.PaddingTop = UDim.new(0,px)
	UIPadding.PaddingBottom = UDim.new(0,px)
	UIPadding.PaddingRight = UDim.new(0,px)
	UIPadding.Parent = parent
end
local makeUICorner = function(parent,px)
	local UICorner = Instance.new("UICorner")
	UICorner.CornerRadius = UDim.new(0,px)
	UICorner.Parent = parent
end

-- LycheeGUI
local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = LycheeApp
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0,5)
local LycheeTitle = Instance.new("TextLabel")
LycheeTitle.Parent = LycheeApp
LycheeTitle.Text = "Lychee"
LycheeTitle.BackgroundColor3 = Color3.fromRGB(0,0,0)
LycheeTitle.TextColor3 = Color3.new(1,1,1)
LycheeTitle.Size = UDim2.new(1,0,0,36)
LycheeTitle.Font = Enum.Font.GothamBold
LycheeTitle.TextScaled = true
LycheeTitle.LayoutOrder = 1
local frame = Instance.new("Frame")
frame.Parent = LycheeApp
frame.BackgroundTransparency = 1
frame.Size = UDim2.new(1,0,0,36)
frame.LayoutOrder = 2
local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = frame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0,5)
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
local LycheePatch = Instance.new("TextButton")
LycheePatch.Parent = frame
LycheePatch.Text = "Patch"
LycheePatch.BackgroundColor3 = Color3.new(1,1,1)
LycheePatch.TextColor3 = Color3.new(0,0,0)
LycheePatch.Size = UDim2.new(0.5,0,1,-1)
LycheePatch.Font = Enum.Font.GothamBold
LycheePatch.TextScaled = true
LycheePatch.LayoutOrder = 1
local UninstallLychee = Instance.new("TextButton")
UninstallLychee.Parent = frame
UninstallLychee.Text = "Uninstall"
UninstallLychee.BackgroundColor3 = Color3.new(1,1,1)
UninstallLychee.TextColor3 = Color3.new(0,0,0)
UninstallLychee.Size = UDim2.new(0.5,0,1,-1)
UninstallLychee.Font = Enum.Font.GothamBold
UninstallLychee.TextScaled = true
UninstallLychee.LayoutOrder = 1
makeUIPadding(LycheeApp,5)
makeUIPadding(LycheeTitle,10)
makeUIPadding(LycheePatch,10)
makeUIPadding(UninstallLychee,10)
makeUICorner(LycheePatch,6)
makeUICorner(UninstallLychee,6)
