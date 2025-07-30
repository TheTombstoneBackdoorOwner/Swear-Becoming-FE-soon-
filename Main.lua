local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StarterGui = game:GetService("StarterGui")

local player = Players.LocalPlayer
local message = _G.Txt

local chatEvent = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
chatEvent:FireServer(message, "All")

local character = player.Character or player.CharacterAdded:Wait()
local head = character:WaitForChild("Head")
game:GetService("Chat"):Chat(head, message, Enum.ChatColor.Blue)

StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = player.Name .. ": " .. message;
    Color = Color3.fromRGB(0, 162, 255);
    Font = Enum.Font.SourceSansBold;
    FontSize = Enum.FontSize.Size18;
})
