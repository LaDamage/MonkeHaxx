getgenv().selectedLB = "TotalTaps"

local screenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
local instances = {
	["UIPadding_3"] = Instance.new("UIPadding"),
	["ScrollingFrame_1"] = Instance.new("ScrollingFrame"),
	["UICorner_4"] = Instance.new("UICorner"),
	["UICorner_6"] = Instance.new("UICorner"),
	["UICorner_5"] = Instance.new("UICorner"),
	["ImageButton_6"] = Instance.new("ImageButton"),
	["ImageButton_9"] = Instance.new("ImageButton"),
	["UICorner_7"] = Instance.new("UICorner"),
	["UIPadding_1"] = Instance.new("UIPadding"),
	["UIPadding_4"] = Instance.new("UIPadding"),
	["UIListLayout_1"] = Instance.new("UIListLayout"),
	["ImageButton_2"] = Instance.new("ImageButton"),
	["UIPadding_5"] = Instance.new("UIPadding"),
	["ImageButton_5"] = Instance.new("ImageButton"),
	["TextLabel_3"] = Instance.new("TextLabel"),
	["UIPadding_2"] = Instance.new("UIPadding"),
	["ImageButton_1"] = Instance.new("ImageButton"),
	["UIStroke_10"] = Instance.new("UIStroke"),
	["ImageButton_8"] = Instance.new("ImageButton"),
	["UIStroke_7"] = Instance.new("UIStroke"),
	["UICorner_9"] = Instance.new("UICorner"),
	["UIStroke_12"] = Instance.new("UIStroke"),
	["TextLabel_2"] = Instance.new("TextLabel"),
	["UICorner_1"] = Instance.new("UICorner"),
	["UIStroke_13"] = Instance.new("UIStroke"),
	["ImageButton_7"] = Instance.new("ImageButton"),
	["UICorner_8"] = Instance.new("UICorner"),
	["ImageButton_3"] = Instance.new("ImageButton"),
	["Frame_2"] = Instance.new("Frame"),
	["UICorner_13"] = Instance.new("UICorner"),
	["Frame_4"] = Instance.new("Frame"),
	["ImageButton_4"] = Instance.new("ImageButton"),
	["UICorner_2"] = Instance.new("UICorner"),
	["UIStroke_5"] = Instance.new("UIStroke"),
	["Frame_1"] = Instance.new("Frame"),
	["Frame_3"] = Instance.new("Frame"),
	["UIStroke_11"] = Instance.new("UIStroke"),
	["UICorner_11"] = Instance.new("UICorner"),
	["UIStroke_3"] = Instance.new("UIStroke"),
	["ImageLabel_1"] = Instance.new("ImageLabel"),
	["UIStroke_8"] = Instance.new("UIStroke"),
	["UICorner_12"] = Instance.new("UICorner"),
	["UIListLayout_2"] = Instance.new("UIListLayout"),
	["UIStroke_1"] = Instance.new("UIStroke"),
	["TextLabel_1"] = Instance.new("TextLabel"),
	["UICorner_3"] = Instance.new("UICorner"),
	["UIStroke_4"] = Instance.new("UIStroke"),
	["UIStroke_9"] = Instance.new("UIStroke"),
	["UIStroke_6"] = Instance.new("UIStroke"),
	["UIStroke_2"] = Instance.new("UIStroke"),
	["UICorner_10"] = Instance.new("UICorner"),
    ["LocalScript_1"] = Instance.new("LocalScript"),
}


screenGui.Name = 'TLX Leaderboard'
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

instances.Frame_1.Parent = screenGui
instances.Frame_1.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
instances.Frame_1.Position = UDim2.new(0.3582651913166046, 0, 0.2933884263038635, 0)
instances.Frame_1.Size = UDim2.new(0, 450, 0, 290)
instances.Frame_1.Name = 'mainFrame'

instances.UIPadding_1.Parent = instances.Frame_1
instances.UIPadding_1.PaddingBottom = UDim.new(0, 5)
instances.UIPadding_1.PaddingLeft = UDim.new(0, 5)
instances.UIPadding_1.PaddingRight = UDim.new(0, 5)
instances.UIPadding_1.PaddingTop = UDim.new(0, 5)
instances.UIPadding_1.Name = 'UIPadding_main'

