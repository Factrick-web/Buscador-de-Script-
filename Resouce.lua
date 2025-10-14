-- 💫 Factrick Cheat Panel 


local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- GUI principal
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FactrickCheatUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-------------------------------------------------
-- 📢 ANUNCIO INICIAL
-------------------------------------------------
local anuncioFrame = Instance.new("Frame")
anuncioFrame.Size = UDim2.new(0, 360, 0, 220)
anuncioFrame.Position = UDim2.new(0.5, -180, 0.5, -110)
anuncioFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
anuncioFrame.BorderSizePixel = 2
anuncioFrame.BorderColor3 = Color3.fromRGB(0, 255, 255)
anuncioFrame.Parent = screenGui

local anuncioCorner = Instance.new("UICorner")
anuncioCorner.CornerRadius = UDim.new(0, 12)
anuncioCorner.Parent = anuncioFrame

local anuncioTitulo = Instance.new("TextLabel")
anuncioTitulo.Size = UDim2.new(1, 0, 0, 35)
anuncioTitulo.BackgroundTransparency = 1
anuncioTitulo.Text = "📢 Anuncio"
anuncioTitulo.Font = Enum.Font.GothamBold
anuncioTitulo.TextSize = 22
anuncioTitulo.TextColor3 = Color3.fromRGB(0, 255, 255)
anuncioTitulo.Parent = anuncioFrame

local anuncioTexto = Instance.new("TextLabel")
anuncioTexto.Size = UDim2.new(1, -20, 0, 80)
anuncioTexto.Position = UDim2.new(0, 10, 0, 45)
anuncioTexto.BackgroundTransparency = 1
anuncioTexto.TextWrapped = true
anuncioTexto.TextYAlignment = Enum.TextYAlignment.Top
anuncioTexto.Text = "Hola, bienvenido a Buscador de Script Factrick Cheat 💫\nRecuerda apoyarme en mi comunidad de Discord donde colocamos actualizaciones y en TikTok ¡te espero!"
anuncioTexto.Font = Enum.Font.Gotham
anuncioTexto.TextSize = 15
anuncioTexto.TextColor3 = Color3.fromRGB(255, 255, 255)
anuncioTexto.Parent = anuncioFrame

-- Botón Discord
local discordBtn = Instance.new("TextButton")
discordBtn.Size = UDim2.new(0, 140, 0, 35)
discordBtn.Position = UDim2.new(0.5, -150, 1, -50)
discordBtn.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
discordBtn.Text = "🌐 Discord"
discordBtn.Font = Enum.Font.GothamBold
discordBtn.TextSize = 14
discordBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
discordBtn.Parent = anuncioFrame

local dcCorner = Instance.new("UICorner")
dcCorner.CornerRadius = UDim.new(0, 8)
dcCorner.Parent = discordBtn

-- Botón TikTok
local tiktokBtn = Instance.new("TextButton")
tiktokBtn.Size = UDim2.new(0, 140, 0, 35)
tiktokBtn.Position = UDim2.new(0.5, 10, 1, -50)
tiktokBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
tiktokBtn.Text = "🎵 TikTok"
tiktokBtn.Font = Enum.Font.GothamBold
tiktokBtn.TextSize = 14
tiktokBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
tiktokBtn.Parent = anuncioFrame

local tkCorner = Instance.new("UICorner")
tkCorner.CornerRadius = UDim.new(0, 8)
tkCorner.Parent = tiktokBtn

discordBtn.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/R2zaDxaqm")
    discordBtn.Text = "✅ Copiado!"
    task.wait(1.5)
    discordBtn.Text = "🌐 Discord"
end)

tiktokBtn.MouseButton1Click:Connect(function()
    setclipboard("https://www.tiktok.com/@sm.fxp7.23?_t=ZS-90VbzkQBxOH&_r=1")
    tiktokBtn.Text = "✅ Copiado!"
    task.wait(1.5)
    tiktokBtn.Text = "🎵 TikTok"
end)

