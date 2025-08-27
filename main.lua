--// Chuong Hub - Full GUI Dragable (Fix Drag + IsT Steal💀 + Auto Rename + Superjump + ESPs)
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

-- Auto rename nếu có GUI tên "chilli"
task.spawn(function()
    while task.wait(1) do
        local chilliGui = CoreGui:FindFirstChild("chilli")
        if chilliGui then
            chilliGui.Name = "Chuong Hub"
        end
    end
end)

-- ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "MiniGuiModern"
gui.Parent = CoreGui
gui.ResetOnSpawn = false

-- Frame chính
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 220, 0, 420)
mainFrame.Position = UDim2.new(0, 80, 0, 180)
mainFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
mainFrame.BorderSizePixel = 0
mainFrame.Visible = false
mainFrame.Parent = gui
mainFrame.ClipsDescendants = true

-- Shadow & bo góc
local uiStroke = Instance.new("UIStroke")
uiStroke.Color = Color3.fromRGB(0,0,0)
uiStroke.Thickness = 1
uiStroke.Parent = mainFrame

local uicornerMain = Instance.new("UICorner")
uicornerMain.CornerRadius = UDim.new(0,12)
uicornerMain.Parent = mainFrame

-- Tên GUI
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1,0,0,25)
titleLabel.Position = UDim2.new(0,0,0,0)
titleLabel.BackgroundTransparency = 1
titleLabel.Font = Enum.Font.Arcade
titleLabel.TextSize = 20
titleLabel.TextColor3 = Color3.fromRGB(255,255,0)
titleLabel.Text = "Chuong Hub"
titleLabel.Parent = mainFrame

-- Đổi màu tên GUI vàng ↔ tím
task.spawn(function()
    local toggleColor = true
    while task.wait(1) do
        titleLabel.TextColor3 = toggleColor and Color3.fromRGB(255,255,0) or Color3.fromRGB(128,0,128)
        toggleColor = not toggleColor
    end
end)

-- Tab bar
local tabBar = Instance.new("Frame")
tabBar.Size = UDim2.new(1,0,0,35)
tabBar.Position = UDim2.new(0,0,0,25)
tabBar.BackgroundColor3 = Color3.fromRGB(40,40,40)
tabBar.Parent = mainFrame

local function createTabButton(name,posX,parent)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.5,0,1,0)
    btn.Position = posX
    btn.Text = name
    btn.Font = Enum.Font.Arcade
    btn.TextSize = 18
    btn.BackgroundColor3 = Color3.fromRGB(50,50,50)
    btn.TextColor3 = Color3.fromRGB(255,255,255)
    btn.Parent = parent
    return btn
end

local tab1Btn = createTabButton("Tab 1",UDim2.new(0,0,0,0),tabBar)
local tab2Btn = createTabButton("Tab 2",UDim2.new(0.5,0,0,0),tabBar)

-- Nội dung tab
local tab1Frame = Instance.new("Frame")
tab1Frame.Size = UDim2.new(1,0,1,-60)
tab1Frame.Position = UDim2.new(0,0,0,60)
tab1Frame.BackgroundTransparency = 1
tab1Frame.Parent = mainFrame

local tab2Frame = Instance.new("Frame")
tab2Frame.Size = UDim2.new(1,0,1,-60)
tab2Frame.Position = UDim2.new(0,0,0,60)
tab2Frame.BackgroundTransparency = 1
tab2Frame.Visible = false
tab2Frame.Parent = mainFrame

-- Hàm tạo button + viền khi chọn
local function createBtn(parent,name,posY,callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1,-20,0,30)
    btn.Position = UDim2.new(0,10,0,posY)
    btn.BackgroundColor3 = Color3.fromRGB(60,60,60)
    btn.TextColor3 = Color3.fromRGB(255,255,255)
    btn.Font = Enum.Font.Arcade
    btn.TextSize = 18
    btn.Text = name
    btn.Parent = parent

    -- UIStroke viền nút
    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(255,0,0) -- mặc định đỏ
    stroke.Thickness = 2
    stroke.Parent = btn

    btn.MouseButton1Click:Connect(function()
        for _,v in pairs(parent:GetChildren()) do
            if v:IsA("TextButton") and v:FindFirstChildOfClass("UIStroke") then
                v.UIStroke.Color = Color3.fromRGB(255,0,0)
            end
        end
        stroke.Color = Color3.fromRGB(0,255,0)
        callback()
    end)