instances.UIStroke_1.Parent = instances.Frame_1
instances.UIStroke_1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
instances.UIStroke_1.Color = Color3.new(0.607843, 0.607843, 0.607843)
instances.UIStroke_1.Thickness = 2
instances.UIStroke_1.Name = 'UIStroke_main'

instances.UICorner_1.Parent = instances.Frame_1
instances.UICorner_1.Name = 'UICorner_main'

instances.Frame_2.Parent = instances.Frame_1
instances.Frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
instances.Frame_2.BackgroundTransparency = 1
instances.Frame_2.Position = UDim2.new(0, 0, 0.8214285969734192, 0)
instances.Frame_2.Size = UDim2.new(1, 0, 0.1785714328289032, 0)
instances.Frame_2.Name = 'ButtonHolder'

instances.UIStroke_2.Parent = instances.Frame_2
instances.UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
instances.UIStroke_2.Color = Color3.new(0.607843, 0.607843, 0.607843)
instances.UIStroke_2.Thickness = 2
instances.UIStroke_2.Name = 'UIStroke_bholder'

instances.UIPadding_2.Parent = instances.Frame_2
instances.UIPadding_2.PaddingBottom = UDim.new(0, 5)
instances.UIPadding_2.PaddingLeft = UDim.new(0, 5)
instances.UIPadding_2.PaddingRight = UDim.new(0, 5)
instances.UIPadding_2.PaddingTop = UDim.new(0, 5)
instances.UIPadding_2.Name = 'UIPadding_bholder'

instances.UICorner_2.Parent = instances.Frame_2
instances.UICorner_2.Name = 'UICorner_bholder'

instances.ImageButton_1.Parent = instances.Frame_2
instances.ImageButton_1.Image = 'rbxassetid://8754597954'
instances.ImageButton_1.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
instances.ImageButton_1.Size = UDim2.new(0, 40, 0, 40)
instances.ImageButton_1.Name = 'TotalTaps'

instances.UICorner_3.Parent = instances.ImageButton_1
instances.UICorner_3.Name = 'UICorner_bholder'

instances.UIStroke_3.Parent = instances.ImageButton_1
instances.UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
instances.UIStroke_3.Color = Color3.new(0.607843, 0.607843, 0.607843)
instances.UIStroke_3.Thickness = 2
instances.UIStroke_3.Name = 'UIStroke_main'

instances.UIListLayout_1.Parent = instances.Frame_2
instances.UIListLayout_1.Padding = UDim.new(0.0205000006, 0)
instances.UIListLayout_1.FillDirection = Enum.FillDirection.Horizontal
instances.UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
instances.UIListLayout_1.Name = 'UIListLayout_bholder'

instances.ImageButton_2.Parent = instances.Frame_2
instances.ImageButton_2.Image = 'rbxassetid://8762993731'
instances.ImageButton_2.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
instances.ImageButton_2.Size = UDim2.new(0, 40, 0, 40)
instances.ImageButton_2.Name = 'Rebirths'

instances.UICorner_4.Parent = instances.ImageButton_2
instances.UICorner_4.Name = 'UICorner_bholder'

instances.UIStroke_4.Parent = instances.ImageButton_2
instances.UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
instances.UIStroke_4.Color = Color3.new(0.607843, 0.607843, 0.607843)
instances.UIStroke_4.Thickness = 2
instances.UIStroke_4.Name = 'UIStroke_main'

instances.ImageButton_3.Parent = instances.Frame_2
instances.ImageButton_3.Image = 'rbxassetid://9055071384'
instances.ImageButton_3.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
instances.ImageButton_3.Size = UDim2.new(0, 40, 0, 40)
instances.ImageButton_3.Name = 'Eggs'

instances.UICorner_5.Parent = instances.ImageButton_3
instances.UICorner_5.Name = 'UICorner_bholder'

instances.UIStroke_5.Parent = instances.ImageButton_3
instances.UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
instances.UIStroke_5.Color = Color3.new(0.607843, 0.607843, 0.607843)
instances.UIStroke_5.Thickness = 2
instances.UIStroke_5.Name = 'UIStroke_main'

instances.ImageButton_4.Parent = instances.Frame_2
instances.ImageButton_4.Image = 'rbxassetid://9184772623'
instances.ImageButton_4.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
instances.ImageButton_4.Size = UDim2.new(0, 40, 0, 40)
instances.ImageButton_4.Name = 'PetPower'