-------------------------------------------------
-- 🧩 PANEL PRINCIPAL
-------------------------------------------------
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 340)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -170)
mainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
mainFrame.BorderSizePixel = 2
mainFrame.BorderColor3 = Color3.fromRGB(0, 255, 255)
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Visible = false
mainFrame.Parent = screenGui

task.delay(7, function()
    anuncioFrame:Destroy()
    mainFrame.Visible = true
end)

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = mainFrame

-- Botón cerrar
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 5)
closeBtn.BackgroundTransparency = 1
closeBtn.Text = "✖"
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 20
closeBtn.Parent = mainFrame

closeBtn.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
end)

-- Título RGB
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 35)
title.BackgroundTransparency = 1
title.Text = "Factrick Cheat"
title.Font = Enum.Font.GothamBold
title.TextSize = 22
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Parent = mainFrame

task.spawn(function()
    local hue = 0
    while task.wait(0.05) do
        hue = (hue + 2) % 360
        title.TextColor3 = Color3.fromHSV(hue / 360, 1, 1)
    end
end)

-- Subtítulo
local subtitle = Instance.new("TextLabel")
subtitle.Size = UDim2.new(1, 0, 0, 20)
subtitle.Position = UDim2.new(0, 0, 0, 35)
subtitle.BackgroundTransparency = 1
subtitle.Text = "@Castillo_Fx4 - Tiktok"
subtitle.Font = Enum.Font.Gotham
subtitle.TextSize = 13
subtitle.TextColor3 = Color3.fromRGB(200, 200, 200)
subtitle.Parent = mainFrame

-- Buscador
local searchBox = Instance.new("TextBox")
searchBox.Size = UDim2.new(0.9, 0, 0, 30)
searchBox.Position = UDim2.new(0.05, 0, 0, 60)
searchBox.PlaceholderText = "🔍 Buscar script..."
searchBox.Text = ""
searchBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
searchBox.BorderSizePixel = 0
searchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
searchBox.Font = Enum.Font.Gotham
searchBox.TextSize = 14
searchBox.Parent = mainFrame

local searchCorner = Instance.new("UICorner")
searchCorner.CornerRadius = UDim.new(0, 8)
searchCorner.Parent = searchBox

-- Scroll principal
local scrollFrame = Instance.new("ScrollingFrame")
scrollFrame.Size = UDim2.new(0.9, 0, 0.68, 0)
scrollFrame.Position = UDim2.new(0.05, 0, 0, 95)
scrollFrame.BackgroundTransparency = 1
scrollFrame.ScrollBarThickness = 8
scrollFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 255, 200)
scrollFrame.ScrollBarImageTransparency = 0.2
scrollFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollFrame.Parent = mainFrame

local layout = Instance.new("UIListLayout")
layout.Padding = UDim.new(0, 8)
layout.FillDirection = Enum.FillDirection.Vertical
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Parent = scrollFrame

-- Scripts
local scripts = {
    {
        Name = "Factrick Cheat",
        KeyMessage = true,
        Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/Factrick-web/factrick-public/refs/heads/main/source.lua"))()]]
    },
    {
        Name = "Miranda Hub",
        Code = [[loadstring(game:HttpGet("https://pastefy.app/JJVhs3rK/raw"))()]]
    },
    {
        Name = "Light Hub",
        Code = [[loadstring(game:HttpGet("https://pastefy.app/B0oeOAsg/raw"))()]]
    },
    {
        Name = "Kurd Hub",
        Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/DupeNews/sab-script-fe8c23/main/Kurdhub.lua"))()]]
    },
    {
        Name = "Chili Hub",
        Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()]]
    },
    {
        Name = "Nameless Hub",
        Code = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/ily123950/Vulkan/refs/heads/main/Tr"))()]]
    },
}

