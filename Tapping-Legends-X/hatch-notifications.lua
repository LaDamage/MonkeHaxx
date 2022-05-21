--// Execution Check \\--
if tlx_LOADED then warn("[!] Tapping Legends X Hatch Notifications Already Loaded!") return end
pcall(function() getgenv().tlx_LOADED = true end)

--// Script Libraries \\--
getgenv().version = "3.2.5"
getgenv().OriginalDiscord = getgenv().SecretNotification

local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/LaDamage/Notifications/main/Notification-Library.lua", true))()
local PetImages = loadstring(game:HttpGet("https://raw.githubusercontent.com/LaDamage/MonkeHaxx/main/Tapping-Legends-X/pet-images.lua", true))()

--// Services \\--
local services = setmetatable({}, { __index = function(self, key) return game:GetService(key) end })
local client = services.Players.LocalPlayer

local request = request or http_request
if type(syn) == 'table' and type(syn.request) == 'function' then
	request = syn.request
end

--// UI Variables \\--
local PlayerChat = client.PlayerGui.Chat.Frame.ChatChannelParentFrame["Frame_MessageLogDisplay"].Scroller
local PetInventory = game:GetService("ReplicatedStorage").Stats[client.Name].Pets
local PetAssets = game:GetService("ReplicatedStorage").Pets

--// Time Libraries \\--
local beginTick = tick()
local osDate = os.date('!*t', os.time())

--// Webhook Setups \\--
local AssetId
local RobloxAssetId
local PetIconLink

--// Function Setups \\--
local round = function(value, decimals)
    return tonumber(string.format("%." .. (decimals) .. "f", value))
end
local comma = function(value)
    value = tostring(value)
    return value:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end
local getImage = function(assetId)
    local api = request({
            Url = "https://thumbnails.roblox.com/v1/assets?assetIds=" .. assetId .. "&size=150x150&format=Png",
            Method = "GET"
    })

    local dataString = string.split(api.Body, '"')
    return dataString[12]
end

--// Hatched Pet UID \\--
PetInventory.ChildAdded:Connect(function(instance)
    getgenv().PetUID = instance.Name
end)

--// Detect Hatch Message
PlayerChat.ChildAdded:Connect(function(message)
    if string.find(message.TextLabel.Text, client.Name.." hatched a") then

        --// Get Pet Variables
        local HatchedPetName = PetInventory[getgenv().PetUID].PetName.Value
        local HatchedPetPower = PetInventory[getgenv().PetUID].Power.Value
        local HatchedPetTier = PetInventory[getgenv().PetUID].Tier.Value

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
            getgenv().SecretNotification = getgenv().OriginalDiscord
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
                    ["value"] = comma(HatchedPetPower),
                    ["inline"] = true
                },
                {
                    ["name"] = "📦 Inventory Space:",
                    ["value"] = SplittedInventory[1],
                    ["inline"] = false
                }
                },
                ["footer"] = {["text"] = '🥚 '..comma(client.leaderstats.Eggs.Value)},
                ["timestamp"] = DateTime.now():ToIsoDate()
            }}
        }

        request({Url= getgenv().NotificationWebhook, Body = game:GetService("HttpService"):JSONEncode(WebhookData), Method = "POST", Headers = {["content-type"] = "application/json"}})
    end
end)

--// Credits & Anti AFK
warn("[!] Tapping Legends X Hatch Notifications Loaded!")
warn("[!] Script took", round((tick() - beginTick)*10^3, 0), "ms to load.\n")
warn("[?] Script Version: v"..version)
warn("[?] Provided & Made by: CollateralDamage\n")
print("[*] Anti AFK is Enabled\n__________________________________________________________")

Notification.new("success", "Script Loaded!", "Tapping Legends X Hatch Notifications Loaded!", true, 5)
Notification.new("message", "Script took "..round((tick() - beginTick)*10^3, 0).." ms to load.", "Provided & Made by: CollateralDamage", true, 6)

for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do v:Disable() end