instances.UICorner_6.Parent = instances.ImageButton_4
instances.UICorner_6.Name = 'UICorner_bholder'

instances.UIStroke_6.Parent = instances.ImageButton_4
instances.UIStroke_6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
instances.UIStroke_6.Color = Color3.new(0.607843, 0.607843, 0.607843)
instances.UIStroke_6.Thickness = 2
instances.UIStroke_6.Name = 'UIStroke_main'

instances.ImageButton_5.Parent = instances.Frame_2
instances.ImageButton_5.Active = false
instances.ImageButton_5.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
instances.ImageButton_5.BackgroundTransparency = 1
instances.ImageButton_5.Size = UDim2.new(0, 40, 0, 40)
instances.ImageButton_5.AutoButtonColor = false
instances.ImageButton_5.Name = '4hidden'

instances.UICorner_7.Parent = instances.ImageButton_5
instances.UICorner_7.Name = 'UICorner_bholder'

instances.UIStroke_7.Parent = instances.ImageButton_5
instances.UIStroke_7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
instances.UIStroke_7.Color = Color3.new(0.607843, 0.607843, 0.607843)
instances.UIStroke_7.Enabled = false
instances.UIStroke_7.Thickness = 2
instances.UIStroke_7.Name = 'UIStroke_main'

instances.ImageButton_6.Parent = instances.Frame_2
instances.ImageButton_6.Active = false
instances.ImageButton_6.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
instances.ImageButton_6.BackgroundTransparency = 1
instances.ImageButton_6.Size = UDim2.new(0, 40, 0, 40)
instances.ImageButton_6.AutoButtonColor = false
instances.ImageButton_6.Name = '4hidden'

instances.UICorner_8.Parent = instances.ImageButton_6
instances.UICorner_8.Name = 'UICorner_bholder'

instances.UIStroke_8.Parent = instances.ImageButton_6
instances.UIStroke_8.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
instances.UIStroke_8.Color = Color3.new(0.607843, 0.607843, 0.607843)
instances.UIStroke_8.Enabled = false
instances.UIStroke_8.Thickness = 2
instances.UIStroke_8.Name = 'UIStroke_main'

instances.ImageButton_7.Parent = instances.Frame_2
instances.ImageButton_7.Active = false
instances.ImageButton_7.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
instances.ImageButton_7.BackgroundTransparency = 1
instances.ImageButton_7.Size = UDim2.new(0, 40, 0, 40)
instances.ImageButton_7.AutoButtonColor = false
instances.ImageButton_7.Name = '4hidden'

instances.UICorner_9.Parent = instances.ImageButton_7
instances.UICorner_9.Name = 'UICorner_bholder'

instances.UIStroke_9.Parent = instances.ImageButton_7
instances.UIStroke_9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
instances.UIStroke_9.Color = Color3.new(0.607843, 0.607843, 0.607843)
instances.UIStroke_9.Enabled = false
instances.UIStroke_9.Thickness = 2
instances.UIStroke_9.Name = 'UIStroke_main'

instances.ImageButton_8.Parent = instances.Frame_2
instances.ImageButton_8.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
instances.ImageButton_8.Size = UDim2.new(0, 40, 0, 40)
instances.ImageButton_8.Name = 'Refresh'

instances.UICorner_10.Parent = instances.ImageButton_8
instances.UICorner_10.Name = 'UICorner_bholder'

instances.UIStroke_10.Parent = instances.ImageButton_8
instances.UIStroke_10.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
instances.UIStroke_10.Color = Color3.new(0.607843, 0.607843, 0.607843)
instances.UIStroke_10.Thickness = 2
instances.UIStroke_10.Name = 'UIStroke_main'

instances.ImageLabel_1.Parent = instances.ImageButton_8
instances.ImageLabel_1.Image = 'rbxassetid://5532008442'
instances.ImageLabel_1.AnchorPoint = Vector2.new(0.5, 0.5)
instances.ImageLabel_1.BackgroundColor3 = Color3.new(1, 1, 1)
instances.ImageLabel_1.BackgroundTransparency = 1
instances.ImageLabel_1.Position = UDim2.new(0.5, 0, 0.5, 0)
instances.ImageLabel_1.Size = UDim2.new(0, 30, 0, 30)

