local Players = game:GetService("Players")
local Chat = game:GetService("Chat")
local StarterGui = game:GetService("StarterGui")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local head = character:WaitForChild("Head")

Chat:Chat(head, _G.Txt, Enum.ChatColor.Blue)

StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = player.Name .. ": " .. _G.Txt;
    Color = Color3.fromRGB(0, 162, 255);
    Font = Enum.Font.SourceSansBold;
    FontSize = Enum.FontSize.Size18;
})