end

-- Tab 1 Buttons
createBtn(tab1Frame,"Esp Player Vip",10,function()
    loadstring(game:HttpGet("https://pastefy.app/maq6Ped3/raw"))()
end)
createBtn(tab1Frame,"Avatar",50,function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Invooker11/Outfit/main/OutfitCopier.lua"))()
end)
createBtn(tab1Frame,"Steal 2",90,function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
end)
createBtn(tab1Frame,"Animation",130,function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Gazer-Ha/Animated/main/G"))()
end)
createBtn(tab1Frame,"Superjump",170,function()
    loadstring(game:HttpGet("https://pastefy.app/anrDe15v/raw"))()
end)
createBtn(tab1Frame,"ESP Brainrot God",210,function()
    loadstring(game:HttpGet("https://pastefy.app/wd1uDgJg/raw"))()
end)
createBtn(tab1Frame,"ESP Sec",250,function()
    loadstring(game:HttpGet("https://pastefy.app/m3H25ey0/raw"))()
end)

-- Tab 2 Buttons
createBtn(tab2Frame,"Script tổng hợp",10,function()
    loadstring(game:HttpGet("https://pastefy.app/Jqw8RIn2/raw",true))()
end)
createBtn(tab2Frame,"Lennon",50,function()
    loadstring(game:HttpGet("https://pastefy.app/J3oDjwQ5/raw"))()
end)
createBtn(tab2Frame,"IsT Steal💀",90,function()
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a3e13a4a85ac4c2da17a6baab051ee1b.lua"))()
end)
createBtn(tab2Frame,"Kick",130,function()
    loadstring(game:HttpGet("https://pastefy.app/74k8lX9w/raw"))()
end)
createBtn(tab2Frame,"Xray",170,function()
    loadstring(game:HttpGet("https://pastefy.app/sEDu2fRg/raw"))()
end)

-- Chuyển tab
tab1Btn.MouseButton1Click:Connect(function()
    tab1Frame.Visible = true
    tab2Frame.Visible = false
    tab1Btn.BackgroundColor3 = Color3.fromRGB(70,70,70)
    tab2Btn.BackgroundColor3 = Color3.fromRGB(50,50,50)
end)
tab2Btn.MouseButton1Click:Connect(function()
    tab1Frame.Visible = false
    tab2Frame.Visible = true
    tab2Btn.BackgroundColor3 = Color3.fromRGB(70,70,70)
    tab1Btn.BackgroundColor3 = Color3.fromRGB(50,50,50)
end)

-- Toggle button mở/đóng
local toggleBtn = Instance.new("ImageButton")
toggleBtn.Size = UDim2.new(0,50,0,50)
toggleBtn.Position = UDim2.new(0,10,0,200)
toggleBtn.Image = "rbxassetid://81597397504924"
toggleBtn.BackgroundColor3 = Color3.fromRGB(30,30,30)
toggleBtn.Parent = gui

local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(1,0)
uicorner.Parent = toggleBtn

-- Vòng ngoài đổi màu xanh ↔ đỏ
local uiStrokeToggle = Instance.new("UIStroke")
uiStrokeToggle.Thickness = 3
uiStrokeToggle.Color = Color3.fromRGB(0,255,0)
uiStrokeToggle.Parent = toggleBtn

task.spawn(function()
    local toggle = true
    while task.wait(0.5) do
        uiStrokeToggle.Color = toggle and Color3.fromRGB(0,255,0) or Color3.fromRGB(255,0,0)
        toggle = not toggle
    end
end)

-- Toggle mở/đóng GUI
toggleBtn.MouseButton1Click:Connect(function()
    mainFrame.Visible = not mainFrame.Visible
end)

-- Hàm Drag chuẩn
local function makeDraggable(guiObj, dragHandle)
    dragHandle = dragHandle or guiObj
    local dragging = false
    local dragStart, startPos

    local function update(input)
        local delta = input.Position - dragStart
        guiObj.Position = UDim2.new(
            startPos.X.Scale, startPos.X.Offset + delta.X,
            startPos.Y.Scale, startPos.Y.Offset + delta.Y
        )
    end

    dragHandle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = guiObj.Position
        end
    end)

    dragHandle.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            if dragging then
                update(input)
            end
        end
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)
end

-- Gọi hàm cho cả toggleBtn & mainFrame
makeDraggable(toggleBtn)
makeDraggable(mainFrame,titleLabel)