instances.ImageButton_9.Parent = instances.Frame_2
instances.ImageButton_9.Image = 'rbxassetid://8719511092'
instances.ImageButton_9.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
instances.ImageButton_9.Size = UDim2.new(0, 40, 0, 40)

instances.UICorner_11.Parent = instances.ImageButton_9
instances.UICorner_11.Name = 'UICorner_bholder'

instances.UIStroke_11.Parent = instances.ImageButton_9
instances.UIStroke_11.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
instances.UIStroke_11.Color = Color3.new(0.607843, 0.607843, 0.607843)
instances.UIStroke_11.Thickness = 2
instances.UIStroke_11.Name = 'UIStroke_main'

instances.Frame_3.Parent = instances.Frame_1
instances.Frame_3.BackgroundColor3 = Color3.new(1, 1, 1)
instances.Frame_3.BackgroundTransparency = 1
instances.Frame_3.Size = UDim2.new(1, 0, 0, 223)
instances.Frame_3.Name = 'LeaderboardHolder'

instances.UIStroke_12.Parent = instances.Frame_3
instances.UIStroke_12.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
instances.UIStroke_12.Color = Color3.new(0.607843, 0.607843, 0.607843)
instances.UIStroke_12.Thickness = 2
instances.UIStroke_12.Name = 'UIStroke_bholder'

instances.UICorner_12.Parent = instances.Frame_3
instances.UICorner_12.Name = 'UICorner_bholder'

instances.ScrollingFrame_1.Parent = instances.Frame_3
instances.ScrollingFrame_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
instances.ScrollingFrame_1.CanvasSize = UDim2.new(0, 0, 0, 0)
instances.ScrollingFrame_1.ScrollBarImageColor3 = Color3.new(0, 0, 0)
instances.ScrollingFrame_1.ScrollBarThickness = 0
instances.ScrollingFrame_1.Active = true
instances.ScrollingFrame_1.BackgroundColor3 = Color3.new(1, 1, 1)
instances.ScrollingFrame_1.BackgroundTransparency = 1
instances.ScrollingFrame_1.Size = UDim2.new(1, 0, 1, 0)
instances.ScrollingFrame_1.Name = 'Holder'

instances.UIListLayout_2.Parent = instances.ScrollingFrame_1
instances.UIListLayout_2.Padding = UDim.new(0, 7)
instances.UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

instances.UIPadding_3.Parent = instances.ScrollingFrame_1
instances.UIPadding_3.PaddingBottom = UDim.new(0, 3)
instances.UIPadding_3.PaddingLeft = UDim.new(0, 3)
instances.UIPadding_3.PaddingRight = UDim.new(0, 3)
instances.UIPadding_3.PaddingTop = UDim.new(0, 3)

instances.UIPadding_5.Parent = instances.Frame_3
instances.UIPadding_5.PaddingBottom = UDim.new(0, 5)
instances.UIPadding_5.PaddingLeft = UDim.new(0, 5)
instances.UIPadding_5.PaddingRight = UDim.new(0, 5)
instances.UIPadding_5.PaddingTop = UDim.new(0, 5)
instances.UIPadding_5.Name = 'UIPadding_main'

instances.LocalScript_1.Parent = instances.Frame_1
instances.LocalScript_1.Name = 'Dragify'

local DO_NOT_COPY_THIS_VARIABLE_001 = {}
local DO_NOT_COPY_THIS_VARIABLE_002 = require

local require = function(object)
	local module = DO_NOT_COPY_THIS_VARIABLE_001[object]

	if module then
		return DO_NOT_COPY_THIS_VARIABLE_001[object]()
	end

	return DO_NOT_COPY_THIS_VARIABLE_002(object)
end

