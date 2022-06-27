--// Execution Check
if tlx_LOADED then warn("[!] Tapping Legends X Hatch Notifications Already Loaded!") return end
pcall(function() getgenv().tlx_LOADED = true end)

--// Services
local services = setmetatable({}, { __index = function(self, key) return game:GetService(key) end })
local client = services.Players.LocalPlayer

local beginTick = tick()

local request = request or http_request
if type(syn) == 'table' and type(syn.request) == 'function' then
	request = syn.request
end

--// Resource Managers
getgenv().DataStorage = {
    Version = "4.1.5",
    Discord = getgenv().SecretNotification
}

local FormatManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/LaDamage/Functions/main/numbers.lua", true))()
local NotificationManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/LaDamage/Notifications/main/Notification-Library.lua", true))()
local CodeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/LaDamage/MonkeHaxx/main/Tapping-Legends-X/resources/codes.lua", true))()
local ImageStorage = loadstring(game:HttpGet("https://raw.githubusercontent.com/LaDamage/MonkeHaxx/main/Tapping-Legends-X/resources/pet-images.lua", true))()

local EggModule = require(game:GetService("ReplicatedStorage").Modules.Tables.Eggs)

--// Variables
local PetInventory = game:GetService("ReplicatedStorage").Stats[client.Name].Pets
local PetAssets = game:GetService("ReplicatedStorage").Pets
local PlayerChat = client.PlayerGui.Chat.Frame.ChatChannelParentFrame["Frame_MessageLogDisplay"].Scroller

--// Function Handlers
local getImage = function(assetId)
    local api = request({
            Url = "https://thumbnails.roblox.com/v1/assets?assetIds=" .. assetId .. "&size=150x150&format=Png",
            Method = "GET"
    })

    local dataString = string.split(api.Body, '"')
    return dataString[12]
end
local redeemCode = function(code)
    return game:GetService("ReplicatedStorage").Remotes.RedeemCode:InvokeServer(code)
end

--// Unique Pet Identifier 
PetInventory.ChildAdded:Connect(function(instance)
    getgenv().PetUID = instance.Name
end)

--// Detect Pet Hatch & Send Webhook
PlayerChat.ChildAdded:Connect(function(message)
    if string.find(message.TextLabel.Text, client.Name.." hatched a") then

        --// Get Pet Variables
        local HatchedPetName = PetInventory[getgenv().PetUID].PetName.Value
        local HatchedPetPower = PetInventory[getgenv().PetUID].Power.Value
        local HatchedPetTier = PetInventory[getgenv().PetUID].Tier.Value

        --// Get Egg Name
        for _, v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
            if client:DistanceFromCharacter(v.E.Position) < 15 then
                getgenv().EggName = tostring(v)
            end
        end

        --// get Pet Chance
        for i, table in pairs(EggModule[getgenv().EggName].Pets) do
            if table.PetName == HatchedPetName then
                getgenv().ChanceShort = "1 in "..FormatManager:suffix(100/table.Chance)
                getgenv().ChanceLong = FormatManager:comma(FormatManager:round(100/table.Chance/game:GetService("ReplicatedStorage").Stats[client.Name].PlayerData.TotalLuckMultiplier.Value, 0))
            end
        end

        --// Get Roblox Asset ID Of Hatched Pet
        local Pet = PetAssets[HatchedPetName]
        if HatchedPetTier == 1 then
            PetIconLink = getImage(require(Pet.Settings).icon:gsub("rbxassetid%:%/%/", ""))

        elseif HatchedPetTier == 2 then
            PetIconLink = getImage(require(Pet.Settings).iconGold:gsub("rbxassetid%:%/%/", ""))

        elseif HatchedPetTier == 3 then
            for _, v in pairs(PetImages) do
                if _ == HatchedPetName then
                    PetIconLink = v
                end
            end
        end

        --// Get Inventory Count
        local InventorySpace = client.PlayerGui.Menus.Pets.Frame.TotalPetsInfo.Label.text
        local SplittedInventory = InventorySpace:split(" ")

        --// Initialze Rarity Color
        if string.find(message.TextLabel.Text, "Legendary") then
            RarityColor = 0xffdf00
            getgenv().SecretNotification = nil
        elseif string.find(message.TextLabel.Text, "Exotic") then
            RarityColor = 0xff0800
            getgenv().SecretNotification = nil
        elseif string.find(message.TextLabel.Text, "Godly") then
            RarityColor = 0x4b0082
            getgenv().SecretNotification = nil
        elseif string.find(message.TextLabel.Text, "Secret") then
            RarityColor = 0x32cd32
            getgenv().SecretNotification = DataStorage.Discord
        end

        --// Create Webhook Data
        local WebhookData = {
            ["content"] = getgenv().SecretNotification,
            ["embeds"] = {{
                ["title"] = message.TextLabel.Text,
                ["thumbnail"] = {["url"] = PetIconLink},
                ["color"] =  tonumber(RarityColor),
                ["fields"] = {{
                    ["name"] = "🔢 Pet Stats:",
                    ["value"] = FormatManager:comma(HatchedPetPower),
                    ["inline"] = true
                },
                {
                    ["name"] = "🍀 Chance:",
                    ["value"] = "1 in "..ChanceLong,
                    ["inline"] = false
                },
                {
                    ["name"] = "📦 Inventory Space:",
                    ["value"] = SplittedInventory[1],
                    ["inline"] = false
                }
                },
                ["footer"] = {["text"] = '🥚 '..FormatManager:comma(client.leaderstats.Eggs.Value)},
                ["timestamp"] = DateTime.now():ToIsoDate()
            }}
        }

        request({Url= getgenv().NotificationWebhook, Body = game:GetService("HttpService"):JSONEncode(WebhookData), Method = "POST", Headers = {["content-type"] = "application/json"}})
    end
end)

spawn(function()
    warn("[!] Tapping Legends X Hatch Notifications Loaded!")
    warn("[!] Script took", FormatManager:round((tick() - beginTick)*10^3, 0), "ms to load.\n")
    warn("[?] Script Version: v"..DataStorage.Version)
    warn("[?] Provided & Made by: CollateralDamage\n")
    print("[*] Anti AFK is Enabled\n__________________________________________________________")

    NotificationManager.new("success", "Script Loaded!", "Tapping Legends X Hatch Notifications Loaded!", true, 5)
    NotificationManager.new("message", "Script took "..FormatManager:round((tick() - beginTick)*10^3, 0).." ms to load.", "Provided & Made by: CollateralDamage", true, 6)

    for _, v in pairs(CodeManager) do
        redeemCode(v)
        task.wait(0.5)
    end
end)

for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do v:Disable() end
