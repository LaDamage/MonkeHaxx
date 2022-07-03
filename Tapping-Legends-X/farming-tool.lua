--// Services \\--
local services = setmetatable({}, { __index = function(self, key) return game:GetService(key) end })
local client = services.Players.LocalPlayer

local request = request or http_request
if type(syn) == 'table' and type(syn.request) == 'function' then
	request = syn.request
end

--// Libraries
local Twinkle = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))()

--// Script Settings
getgenv().RebInterval = 300

local Worlds = {"Aqua", "Galaxy", "Tech", "Event"}

--// Create Window
local Window = Twinkle.Load("Tapping Legends X")

--// Clicking Tab
local ClickingTab = Window.AddPage("Clicking", false)

local Label = ClickingTab.AddLabel("Settings")
local RebirthInterval = ClickingTab.AddSlider("Rebirth Interval", {Min = 60, Max = 600, Def = 300}, function(Value)
    getgenv().RebInterval = value
end)

local Label = ClickingTab.AddLabel("Scripts")
local AutoTap = ClickingTab.AddToggle("Auto Tap", false, function(bool)
    getgenv().AutoTap = bool
end)
local AutoRebirth = ClickingTab.AddToggle("Auto Rebirth", false, function(bool)
    getgenv().AutoRebirth = bool
end)
local AutoTimerewards = ClickingTab.AddToggle("Auto Time Rewards", false, function(bool)
    getgenv().Timerewards = bool
end)

local PawTab = Window.AddPage("Paw Tokens", false)
local Label = PawTab.AddLabel("Settings")
local WorldSelection = PawTab.AddDropdown("Selected Chest", Worlds, function(world)
    getgenv().SelectedChest = world
end)
local Label = PawTab.AddLabel("Scripts")
local FarmDrops = PawTab.AddToggle("Auto Farm Drops", false, function(bool)
    getgenv().FarmDrop = bool
end)
local FarmChests = PawTab.AddToggle("Auto Farm Chest", false, function(bool)
    getgenv().FarmChest = bool
end)

--// Automation
spawn(function()
    while task.wait() do
        if getgenv().AutoTap then
            game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
        end
    end
end)
spawn(function()
    while task.wait(getgenv().RebInterval) do
        if getgenv().AutoRebirth then
            game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer("Max")
        end
    end
end)
spawn(function()
    while task.wait() do
        if getgenv().Timerewards then
            local count = 1

            local timeplayedUI = game:GetService("Players").LocalPlayer.PlayerGui.Menus.TimeRewards.Frame.List

            for _, v in pairs(timeplayedUI:GetChildren()) do
                if v:IsA("ImageLabel") then
                    v.Name = count
                    count +=  1
                end
            end
            for _, v in pairs(timeplayedUI:GetChildren()) do
                if v:IsA("ImageLabel") then
                    if v.Background.ImageColor3 == Color3.fromRGB(0, 255, 0) and v.Claim.ImageLabel.TextLabel.Text ~= "Claimed!" then
                        game:GetService("ReplicatedStorage").Remotes.PlaytimeReward:FireServer(tonumber(v.Name))
                    end
                end
            end
        end
    end
end)

spawn(function()
    while task.wait() do
        if getgenv().FarmDrop then
            local currentArea = game:GetService("ReplicatedStorage").Stats[game.Players.LocalPlayer.Name].PlayerData.CurrentArea.Value

            function nearest()
                local Closest
                local Distance = math.huge
                local shit = game:GetService("Workspace").Drops[currentArea]:GetChildren()
                for i = 1, #shit do 
                    local v = shit[i]
                    local newDistance = game.Players.LocalPlayer:DistanceFromCharacter(v:FindFirstChildWhichIsA("MeshPart").Position)
                    if newDistance < Distance then
                        Closest = v
                        Distance = newDistance
                    end
                end
                return Closest
            end

            local thing = nearest()
            if thing then
                game.Players.LocalPlayer.Character.Humanoid:MoveTo(thing:FindFirstChildWhichIsA("MeshPart").Position)
                game:GetService("ReplicatedStorage").Remotes.Tap:FireServer(thing.Name)
            end
        end
    end
end)

spawn(function()
    while task.wait() do
        if getgenv().FarmChest then
            getgenv().library = {
                ["Aqua"] = "rbxassetid://9273028097",
                ["Galaxy"] = "rbxassetid://9520311791",
                ["Tech"] = "",
                ["Event"] = "rbxassetid://10055013036"
            }

            local PlayerName = game.Players.LocalPlayer.Name
            local StatFolder = game:GetService("ReplicatedStorage").Stats[PlayerName]
            local DataFolder = StatFolder.PlayerData
            local CurrentArea = DataFolder.CurrentArea.Value

            function nearest()
                local Closest
                local Distance = math.huge
                local shit = game:GetService("Workspace").Drops[CurrentArea]:GetChildren()
                for i = 1, #shit do 
                    local v = shit[i]
                    if v:FindFirstChildWhichIsA("MeshPart").MeshId == library[getgenv().SelectedChest] then
                        local newDistance = game.Players.LocalPlayer:DistanceFromCharacter(v:FindFirstChildWhichIsA("MeshPart").Position)
                        if newDistance < Distance then
                            Closest = v
                            Distance = newDistance
                        end
                    end
                end
                return Closest
            end

            local thing = nearest()
            if thing then
                game.Players.LocalPlayer.Character.Humanoid:MoveTo(thing:FindFirstChildWhichIsA("MeshPart").Position)
                game:GetService("ReplicatedStorage").Remotes.Tap:FireServer(thing.Name)
            end
        end
    end
end)