function createFrame(pos, plr, amount)

    local frame = Instance.new("Frame")
    local frameCorner = Instance.new("UICorner")
    local frameBorder = Instance.new("UIStroke")

    local posLabel = Instance.new("TextLabel")
    local plrLabel = Instance.new("TextLabel")
    local amountLabel = Instance.new("TextLabel")

    local posTextPadding = Instance.new("UIPadding")
    local amountTextPadding = Instance.new("UIPadding")

    frame.Parent = instances.ScrollingFrame_1
    frame.BackgroundColor3 = Color3.new(1, 1, 1)
    frame.BackgroundTransparency = 1
    frame.Size = UDim2.new(1, 0, 0, 40)
    frame.Name = "["..pos.."]["..plr.."]"

    frameCorner.Parent = frame

    frameBorder.Parent = frame
    frameBorder.Color = Color3.fromRGB(0, 170, 255)
    frameBorder.Thickness = 2

    posLabel.Parent = frame
    posLabel.Font = Enum.Font.GothamBold
    posLabel.Text = pos
    posLabel.TextColor3 = Color3.new(1, 1, 1)
    posLabel.TextSize = 20
    posLabel.TextXAlignment = Enum.TextXAlignment.Left
    posLabel.BackgroundColor3 = Color3.new(1, 1, 1)
    posLabel.BackgroundTransparency = 1
    posLabel.Size = UDim2.new(0.10677068680524826, 0, 1, 0)
    posLabel.Name = 'Position'

    posTextPadding.Parent = frame
    posTextPadding.PaddingLeft = UDim.new(0, 5)

    plrLabel.Parent = frame
    plrLabel.Font = Enum.Font.GothamBold
    plrLabel.Text = plr
    plrLabel.TextColor3 = Color3.new(1, 1, 1)
    plrLabel.TextSize = 20
    plrLabel.TextXAlignment = Enum.TextXAlignment.Left
    plrLabel.BackgroundColor3 = Color3.new(1, 1, 1)
    plrLabel.BackgroundTransparency = 1
    plrLabel.Position = UDim2.new(0.14461500942707062, 0, 0, 0)
    plrLabel.Size = UDim2.new(0.5373539328575134, 0, 1, 0)
    plrLabel.Name = 'Player'

    amountLabel.Parent = frame
    amountLabel.Font = Enum.Font.GothamBold
    amountLabel.Text = amount
    amountLabel.TextColor3 = Color3.new(1, 1, 1)
    amountLabel.TextSize = 20
    amountLabel.TextXAlignment = Enum.TextXAlignment.Right
    amountLabel.BackgroundColor3 = Color3.new(1, 1, 1)
    amountLabel.BackgroundTransparency = 1
    amountLabel.Position = UDim2.new(0.7129952311515808, 0, 0, 0)
    amountLabel.Size = UDim2.new(0.2882348597049713, 0, 1, 0)
    amountLabel.Name = 'Amount'

    amountTextPadding.Parent = amountLabel
    amountTextPadding.PaddingRight = UDim.new(0, 5)

    if pos == "#1" then
        frameBorder.Color = Color3.fromRGB(255,215,0)
    elseif pos == "#2" then
        frameBorder.Color = Color3.fromRGB(192,192,192)
    elseif pos == "#3" then
        frameBorder.Color = Color3.fromRGB(205, 127, 50)
    end
end

local LeaderboardList = game:GetService("Workspace").Leaderboards[selectedLB].Main.SurfaceGui.Frame.List
for _, v in pairs(LeaderboardList:GetChildren()) do
	if v:IsA("Frame") then
		local number = v.Icon.TextLabel.Text
		local player = v.Bar.Player.Text
		local stat = v.BarStat.Amount.Text

		createFrame(number, player, stat)
	end
end
instances.Frame_2[selectedLB].UIStroke_main.Color = Color3.fromRGB(255, 0, 0)

function Code_LocalScript_1() --Dragify
	local script = instances.LocalScript_1

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(Code_LocalScript_1)()

instances.ImageButton_1.MouseButton1Click:Connect(function()
    getgenv().selectedLB = "TotalTaps"

    local List = instances.ScrollingFrame_1
    for _, v in pairs(List:GetChildren()) do
        if v:IsA("Frame") then
            v:Destroy()
        end
    end

    local LeaderboardList = game:GetService("Workspace").Leaderboards[selectedLB].Main.SurfaceGui.Frame.List
    for _, v in pairs(LeaderboardList:GetChildren()) do
        if v:IsA("Frame") then
            local number = v.Icon.TextLabel.Text
            local player = v.Bar.Player.Text
            local stat = v.BarStat.Amount.Text

            createFrame(number, player, stat)
        end
    end

    local ButtonHolder = instances.Frame_2
    for _, v in pairs(ButtonHolder:GetChildren()) do
        if v:IsA("ImageButton") then
            v.UIStroke_main.Color = Color3.fromRGB(155, 155, 155)
        end
    end
    ButtonHolder[selectedLB].UIStroke_main.Color = Color3.fromRGB(255, 0, 0)
end)

