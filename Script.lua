--[==[ M4teoHub UI Library - Protected & Obfuscated ]==]--
local _0x01 = getgenv and getgenv() or _G
local _0x02 = game
local _0x03 = _0x02.GetService
local _0x04 = _0x03(_0x02, "\084\119\101\101\110\83\101\114\118\105\99\101")
local _0x05 = _0x03(_0x02, "\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101")
local _0x06 = _0x03(_0x02, "\67\111\114\101\71\117\105")
local _0x07 = _0x03(_0x02, "\80\108\97\121\101\114\115")
local _0x08 = _0x07.LocalPlayer

local _0x09 = {}

function _0x09:CrearWindow(_0x0a)
    _0x0a = _0x0a or {}
    local _0x0b = _0x0a.Nombre or "\77\52\116\101\111\72\117\98"
    local _0x0c = _0x0a.Subtitulo or "\68\101\32\109\97\116\101\111"
    local _0x0d = (_0x0a.KeySystem == true or _0x0a.KeySystem == "\83\105" or _0x0a.KeySystem == "\115\105")
    local _0x0e = _0x0a.Key or "\77\97\116\101\111\49\50\51"

    local _0x0f = {}

    local _0x10 = Instance.new("\83\99\114\101\101\110\71\117\105")
    _0x10.Name = "\77\52\116\101\111\72\117\98\95\85\73"
    if gethui then
        _0x10.Parent = gethui()
    elseif syn and syn.protect_gui then
        syn.protect_gui(_0x10)
        _0x10.Parent = _0x06
    else
        pcall(function() _0x10.Parent = _0x06 end)
        if _0x10.Parent ~= _0x06 then
            _0x10.Parent = _0x08:WaitForChild("\80\108\97\121\101\114\71\117\105")
        end
    end
    _0x10.ResetOnSpawn = false

    local _0x11 = Instance.new("\70\114\97\109\101")
    _0x11.Name = "\77\97\105\110\70\114\97\109\101"
    _0x11.Size = UDim2.new(0, 460, 0, 320)
    _0x11.Position = UDim2.new(0.5, -230, 0.5, -160)
    _0x11.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    _0x11.BorderSizePixel = 0
    _0x11.ClipsDescendants = true
    _0x11.Visible = not _0x0d
    _0x11.Parent = _0x10

    local _0x12 = Instance.new("\85\73\67\111\114\110\101\114")
    _0x12.CornerRadius = UDim.new(0, 10)
    _0x12.Parent = _0x11

    local _0x13 = Instance.new("\85\73\83\116\114\111\107\101")
    _0x13.Thickness = 2
    _0x13.Parent = _0x11

    task.spawn(function()
        while _0x10.Parent do
            for _0x14 = 0, 1, 0.004 do
                _0x13.Color = Color3.fromHSV(_0x14, 0.9, 1)
                task.wait(0.02)
            end
        end
    end)

    local _0x15 = Instance.new("\70\114\97\109\101")
    _0x15.Name = "\84\111\112\66\97\114"
    _0x15.Size = UDim2.new(1, 0, 0, 42)
    _0x15.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    _0x15.BorderSizePixel = 0
    _0x15.Parent = _0x11

    local _0x16 = Instance.new("\85\73\67\111\114\110\101\114")
    _0x16.CornerRadius = UDim.new(0, 10)
    _0x16.Parent = _0x15

    local _0x17 = Instance.new("\84\101\120\116\76\97\98\101\108")
    _0x17.Size = UDim2.new(0, 250, 0, 20)
    _0x17.Position = UDim2.new(0, 12, 0, 4)
    _0x17.BackgroundTransparency = 1
    _0x17.Text = _0x0b
    _0x17.TextColor3 = Color3.fromRGB(255, 255, 255)
    _0x17.TextSize = 14
    _0x17.Font = Enum.Font.GothamBold
    _0x17.TextXAlignment = Enum.TextXAlignment.Left
    _0x17.Parent = _0x15

    local _0x18 = Instance.new("\84\101\120\116\76\97\98\101\108")
    _0x18.Size = UDim2.new(0, 250, 0, 14)
    _0x18.Position = UDim2.new(0, 12, 0, 22)
    _0x18.BackgroundTransparency = 1
    _0x18.Text = _0x0c
    _0x18.TextColor3 = Color3.fromRGB(150, 150, 150)
    _0x18.TextSize = 11
    _0x18.Font = Enum.Font.Gotham
    _0x18.TextXAlignment = Enum.TextXAlignment.Left
    _0x18.Parent = _0x15

    local _0x19, _0x1a, _0x1b, _0x1c
    _0x15.InputBegan:Connect(function(_0x1d)
        if _0x1d.UserInputType == Enum.UserInputType.MouseButton1 or _0x1d.UserInputType == Enum.UserInputType.Touch then
            _0x19 = true
            _0x1b = _0x1d.Position
            _0x1c = _0x11.Position
            _0x1d.Changed:Connect(function()
                if _0x1d.UserInputState == Enum.UserInputState.End then _0x19 = false end
            end)
        end
    end)
    _0x15.InputChanged:Connect(function(_0x1d)
        if _0x1d.UserInputType == Enum.UserInputType.MouseMovement or _0x1d.UserInputType == Enum.UserInputType.Touch then
            _0x1a = _0x1d
        end
    end)
    _0x05.InputChanged:Connect(function(_0x1d)
        if _0x1d == _0x1a and _0x19 then
            local _0x1e = _0x1d.Position - _0x1b
            _0x11.Position = UDim2.new(_0x1c.X.Scale, _0x1c.X.Offset + _0x1e.X, _0x1c.Y.Scale, _0x1c.Y.Offset + _0x1e.Y)
        end
    end)

    local _0x1f = Instance.new("\84\101\120\116\66\117\116\116\111\110")
    _0x1f.Size = UDim2.new(0, 30, 0, 30)
    _0x1f.Position = UDim2.new(1, -34, 0, 6)
    _0x1f.BackgroundTransparency = 1
    _0x1f.Text = "\226\156\173"
    _0x1f.TextColor3 = Color3.fromRGB(255, 90, 90)
    _0x1f.TextSize = 14
    _0x1f.Font = Enum.Font.GothamBold
    _0x1f.Parent = _0x15

    _0x1f.MouseButton1Click:Connect(function()
        _0x04:Create(_0x11, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
            Size = UDim2.new(0, 0, 0, 0),
            Position = UDim2.new(_0x11.Position.X.Scale, _0x11.Position.X.Offset + 230, _0x11.Position.Y.Scale, _0x11.Position.Y.Offset + 160)
        }):Play()
        task.wait(0.25)
        _0x10:Destroy()
    end)

    local _0x20 = Instance.new("\84\101\120\116\66\117\116\116\111\110")
    _0x20.Size = UDim2.new(0, 30, 0, 30)
    _0x20.Position = UDim2.new(1, -68, 0, 6)
    _0x20.BackgroundTransparency = 1
    _0x20.Text = "\xe2\x80\x94"
    _0x20.TextColor3 = Color3.fromRGB(200, 200, 200)
    _0x20.TextSize = 14
    _0x20.Font = Enum.Font.GothamBold
    _0x20.Parent = _0x15

    local _0x21 = false
    _0x20.MouseButton1Click:Connect(function()
        _0x21 = not _0x21
        _0x04:Create(_0x11, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Size = _0x21 and UDim2.new(0, 460, 0, 42) or UDim2.new(0, 460, 0, 320)
        }):Play()
    end)

    if _0x0d then
        local _0x22 = Instance.new("\70\114\97\109\101")
        _0x22.Size = UDim2.new(0, 320, 0, 180)
        _0x22.Position = UDim2.new(0.5, -160, 0.5, -90)
        _0x22.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        _0x22.BorderSizePixel = 0
        _0x22.Parent = _0x10

        local _0x23 = Instance.new("\85\73\67\111\114\110\101\114")
        _0x23.CornerRadius = UDim.new(0, 10)
        _0x23.Parent = _0x22

        local _0x24 = Instance.new("\85\73\83\116\114\111\107\101")
        _0x24.Thickness = 2
        _0x24.Parent = _0x22
        task.spawn(function()
            while _0x22.Parent do
                for _0x14 = 0, 1, 0.005 do
                    _0x24.Color = Color3.fromHSV(_0x14, 0.9, 1)
                    task.wait(0.02)
                end
            end
        end)

        local _0x25 = Instance.new("\84\101\120\116\76\97\98\101\108")
        _0x25.Size = UDim2.new(1, 0, 0, 30)
        _0x25.Position = UDim2.new(0, 0, 0, 12)
        _0x25.BackgroundTransparency = 1
        _0x25.Text = _0x0b .. "\32\45\32\83\105\115\116\101\109\97\32\100\101\32\75\101\121"
        _0x25.TextColor3 = Color3.fromRGB(255, 255, 255)
        _0x25.TextSize = 14
        _0x25.Font = Enum.Font.GothamBold
        _0x25.Parent = _0x22

        local _0x26 = Instance.new("\84\101\120\116\76\97\98\101\108")
        _0x26.Size = UDim2.new(1, 0, 0, 20)
        _0x26.Position = UDim2.new(0, 0, 0, 38)
        _0x26.BackgroundTransparency = 1
        _0x26.Text = "\73\110\103\114\101\115\97\32\108\97\32\99\108\97\118\101\32\112\97\114\97\32\99\111\110\116\105\110\117\97\114"
        _0x26.TextColor3 = Color3.fromRGB(150, 150, 150)
        _0x26.TextSize = 11
        _0x26.Font = Enum.Font.Gotham
        _0x26.Parent = _0x22

        local _0x27 = Instance.new("\84\101\120\116\66\111\120")
        _0x27.Size = UDim2.new(0.8, 0, 0, 32)
        _0x27.Position = UDim2.new(0.1, 0, 0, 70)
        _0x27.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        _0x27.BorderSizePixel = 0
        _0x27.PlaceholderText = "\69\115\99\114\105\98\101\32\108\97\32\75\101\121\32\97\113\117\237\46\46\46"
        _0x27.Text = ""
        _0x27.TextColor3 = Color3.fromRGB(255, 255, 255)
        _0x27.PlaceholderColor3 = Color3.fromRGB(120, 120, 120)
        _0x27.TextSize = 12
        _0x27.Font = Enum.Font.Gotham
        _0x27.Parent = _0x22

        local _0x28 = Instance.new("\85\73\67\111\114\110\101\114")
        _0x28.CornerRadius = UDim.new(0, 6)
        _0x28.Parent = _0x27

        local _0x29 = Instance.new("\84\101\120\116\66\117\116\116\111\110")
        _0x29.Size = UDim2.new(0.8, 0, 0, 32)
        _0x29.Position = UDim2.new(0.1, 0, 0, 115)
        _0x29.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
        _0x29.BorderSizePixel = 0
        _0x29.Text = "\86\101\114\105\102\105\99\97\114"
        _0x29.TextColor3 = Color3.fromRGB(255, 255, 255)
        _0x29.TextSize = 12
        _0x29.Font = Enum.Font.GothamBold
        _0x29.Parent = _0x22

        local _0x2a = Instance.new("\85\73\67\111\114\110\101\114")
        _0x2a.CornerRadius = UDim.new(0, 6)
        _0x2a.Parent = _0x29

        _0x29.MouseButton1Click:Connect(function()
            if _0x27.Text == _0x0e then
                _0x29.Text = "\161\67\111\114\114\101\99\116\111\33"
                _0x29.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
                task.wait(0.4)
                _0x04:Create(_0x22, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Size = UDim2.new(0, 0, 0, 0),
                    Position = UDim2.new(0.5, 0, 0.5, 0)
                }):Play()
                task.wait(0.2)
                _0x22:Destroy()
                _0x11.Visible = true
            else
                _0x29.Text = "\75\101\121\32\73\110\99\111\114\114\101\99\116\97"
                _0x29.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
                task.wait(1)
                _0x29.Text = "\86\101\114\105\102\105\99\97\114"
                _0x29.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
            end
        end)
    end

    local _0x2b = Instance.new("\83\99\114\111\108\108\105\110\103\70\114\97\109\101")
    _0x2b.Size = UDim2.new(0, 115, 1, -50)
    _0x2b.Position = UDim2.new(0, 6, 0, 46)
    _0x2b.BackgroundTransparency = 1
    _0x2b.CanvasSize = UDim2.new(0, 0, 0, 0)
    _0x2b.ScrollBarThickness = 2
    _0x2b.Parent = _0x11

    local _0x2c = Instance.new("\85\73\76\105\115\116\76\97\121\111\117\116")
    _0x2c.SortOrder = Enum.SortOrder.LayoutOrder
    _0x2c.Padding = UDim.new(0, 5)
    _0x2c.Parent = _0x2b

    local _0x2d = Instance.new("\70\111\108\100\101\114")
    _0x2d.Parent = _0x11

    function _0x0f:CreateTab(_0x2e)
        local _0x2f = Instance.new("\83\99\114\111\108\108\105\110\103\70\114\97\109\101")
        _0x2f.Size = UDim2.new(1, -132, 1, -52)
        _0x2f.Position = UDim2.new(0, 126, 0, 46)
        _0x2f.BackgroundTransparency = 1
        _0x2f.Visible = false
        _0x2f.CanvasSize = UDim2.new(0, 0, 0, 0)
        _0x2f.ScrollBarThickness = 3
        _0x2f.Parent = _0x2d

        local _0x30 = Instance.new("\85\73\76\105\115\116\76\97\121\111\117\116")
        _0x30.SortOrder = Enum.SortOrder.LayoutOrder
        _0x30.Padding = UDim.new(0, 6)
        _0x30.Parent = _0x2f

        _0x30:GetPropertyChangedSignal("\65\98\115\111\108\117\116\101\67\111\110\116\101\110\116\83\105\122\101"):Connect(function()
            _0x2f.CanvasSize = UDim2.new(0, 0, 0, _0x30.AbsoluteContentSize.Y + 10)
        end)

        local _0x31 = Instance.new("\84\101\120\116\66\117\116\116\111\110")
        _0x31.Size = UDim2.new(1, 0, 0, 28)
        _0x31.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
        _0x31.BorderSizePixel = 0
        _0x31.Text = _0x2e
        _0x31.TextColor3 = Color3.fromRGB(160, 160, 160)
        _0x31.TextSize = 12
        _0x31.Font = Enum.Font.GothamMedium
        _0x31.Parent = _0x2b

        local _0x32 = Instance.new("\85\73\67\111\114\110\101\114")
        _0x32.CornerRadius = UDim.new(0, 6)
        _0x32.Parent = _0x31

        if #_0x2d:GetChildren() == 1 then
            _0x2f.Visible = true
            _0x31.TextColor3 = Color3.fromRGB(255, 255, 255)
            _0x31.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        end

        _0x31.MouseButton1Click:Connect(function()
            for _, _0x33 in pairs(_0x2d:GetChildren()) do _0x33.Visible = false end
            for _, _0x34 in pairs(_0x2b:GetChildren()) do
                if _0x34:IsA("\84\101\120\116\66\117\116\116\111\110") then
                    _0x04:Create(_0x34, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(28, 28, 28), TextColor3 = Color3.fromRGB(160, 160, 160)}):Play()
                end
            end
            _0x2f.Visible = true
            _0x04:Create(_0x31, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(45, 45, 45), TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
        end)

        local _0x35 = {}

        function _0x35:AddTextLabel(_0x36)
            local _0x37 = Instance.new("\84\101\120\116\76\97\98\101\108")
            _0x37.Size = UDim2.new(1, -5, 0, 24)
            _0x37.BackgroundTransparency = 1
            _0x37.Text = _0x36
            _0x37.TextColor3 = Color3.fromRGB(210, 210, 210)
            _0x37.TextSize = 12
            _0x37.Font = Enum.Font.Gotham
            _0x37.TextXAlignment = Enum.TextXAlignment.Left
            _0x37.Parent = _0x2f
        end

        function _0x35:AddToggle(_0x36, _0x38)
            local _0x39 = false
            local _0x3a = Instance.new("\84\101\120\116\66\117\116\116\111\110")
            _0x3a.Size = UDim2.new(1, -5, 0, 32)
            _0x3a.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
            _0x3a.BorderSizePixel = 0
            _0x3a.Text = "\32\32" .. _0x36
            _0x3a.TextColor3 = Color3.fromRGB(220, 220, 220)
            _0x3a.TextSize = 12
            _0x3a.Font = Enum.Font.Gotham
            _0x3a.TextXAlignment = Enum.TextXAlignment.Left
            _0x3a.Parent = _0x2f

            local _0x3b = Instance.new("\85\73\67\111\114\110\101\114")
            _0x3b.CornerRadius = UDim.new(0, 6)
            _0x3b.Parent = _0x3a

            local _0x3c = Instance.new("\70\114\97\109\101")
            _0x3c.Size = UDim2.new(0, 20, 0, 20)
            _0x3c.Position = UDim2.new(1, -26, 0.5, -10)
            _0x3c.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
            _0x3c.BorderSizePixel = 0
            _0x3c.Parent = _0x3a

            local _0x3d = Instance.new("\85\73\67\111\114\110\101\114")
            _0x3d.CornerRadius = UDim.new(0, 5)
            _0x3d.Parent = _0x3c

            _0x3a.MouseButton1Click:Connect(function()
                _0x39 = not _0x39
                local _0x3e = _0x39 and Color3.fromRGB(0, 200, 100) or Color3.fromRGB(50, 50, 50)
                _0x04:Create(_0x3c, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = _0x3e}):Play()
                pcall(_0x38, _0x39)
            end)
        end

        function _0x35:AddSlider(_0x36, _0x3f, _0x40, _0x38)
            local _0x41 = Instance.new("\70\114\97\109\101")
            _0x41.Size = UDim2.new(1, -5, 0, 46)
            _0x41.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
            _0x41.BorderSizePixel = 0
            _0x41.Parent = _0x2f

            local _0x42 = Instance.new("\85\73\67\111\114\110\101\114")
            _0x42.CornerRadius = UDim.new(0, 6)
            _0x42.Parent = _0x41

            local _0x43 = Instance.new("\84\101\120\116\76\97\98\101\108")
            _0x43.Size = UDim2.new(1, -10, 0, 20)
            _0x43.Position = UDim2.new(0, 8, 0, 2)
            _0x43.BackgroundTransparency = 1
            _0x43.Text = _0x36 .. "\58\32" .. _0x3f
            _0x43.TextColor3 = Color3.fromRGB(220, 220, 220)
            _0x43.TextSize = 12
            _0x43.Font = Enum.Font.Gotham
            _0x43.TextXAlignment = Enum.TextXAlignment.Left
            _0x43.Parent = _0x41

            local _0x44 = Instance.new("\70\114\97\109\101")
            _0x44.Size = UDim2.new(1, -16, 0, 6)
            _0x44.Position = UDim2.new(0, 8, 0, 28)
            _0x44.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            _0x44.BorderSizePixel = 0
            _0x44.Parent = _0x41

            local _0x45 = Instance.new("\85\73\67\111\114\110\101\114")
            _0x45.CornerRadius = UDim.new(0, 3)
            _0x45.Parent = _0x44

            local _0x46 = Instance.new("\70\114\97\109\101")
            _0x46.Size = UDim2.new(0, 0, 1, 0)
            _0x46.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
            _0x46.BorderSizePixel = 0
            _0x46.Parent = _0x44

            local _0x47 = Instance.new("\85\73\67\111\114\110\101\114")
            _0x47.CornerRadius = UDim.new(0, 3)
            _0x47.Parent = _0x46

            local _0x48 = false
            local function _0x49(_0x1d)
                local _0x4a = math.clamp((_0x1d.Position.X - _0x44.AbsolutePosition.X) / _0x44.AbsoluteSize.X, 0, 1)
                _0x04:Create(_0x46, TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(_0x4a, 0, 1, 0)}):Play()
                local _0x4b = math.floor(_0x3f + (($(_0x40 - _0x3f) * _0x4a))) -- Safe calculation
                _0x43.Text = _0x36 .. "\58\32" .. _0x4b
                pcall(_0x38, _0x4b)
            end

            _0x44.InputBegan:Connect(function(_0x1d)
                if _0x1d.UserInputType == Enum.UserInputType.MouseButton1 or _0x1d.UserInputType == Enum.UserInputType.Touch then
                    _0x48 = true
                    _0x49(_0x1d)
                end
            end)
            _0x05.InputEnded:Connect(function(_0x1d)
                if _0x1d.UserInputType == Enum.UserInputType.MouseButton1 or _0x1d.UserInputType == Enum.UserInputType.Touch then
                    _0x48 = false
                end
            end)
            _0x05.InputChanged:Connect(function(_0x1d)
                if _0x48 and (_0x1d.UserInputType == Enum.UserInputType.MouseMovement or _0x1d.UserInputType == Enum.UserInputType.Touch) then
                    _0x49(_0x1d)
                end
            end)
        end

        function _0x35:AddDropdown(_0x36, _0x4c, _0x38)
            _0x4c = _0x4c or {}
            local _0x4d = false
            local _0x4e = 32
            local _0x4f = 25

            local _0x50 = Instance.new("\70\114\97\109\101")
            _0x50.Size = UDim2.new(1, -5, 0, _0x4e)
            _0x50.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
            _0x50.BorderSizePixel = 0
            _0x50.ClipsDescendants = true
            _0x50.Parent = _0x2f

            local _0x51 = Instance.new("\85\73\67\111\114\110\101\114")
            _0x51.CornerRadius = UDim.new(0, 6)
            _0x51.Parent = _0x50

            local _0x52 = Instance.new("\84\101\120\116\66\117\116\116\111\110")
            _0x52.Size = UDim2.new(1, 0, 0, _0x4e)
            _0x52.BackgroundTransparency = 1
            _0x52.Text = "\32\32" .. _0x36 .. "\32\32\253\188"
            _0x52.TextColor3 = Color3.fromRGB(220, 220, 220)
            _0x52.TextSize = 12
            _0x52.Font = Enum.Font.Gotham
            _0x52.TextXAlignment = Enum.TextXAlignment.Left
            _0x52.Parent = _0x50

            local _0x53 = Instance.new("\83\99\114\111\108\108\105\110\103\70\114\97\109\101")
            _0x53.Size = UDim2.new(1, 0, 1, -_0x4e)
            _0x53.Position = UDim2.new(0, 0, 0, _0x4e)
            _0x53.BackgroundTransparency = 1
            _0x53.CanvasSize = UDim2.new(0, 0, 0, #_0x4c * _0x4f)
            _0x53.ScrollBarThickness = 2
            _0x53.Parent = _0x50

            local _0x54 = Instance.new("\85\73\76\105\115\116\76\97\121\111\117\116")
            _0x54.SortOrder = Enum.SortOrder.LayoutOrder
            _0x54.Parent = _0x53

            for _, _0x55 in ipairs(_0x4c) do
                local _0x56 = Instance.new("\84\101\120\116\66\117\116\116\111\110")
                _0x56.Size = UDim2.new(1, 0, 0, _0x4f)
                _0x56.BackgroundTransparency = 1
                _0x56.Text = "\32\32\32\32" .. tostring(_0x55)
                _0x56.TextColor3 = Color3.fromRGB(170, 170, 170)
                _0x56.TextSize = 11
                _0x56.Font = Enum.Font.Gotham
                _0x56.TextXAlignment = Enum.TextXAlignment.Left
                _0x56.Parent = _0x53

                _0x56.MouseEnter:Connect(function()
                    _0x04:Create(_0x56, TweenInfo.new(0.15), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                end)
                _0x56.MouseLeave:Connect(function()
                    _0x04:Create(_0x56, TweenInfo.new(0.15), {TextColor3 = Color3.fromRGB(170, 170, 170)}):Play()
                end)

                _0x56.MouseButton1Click:Connect(function()
                    _0x4d = false
                    _0x52.Text = "\32\32" .. _0x36 .. "\58\32" .. tostring(_0x55) .. "\32\32\253\188"
                    _0x04:Create(_0x50, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, -5, 0, _0x4e)}):Play()
                    pcall(_0x38, _0x55)
                end)
            end

            _0x52.MouseButton1Click:Connect(function()
                _0x4d = not _0x4d
                local _0x57 = _0x4d and math.min(_0x4e + (#_0x4c * _0x4f), 135) or _0x4e
                _0x52.Text = "\32\32" .. _0x36 .. (_0x4d and "\32\32\253\187" or "\32\32\253\188")
                _0x04:Create(_0x50, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, -5, 0, _0x57)}):Play()
            end)
        end

        function _0x35:AddTextBox(_0x58, _0x38)
            local _0x59 = Instance.new("\84\101\120\116\66\111\120")
            _0x59.Size = UDim2.new(1, -5, 0, 32)
            _0x59.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
            _0x59.BorderSizePixel = 0
            _0x59.PlaceholderText = _0x58
            _0x59.Text = ""
            _0x59.TextColor3 = Color3.fromRGB(220, 220, 220)
            _0x59.PlaceholderColor3 = Color3.fromRGB(120, 120, 120)
            _0x59.TextSize = 12
            _0x59.Font = Enum.Font.Gotham
            _0x59.Parent = _0x2f

            local _0x5a = Instance.new("\85\73\67\111\114\110\101\114")
            _0x5a.CornerRadius = UDim.new(0, 6)
            _0x5a.Parent = _0x59

            _0x59.Focused:Connect(function()
                _0x04:Create(_0x59, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(38, 38, 38)}):Play()
            end)
            _0x59.FocusLost:Connect(function(_0x5b)
                _0x04:Create(_0x59, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(28, 28, 28)}):Play()
                if _0x5b then
                    pcall(_0x38, _0x59.Text)
                end
            end)
        end

        return _0x35
    end

    return _0x0f
end

return _0x09
