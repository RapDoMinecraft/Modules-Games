local pl = game:GetService("Players").LocalPlayer

-- Loadstring nova que será copiada
local newLoadstring = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Venom-devX/ChaosHub/main/loader.lua"))();
-- join discord: https://discord.gg/DthGC4even
]]

-- Copia pro clipboard
setclipboard(newLoadstring)

-- Criar GUI
local gui = Instance.new("ScreenGui")
gui.Name = "LoadstringExpiredGUI"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = game:GetService("CoreGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.65, 0, 0.4, 0)
frame.Position = UDim2.new(0.175, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Parent = gui

local uiCorner = Instance.new("UICorner", frame)
uiCorner.CornerRadius = UDim.new(0, 12)

-- Título
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -20, 0.15, 0)
title.Position = UDim2.new(0, 10, 0, 10)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.Text = "⚠️ Loadstring Expirada / Expired"
title.Parent = frame

-- Mensagem
local msg = Instance.new("TextLabel")
msg.Size = UDim2.new(1, -20, 0.15, 0)
msg.Position = UDim2.new(0, 10, 0.15, 0)
msg.BackgroundTransparency = 1
msg.TextColor3 = Color3.fromRGB(200, 200, 200)
msg.TextScaled = true
msg.Font = Enum.Font.Gotham
msg.TextWrapped = true
msg.Text = "Use a nova abaixo / Use the new one below:"
msg.Parent = frame

-- Bloco de código
local codeBox = Instance.new("TextBox")
codeBox.Size = UDim2.new(1, -20, 0.4, 0)
codeBox.Position = UDim2.new(0, 10, 0.32, 0)
codeBox.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
codeBox.TextColor3 = Color3.new(0.8, 1, 0.8)
codeBox.Font = Enum.Font.Code
codeBox.TextXAlignment = Enum.TextXAlignment.Left
codeBox.TextYAlignment = Enum.TextYAlignment.Top
codeBox.TextWrapped = true
codeBox.Text = newLoadstring
codeBox.TextEditable = false
codeBox.ClearTextOnFocus = false
codeBox.TextSize = 16
codeBox.MultiLine = true
codeBox.Parent = frame

local codeCorner = Instance.new("UICorner", codeBox)
codeCorner.CornerRadius = UDim.new(0, 8)

-- Botão de copiar
local copyBtn = Instance.new("TextButton")
copyBtn.Size = UDim2.new(0.3, 0, 0.1, 0)
copyBtn.Position = UDim2.new(0.35, 0, 0.75, 0)
copyBtn.BackgroundColor3 = Color3.fromRGB(50, 100, 50)
copyBtn.TextColor3 = Color3.new(1, 1, 1)
copyBtn.Font = Enum.Font.GothamBold
copyBtn.Text = "Copiar novamente / Copy again"
copyBtn.TextScaled = true
copyBtn.Parent = frame

local btnCorner = Instance.new("UICorner", copyBtn)
btnCorner.CornerRadius = UDim.new(0, 8)

copyBtn.MouseButton1Click:Connect(function()
	setclipboard(newLoadstring)
	copyBtn.Text = "Copiado! / Copied!"
	task.wait(1.5)
	copyBtn.Text = "Copiar novamente / Copy again"
end)

repeat task.wait(1) until false
