if ms2_loaded then warn("[!] Mining Simulator 2 Hatch Notifications Already Loaded!") return end
pcall(function() getgenv().ms2_loaded = true end)

--// Services
local services = setmetatable({}, { __index = function(self, key) return game:GetService(key) end })
local client = services.Players.LocalPlayer

local request = request or http_request
if type(syn) == 'table' and type(syn.request) == 'function' then
	request = syn.request
end

--// Resource Managers
local FormatManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/LaDamage/Functions/main/numbers.lua", true))()

function toHex(x) 
    local hex =  string.format("%x", x)
    return hex:len() == 1 and "0"..hex or hex
end
function RGB2HEX(r,g,b) 
    return "0x" .. toHex(r) .. toHex(g) .. toHex(b)
end

--// Variables
local PlayerChat = client.PlayerGui.Chat.Frame.ChatChannelParentFrame["Frame_MessageLogDisplay"].Scroller

PlayerChat.ChildAdded:Connect(function(message)
    if string.find(message.TextLabel.Text, client.Name.." just hatched a") then

        local dataTitle = string.split(message.TextLabel.Text, "[Server]: ")
        local TextColor3 = message.TextLabel.TextColor3

        local dataContent
        for _, rarity in pairs(Rarities) do
            if string.find(message.TextLabel.Text, rarity) and DiscordUserId ~= "" then
                dataContent = "<@".. tostring(DiscordUserId) ..">"
            end
        end

        --// Create Webhook Data
        local WebhookData = {
            ["content"] = dataContent,
            ["embeds"] = {{
                ["title"] = dataTitle[2],
                ["color"] =  tonumber(RGB2HEX(unpack({TextColor3.R*255,TextColor3.G*255,TextColor3.B*255}))),
                ["footer"] = {["text"] = "🥚 "..FormatManager:comma(client.leaderstats.Eggs.Value)},
                ["timestamp"] = DateTime.now():ToIsoDate()
            }}
        }

        request({Url = getgenv().DiscordWebhook, Body = game:GetService("HttpService"):JSONEncode(WebhookData), Method = "POST", Headers = {["content-type"] = "application/json"}})
    end
end)
