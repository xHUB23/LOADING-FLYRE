local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Kosin Hub v0.5", "Ocean")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Auto farm")

local Section = Tab:NewSection("Toggle UI")
Section:NewKeybind("ToggleUi", "KeybindInfo", Enum.KeyCode.RightControl, function()	
          Library:ToggleUI()
end)

local Tab = Window:NewTab("Players")
local Section = Tab:NewSection("Teleport")
players = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(players,v.Name)
end
Section:NewDropdown("Select Player", " ", players, function(abc)
    Select = abc
end)
Section:NewButton("Refresh", " ", function()
    table.clear(players)
for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(players,v.Name)
end
end)
 
Section:NewButton("Teleport", " ", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Select].Character.HumanoidRootPart.CFrame
end)
