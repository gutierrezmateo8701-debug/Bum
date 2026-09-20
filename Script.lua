--[==[ Delta UI Library - Fully Loaded & Obfuscated ]==]--
local _env = getgenv or function() return _G end
local _game = game
local _g_s = _game.GetService
local _CoreGui = _g_s(_game, "CoreGui")
local _UIS = _g_s(_game, "UserInputService")
local _Tween = _g_s(_game, "TweenService")
local _Players = _g_s(_game, "Players")
local _LP = _Players.LocalPlayer

local _Lib = {}

function _Lib:CreateWindow(_t_txt)
    local _Win = {}
    local _SG = Instance.new("ScreenGui")
    _SG.Name = "\0"
    if gethui then
        _SG.Parent = gethui()
    elseif syn and syn.protect_gui then
        syn.protect_gui(_SG)
        _SG.Parent = _CoreGui
    else
        pcall(function() _SG.Parent = _CoreGui end)
        if _SG.Parent ~= _CoreGui then
            _SG.Parent = _LP:WaitForChild("PlayerGui")
        end
    end
    _SG.ResetOnSpawn = false

    local _MF = Instance.new("Frame")
    _MF.Size = UDim2.new(0, 480, 0, 320)
    _MF.Position = UDim2.new(0.5, -240, 0.5, -160)
    _MF.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    _MF.BorderSizePixel = 0
    _MF.Parent = _SG

    local _MC = Instance.new("UICorner")
    _MC.CornerRadius = UDim.new(0, 8)
    _MC.Parent = _MF

    -- Borde RGB
    local _MS = Instance.new("UIStroke")
    _MS.Thickness = 2
    _MS.Parent = _MF
    task.spawn(function()
        while _MF.Parent do
            for _i = 0, 1, 0.003 do
                _MS.Color = Color3.fromHSV(_i, 1, 1)
                task.wait(0.02)
            end
        end
    end)

    -- Barra Superior
    local _TB = Instance.new("Frame")
    _TB.Size = UDim2.new(1, 0, 0, 32)
    _TB.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
    _TB.BorderSizePixel = 0
    _TB.Parent = _MF

    local _TBC = Instance.new("UICorner")
    _TBC.CornerRadius = UDim.new(0, 8)
    _TBC.Parent = _TB

    local _TT = Instance.new("TextLabel")
    _TT.Size = UDim2.new(0, 250, 1, 0)
    _TT.Position = UDim2.new(0, 10, 0, 0)
    _TT.BackgroundTransparency = 1
    _TT.Text = _t_txt
    _TT.TextColor3 = Color3.fromRGB(230, 230, 230)
    _TT.TextSize = 13
    _TT.Font = Enum.Font.GothamBold
    _TT.TextXAlignment = Enum.TextXAlignment.Left
    _TT.Parent = _TB

    -- Arrastre para Delta (Móvil y PC)
    local _d, _di, _ds, _sp
    _TB.InputBegan:Connect(function(_input)
        if _input.UserInputType == Enum.UserInputType.MouseButton1 or _input.UserInputType == Enum.UserInputType.Touch then
            _d = true
            _ds = _input.Position
            _sp = _MF.Position
            _input.Changed:Connect(function()
                if _input.UserInputState == Enum.UserInputState.End then
                    _d = false
                end
            end)
        end
    end)
    _TB.InputChanged:Connect(function(_input)
        if _input.UserInputType == Enum.UserInputType.MouseMovement or _input.UserInputType == Enum.UserInputType.Touch then
            _di = _input
        end
    end)
    _UIS.InputChanged:Connect(function(_input)
        if _input == _di and _d then
            local _dl = _input.Position - _ds
            _MF.Position = UDim2.new(_sp.X.Scale, _sp.X.Offset + _dl.X, _sp.Y.Scale, _sp.Y.Offset + _dl.Y)
        end
    end)

    -- Eliminar GUI (Cerrar)
    _TB.InputBegan:Connect(function() end)
    local _CB = Instance.new("TextButton")
    _CB.Size = UDim2.new(0, 28, 0, 28)
    _CB.Position = UDim2.new(1, -32, 0, 2)
    _CB.BackgroundTransparency = 1
    _CB.Text = "X"
    _CB.TextColor3 = Color3.fromRGB(255, 80, 80)
    _CB.TextSize = 13
    _CB.Font = Enum.Font.GothamBold
    _CB.Parent = _TB
    _CB.MouseButton1Click:Connect(function()
        _SG:Destroy()
    end)

    -- Minimizar (Gui chica)
    local _MB = Instance.new("TextButton")
    _MB.Size = UDim2.new(0, 28, 0, 28)
    _MB.Position = UDim2.new(1, -64, 0, 2)
    _MB.BackgroundTransparency = 1
    _MB.Text = "-"
    _MB.TextColor3 = Color3.fromRGB(230, 230, 230)
    _MB.TextSize = 16
    _MB.Font = Enum.Font.GothamBold
    _MB.Parent = _TB

    local _min = false
    _MB.MouseButton1Click:Connect(function()
        _min = not _min
        _MF:TweenSize(_min and UDim2.new(0, 480, 0, 32) or UDim2.new(0, 480, 0, 320), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
    end)

    -- Pestañas (Tabs)
    local _TabB = Instance.new("ScrollingFrame")
    _TabB.Size = UDim2.new(0, 110, 1, -40)
    _TabB.Position = UDim2.new(0, 5, 0, 36)
    _TabB.BackgroundTransparency = 1
    _TabB.CanvasSize = UDim2.new(0, 0, 0, 0)
    _TabB.ScrollBarThickness = 2
    _TabB.Parent = _MF

    local _TLL = Instance.new("UIListLayout")
    _TLL.SortOrder = Enum.SortOrder.LayoutOrder
    _TLL.Padding = UDim.new(0, 5)
    _TLL.Parent = _TabB

    local _CH = Instance.new("Folder")
    _CH.Parent = _MF

    function _Win:CreateTab(_tn)
        local _TC = Instance.new("ScrollingFrame")
        _TC.Size = UDim2.new(1, -125, 1, -42)
        _TC.Position = UDim2.new(0, 120, 0, 38)
        _TC.BackgroundTransparency = 1
        _TC.Visible = false
        _TC.CanvasSize = UDim2.new(0, 0, 0, 0)
        _TC.ScrollBarThickness = 3
        _TC.Parent = _CH

        local _TCL = Instance.new("UIListLayout")
        _TCL.SortOrder = Enum.SortOrder.LayoutOrder
        _TCL.Padding = UDim.new(0, 6)
        _TCL.Parent = _TC

        _TCL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            _TC.CanvasSize = UDim2.new(0, 0, 0, _TCL.AbsoluteContentSize.Y + 10)
        end)

        local _TBtn = Instance.new("TextButton")
        _TBtn.Size = UDim2.new(1, 0, 0, 28)
        _TBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        _TBtn.BorderSizePixel = 0
        _TBtn.Text = _tn
        _TBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
        _TBtn.TextSize = 12
        _TBtn.Font = Enum.Font.GothamMedium
        _TBtn.Parent = _TabB

        local _TBCorner = Instance.new("UICorner")
        _TBCorner.CornerRadius = UDim.new(0, 6)
        _TBCorner.Parent = _TBtn

        if #_CH:GetChildren() == 1 then
            _TC.Visible = true
            _TBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
            _TBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        end

        _TBtn.MouseButton1Click:Connect(function()
            for _, _v in pairs(_CH:GetChildren()) do
                _v.Visible = false
            end
            for _, _v in pairs(_TabB:GetChildren()) do
                if _v:IsA("TextButton") then
                    _v.TextColor3 = Color3.fromRGB(180, 180, 180)
                    _v.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                end
            end
            _TC.Visible = true
            _TBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
            _TBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        end)

        local _Els = {}

        -- TextLabel
        function _Els:AddTextLabel(_txt)
            local _L = Instance.new("TextLabel")
            _L.Size = UDim2.new(1, -5, 0, 25)
            _L.BackgroundTransparency = 1
            _L.Text = _txt
            _L.TextColor3 = Color3.fromRGB(210, 210, 210)
            _L.TextSize = 12
            _L.Font = Enum.Font.Gotham
            _L.TextXAlignment = Enum.TextXAlignment.Left
            _L.Parent = _TC
        end

        -- Toggle
        function _Els:AddToggle(_txt, _cb)
            local _tog = false
            local _TBn = Instance.new("TextButton")
            _TBn.Size = UDim2.new(1, -5, 0, 30)
            _TBn.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
            _TBn.BorderSizePixel = 0
            _TBn.Text = "  " .. _txt
            _TBn.TextColor3 = Color3.fromRGB(220, 220, 220)
            _TBn.TextSize = 12
            _TBn.Font = Enum.Font.Gotham
            _TBn.TextXAlignment = Enum.TextXAlignment.Left
            _TBn.Parent = _TC

            local _TCr = Instance.new("UICorner")
            _TCr.CornerRadius = UDim.new(0, 6)
            _TCr.Parent = _TBn

            local _Ind = Instance.new("Frame")
            _Ind.Size = UDim2.new(0, 18, 0, 18)
            _Ind.Position = UDim2.new(1, -24, 0.5, -9)
            _Ind.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
            _Ind.BorderSizePixel = 0
            _Ind.Parent = _TBn

            local _IC = Instance.new("UICorner")
            _IC.CornerRadius = UDim.new(0, 4)
            _IC.Parent = _Ind

            _TBn.MouseButton1Click:Connect(function()
                _tog = not _tog
                _Ind.BackgroundColor3 = _tog and Color3.fromRGB(0, 200, 100) or Color3.fromRGB(50, 50, 50)
                pcall(_cb, _tog)
            end)
        end

        -- Slider
        function _Els:AddSlider(_txt, _minV, _maxV, _cb)
            local _SF = Instance.new("Frame")
            _SF.Size = UDim2.new(1, -5, 0, 45)
            _SF.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
            _SF.BorderSizePixel = 0
            _SF.Parent = _TC

            local _SC = Instance.new("UICorner")
            _SC.CornerRadius = UDim.new(0, 6)
            _SC.Parent = _SF

            local _SL = Instance.new("TextLabel")
            _SL.Size = UDim2.new(1, -10, 0, 20)
            _SL.Position = UDim2.new(0, 8, 0, 2)
            _SL.BackgroundTransparency = 1
            _SL.Text = _txt .. ": " .. _minV
            _SL.TextColor3 = Color3.fromRGB(220, 220, 220)
            _SL.TextSize = 12
            _SL.Font = Enum.Font.Gotham
            _SL.TextXAlignment = Enum.TextXAlignment.Left
            _SL.Parent = _SF

            local _SBar = Instance.new("Frame")
            _SBar.Size = UDim2.new(1, -16, 0, 6)
            _SBar.Position = UDim2.new(0, 8, 0, 28)
            _SBar.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            _SBar.BorderSizePixel = 0
            _SBar.Parent = _SF

            local _SBC = Instance.new("UICorner")
            _SBC.CornerRadius = UDim.new(0, 3)
            _SBC.Parent = _SBar

            local _SFill = Instance.new("Frame")
            _SFill.Size = UDim2.new(0, 0, 1, 0)
            _SFill.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
            _SFill.BorderSizePixel = 0
            _SFill.Parent = _SBar

            local _SFC = Instance.new("UICorner")
            _SFC.CornerRadius = UDim.new(0, 3)
            _SFC.Parent = _SFill

            local _dS = false
            _SBar.InputBegan:Connect(function(_ip)
                if _ip.UserInputType == Enum.UserInputType.MouseButton1 or _ip.UserInputType == Enum.UserInputType.Touch then
                    _dS = true
                end
            end)
            _UIS.InputEnded:Connect(function(_ip)
                if _ip.UserInputType == Enum.UserInputType.MouseButton1 or _ip.UserInputType == Enum.UserInputType.Touch then
                    _dS = false
                end
            end)
            _UIS.InputChanged:Connect(function(_ip)
                if _dS and (_ip.UserInputType == Enum.UserInputType.MouseMovement or _ip.UserInputType == Enum.UserInputType.Touch) then
                    local _pos = math.clamp((_ip.Position.X - _SBar.AbsolutePosition.X) / _SBar.AbsoluteSize.X, 0, 1)
                    _SFill.Size = UDim2.new(_pos, 0, 1, 0)
                    local _val = math.floor(_minV + ((_maxV - _minV) * _pos))
                    _SL.Text = _txt .. ": " .. _val
                    pcall(_cb, _val)
                end
            end)
        end

        -- Dropdown
        function _Els:AddDropdown(_txt, _opts, _cb)
            local _dOpen = false
            local _DF = Instance.new("Frame")
            _DF.Size = UDim2.new(1, -5, 0, 30)
            _DF.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
            _DF.BorderSizePixel = 0
            _DF.ClipsDescendants = true
            _DF.Parent = _TC

            local _DC = Instance.new("UICorner")
            _DC.CornerRadius = UDim.new(0, 6)
            _DC.Parent = _DF

            local _DBtn = Instance.new("TextButton")
            _DBtn.Size = UDim2.new(1, 0, 0, 30)
            _DBtn.BackgroundTransparency = 1
            _DBtn.Text = "  " .. _txt .. " v"
            _DBtn.TextColor3 = Color3.fromRGB(220, 220, 220)
            _DBtn.TextSize = 12
            _DBtn.Font = Enum.Font.Gotham
            _DBtn.TextXAlignment = Enum.TextXAlignment.Left
            _DBtn.Parent = _DF

            local _OC = Instance.new("ScrollingFrame")
            _OC.Size = UDim2.new(1, 0, 0, 0)
            _OC.Position = UDim2.new(0, 0, 0, 30)
            _OC.BackgroundTransparency = 1
            _OC.CanvasSize = UDim2.new(0, 0, 0, 0)
            _OC.ScrollBarThickness = 2
            _OC.Parent = _DF

            local _OL = Instance.new("UIListLayout")
            _OL.SortOrder = Enum.SortOrder.LayoutOrder
            _OL.Parent = _OC

            _OL:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                _OC.CanvasSize = UDim2.new(0, 0, 0, _OL.AbsoluteContentSize.Y)
            end)

            for _, _opt in ipairs(_opts) do
                local _OBtn = Instance.new("TextButton")
                _OBtn.Size = UDim2.new(1, 0, 0, 25)
                _OBtn.BackgroundTransparency = 1
                _OBtn.Text = "    " .. _opt
                _OBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
                _OBtn.TextSize = 11
                _OBtn.Font = Enum.Font.Gotham
                _OBtn.TextXAlignment = Enum.TextXAlignment.Left
                _OBtn.Parent = _OC

                _OBtn.MouseButton1Click:Connect(function()
                    _dOpen = false
                    _DBtn.Text = "  " .. _txt .. ": " .. _opt
                    _DF:TweenSize(UDim2.new(1, -5, 0, 30), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
                    pcall(_cb, _opt)
                end)
            end

            _DBtn.MouseButton1Click:Connect(function()
                _dOpen = not _dOpen
                local _tH = _dOpen and math.min(30 + (#_opts * 25), 120) or 30
                _DF:TweenSize(UDim2.new(1, -5, 0, _tH), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
            end)
        end

        -- TextBox
        function _Els:AddTextBox(_plh, _cb)
            local _TBox = Instance.new("TextBox")
            _TBox.Size = UDim2.new(1, -5, 0, 30)
            _TBox.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
            _TBox.BorderSizePixel = 0
            _TBox.PlaceholderText = _plh
            _TBox.Text = ""
            _TBox.TextColor3 = Color3.fromRGB(220, 220, 220)
            _TBox.PlaceholderColor3 = Color3.fromRGB(120, 120, 120)
            _TBox.TextSize = 12
            _TBox.Font = Enum.Font.Gotham
            _TBox.Parent = _TC

            local _TBCn = Instance.new("UICorner")
            _TBCn.CornerRadius = UDim.new(0, 6)
            _TBCn.Parent = _TBox

            _TBox.FocusLost:Connect(function(_ent)
                if _ent then
                    pcall(_cb, _TBox.Text)
                end
            end)
        end

        return _Els
    end

    return _Win
end

return _Lib