-- Popup de key
local function showKeyPopup(callback)
    local popup = Instance.new("Frame")
    popup.Size = UDim2.new(0, 260, 0, 140)
    popup.Position = UDim2.new(0.5, -130, 0.5, -70)
    popup.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    popup.BorderColor3 = Color3.fromRGB(0, 255, 255)
    popup.BorderSizePixel = 2
    popup.Parent = screenGui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = popup

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 40)
    title.BackgroundTransparency = 1
    title.Text = "🔑 FACTRICK KEY"
    title.Font = Enum.Font.GothamBold
    title.TextSize = 20
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.Parent = popup

    local msg = Instance.new("TextLabel")
    msg.Size = UDim2.new(1, -20, 0, 40)
    msg.Position = UDim2.new(0, 10, 0, 50)
    msg.BackgroundTransparency = 1
    msg.Text = "La key es: keygratis1"
    msg.Font = Enum.Font.Gotham
    msg.TextSize = 16
    msg.TextColor3 = Color3.fromRGB(0, 255, 200)
    msg.Parent = popup

    local okBtn = Instance.new("TextButton")
    okBtn.Size = UDim2.new(0, 100, 0, 30)
    okBtn.Position = UDim2.new(0.5, -50, 1, -40)
    okBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 200)
    okBtn.Text = "Entendido"
    okBtn.Font = Enum.Font.GothamBold
    okBtn.TextSize = 14
    okBtn.TextColor3 = Color3.fromRGB(25, 25, 25)
    okBtn.Parent = popup

    local c2 = Instance.new("UICorner")
    c2.CornerRadius = UDim.new(0, 8)
    c2.Parent = okBtn

    okBtn.MouseButton1Click:Connect(function()
        popup:Destroy()
        callback()
    end)
end

-- Crear tarjetas
local function createScriptCard(scriptData)
    local card = Instance.new("Frame")
    card.Size = UDim2.new(1, 0, 0, 50)
    card.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    card.BorderSizePixel = 0
    card.Parent = scrollFrame

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 8)
    c.Parent = card

    local name = Instance.new("TextLabel")
    name.Size = UDim2.new(0.65, 0, 1, 0)
    name.BackgroundTransparency = 1
    name.Text = "💠 " .. scriptData.Name
    name.Font = Enum.Font.GothamMedium
    name.TextSize = 15
    name.TextColor3 = Color3.fromRGB(255, 255, 255)
    name.TextXAlignment = Enum.TextXAlignment.Left
    name.Position = UDim2.new(0.05, 0, 0, 0)
    name.Parent = card

    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.25, 0, 0.6, 0)
    button.Position = UDim2.new(0.7, 0, 0.2, 0)
    button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    button.Text = "Executar"
    button.Font = Enum.Font.Gotham
    button.TextSize = 13
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BorderSizePixel = 0
    button.Parent = card

    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 6)
    btnCorner.Parent = button

    button.MouseButton1Click:Connect(function()
        local runCode = function()
            button.Text = "Cargando..."
            local ok, err = pcall(function()
                local func = loadstring(scriptData.Code)
                func()
            end)
            if ok then
                button.Text = "Ejecutado"
                button.BackgroundColor3 = Color3.fromRGB(80, 140, 80)
            else
                button.Text = "Error"
                button.BackgroundColor3 = Color3.fromRGB(140, 60, 60)
                warn(err)
            end
            task.wait(1.2)
            button.Text = "Executar"
            button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        end

        if scriptData.KeyMessage then
            showKeyPopup(runCode)
        else
            runCode()
        end
    end)
end

-- Crear todas las tarjetas
for _, s in ipairs(scripts) do
    createScriptCard(s)
end

-- Función de búsqueda
searchBox:GetPropertyChangedSignal("Text"):Connect(function()
    local query = string.lower(searchBox.Text)
    for _, card in ipairs(scrollFrame:GetChildren()) do
        if card:IsA("Frame") then
            local label = card:FindFirstChildOfClass("TextLabel")
            if label then
                card.Visible = (query == "" or string.find(string.lower(label.Text), query))
            end
        end
    end
end)
