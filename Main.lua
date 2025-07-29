local Players = game:GetService("Players")
local Chat = game:GetService("Chat")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local head = character:WaitForChild("Head")

Chat:Chat(head, _G.Txt, Enum.ChatColor.Blue)