instances.ImageButton_2.MouseButton1Click:Connect(function()
    getgenv().selectedLB = "Rebirths"

    local List = instances.ScrollingFrame_1
    for _, v in pairs(List:GetChildren()) do
        if v:IsA("Frame") then
            v:Destroy()
        end
    end

    local LeaderboardList = game:GetService("Workspace").Leaderboards[selectedLB].Main.SurfaceGui.Frame.List
    for _, v in pairs(LeaderboardList:GetChildren()) do
        if v:IsA("Frame") then
            local number = v.Icon.TextLabel.Text
            local player = v.Bar.Player.Text
            local stat = v.BarStat.Amount.Text

            createFrame(number, player, stat)
        end
    end

    local ButtonHolder = instances.Frame_2
    for _, v in pairs(ButtonHolder:GetChildren()) do
        if v:IsA("ImageButton") then
            v.UIStroke_main.Color = Color3.fromRGB(155, 155, 155)
        end
    end
    ButtonHolder[selectedLB].UIStroke_main.Color = Color3.fromRGB(255, 0, 0)
end)

instances.ImageButton_3.MouseButton1Click:Connect(function()
    getgenv().selectedLB = "Eggs"

    local List = instances.ScrollingFrame_1
    for _, v in pairs(List:GetChildren()) do
        if v:IsA("Frame") then
            v:Destroy()
        end
    end

    local LeaderboardList = game:GetService("Workspace").Leaderboards[selectedLB].Main.SurfaceGui.Frame.List
    for _, v in pairs(LeaderboardList:GetChildren()) do
        if v:IsA("Frame") then
            local number = v.Icon.TextLabel.Text
            local player = v.Bar.Player.Text
            local stat = v.BarStat.Amount.Text

            createFrame(number, player, stat)
        end
    end

    local ButtonHolder = instances.Frame_2
    for _, v in pairs(ButtonHolder:GetChildren()) do
        if v:IsA("ImageButton") then
            v.UIStroke_main.Color = Color3.fromRGB(155, 155, 155)
        end
    end
    ButtonHolder[selectedLB].UIStroke_main.Color = Color3.fromRGB(255, 0, 0)
end)

instances.ImageButton_4.MouseButton1Click:Connect(function()
    getgenv().selectedLB = "PetPower"

    local List = instances.ScrollingFrame_1
    for _, v in pairs(List:GetChildren()) do
        if v:IsA("Frame") then
            v:Destroy()
        end
    end

    local LeaderboardList = game:GetService("Workspace").Leaderboards[selectedLB].Main.SurfaceGui.Frame.List
    for _, v in pairs(LeaderboardList:GetChildren()) do
        if v:IsA("Frame") then
            local number = v.Icon.TextLabel.Text
            local player = v.Bar.Player.Text
            local stat = v.BarStat.Amount.Text

            createFrame(number, player, stat)
        end
    end

    local ButtonHolder = instances.Frame_2
    for _, v in pairs(ButtonHolder:GetChildren()) do
        if v:IsA("ImageButton") then
            v.UIStroke_main.Color = Color3.fromRGB(155, 155, 155)
        end
    end
    ButtonHolder[selectedLB].UIStroke_main.Color = Color3.fromRGB(255, 0, 0)
end)

instances.ImageButton_8.MouseButton1Click:Connect(function()
    local List = instances.ScrollingFrame_1
    for _, v in pairs(List:GetChildren()) do
        if v:IsA("Frame") then
            v:Destroy()
        end
    end

    local LeaderboardList = game:GetService("Workspace").Leaderboards[selectedLB].Main.SurfaceGui.Frame.List
    for _, v in pairs(LeaderboardList:GetChildren()) do
        if v:IsA("Frame") then
            local number = v.Icon.TextLabel.Text
            local player = v.Bar.Player.Text
            local stat = v.BarStat.Amount.Text

            createFrame(number, player, stat)
        end
    end
end)

instances.ImageButton_9.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
