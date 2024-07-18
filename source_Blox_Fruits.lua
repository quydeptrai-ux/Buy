game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Crazzy Hub",
    Text = "Đang tải...",
    Icon = "rbxassetid://14904129682"
})

wait(3)

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Crazzy Hub",
    Text = " ✅ Tải thành công!",
    Icon = "rbxassetid://14904129682"
})

wait(1)

repeat wait() until game.Players
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.ReplicatedStorage
repeat wait() until game.ReplicatedStorage:FindFirstChild("Remotes");
repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui");
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
repeat wait() until game:GetService("Players")
repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Energy")
if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
--Team
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    repeat
        wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
            if getgenv().Team == "Pirate" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do
                    v.Function()
                end
            elseif getgenv().Team == "Marine" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated)) do
                    v.Function()
                end
            else
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do
                    v.Function()
                end
            end
        end
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end

local Plr = game.Players.LocalPlayer
local Connection = {}
local Highlight_Folder = Instance.new("Folder")
Highlight_Folder.Name = "Highlight_Folder"
Highlight_Folder.Parent = game.CoreGui
local Highlight = function(Target)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = Target.Name
    Highlight.FillColor = Color3.fromRGB(255, 255, 0)
    Highlight.DepthMode = "AlwaysOnTop"
    Highlight.FillTransparency = 0.7
    Highlight.OutlineColor = Color3.fromRGB(255, 255, 0)
    Highlight.Parent = Highlight_Folder
    if Target.Character then
        Highlight.Adornee = Target.Character
    end
    Connection[Target] = Target.CharacterAdded:Connect(function(Characters)
        Highlight.Adornee = Characters
    end)
end
game.Players.PlayerAdded:Connect(Highlight)
for i, v in next, game.Players:GetPlayers() do
    Highlight(v)
end
game.Players.PlayerRemoving:Connect(function(PlayerRemove)
    if Highlight_Folder[PlayerRemove.Name] then
        Highlight_Folder[PlayerRemove.Name]:Destory()
    end
    if Connection[PlayerRemove.Name] then
        Connection[PlayerRemove.Name]:Disconnect()
    end
end)

local InputService = game:GetService("UserInputService")
InputService.WindowFocused:Connect(
    function()
        game:GetService("RunService"):Set3dRenderingEnabled(true)
    end
)
InputService.WindowFocusReleased:Connect(
    function()
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    end
)

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
    Name = "Cat Hub",
    IntroText = "Cat",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "Cat hub Main"
})

local Fou = Window:MakeTab({
    Name = "Về chúng tôi",
    Icon = "rbxassetid://11446900930",
    PremiumOnly = false
})
local Main = Window:MakeTab({
    Name = "Trang chủ",
    Icon = "rbxassetid://11446825283",
    PremiumOnly = false
})
local Set = Window:MakeTab({
    Name = "Cài đặt",
    Icon = "rbxassetid://11446835336",
    PremiumOnly = false
})
local Farm = Window:MakeTab({
    Name = "Cày khác",
    Icon = "rbxassetid://11446859498",
    PremiumOnly = false
})
local Stats = Window:MakeTab({
    Name = "Chỉ số",
    Icon = "rbxassetid://11447069304",
    PremiumOnly = false
})
local Island = Window:MakeTab({
    Name = "Dảo & ESP",
    Icon = "rbxassetid://9606628205",
    PremiumOnly = false
})
local DF = Window:MakeTab({
    Name = "Trái ác quỷ",
    Icon = "rbxassetid://11446965348",
    PremiumOnly = false
})
local Raid = Window:MakeTab({
    Name = "Raid",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local Shop = Window:MakeTab({
    Name = "Cửa hàng",
    Icon = "rbxassetid://6031265976",
    PremiumOnly = false
})
local Misc = Window:MakeTab({
    Name = "Khác",
    Icon = "rbxassetid://7040410130",
    PremiumOnly = false
})
local RaceV4 = Window:MakeTab({
    Name = "Tộc V4",
    Icon = "rbxassetid://9606626034",
    PremiumOnly = false
})
Fou:AddLabel("Founder : tungsuccac 🤓")
Fou:AddLabel("Developer : NgocAnhBeo ❤️")
Fou:AddLabel("Phiên bản : V2.1")
Fou:AddButton({
    Name = "Link mời Discord",
    Callback = function(value)
        setclipboard("https://discord.gg/zMhWGeR6")
    end
})
Main:AddLabel("Code")

local x2Code = {
    "FUDD10",
    "BIGNEWS",
    "THEGREATACE",
    "SUB2GAMERROBOT_EXP1",
    "StrawHatMaine",
    "Sub2OfficialNoobie",
    "SUB2NOOBMASTER123",
    "Sub2Daigrock",
    "Axiore",
    "TantaiGaming",
    "JCWK",
    "Starcodeheo",
    "Sub2Fer999",
    "Magicbus",
    "Enyu_is_Pro",
    "Bluxxy",
    "KittGaming",
}


Main:AddButton({
    Name = "Điền tất cả Code",
    Callback = function()
        function RedeemCode(value)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
        end

        for i, v in pairs(x2Code) do
            RedeemCode(v)
        end
    end
})
Main:AddLabel("Dịch chuyển đến các sea")
Main:AddButton({
    Name = "Sea 1",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})
Main:AddButton({
    Name = "Sea 2",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})
Main:AddButton({
    Name = "Sea 3",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})

Main:AddLabel("Nhà máy & Hải tặc")
Main:AddToggle({
    Name = "Tự động đánh nhà máy",
    Default = false,
    Callback = function(Value)
        AutoFactory = Value
    end
})

spawn(function()
    while wait() do
        if AutoFactory then
            if game.Workspace.Enemies:FindFirstChild("Core") then
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Core" and v.Humanoid.Health > 0 then
                        repeat
                            wait(.1)
                            repeat
                                Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                                wait()
                            until not AutoFactory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
                            EquipTool(_G.SelectWeapon)
                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                local args = {
                                    [1] = "Buso"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            game:GetService 'VirtualUser':CaptureController()
                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        until not v.Parent or v.Humanoid.Health <= 0 or AutoFactory == false
                    end
                end
            elseif game.ReplicatedStorage:FindFirstChild("Core") then
                repeat
                    Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                    wait()
                until not AutoFactory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
            end
        end
    end
end)

Main:AddToggle({
    Name = "Tự động đánh hải tặc",
    Default = false,
    Callback = function(Value)
        Auto_Quest_Tushita_2 = Value
    end
})

spawn(function()
    while wait() do
        if Auto_Quest_Tushita_2 then
            pcall(function()
                local CFrameBoss = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09,
                    0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                repeat
                                    wait()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0))
                                    wait()
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, -10, 0))
                                until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
                            end
                        end
                    end
                else
                    if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
                        TP(CFrameBoss)
                    else
                        TelePBoss(CFrameBoss)
                    end
                end
            end)
        end
    end
end)
Set:AddLabel("Bypass")
spawn(function()
    while wait() do
        if _G.SafeFarm == true then
            for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                if v:IsA("LocalScript") then
                    if v.Name == "General" or v.Name == "Shiftlock" or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
                        v:Destroy()
                    end
                end
            end
            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
                if v:IsA("LocalScript") then
                    if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans" or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp" or v.Name == "PlayerList" then
                        v:Destroy()
                    end
                end
            end
        else
            game.Players.LocalPlayer:Kick("Please Dont Off AntiCheat")
        end
    end
end)
Set:AddToggle({
    Name = "Anticheat Bypass",
    Default = true,
    Callback = function(value)
        _G.SafeFarm = value
    end
})
Set:AddLabel("Hiệu ứng")
Set:AddToggle({
    Name = "Xóa đánh hiệu ứng đánh",
    Default = true,
    Callback = function(value)
        _G.RemoveAnimation = value
    end
})
local Client = game.Players.LocalPlayer
local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
if not shared.orl then
    shared.orl = STOPRL.wrapAttackAnimationAsync
end
if not shared.cpc then
    shared.cpc = STOP.play
end
spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        STOPRL.wrapAttackAnimationAsync = function(a, b, c, d, func)
            local Hits = STOPRL.getBladeHits(b, c, d)
            if Hits then
                if _G.RemoveAnimation or _G.AutoKaitan or _G.Auto_Farm_Level then
                    if _G.AutoKaitan or _G.Auto_Farm_Level then
                        STOP.play = function() end
                        a:Play(0.01, 0.01, 0.01)
                        func(Hits)
                        STOP.play = shared.cpc
                        wait(a.length * 0.5)
                        a:Stop()
                    else
                        func(Hits)
                        STOP.play = shared.cpc
                        wait(a.length * 0.5)
                        a:Stop()
                    end
                end
            end
        end
    end)
end)
Set:AddToggle({
    Name = "Xóa hiệu ứng",
    Default = true,
    Callback = function(value)
        _G.Remove_Effect = value
    end
})
spawn(function()
    game:GetService('RunService').Stepped:Connect(function()
        if _G.Remove_Effect or _G.AutoKaitan then
            for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
                if v.Name == "CurvedRing" or v.Name == "SwordSlash" or v.Name == "Sounds" or v.Name == "SlashHit" or v.Name == "DamageCounter" then --or v.Name == "SlashHit"
                    v:Destroy()
                end
            end
        end
    end)
end)
Set:AddToggle({
    Name = "Xóa hiệu ứng chết",
    Default = true,
    Callback = function(value)
        _G.Remove_EffectDeath = value
    end
})
spawn(function()
    game:GetService('RunService').Stepped:Connect(function()
        if _G.Remove_EffectDeath or _G.AutoKaitan then
            for i, v in pairs(game:GetService("ReplicatedStorage").Effect.Container:GetChildren()) do
                if v.Name == "Death" then
                    v:Destroy()
                end
            end
        end
    end)
end)


--// Setting Player

local GC = getconnections or get_signal_cons
if GC then
    for i, v in pairs(GC(game.Players.LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
else
    print("Unlucky.")
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)
end



spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if Fastattack == true then
            game.Players.LocalPlayer.Character.Stun.Value = 0
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
            game.Players.LocalPlayer.Character.Busy.Value = false
        end
    end)
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if Fastattack then
            pcall(function()
                game:GetService 'VirtualUser':CaptureController()
                game:GetService 'VirtualUser':Button1Down(Vector2.new(0, 1, 0, 1))
            end)
        end
    end)
end)

Main:AddLabel("Cài đặt")
--// Setting Farm
local bringfrec = 250
local posX = 0
local posY = 30
local posZ = 0
local TweenSpeed = 350
local WeaponList = {
    "Cận chiến", "Trái ác quỷ", "Kiếm", "Súng"
}

Main:AddDropdown({
    Name = "Chọn vũ khí",
    Default = "",
    Options = WeaponList,
    Callback = function(weaponfunc)
        _G.SelectWeapon = weaponfunc
    end
})
spawn(function()
    while wait() do
        pcall(function()
            if _G.SelectWeapon == "Cận chiến" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            elseif _G.SelectWeapon == "Kiếm" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Sword" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            elseif _G.SelectWeapon == "Trái ác quỷ" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Blox Fruit" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            elseif _G.SelectWeapon == "Súng" then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Gun" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            _G.SelectWeapon = v.Name
                        end
                    end
                end
            else
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == SelectWeapon then
                        SelectWeapon = v.Name
                    end
                end
            end
        end)
    end
end)
--// Fast Attack
local AttackList = { "Máy tính", "Điện thoại", "Chậm" }
_G.FastAttackDelay = "MOBILE"
Main:AddDropdown({
    Name = "Chọn chế độ đánh nhanh",
    Default = "",
    Options = AttackList,
    Callback = function(adl)
        _G.FastAttackDelay = adl
    end
})

spawn(function()
    while wait(.1) do
        if _G.FastAttackDelay then
            pcall(function()
                if _G.FastAttackDelay == "Điện thoại" then
                    _G.FastAttackDelay = 0.2
                elseif _G.FastAttackDelay == "Máy tính" then
                    _G.FastAttackDelay = 0.1
                elseif _G.FastAttackDelay == "Chậm" then
                    _G.FastAttackDelay = 0.4
                end
            end)
        end
    end
end)
Main:AddDropdown({
    Name = "Chọn chế độ cày",
    Default = "",
    Options = {
        "Cày cấp độ", "Không nhiệm vụ", "Cày quái ở gần"
    },
    Callback = function(value)
        _G.Select_Mode_Farm = value
    end
})

FarmTable = {
    "Upper",
    "Bellow",
    "Behind"
}
AutoFarmType = "Upper"
spawn(function()
    while wait(.1) do
        if AutoFarmType == "Upper" then
            Farm_Mode = CFrame.new(0, _G.DisFarm, 0) * CFrame.Angles(math.rad(0), 0, 0)
        elseif AutoFarmType == "Bellow" then
            Farm_Mode = CFrame.new(0, _G.DisFarm, 0) * CFrame.Angles(math.rad(50), 0, 0)
        elseif AutoFarmType == "Behind" then
            Farm_Mode = CFrame.new(0, 0, _G.DisFarm) * CFrame.Angles(math.rad(0), 0, 0)
        end
    end
end)

local Module = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)

local CombatFramework = debug.getupvalues(Module)[2]

local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)

spawn(function()
    while true do
        if _G.FastAttack then
            pcall(function()
                CameraShakerR:Stop()
                CombatFramework.activeController.attacking = false
                CombatFramework.activeController.timeToNextAttack = 0
                CombatFramework.activeController.increment = 3
                CombatFramework.activeController.hitboxMagnitude = 100
                CombatFramework.activeController.blocking = false
                CombatFramework.activeController.timeToNextBlock = 0
                CombatFramework.activeController.focusStart = 0
                CombatFramework.activeController.humanoid.AutoRotate = true
            end)
        end
        task.wait()
    end
end)

Set:AddLabel("Cài đặt cày")
_G.DisFarm = 35
Set:AddSlider({
    Name = "Khoảng cách cày",
    Min = 1,
    Max = 100,
    Default = 35,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "",
    Callback = function(value)
        _G.DisFarm = value
    end
})

Set:AddToggle({
    Name = "Bypass TP",
    Default = false,
    Callback = function(Value)
        BypassTP = Value
    end
})
_G.FastAttack = true
Set:AddToggle({
    Name = "Đánh nhanh",
    Default = _G.FastAttack,
    Callback = function(famobile)
        _G.FastAttack = famobile
    end
})
--// Module
function GetBladeHit()
    local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts
        .CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    local p13 = CmrFwLib.activeController
    local weapon = p13.blades[1]
    if not weapon then
        return weapon
    end
    while weapon.Parent ~= game.Players.LocalPlayer.Character do
        weapon = weapon.Parent
    end
    return weapon
end

function AttackHit()
    local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts
        .CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    local plr = game.Players.LocalPlayer
    for i = 1, 1 do
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(plr.Character,
            { plr.Character.HumanoidRootPart }, 60)
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            pcall(function()
                CmrFwLib.activeController.timeToNextAttack = 1
                CmrFwLib.activeController.attacking = false
                CmrFwLib.activeController.blocking = false
                CmrFwLib.activeController.timeToNextBlock = 0
                CmrFwLib.activeController.increment = 3
                CmrFwLib.activeController.hitboxMagnitude = 100
                CmrFwLib.activeController.focusStart = 0
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",
                    tostring(GetBladeHit()))
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
            end)
        end
    end
end

spawn(function()
    while wait(.1) do
        if _G.FastAttack then
            pcall(function()
                repeat
                    task.wait(_G.FastAttackDelay)
                    AttackHit()
                until not _G.FastAttack
            end)
        end
    end
end)

local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
CamShake:Stop()


_G.BringDist = 240
Set:AddSlider({
    Name = "Khoảng cách gom quái",
    Min = 1,
    Max = 1000,
    Default = 240,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "",
    Callback = function(x)
        _G.BringDist = x
    end
})
Set:AddToggle({
    Name = "Gom quái",
    Default = true,
    Callback = function(Value)
        BringMobs = Value
    end
})
task.spawn(function()
    while task.wait() do
        if BringMobs or _G.Auto_Farm_Level then
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == MonFarm and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringDist then
                        if InMyNetWork(v.HumanoidRootPart) then
                            v.HumanoidRootPart.CFrame = FarmPos
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.Humanoid:ChangeState(11)
                            v.Humanoid:ChangeState(14)
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                        end
                    end
                end
            end)
        end
    end
end)

task.spawn(function()
    while true do
        wait()
        if setscriptable then
            setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
        end
        if sethiddenproperty then
            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
        end
    end
end)

function InMyNetWork(object)
    if isnetworkowner then
        return isnetworkowner(object)
    else
        if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= bringfrec then
            return true
        end
        return false
    end
end

Set:AddToggle({
    Name = "Tự động đặt điểm hồi sinh",
    Default = true,
    Callback = function(setspawnfunc)
        AutoSetSpawn = setspawnfunc
    end
})
spawn(function()
    while wait() do
        if AutoSetSpawn then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    end
end)


spawn(function()
    while wait(.1) do
        if BusoHaki then
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
            end
        end
    end
end)
------ Main Farm

local GC = getconnections or get_signal_cons
if GC then
    for i, v in pairs(GC(game.Players.LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
else
    print("Unlucky.")
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)
end

------// BLOX FRUIT
--// Sea world
World1 = false
World2 = false
World3 = false
local placeId = game.PlaceId
if placeId == 2753915549 then
    World1 = true
elseif placeId == 4442272183 then
    World2 = true
elseif placeId == 7449423635 then
    World3 = true
end

--// General Monster
function CheckLevel()
    local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if Lv == 1 or Lv <= 9 or SelectMonster == "Bandit [Lv. 5]" or SelectArea == 'Jungle' then -- Bandit
            Ms = "Bandit [Lv. 5]"
            NameQuest = "BanditQuest1"
            QuestLv = 1
            NameMon = "Bandit"
            CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
            CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
        elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey [Lv. 14]" or SelectArea == 'Jungle' then -- Monkey
            Ms = "Monkey [Lv. 14]"
            NameQuest = "JungleQuest"
            QuestLv = 1
            NameMon = "Monkey"
            CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
        elseif Lv == 15 or Lv <= 29 or SelectMonster == "Gorilla [Lv. 20]" or SelectArea == 'Jungle' then -- Gorilla
            Ms = "Gorilla [Lv. 20]"
            NameQuest = "JungleQuest"
            QuestLv = 2
            NameMon = "Gorilla"
            CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
        elseif Lv == 30 or Lv <= 39 or SelectMonster == "Pirate [Lv. 35]" or SelectArea == 'Buggy' then -- Pirate
            Ms = "Pirate [Lv. 35]"
            NameQuest = "BuggyQuest1"
            QuestLv = 1
            NameMon = "Pirate"
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif Lv == 40 or Lv <= 59 or SelectMonster == "Brute [Lv. 45]" or SelectArea == 'Buggy' then -- Brute
            Ms = "Brute [Lv. 45]"
            NameQuest = "BuggyQuest1"
            QuestLv = 2
            NameMon = "Brute"
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
        elseif Lv == 60 or Lv <= 74 or SelectMonster == "Desert Bandit [Lv. 60]" or SelectArea == 'Desert' then -- Desert Bandit
            Ms = "Desert Bandit [Lv. 60]"
            NameQuest = "DesertQuest"
            QuestLv = 1
            NameMon = "Desert Bandit"
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
        elseif Lv == 75 or Lv <= 89 or SelectMonster == "Desert Officer [Lv. 70]" or SelectArea == 'Desert' then -- Desert Officer
            Ms = "Desert Officer [Lv. 70]"
            NameQuest = "DesertQuest"
            QuestLv = 2
            NameMon = "Desert Officer"
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
        elseif Lv == 90 or Lv <= 99 or SelectMonster == "Snow Bandit [Lv. 90]" or SelectArea == 'Snow' then -- Snow Bandit
            Ms = "Snow Bandit [Lv. 90]"
            NameQuest = "SnowQuest"
            QuestLv = 1
            NameMon = "Snow Bandit"
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
        elseif Lv == 100 or Lv <= 119 or SelectMonster == "Snowman [Lv. 100]" or SelectArea == 'Snow' then -- Snowman
            Ms = "Snowman [Lv. 100]"
            NameQuest = "SnowQuest"
            QuestLv = 2
            NameMon = "Snowman"
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
        elseif Lv == 120 or Lv <= 149 or SelectMonster == "Chief Petty Officer [Lv. 120]" or SelectArea == 'Marine' then -- Chief Petty Officer
            Ms = "Chief Petty Officer [Lv. 120]"
            NameQuest = "MarineQuest2"
            QuestLv = 1
            NameMon = "Chief Petty Officer"
            CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
            CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
        elseif Lv == 150 or Lv <= 174 or SelectMonster == "Sky Bandit [Lv. 150]" or SelectArea == 'Sky' then -- Sky Bandit
            Ms = "Sky Bandit [Lv. 150]"
            NameQuest = "SkyQuest"
            QuestLv = 1
            NameMon = "Sky Bandit"
            CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
            CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
        elseif Lv == 175 or Lv <= 189 or SelectMonster == "Dark Master [Lv. 175]" or SelectArea == 'Sky' then -- Dark Master
            Ms = "Dark Master [Lv. 175]"
            NameQuest = "SkyQuest"
            QuestLv = 2
            NameMon = "Dark Master"
            CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
            CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
        elseif Lv == 190 or Lv <= 209 or SelectMonster == "Prisoner [Lv. 190]" or SelectArea == 'Prison' then -- Prisoner
            Ms = "Prisoner [Lv. 190]"
            NameQuest = "PrisonerQuest"
            QuestLv = 1
            NameMon = "Prisoner"
            CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935,
                0, 0.0175017118)
            CFrameMon = CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0, -0.719348073, 0, 1, 0,
                0.719348073, 0, 0.694649816)
        elseif Lv == 210 or Lv <= 249 or SelectMonster == "Dangerous Prisoner [Lv. 210]" or SelectArea == 'Prison' then -- Dangerous Prisoner
            Ms = "Dangerous Prisoner [Lv. 210]"
            NameQuest = "PrisonerQuest"
            QuestLv = 2
            NameMon = "Dangerous Prisoner"
            CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935,
                0, 0.0175017118)
            CFrameMon = CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827, 0, -0.438139856, 0, 1, 0, 0.438139856,
                0, 0.898906827)
        elseif Lv == 250 or Lv <= 274 or SelectMonster == "Toga Warrior [Lv. 250]" or SelectArea == 'Colosseum' then -- Toga Warrior
            Ms = "Toga Warrior [Lv. 250]"
            NameQuest = "ColosseumQuest"
            QuestLv = 1
            NameMon = "Toga Warrior"
            CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
            CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
        elseif Lv == 275 or Lv <= 299 or SelectMonster == "Gladiator [Lv. 275]" or SelectArea == 'Colosseum' then -- Gladiator
            Ms = "Gladiator [Lv. 275]"
            NameQuest = "ColosseumQuest"
            QuestLv = 2
            NameMon = "Gladiator"
            CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
            CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
        elseif Lv == 300 or Lv <= 324 or SelectMonster == "Military Soldier [Lv. 300]" or SelectArea == 'Magma' then -- Military Soldier
            Ms = "Military Soldier [Lv. 300]"
            NameQuest = "MagmaQuest"
            QuestLv = 1
            NameMon = "Military Soldier"
            CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
            CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
        elseif Lv == 325 or Lv <= 374 or SelectMonster == "Military Spy [Lv. 325]" or SelectArea == 'Magma' then -- Military Spy
            Ms = "Military Spy [Lv. 325]"
            NameQuest = "MagmaQuest"
            QuestLv = 2
            NameMon = "Military Spy"
            CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
            CFrameMon = CFrame.new(-5787.00293, 75.8262634, 8651.69922, 0.838590562, 0, -0.544762194, 0, 1, 0,
                0.544762194, 0, 0.838590562)
        elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior [Lv. 375]" or SelectArea == 'Fishman' then -- Fishman Warrior
            Ms = "Fishman Warrior [Lv. 375]"
            NameQuest = "FishmanQuest"
            QuestLv = 1
            NameMon = "Fishman Warrior"
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
            if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando [Lv. 400]" or SelectArea == 'Fishman' then -- Fishman Commando
            Ms = "Fishman Commando [Lv. 400]"
            NameQuest = "FishmanQuest"
            QuestLv = 2
            NameMon = "Fishman Commando"
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
            if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif Lv == 450 or Lv <= 474 or SelectMonster == "God's Guard [Lv. 450]" or SelectArea == 'Sky Island' then -- God's Guard
            Ms = "God's Guard [Lv. 450]"
            NameQuest = "SkyExp1Quest"
            QuestLv = 1
            NameMon = "God's Guard"
            CFrameQ = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
            CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
            if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda [Lv. 475]" or SelectArea == 'Sky Island' then -- Shanda
            Ms = "Shanda [Lv. 475]"
            NameQuest = "SkyExp1Quest"
            QuestLv = 2
            NameMon = "Shanda"
            CFrameQ = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
            CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
            if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad [Lv. 525]" or SelectArea == 'Sky Island' then -- Royal Squad
            Ms = "Royal Squad [Lv. 525]"
            NameQuest = "SkyExp2Quest"
            QuestLv = 1
            NameMon = "Royal Squad"
            CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
        elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier [Lv. 550]" or SelectArea == 'Sky Island' then -- Royal Soldier
            Ms = "Royal Soldier [Lv. 550]"
            NameQuest = "SkyExp2Quest"
            QuestLv = 2
            NameMon = "Royal Soldier"
            CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
        elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate [Lv. 625]" or SelectArea == 'Fountain' then -- Galley Pirate
            Ms = "Galley Pirate [Lv. 625]"
            NameQuest = "FountainQuest"
            QuestLv = 1
            NameMon = "Galley Pirate"
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
        elseif Lv >= 650 or SelectMonster == "Galley Captain [Lv. 650]" or SelectArea == 'Fountain' then -- Galley Captain
            Ms = "Galley Captain [Lv. 650]"
            NameQuest = "FountainQuest"
            QuestLv = 2
            NameMon = "Galley Captain"
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
        end
    end
    if World2 then
        if Lv == 700 or Lv <= 724 or SelectMonster == "Raider [Lv. 700]" or SelectArea == 'Area 1' then -- Raider
            Ms = "Raider [Lv. 700]"
            NameQuest = "Area1Quest"
            QuestLv = 1
            NameMon = "Raider"
            CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
            CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
        elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary [Lv. 725]" or SelectArea == 'Area 1' then -- Mercenary
            Ms = "Mercenary [Lv. 725]"
            NameQuest = "Area1Quest"
            QuestLv = 2
            NameMon = "Mercenary"
            CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
            CFrameMon = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
        elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate [Lv. 775]" or SelectArea == 'Area 2' then -- Swan Pirate
            Ms = "Swan Pirate [Lv. 775]"
            NameQuest = "Area2Quest"
            QuestLv = 1
            NameMon = "Swan Pirate"
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
            CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
        elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff [Lv. 800]" or SelectArea == 'Area 2' then -- Factory Staff
            Ms = "Factory Staff [Lv. 800]"
            NameQuest = "Area2Quest"
            QuestLv = 2
            NameMon = "Factory Staff"
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
            CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
        elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenant [Lv. 875]" or SelectArea == 'Marine' then -- Marine Lieutenant
            Ms = "Marine Lieutenant [Lv. 875]"
            NameQuest = "MarineQuest3"
            QuestLv = 1
            NameMon = "Marine Lieutenant"
            CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
            CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
        elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain [Lv. 900]" or SelectArea == 'Marine' then -- Marine Captain
            Ms = "Marine Captain [Lv. 900]"
            NameQuest = "MarineQuest3"
            QuestLv = 2
            NameMon = "Marine Captain"
            CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
            CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
        elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie [Lv. 950]" or SelectArea == 'Zombie' then -- Zombie
            Ms = "Zombie [Lv. 950]"
            NameQuest = "ZombieQuest"
            QuestLv = 1
            NameMon = "Zombie"
            CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
            CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
        elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire [Lv. 975]" or SelectArea == 'Zombie' then -- Vampire
            Ms = "Vampire [Lv. 975]"
            NameQuest = "ZombieQuest"
            QuestLv = 2
            NameMon = "Vampire"
            CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
            CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
        elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "Snow Trooper [Lv. 1000]" or SelectArea == 'Snow Mountain' then -- Snow Trooper
            Ms = "Snow Trooper [Lv. 1000]"
            NameQuest = "SnowMountainQuest"
            QuestLv = 1
            NameMon = "Snow Trooper"
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
            CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
        elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior [Lv. 1050]" or SelectArea == 'Snow Mountain' then -- Winter Warrior
            Ms = "Winter Warrior [Lv. 1050]"
            NameQuest = "SnowMountainQuest"
            QuestLv = 2
            NameMon = "Winter Warrior"
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
            CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
        elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate [Lv. 1100]" or SelectArea == 'Ice Fire' then -- Lab Subordinate
            Ms = "Lab Subordinate [Lv. 1100]"
            NameQuest = "IceSideQuest"
            QuestLv = 1
            NameMon = "Lab Subordinate"
            CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
            CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
        elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior [Lv. 1125]" or SelectArea == 'Ice Fire' then -- Horned Warrior
            Ms = "Horned Warrior [Lv. 1125]"
            NameQuest = "IceSideQuest"
            QuestLv = 2
            NameMon = "Horned Warrior"
            CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
            CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
        elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja [Lv. 1175]" or SelectArea == 'Ice Fire' then -- Magma Ninja
            Ms = "Magma Ninja [Lv. 1175]"
            NameQuest = "FireSideQuest"
            QuestLv = 1
            NameMon = "Magma Ninja"
            CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
        elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate [Lv. 1200]" or SelectArea == 'Ice Fire' then -- Lava Pirate
            Ms = "Lava Pirate [Lv. 1200]"
            NameQuest = "FireSideQuest"
            QuestLv = 2
            NameMon = "Lava Pirate"
            CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
        elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand [Lv. 1250]" or SelectArea == 'Ship' then -- Ship Deckhand
            Ms = "Ship Deckhand [Lv. 1250]"
            NameQuest = "ShipQuest1"
            QuestLv = 1
            NameMon = "Ship Deckhand"
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
            CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
            if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer [Lv. 1275]" or SelectArea == 'Ship' then -- Ship Engineer
            Ms = "Ship Engineer [Lv. 1275]"
            NameQuest = "ShipQuest1"
            QuestLv = 2
            NameMon = "Ship Engineer"
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
            CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
            if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward [Lv. 1300]" or SelectArea == 'Ship' then -- Ship Steward
            Ms = "Ship Steward [Lv. 1300]"
            NameQuest = "ShipQuest2"
            QuestLv = 1
            NameMon = "Ship Steward"
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
            CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
            if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer [Lv. 1325]" or SelectArea == 'Ship' then -- Ship Officer
            Ms = "Ship Officer [Lv. 1325]"
            NameQuest = "ShipQuest2"
            QuestLv = 2
            NameMon = "Ship Officer"
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
            CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
            if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior [Lv. 1350]" or SelectArea == 'Frost' then -- Arctic Warrior
            Ms = "Arctic Warrior [Lv. 1350]"
            NameQuest = "FrostQuest"
            QuestLv = 1
            NameMon = "Arctic Warrior"
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
            CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)
            if Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
            end
        elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "Snow Lurker [Lv. 1375]" or SelectArea == 'Frost' then -- Snow Lurker
            Ms = "Snow Lurker [Lv. 1375]"
            NameQuest = "FrostQuest"
            QuestLv = 2
            NameMon = "Snow Lurker"
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
            CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
        elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier [Lv. 1425]" or SelectArea == 'Forgotten' then -- Sea Soldier
            Ms = "Sea Soldier [Lv. 1425]"
            NameQuest = "ForgottenQuest"
            QuestLv = 1
            NameMon = "Sea Soldier"
            CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
            CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
        elseif Lv >= 1450 or SelectMonster == "Water Fighter [Lv. 1450]" or SelectArea == 'Forgotten' then -- Water Fighter
            Ms = "Water Fighter [Lv. 1450]"
            NameQuest = "ForgottenQuest"
            QuestLv = 2
            NameMon = "Water Fighter"
            CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
            CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
        end
    end
    if World3 then
        if Lv == 1500 or Lv <= 1524 or SelectMonster == "Pirate Millionaire [Lv. 1500]" or SelectArea == 'Pirate Port' then -- Pirate Millionaire
            Ms = "Pirate Millionaire [Lv. 1500]"
            NameQuest = "PiratePortQuest"
            QuestLv = 1
            NameMon = "Pirate Millionaire"
            CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
            CFrameMon = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
        elseif Lv == 1525 or Lv <= 1574 or SelectMonster == "Pistol Billionaire [Lv. 1525]" or SelectArea == 'Pirate Port' then -- Pistol Billoonaire
            Ms = "Pistol Billionaire [Lv. 1525]"
            NameQuest = "PiratePortQuest"
            QuestLv = 2
            NameMon = "Pistol Billionaire"
            CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
            CFrameMon = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
        elseif Lv == 1575 or Lv <= 1599 or SelectMonster == "Dragon Crew Warrior [Lv. 1575]" or SelectArea == 'Amazon' then -- Dragon Crew Warrior
            Ms = "Dragon Crew Warrior [Lv. 1575]"
            NameQuest = "AmazonQuest"
            QuestLv = 1
            NameMon = "Dragon Crew Warrior"
            CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
        elseif Lv == 1600 or Lv <= 1624 or SelectMonster == "Dragon Crew Archer [Lv. 1600]" or SelectArea == 'Amazon' then -- Dragon Crew Archer
            Ms = "Dragon Crew Archer [Lv. 1600]"
            NameQuest = "AmazonQuest"
            QuestLv = 2
            NameMon = "Dragon Crew Archer"
            CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
        elseif Lv == 1625 or Lv <= 1649 or SelectMonster == "Female Islander [Lv. 1625]" or SelectArea == 'Amazon' then -- Female Islander
            Ms = "Female Islander [Lv. 1625]"
            NameQuest = "AmazonQuest2"
            QuestLv = 1
            NameMon = "Female Islander"
            CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
        elseif Lv == 1650 or Lv <= 1699 or SelectMonster == "Giant Islander [Lv. 1650]" or SelectArea == 'Amazon' then -- Giant Islander
            Ms = "Giant Islander [Lv. 1650]"
            NameQuest = "AmazonQuest2"
            QuestLv = 2
            NameMon = "Giant Islander"
            CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
        elseif Lv == 1700 or Lv <= 1724 or SelectMonster == "Marine Commodore [Lv. 1700]" or SelectArea == 'Marine Tree' then -- Marine Commodore
            Ms = "Marine Commodore [Lv. 1700]"
            NameQuest = "MarineTreeIsland"
            QuestLv = 1
            NameMon = "Marine Commodore"
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
        elseif Lv == 1725 or Lv <= 1774 or SelectMonster == "Marine Rear Admiral [Lv. 1725]" or SelectArea == 'Marine Tree' then -- Marine Rear Admiral
            Ms = "Marine Rear Admiral [Lv. 1725]"
            NameQuest = "MarineTreeIsland"
            QuestLv = 2
            NameMon = "Marine Rear Admiral"
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
        elseif Lv == 1775 or Lv <= 1799 or SelectMonster == "Fishman Raider [Lv. 1775]" or SelectArea == 'Deep Forest' then -- Fishman Raide
            Ms = "Fishman Raider [Lv. 1775]"
            NameQuest = "DeepForestIsland3"
            QuestLv = 1
            NameMon = "Fishman Raider"
            CFrameQ = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
            CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
        elseif Lv == 1800 or Lv <= 1824 or SelectMonster == "Fishman Captain [Lv. 1800]" or SelectArea == 'Deep Forest' then -- Fishman Captain
            Ms = "Fishman Captain [Lv. 1800]"
            NameQuest = "DeepForestIsland3"
            QuestLv = 2
            NameMon = "Fishman Captain"
            CFrameQ = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
            CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
        elseif Lv == 1825 or Lv <= 1849 or SelectMonster == "Forest Pirate [Lv. 1825]" or SelectArea == 'Deep Forest' then -- Forest Pirate
            Ms = "Forest Pirate [Lv. 1825]"
            NameQuest = "DeepForestIsland"
            QuestLv = 1
            NameMon = "Forest Pirate"
            CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
            CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
        elseif Lv == 1850 or Lv <= 1899 or SelectMonster == "Mythological Pirate [Lv. 1850]" or SelectArea == 'Deep Forest' then -- Mythological Pirate
            Ms = "Mythological Pirate [Lv. 1850]"
            NameQuest = "DeepForestIsland"
            QuestLv = 2
            NameMon = "Mythological Pirate"
            CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
            CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
        elseif Lv == 1900 or Lv <= 1924 or SelectMonster == "Jungle Pirate [Lv. 1900]" or SelectArea == 'Deep Forest' then -- Jungle Pirate
            Ms = "Jungle Pirate [Lv. 1900]"
            NameQuest = "DeepForestIsland2"
            QuestLv = 1
            NameMon = "Jungle Pirate"
            CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
        elseif Lv == 1925 or Lv <= 1974 or SelectMonster == "Musketeer Pirate [Lv. 1925]" or SelectArea == 'Deep Forest' then -- Musketeer Pirate
            Ms = "Musketeer Pirate [Lv. 1925]"
            NameQuest = "DeepForestIsland2"
            QuestLv = 2
            NameMon = "Musketeer Pirate"
            CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
        elseif Lv == 1975 or Lv <= 1999 or SelectMonster == "Reborn Skeleton [Lv. 1975]" or SelectArea == 'Haunted Castle' then
            Ms = "Reborn Skeleton [Lv. 1975]"
            NameQuest = "HauntedQuest1"
            QuestLv = 1
            NameMon = "Reborn Skeleton"
            CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542,
                2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
            CFrameMon = CFrame.new(-8761.77148, 183.431747, 6168.33301, 0.978073597, -1.3950732e-05, -0.208259016,
                -1.08073925e-06, 1, -7.20630269e-05, 0.208259016, 7.07080399e-05, 0.978073597)
        elseif Lv == 2000 or Lv <= 2024 or SelectMonster == "Living Zombie [Lv. 2000]" or SelectArea == 'Haunted Castle' then
            Ms = "Living Zombie [Lv. 2000]"
            NameQuest = "HauntedQuest1"
            QuestLv = 2
            NameMon = "Living Zombie"
            CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542,
                2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
            CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977, 0.999474227, 2.77547141e-08, 0.0324240364,
                -2.58006327e-08, 1, -6.06848474e-08, -0.0324240364, 5.98163865e-08, 0.999474227)
        elseif Lv == 2025 or Lv <= 2049 or SelectMonster == "Demonic Soul [Lv. 2025]" or SelectArea == 'Haunted Castle' then
            Ms = "Demonic Soul [Lv. 2025]"
            NameQuest = "HauntedQuest2"
            QuestLv = 1
            NameMon = "Demonic Soul"
            CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
        elseif Lv == 2050 or Lv <= 2074 or SelectMonster == "Posessed Mummy [Lv. 2050]" or SelectArea == 'Haunted Castle' then
            Ms = "Posessed Mummy [Lv. 2050]"
            NameQuest = "HauntedQuest2"
            QuestLv = 2
            NameMon = "Posessed Mummy"
            CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
            CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
        elseif Lv == 2075 or Lv <= 2099 or SelectMonster == "Peanut Scout [Lv. 2075]" or SelectArea == 'Nut Island' then
            Ms = "Peanut Scout [Lv. 2075]"
            NameQuest = "NutsIslandQuest"
            QuestLv = 1
            NameMon = "Peanut Scout"
            CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0,
                0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
        elseif Lv == 2100 or Lv <= 2124 or SelectMonster == "Peanut President [Lv. 2100]" or SelectArea == 'Nut Island' then
            Ms = "Peanut President [Lv. 2100]"
            NameQuest = "NutsIslandQuest"
            QuestLv = 2
            NameMon = "Peanut President"
            CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0,
                0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
        elseif Lv == 2125 or Lv <= 2149 or SelectMonster == "Ice Cream Chef [Lv. 2125]" or SelectArea == 'Ice Cream Island' then
            Ms = "Ice Cream Chef [Lv. 2125]"
            NameQuest = "IceCreamIslandQuest"
            QuestLv = 1
            NameMon = "Ice Cream Chef"
            CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0,
                -0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012,
                -0, 0.997525275, 0, -0.0703101456)
        elseif Lv == 2150 or Lv <= 2199 or SelectMonster == "Ice Cream Commander [Lv. 2150]" or SelectArea == 'Ice Cream Island' then
            Ms = "Ice Cream Commander [Lv. 2150]"
            NameQuest = "IceCreamIslandQuest"
            QuestLv = 2
            NameMon = "Ice Cream Commander"
            CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0,
                -0.642767608, 0, -0.766061664)
            CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012,
                -0, 0.997525275, 0, -0.0703101456)
        elseif Lv == 2200 or Lv <= 2224 or SelectMonster == "Cookie Crafter [Lv. 2200]" or SelectArea == 'Cake Island' then
            Ms = "Cookie Crafter [Lv. 2200]"
            NameQuest = "CakeQuest1"
            QuestLv = 1
            NameMon = "Cookie Crafter"
            CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0,
                0.275594592, 0, -0.961273909)
            CFrameMon = CFrame.new(-2321.71216, 36.699482, -12216.7871, -0.780074954, 0, 0.625686109, 0, 1, 0,
                -0.625686109, 0, -0.780074954)
        elseif Lv == 2225 or Lv <= 2249 or SelectMonster == "Cake Guard [Lv. 2225]" or SelectArea == 'Cake Island' then
            Ms = "Cake Guard [Lv. 2225]"
            NameQuest = "CakeQuest1"
            QuestLv = 2
            NameMon = "Cake Guard"
            CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0,
                0.275594592, 0, -0.961273909)
            CFrameMon = CFrame.new(-1418.11011, 36.6718941, -12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0,
                -0.997700036, 0, 0.0677844882)
        elseif Lv == 2250 or Lv <= 2274 or SelectMonster == "Baking Staff [Lv. 2250]" or SelectArea == 'Cake Island' then
            Ms = "Baking Staff [Lv. 2250]"
            NameQuest = "CakeQuest2"
            QuestLv = 1
            NameMon = "Baking Staff"
            CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, -0, -0.308980465, 0, 1, -0,
                0.308980465, 0, 0.951068401)
            CFrameMon = CFrame.new(-1980.43848, 36.6716766, -12983.8418, -0.254443765, 0, -0.967087567, 0, 1, 0,
                0.967087567, 0, -0.254443765)
        elseif Lv == 2275 or Lv <= 2299 or SelectMonster == "Head Baker [Lv. 2275]" or SelectArea == 'Cake Island' then
            Ms = "Head Baker [Lv. 2275]"
            NameQuest = "CakeQuest2"
            QuestLv = 2
            NameMon = "Head Baker"
            CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, -0, -0.308980465, 0, 1, -0,
                0.308980465, 0, 0.951068401)
            CFrameMon = CFrame.new(-2251.5791, 52.2714615, -13033.3965, -0.991971016, 0, -0.126466095, 0, 1, 0,
                0.126466095, 0, -0.991971016)
        elseif Lv == 2300 or Lv <= 2324 or SelectMonster == "Cocoa Warrior [Lv. 2300]" or SelectArea == 'Choco Island' then
            Ms = "Cocoa Warrior [Lv. 2300]"
            NameQuest = "ChocQuest1"
            QuestLv = 1
            NameMon = "Cocoa Warrior"
            CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            CFrameMon = CFrame.new(167.978516, 26.2254658, -12238.874, -0.939700961, 0, 0.341998369, 0, 1, 0,
                -0.341998369, 0, -0.939700961)
        elseif Lv == 2325 or Lv <= 2349 or SelectMonster == "Chocolate Bar Battler [Lv. 2325]" or SelectArea == 'Choco Island' then
            Ms = "Chocolate Bar Battler [Lv. 2325]"
            NameQuest = "ChocQuest1"
            QuestLv = 2
            NameMon = "Chocolate Bar Battler"
            CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            CFrameMon = CFrame.new(701.312073, 25.5824986, -12708.2148, -0.342042685, 0, -0.939684391, 0, 1, 0,
                0.939684391, 0, -0.342042685)
        elseif Lv == 2350 or Lv <= 2374 or SelectMonster == "Sweet Thief [Lv. 2350]" or SelectArea == 'Choco Island' then
            Ms = "Sweet Thief [Lv. 2350]"
            NameQuest = "ChocQuest2"
            QuestLv = 1
            NameMon = "Sweet Thief"
            CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618,
                0, 0.422592998)
            CFrameMon = CFrame.new(-140.258301, 25.5824986, -12652.3115, 0.173624337, -0, -0.984811902, 0, 1, -0,
                0.984811902, 0, 0.173624337)
        elseif Lv == 2375 or Lv <= 2400 or SelectMonster == "Candy Rebel [Lv. 2375]" or SelectArea == 'Choco Island' then
            Ms = "Candy Rebel [Lv. 2375]"
            NameQuest = "ChocQuest2"
            QuestLv = 2
            NameMon = "Candy Rebel"
            CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618,
                0, 0.422592998)
            CFrameMon = CFrame.new(47.9231453, 25.5824986, -13029.2402, -0.819156051, 0, -0.573571265, 0, 1, 0,
                0.573571265, 0, -0.819156051)
        elseif Lv == 2400 or Lv <= 2424 or SelectMonster == "Candy Pirate [Lv. 2400]" or SelectArea == 'Candy Island' then
            Ms = "Candy Pirate [Lv. 2400]"
            NameQuest = "CandyQuest1"
            QuestLv = 1
            NameMon = "Candy Pirate"
            CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574,
                0, -0.156446099)
            CFrameMon = CFrame.new(-1437.56348, 17.1481285, -14385.6934, 0.173624337, -0, -0.984811902, 0, 1, -0,
                0.984811902, 0, 0.173624337)
        elseif Lv >= 2425 or SelectMonster == "Snow Demon [Lv. 2425]" or SelectArea == 'Candy Island' then
            Ms = "Snow Demon [Lv. 2425]"
            NameQuest = "CandyQuest1"
            QuestLv = 2
            NameMon = "Snow Demon"
            CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574,
                0, -0.156446099)
            CFrameMon = CFrame.new(-683.8216552734375, 73.99142456054688, -14395.048828125)
        end
    end
end

--// Select Monster
if World1 then
    tableMon = {
        "Bandit [Lv. 5]", "Monkey [Lv. 14]", "Gorilla [Lv. 20]", "Pirate [Lv. 35]", "Brute [Lv. 45]",
        "Desert Bandit [Lv. 60]", "Desert Officer [Lv. 70]", "Snow Bandit [Lv. 90]", "Snowman [Lv. 100]",
        "Chief Petty Officer [Lv. 120]", "Sky Bandit [Lv. 150]", "Dark Master [Lv. 175]", "Prisoner [Lv. 190]",
        "Dangerous Prisoner [Lv. 210]", "Toga Warrior [Lv. 250]", "Gladiator [Lv. 275]", "Military Soldier [Lv. 300]",
        "Military Spy [Lv. 325]", "Fishman Warrior [Lv. 375]", "Fishman Commando [Lv. 400]", "God's Guard [Lv. 450]",
        "Shanda [Lv. 475]", "Royal Squad [Lv. 525]", "Royal Soldier [Lv. 550]", "Galley Pirate [Lv. 625]",
        "Galley Captain [Lv. 650]"
    }
elseif World2 then
    tableMon = {
        "Raider [Lv. 700]", "Mercenary [Lv. 725]", "Swan Pirate [Lv. 775]", "Factory Staff [Lv. 800]",
        "Marine Lieutenant [Lv. 875]", "Marine Captain [Lv. 900]", "Zombie [Lv. 950]", "Vampire [Lv. 975]",
        "Snow Trooper [Lv. 1000]", "Winter Warrior [Lv. 1050]", "Lab Subordinate [Lv. 1100]",
        "Horned Warrior [Lv. 1125]", "Magma Ninja [Lv. 1175]", "Lava Pirate [Lv. 1200]", "Ship Deckhand [Lv. 1250]",
        "Ship Engineer [Lv. 1275]", "Ship Steward [Lv. 1300]", "Ship Officer [Lv. 1325]", "Arctic Warrior [Lv. 1350]",
        "Snow Lurker [Lv. 1375]", "Sea Soldier [Lv. 1425]", "Water Fighter [Lv. 1450]"
    }
elseif World3 then
    tableMon = {
        "Pirate Millionaire [Lv. 1500]", "Dragon Crew Warrior [Lv. 1575]", "Dragon Crew Archer [Lv. 1600]",
        "Female Islander [Lv. 1625]", "Giant Islander [Lv. 1650]", "Marine Commodore [Lv. 1700]",
        "Marine Rear Admiral [Lv. 1725]", "Fishman Raider [Lv. 1775]", "Fishman Captain [Lv. 1800]",
        "Forest Pirate [Lv. 1825]", "Mythological Pirate [Lv. 1850]", "Jungle Pirate [Lv. 1900]",
        "Musketeer Pirate [Lv. 1925]", "Reborn Skeleton [Lv. 1975]", "Living Zombie [Lv. 2000]",
        "Demonic Soul [Lv. 2025]", "Posessed Mummy [Lv. 2050]", "Peanut Scout [Lv. 2075]", "Peanut President [Lv. 2100]",
        "Ice Cream Chef [Lv. 2125]", "Ice Cream Commander [Lv. 2150]", "Cookie Crafter [Lv. 2200]",
        "Cake Guard [Lv. 2225]", "Baking Staff [Lv. 2250]", "Head Baker [Lv. 2275]", "Cocoa Warrior [Lv. 2300]",
        "Chocolate Bar Battler [Lv. 2325]", "Sweet Thief [Lv. 2350]", "Candy Rebel [Lv. 2375]",
        "Candy Pirate [Lv. 2400]", "Snow Demon [Lv. 2425]"
    }
end

--// Select Area
if World1 then
    AreaList = {
        'Jungle', 'Buggy', 'Desert', 'Snow', 'Marine', 'Sky', 'Prison', 'Colosseum', 'Magma', 'Fishman', 'Sky Island',
        'Fountain'
    }
elseif World2 then
    AreaList = {
        'Area 1', 'Area 2', 'Zombie', 'Marine', 'Snow Mountain', 'Ice fire', 'Ship', 'Frost', 'Forgotten'
    }
elseif World3 then
    AreaList = {
        'Pirate Port', 'Amazon', 'Marine Tree', 'Deep Forest', 'Haunted Castle', 'Nut Island', 'Ice Cream Island',
        'Cake Island', 'Choco Island', 'Candy Island'
    }
end

--// General Boss Quest
function CheckBossQuest()
    if World1 then
        if SelectBoss == "The Gorilla King [Lv. 25] [Boss]" then
            BossMon = "The Gorilla King [Lv. 25] [Boss]"
            NameBoss = 'The Gorrila King'
            NameQuestBoss = "JungleQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$2,000\n7,000 Exp."
            CFrameQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameBoss = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, 0.707079291, 0, 1, 0,
                -0.707079291, 0, -0.707134247)
        elseif SelectBoss == "Bobby [Lv. 55] [Boss]" then
            BossMon = "Bobby [Lv. 55] [Boss]"
            NameBoss = 'Bobby'
            NameQuestBoss = "BuggyQuest1"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$8,000\n35,000 Exp."
            CFrameQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
        elseif SelectBoss == "The Saw [Lv. 100] [Boss]" then
            BossMon = "The Saw [Lv. 100] [Boss]"
            NameBoss = 'The Saw'
            CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
        elseif SelectBoss == "Yeti [Lv. 110] [Boss]" then
            BossMon = "Yeti [Lv. 110] [Boss]"
            NameBoss = 'Yeti'
            NameQuestBoss = "SnowQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$10,000\n180,000 Exp."
            CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
        elseif SelectBoss == "Mob Leader [Lv. 120] [Boss]" then
            BossMon = "Mob Leader [Lv. 120] [Boss]"
            NameBoss = 'Mob Leader'
            CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
        elseif SelectBoss == "Vice Admiral [Lv. 130] [Boss]" then
            BossMon = "Vice Admiral [Lv. 130] [Boss]"
            NameBoss = 'Vice Admiral'
            NameQuestBoss = "MarineQuest2"
            QuestLvBoss = 2
            RewardBoss = "Reward:\n$10,000\n180,000 Exp."
            CFrameQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
            CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
        elseif SelectBoss == "Saber Expert [Lv. 200] [Boss]" then
            NameBoss = 'Saber Expert'
            BossMon = "Saber Expert [Lv. 200] [Boss]"
            CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
        elseif SelectBoss == "Warden [Lv. 220] [Boss]" then
            BossMon = "Warden [Lv. 220] [Boss]"
            NameBoss = 'Warden'
            NameQuestBoss = "ImpelQuest"
            QuestLvBoss = 1
            RewardBoss = "Reward:\n$6,000\n850,000 Exp."
            CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, -4.49946401e-06, 0.975376427,
                -1.95412576e-05, 1, 9.03162072e-06, -0.975376427, -2.10519756e-05, 0.220546961)
            CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0,
                -0.681965172, 0, -0.731384635)
        elseif SelectBoss == "Chief Warden [Lv. 230] [Boss]" then
            BossMon = "Chief Warden [Lv. 230] [Boss]"
            NameBoss = 'Chief Warden'
            NameQuestBoss = "ImpelQuest"
            QuestLvBoss = 2
            RewardBoss = "Reward:\n$10,000\n1,000,000 Exp."
            CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749,
                0.00191645394, 0.999998152, -2.80422337e-05, -0.939682961, 0.00181045406, 0.342041939)
            CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0,
                -0.681965172, 0, -0.731384635)
        elseif SelectBoss == "Swan [Lv. 240] [Boss]" then
            BossMon = "Swan [Lv. 240] [Boss]"
            NameBoss = 'Swan'
            NameQuestBoss = "ImpelQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$15,000\n1,600,000 Exp."
            CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, 0.951042235, 0, 1, 0,
                -0.951042235, 0, -0.309060812)
            CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0,
                -0.681965172, 0, -0.731384635)
        elseif SelectBoss == "Magma Admiral [Lv. 350] [Boss]" then
            BossMon = "Magma Admiral [Lv. 350] [Boss]"
            NameBoss = 'Magma Admiral'
            NameQuestBoss = "MagmaQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$15,000\n2,800,000 Exp."
            CFrameQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
            CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
        elseif SelectBoss == "Fishman Lord [Lv. 425] [Boss]" then
            BossMon = "Fishman Lord [Lv. 425] [Boss]"
            NameBoss = 'Fishman Lord'
            NameQuestBoss = "FishmanQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$15,000\n4,000,000 Exp."
            CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
        elseif SelectBoss == "Wysper [Lv. 500] [Boss]" then
            BossMon = "Wysper [Lv. 500] [Boss]"
            NameBoss = 'Wysper'
            NameQuestBoss = "SkyExp1Quest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$15,000\n4,800,000 Exp."
            CFrameQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
            CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
        elseif SelectBoss == "Thunder God [Lv. 575] [Boss]" then
            BossMon = "Thunder God [Lv. 575] [Boss]"
            NameBoss = 'Thunder God'
            NameQuestBoss = "SkyExp2Quest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$20,000\n5,800,000 Exp."
            CFrameQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
        elseif SelectBoss == "Cyborg [Lv. 675] [Boss]" then
            BossMon = "Cyborg [Lv. 675] [Boss]"
            NameBoss = 'Cyborg'
            NameQuestBoss = "FountainQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$20,000\n7,500,000 Exp."
            CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
        elseif SelectBoss == "Ice Admiral [Lv. 700] [Boss]" then
            BossMon = "Ice Admiral [Lv. 700] [Boss]"
            NameBoss = 'Ice Admiral'
            CFrameBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0,
                0.81913656, 0, -0.573599219)
        elseif SelectBoss == "Greybeard [Lv. 750] [Raid Boss]" then
            BossMon = "Greybeard [Lv. 750] [Raid Boss]"
            NameBoss = 'Greybeard'
            CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
        end
    end
    if World2 then
        if SelectBoss == "Diamond [Lv. 750] [Boss]" then
            BossMon = "Diamond [Lv. 750] [Boss]"
            NameBoss = 'Diamond'
            NameQuestBoss = "Area1Quest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$25,000\n9,000,000 Exp."
            CFrameQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
            CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
        elseif SelectBoss == "Jeremy [Lv. 850] [Boss]" then
            BossMon = "Jeremy [Lv. 850] [Boss]"
            NameBoss = 'Jeremy'
            NameQuestBoss = "Area2Quest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$25,000\n11,500,000 Exp."
            CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
            CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
        elseif SelectBoss == "Fajita [Lv. 925] [Boss]" then
            BossMon = "Fajita [Lv. 925] [Boss]"
            NameBoss = 'Fajita'
            NameQuestBoss = "MarineQuest3"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$25,000\n15,000,000 Exp."
            CFrameQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
            CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
        elseif SelectBoss == "Don Swan [Lv. 1000] [Boss]" then
            BossMon = "Don Swan [Lv. 1000] [Boss]"
            NameBoss = 'Don Swan'
            CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
        elseif SelectBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
            BossMon = "Smoke Admiral [Lv. 1150] [Boss]"
            NameBoss = 'Smoke Admiral'
            NameQuestBoss = "IceSideQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$20,000\n25,000,000 Exp."
            CFrameQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
        elseif SelectBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
            BossMon = "Awakened Ice Admiral [Lv. 1400] [Boss]"
            NameBoss = 'Awakened Ice Admiral'
            NameQuestBoss = "FrostQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$20,000\n36,000,000 Exp."
            CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
            CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
        elseif SelectBoss == "Tide Keeper [Lv. 1475] [Boss]" then
            BossMon = "Tide Keeper [Lv. 1475] [Boss]"
            NameBoss = 'Tide Keeper'
            NameQuestBoss = "ForgottenQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$12,500\n38,000,000 Exp."
            CFrameQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
            CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
        elseif SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
            BossMon = "Darkbeard [Lv. 1000] [Raid Boss]"
            NameBoss = 'Darkbeard'
            CFrameMon = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
        elseif SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
            BossMon = "Cursed Captain [Lv. 1325] [Raid Boss]"
            NameBoss = 'Cursed Captain'
            CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
        elseif SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
            BossMon = "Order [Lv. 1250] [Raid Boss]"
            NameBoss = 'Order'
            CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
        end
    end
    if World3 then
        if SelectBoss == "Stone [Lv. 1550] [Boss]" then
            BossMon = "Stone [Lv. 1550] [Boss]"
            NameBoss = 'Stone'
            NameQuestBoss = "PiratePortQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$25,000\n40,000,000 Exp."
            CFrameQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
            CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
        elseif SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
            BossMon = "Island Empress [Lv. 1675] [Boss]"
            NameBoss = 'Island Empress'
            NameQuestBoss = "AmazonQuest2"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$30,000\n52,000,000 Exp."
            CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
            CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
        elseif SelectBoss == "Kilo Admiral [Lv. 1750] [Boss]" then
            BossMon = "Kilo Admiral [Lv. 1750] [Boss]"
            NameBoss = 'Kilo Admiral'
            NameQuestBoss = "MarineTreeIsland"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$35,000\n56,000,000 Exp."
            CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
            CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
        elseif SelectBoss == "Captain Elephant [Lv. 1875] [Boss]" then
            BossMon = "Captain Elephant [Lv. 1875] [Boss]"
            NameBoss = 'Captain Elephant'
            NameQuestBoss = "DeepForestIsland"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$40,000\n67,000,000 Exp."
            CFrameQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
            CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
        elseif SelectBoss == "Beautiful Pirate [Lv. 1950] [Boss]" then
            BossMon = "Beautiful Pirate [Lv. 1950] [Boss]"
            NameBoss = 'Beautiful Pirate'
            NameQuestBoss = "DeepForestIsland2"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$50,000\n70,000,000 Exp."
            CFrameQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            CFrameBoss = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
        elseif SelectBoss == "Cake Queen [Lv. 2175] [Boss]" then
            BossMon = "Cake Queen [Lv. 2175] [Boss]"
            NameBoss = 'Cake Queen'
            NameQuestBoss = "IceCreamIslandQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$30,000\n112,500,000 Exp."
            CFrameQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0,
                -0.642767608, 0, -0.766061664)
            CFrameBoss = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378,
                0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499)
        elseif SelectBoss == "Longma [Lv. 2000] [Boss]" then
            BossMon = "Longma [Lv. 2000] [Boss]"
            NameBoss = 'Longma'
            CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
        elseif SelectBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
            BossMon = "Soul Reaper [Lv. 2100] [Raid Boss]"
            NameBoss = 'Soul Reaper'
            CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
        elseif SelectBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
            BossMon = "rip_indra True Form [Lv. 5000] [Raid Boss]"
            NameBoss = 'rip_indra True Form'
            CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625)
        end
    end
end

--// General Material
function MaterialMon()
    if SelectMaterial == "Radioactive Material" then
        MMon = "Factory Staff [Lv. 800]"
        MPos = CFrame.new(295, 73, -56)
        SP = "Default"
    elseif SelectMaterial == "Mystic Droplet" then
        MMon = "Water Fighter [Lv. 1450]"
        MPos = CFrame.new(-3385, 239, -10542)
        SP = "Default"
    elseif SelectMaterial == "Magma Ore" then
        if World1 then
            MMon = "Military Spy [Lv. 325]"
            MPos = CFrame.new(-5815, 84, 8820)
            SP = "Default"
        elseif World2 then
            MMon = "Magma Ninja [Lv. 1175]"
            MPos = CFrame.new(-5428, 78, -5959)
            SP = "Default"
        end
    elseif SelectMaterial == "Angel Wings" then
        MMon = "God's Guard [Lv. 450]"
        MPos = CFrame.new(-4698, 845, -1912)
        SP = "Default"
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7859.09814, 5544.19043, -381.476196)).Magnitude >= 5000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                Vector3.new(-7859.09814, 5544.19043, -381.476196))
        end
    elseif SelectMaterial == "Leather" then
        if World1 then
            MMon = "Brute [Lv. 45]"
            MPos = CFrame.new(-1145, 15, 4350)
            SP = "Default"
        elseif World2 then
            MMon = "Marine Captain [Lv. 900]"
            MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
            SP = "Default"
        elseif World3 then
            MMon = "Jungle Pirate [Lv. 1900]"
            MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
            SP = "Default"
        end
    elseif SelectMaterial == "Scrap Metal" then
        if World1 then
            MMon = "Brute [Lv. 45]"
            MPos = CFrame.new(-1145, 15, 4350)
            SP = "Default"
        elseif World2 then
            MMon = "Swan Pirate [Lv. 775]"
            MPos = CFrame.new(878, 122, 1235)
            SP = "Default"
        elseif World3 then
            MMon = "Jungle Pirate [Lv. 1900]"
            MPos = CFrame.new(-12107, 332, -10549)
            SP = "Default"
        end
    elseif SelectMaterial == "Fish Tail" then
        if World3 then
            MMon = "Fishman Raider [Lv. 1775]"
            MPos = CFrame.new(-10993, 332, -8940)
            SP = "Default"
        elseif World1 then
            MMon = "Fishman Warrior [Lv. 375]"
            MPos = CFrame.new(61123, 19, 1569)
            SP = "Default"
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
            end
        end
    elseif SelectMaterial == "Demonic Wisp" then
        MMon = "Demonic Soul [Lv. 2025]"
        MPos = CFrame.new(-9507, 172, 6158)
        SP = "Default"
    elseif SelectMaterial == "Vampire Fang" then
        MMon = "Vampire [Lv. 975]"
        MPos = CFrame.new(-6033, 7, -1317)
        SP = "Default"
    elseif SelectMaterial == "Conjured Cocoa" then
        MMon = "Chocolate Bar Battler [Lv. 2325]"
        MPos = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
        SP = "Default"
    elseif SelectMaterial == "Dragon Scale" then
        MMon = "Dragon Crew Archer [Lv. 1600]"
        MPos = CFrame.new(6594, 383, 139)
        SP = "Default"
    elseif SelectMaterial == "Gunpowder" then
        MMon = "Pistol Billionaire [Lv. 1525]"
        MPos = CFrame.new(-469, 74, 5904)
        SP = "Default"
    elseif SelectMaterial == "Mini Tusk" then
        MMon = "Mythological Pirate [Lv. 1850]"
        MPos = CFrame.new(-13545, 470, -6917)
        SP = "Default"
    end
end

--// Select Weapon
function EquipTool(Tool)
    pcall(function()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[Tool])
    end)
end

--// Tween Island
function TP2(P1)
    local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance >= 1 then
        Speed = TweenSpeed
    end
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear), {
            CFrame = P1
        }):Play()
    if _G.StopTween2 then
        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear), {
                CFrame = P1
            }):Cancel()
    end
    _G.Clip2 = true
    wait(Distance / Speed)
    _G.Clip2 = false
end

--// Tween Farm
function Tween(P1)
    local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance >= 1 then
        Speed = TweenSpeed
    end
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear), {
            CFrame = P1
        }):Play()
    if _G.StopTween then
        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear), {
                CFrame = P1
            }):Cancel()
    end
end

--// Stop Tween Farm
function CancelTween(target)
    if not target then
        _G.StopTween = true
        wait()
        Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        _G.StopTween = false
    end
end

function InfAb()
    if InfAbility then
        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0, 0, 0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0, 0)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 500
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0),
                NumberSequenceKeypoint.new(1, 4),
            }
            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(9999, 99999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(0, 0, 0, 0)
            inf.Texture = ""
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0))
            inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        end
    else
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end
end

local LocalPlayer = game:GetService 'Players'.LocalPlayer
local originalstam = LocalPlayer.Character.Energy.Value
function infinitestam()
    LocalPlayer.Character.Energy.Changed:connect(function()
        if InfiniteEnergy then
            LocalPlayer.Character.Energy.Value = originalstam
        end
    end)
end

spawn(function()
    pcall(function()
        while wait(.1) do
            if InfiniteEnergy then
                wait(0.1)
                originalstam = LocalPlayer.Character.Energy.Value
                infinitestam()
            end
        end
    end)
end)

function NoDodgeCool()
    if nododgecool then
        for i, v in next, getgc() do
            if game:GetService("Players").LocalPlayer.Character.Dodge then
                if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge then
                    for i2, v2 in next, getupvalues(v) do
                        if tostring(v2) == "0.1" then
                            repeat
                                wait(.1)
                                setupvalue(v, i2, 0)
                            until not nododgecool
                        end
                    end
                end
            end
        end
    end
end

function fly()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse ''
    localplayer = game:GetService("Players").LocalPlayer
    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    local torso = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    local speedSET = 25
    local keys = { a = false, d = false, w = false, s = false }
    local e1
    local e2
    local function start()
        local pos = Instance.new("BodyPosition", torso)
        local gyro = Instance.new("BodyGyro", torso)
        pos.Name = "EPIXPOS"
        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        pos.position = torso.Position
        gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        gyro.CFrame = torso.CFrame
        repeat
            wait()
            localplayer.Character.Humanoid.PlatformStand = true
            local new = gyro.CFrame - gyro.CFrame.p + pos.position
            if not keys.w and not keys.s and not keys.a and not keys.d then
                speed = 1
            end
            if keys.w then
                new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed = speed + speedSET
            end
            if keys.s then
                new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed = speed + speedSET
            end
            if keys.d then
                new = new * CFrame.new(speed, 0, 0)
                speed = speed + speedSET
            end
            if keys.a then
                new = new * CFrame.new(-speed, 0, 0)
                speed = speed + speedSET
            end
            if speed > speedSET then
                speed = speedSET
            end
            pos.position = new.p
            if keys.w then
                gyro.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad(speed * 15), 0, 0)
            elseif keys.s then
                gyro.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(math.rad(speed * 15), 0, 0)
            else
                gyro.CFrame = workspace.CurrentCamera.CoordinateFrame
            end
        until not Fly
        if gyro then
            gyro:Destroy()
        end
        if pos then
            pos:Destroy()
        end
        flying = false
        localplayer.Character.Humanoid.PlatformStand = false
        speed = 0
    end
    e1 = mouse.KeyDown:connect(function(key)
        if not torso or not torso.Parent then
            flying = false
            e1:disconnect()
            e2:disconnect()
            return
        end
        if key == "w" then
            keys.w = true
        elseif key == "s" then
            keys.s = true
        elseif key == "a" then
            keys.a = true
        elseif key == "d" then
            keys.d = true
        end
    end)
    e2 = mouse.KeyUp:connect(function(key)
        if key == "w" then
            keys.w = false
        elseif key == "s" then
            keys.s = false
        elseif key == "a" then
            keys.a = false
        elseif key == "d" then
            keys.d = false
        end
    end)
    start()
end

function Click()
    game:GetService 'VirtualUser':CaptureController()
    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        wait(.5)
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        wait(.1)
        _G.NotAutoEquip = false
    end
end

function EquipWeapon(ToolSe)
    if not _G.NotAutoEquip then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end

function GetDistance(target)
    return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end

function BTP(P)
    repeat
        wait(1)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    until (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500
end

function TelePPlayer(P)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end

function TP(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 10000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 400
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
        { CFrame = Pos }
    ):Play()
end

function TP1(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 5000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 300
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
        { CFrame = Pos }
    ):Play()
end

function topos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 5000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 300
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
        { CFrame = Pos }
    ):Play()
end

function BTP(P1)
    game.Players.LocalPlayer.Character.Head:Destroy()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end

getgenv().ToTargets = function(p)
    task.spawn(function()
        pcall(function()
            if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 250 then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
            elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root") then
                local K = Instance.new("Part", game.Players.LocalPlayer.Character)
                K.Size = Vector3.new(1, 0.5, 1)
                K.Name = "Root"
                K.Anchored = true
                K.Transparency = 1
                K.CanCollide = false
                K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
            end
            local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude
            local z = game:service("TweenService")
            local B = TweenInfo.new((p.Position - game.Players.LocalPlayer.Character.Root.Position).Magnitude / 300,
                Enum.EasingStyle.Linear)
            local S, g = pcall(function()
                local q = z:Create(game.Players.LocalPlayer.Character.Root, B, { CFrame = p })
                q:Play()
            end)
            if not S then
                return g
            end
            game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then
                pcall(function()
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude >= 20 then
                        spawn(function()
                            pcall(function()
                                if (game.Players.LocalPlayer.Character.Root.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then
                                    game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character
                                        .HumanoidRootPart.CFrame
                                else
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players
                                        .LocalPlayer.Character.Root.CFrame
                                end
                            end)
                        end)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude >= 10 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude < 20 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude < 10 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    end
                end)
            end
        end)
    end)
end


spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.AutoSeaBest or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.QuestSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.RaidPirate or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or KillPlayer or KillPlayerSpam or _G.SeaBeasts1 then
            if not game:GetService("Workspace"):FindFirstChild("LOL") then
                local LOL = Instance.new("Part")
                LOL.Name = "LOL"
                LOL.Parent = game.Workspace
                LOL.Anchored = true
                LOL.Transparency = 1
                LOL.Size = Vector3.new(30, -0.5, 30)
            elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame *
                    CFrame.new(0, -3.6, 0)
            end
        else
            if game:GetService("Workspace"):FindFirstChild("LOL") then
                game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.QuestSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.RaidPirate or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest == true or KillPlayer == true or KillPlayerSpam == true or _G.SeaBeasts1 == true then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                    Noclip.Velocity = Vector3.new(0, 0, 0)
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.QuestSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.AutoKai or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.RaidPirate or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest == true or KillPlayer == true or KillPlayerSpam == true or _G.SeaBeasts1 == true then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)

spawn(function()
    while wait() do
        if _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.d or _G.Autowaden or _G.Autogay or _G.AutoObservationHakiV2 or _G.AutoFarmMaterial or _G.AutoFarmNearest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoRaidPirate or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory == true or KillPlayer == true or KillPlayerSpam == true or _G.SeaBeasts1 == true then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true)
            end)
        end
    end
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.AutoClick or Fastattack then
            pcall(function()
                game:GetService 'VirtualUser':CaptureController()
                game:GetService 'VirtualUser':Button1Down(Vector2.new(0, 1, 0, 1))
            end)
        end
    end)
end)

function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end
end

spawn(function()
    pcall(function()
        while wait() do
            for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

--// Bypass Teleport
function BTP(P)
    repeat
        wait(1)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    until (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500
end

--// Aimbot Skill Mastery
spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg, false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {
            ...
        }
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.UseSkill then
                        if type(args[2]) == "vector" then
                            args[2] = PositionSkillMasteryDevilFruit
                        else
                            args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
                        end
                        return old(unpack(args))
                    end
                end
            end
        end
        --return args
        return old(...)
    end)
end)

getgenv().ToTargets = function(p)
    task.spawn(function()
        pcall(function()
            if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 250 then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
            elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root") then
                local K = Instance.new("Part", game.Players.LocalPlayer.Character)
                K.Size = Vector3.new(1, 0.5, 1)
                K.Name = "Root"
                K.Anchored = true
                K.Transparency = 1
                K.CanCollide = false
                K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
            end
            local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude
            local z = game:service("TweenService")
            local B = TweenInfo.new((p.Position - game.Players.LocalPlayer.Character.Root.Position).Magnitude / 300,
                Enum.EasingStyle.Linear)
            local S, g = pcall(function()
                local q = z:Create(game.Players.LocalPlayer.Character.Root, B, { CFrame = p })
                q:Play()
            end)
            if not S then
                return g
            end
            game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then
                pcall(function()
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude >= 20 then
                        spawn(function()
                            pcall(function()
                                if (game.Players.LocalPlayer.Character.Root.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then
                                    game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character
                                        .HumanoidRootPart.CFrame
                                else
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players
                                        .LocalPlayer.Character.Root.CFrame
                                end
                            end)
                        end)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude >= 10 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude < 20 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude < 10 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    end
                end)
            end
        end)
    end)
end



--// Aimbot Skill Player
local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg, false)
gg.__namecall = newcclosure(function(...)
    local method = getnamecallmethod()
    local args = {
        ...
    }
    if tostring(method) == "FireServer" then
        if tostring(args[1]) == "RemoteEvent" then
            if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                if AimbotSkill then
                    args[2] = _G.AimBotSkillPosition
                    return old(unpack(args))
                end
            end
        end
    end
    return old(...)
end)

--// Equip Gun Mastery
spawn(function()
    pcall(function()
        while task.wait() do
            for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then
                        CurrentEquipGun = v.Name
                    end
                end
            end
        end
    end)
end)

--// Infinite Energy
function InfinityEnergy()
    game:GetService('Players').LocalPlayer.Character.Energy.Changed:connect(function()
        if InfiniteAbility then
            game:GetService('Players').LocalPlayer.Character.Energy.Value = game:GetService('Players').LocalPlayer
                .Character.Energy.MaxValue
        end
    end)
end

--// Dodge No CD
function NoCooldown()
    if DodgewithoutCool then
        for i, v in next, getgc() do
            if typeof(v) == "function" then
                if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Dodge") then
                    for i2, v2 in next, getupvalues(v) do
                        if tostring(v2) == "0.4" then
                            repeat
                                wait(.1)
                                setupvalue(v, i2, 0)
                            until not DodgewithoutCool
                        end
                    end
                end
            end
        end
    end
end

--// Farming Float Island Tween
spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if AutoFarmHeart or AutoFarmNearestMob or _G.BossRaid or _G.GrabChest or AutoCitizen or AutoEcto or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or _G.Auto_Farm_Level or _G.Clip2 or _G.Auto_Farm_Level or AutoFarmBone or AutoFarmSelectMonsterQuest or AutoFarmSelectMonsterNoQuest or AutoFarmBossNoQuest or AutoFarmBossQuest or _G.d or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or _G.Mirage or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or AutoCakePrince or AutoEliteHunter or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or AutoKenV2 or KillPlayerMelee or KillPlayerGun or KillPlayerFruit or AutoDungeon or AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or AutoFarmMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or AutoBartilo or AutoEvoRace or AutoEcto then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                setfflag("HumanoidParallelRemoveNoPhysics", "false")
                setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "false")
                game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
            end
        else
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(18)
        end
    end)
end)

--// Player Body Velocity
spawn(function()
    pcall(function()
        while wait() do
            if AutoFarmHeart or AutoFarmNearestMob or _G.BossRaid or _G.GrabChest or AutoCitizen or AutoEcto or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or _G.d or _G.Auto_Farm_Level or _G.Clip2 or _G.Auto_Farm_Level or AutoFarmBone or AutoFarmSelectMonsterQuest or AutoFarmSelectMonsterNoQuest or AutoFarmBossNoQuest or AutoFarmBossQuest or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or AutoCakePrince or AutoEliteHunter or AutoRainbowHaki or AutoSaber or AutoFarmKen or _G.Mirage or AutoKenHop or AutoKenV2 or KillPlayerMelee or KillPlayerGun or KillPlayerFruit or AutoDungeon or AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or AutoFarmMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or AutoBartilo or AutoEvoRace or AutoEcto or _G.Next_Islands or _G.Auto_Raid or _G.Raid or _G.Auto_Dungeon then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                    Noclip.Velocity = Vector3.new(0, 0, 0)
                end
            else
                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                end
            end
        end
    end)
end)

--// Farming Clip Tween
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if AutoFarmHeart or AutoFarmNearestMob or _G.BossRaid or _G.GrabChest or AutoCitizen or AutoEcto or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or _G.Auto_Farm_Level or _G.Clip2 or _G.Auto_Farm_Level or AutoFarmBone or AutoFarmSelectMonsterQuest or _G.Mirage or AutoFarmSelectMonsterNoQuest or AutoFarmBossNoQuest or AutoFarmBossQuest or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or AutoCakePrince or AutoEliteHunter or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or AutoKenV2 or _G.d or KillPlayerMelee or KillPlayerGun or KillPlayerFruit or AutoDungeon or AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or AutoFarmMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or AutoBartilo or AutoEvoRace or AutoEcto or _G.Next_Islands or _G.Auto_Raid or _G.Raid or _G.Auto_Dungeon then
                for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)

--// Delete Effect Audio, Death, Respawn
spawn(function()
    while task.wait() do
        for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
            pcall(function()
                if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") or v.Name == ("Sounds") then
                    v:Destroy()
                end
            end)
        end
        for i, v in pairs(game:GetService("ReplicatedStorage").Effect.Container.Death:GetChildren()) do
            pcall(function()
                v:Destroy()
            end)
        end
        for i, v in pairs(game:GetService("ReplicatedStorage").Effect.Container.Respawn:GetChildren()) do
            pcall(function()
                v:Destroy()
            end)
        end
    end
end)

--// Stun Player
task.spawn(function()
    if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
        game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
                    game.Players.LocalPlayer.Character.Stun.Value = 0
                end
            end)
        end)
    end
end)

--// Material General Function
function CheckMaterial(matname)
    for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
        if type(v) == "table" then
            if v.Type == "Material" then
                if v.Name == matname then
                    return v.Count
                end
            end
        end
    end
    return 0
end

--// Auto Click
function ClickCamera()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
end

function Click()
    game:GetService('VirtualUser'):CaptureController()
    game:GetService('VirtualUser'):Button1Down(Vector2.new(851, 158))
end

--// Get Weapon Sword
function GetWeaponInventory(Weaponname)
    for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
        if type(v) == "table" then
            if v.Type == "Sword" then
                if v.Name == Weaponname then
                    return true
                end
            end
        end
    end
    return false
end

function TP(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 10000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 400
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
        { CFrame = Pos }
    ):Play()
end

function TP1(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 5000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 300
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
        { CFrame = Pos }
    ):Play()
end

function topos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 5000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 300
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
        { CFrame = Pos }
    ):Play()
end

function BTP(P1)
    game.Players.LocalPlayer.Character.Head:Destroy()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end

getgenv().ToTargets = function(p)
    task.spawn(function()
        pcall(function()
            if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 250 then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
            elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root") then
                local K = Instance.new("Part", game.Players.LocalPlayer.Character)
                K.Size = Vector3.new(1, 0.5, 1)
                K.Name = "Root"
                K.Anchored = true
                K.Transparency = 1
                K.CanCollide = false
                K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
            end
            local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude
            local z = game:service("TweenService")
            local B = TweenInfo.new((p.Position - game.Players.LocalPlayer.Character.Root.Position).Magnitude / 300,
                Enum.EasingStyle.Linear)
            local S, g = pcall(function()
                local q = z:Create(game.Players.LocalPlayer.Character.Root, B, { CFrame = p })
                q:Play()
            end)
            if not S then
                return g
            end
            game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then
                pcall(function()
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude >= 20 then
                        spawn(function()
                            pcall(function()
                                if (game.Players.LocalPlayer.Character.Root.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then
                                    game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character
                                        .HumanoidRootPart.CFrame
                                else
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players
                                        .LocalPlayer.Character.Root.CFrame
                                end
                            end)
                        end)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude >= 10 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude < 20 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - p.Position).Magnitude < 10 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    end
                end)
            end
        end)
    end)
end

function BTP(P)
    repeat
        wait(1)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    until (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500
end

function TelePPlayer(P)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end

function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end
end

spawn(function()
    pcall(function()
        while wait() do
            for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)
Main:AddLabel("Trang chủ cày")
Main:AddToggle({
    Name = "Bắt đầu cày chế độ đã chọn",
    Default = _G.Auto_Farm_Level,
    Callback = function(value)
        _G.Auto_Farm_Level = value
    end
})
spawn(function()
    while wait() do
        if _G.Auto_Farm_Level then
            if _G.Select_Mode_Farm == "Cày cấp độ" then
                pcall(function()
                    CheckLevel()
                    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude > 2000 then
                                BTP(CFrameQ)
                                wait(3)
                            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude < 2000 then
                                Tween(CFrameQ)
                            end
                        else
                            Tween(CFrameQ)
                        end
                        if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest,
                                QuestLv)
                        end
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == Ms then
                                    repeat
                                        game:GetService("RunService").Heartbeat:wait()
                                        EquipTool(_G.SelectWeapon)
                                        Fastattack = true
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                        if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                    until not _G.Auto_Farm_Level or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    Fastattack = false
                                end
                            end
                        end
                        Tween(CFrameMon)
                        for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
                            if string.find(v.Name, NameMon) then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
                                    Tween(v.CFrame * Farm_Mode)
                                    Tween(CFrameMon)
                                end
                            end
                        end
                    end
                end)
            elseif _G.Select_Mode_Farm == "Không nhiệm vụ" then
                pcall(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude > 2000 then
                            BTP(CFrameMon)
                            wait(3)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude < 2000 then
                            Tween(CFrameMon)
                        end
                    else
                        Tween(CFrameMon)
                    end
                    CheckLevel()
                    if game.Workspace.Enemies:FindFirstChild(Ms) then
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == Ms then
                                    repeat
                                        game:GetService("RunService").Heartbeat:wait()
                                        EquipTool(_G.SelectWeapon)
                                        Fastattack = true
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                        if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                    until not _G.Auto_Farm_Level or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                                end
                            end
                            Fastattack = false
                        end
                    else
                        for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
                            if string.find(v.Name, NameMon) then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
                                    Tween(v.CFrame * Farm_Mode)
                                end
                            end
                        end
                    end
                end)
            elseif _G.Select_Mode_Farm == "Cày quái ở gần" then
                pcall(function()
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 1000 then
                                    repeat
                                        task.wait(0.0001)
                                        EquipTool(_G.SelectWeapon)
                                        Fastattack = true
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ))
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                    until not _G.Auto_Farm_Level or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
                                end
                                Fastattack = false
                            end
                        end
                    end
                end)
            end
        end
    end
end)

Main:AddLabel("Tự đông lên Sea")
Main:AddToggle({
    Name = "Tự động lên Sea 2",
    Default = false,
    Callback = function(scfunc)
        AutoSecondSea = scfunc
    end
})
spawn(function()
    while task.wait() do
        if AutoSecondSea then
            pcall(function()
                if game.Players.LocalPlayer.Data.Level.Value >= 700 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").UsedKey == false then
                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Key") or game.Players.LocalPlayer.Character:FindFirstChild("Key") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress",
                                "Detective")
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") or game.Players.LocalPlayer.Character:FindFirstChild("Key") then
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack
                                ["Key"])
                            if BypassTP then
                                BTP(CFrame.new(1349.697265625, 37.34928512573242, -1328.8309326171875))
                                game:GetService("Workspace").Map.Ice.Door.Size = Vector3.new(30, 30, 30)
                            else
                                Tween(CFrame.new(1349.697265625, 37.34928512573242, -1328.8309326171875))
                                game:GetService("Workspace").Map.Ice.Door.Size = Vector3.new(30, 30, 30)
                            end
                        end
                    end
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").UsedKey == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").KilledIceBoss == false then
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                                    repeat
                                        task.wait()
                                        EquipTool(_G.SelectWeapon)
                                        Fastattack = true
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                    until not AutoSecondSea or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    end
                    Fastattack = false
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress").KilledIceBoss == true then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                    end
                end
            end)
        end
    end
end)
Main:AddToggle({
    Name = "Tự động lên Sea 3",
    Default = false,
    Callback = function(thirdfunc)
        AutoThirdSea = thirdfunc
    end
})
spawn(function()
    while task.wait() do
        if AutoThirdSea then
            pcall(function()
                if game.Players.LocalPlayer.Data.Level.Value >= 1500 then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                            if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "General") == 0 then
                                if game.Workspace.Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
                                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            if v.Name == "rip_indra [Lv. 1500] [Boss]" then
                                                repeat
                                                    task.wait()
                                                    EquipTool(_G.SelectWeapon)
                                                    Fastattack = true
                                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid:ChangeState(11)
                                                    v.Humanoid:ChangeState(14)
                                                    FarmPos = v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name
                                                    Click()
                                                until not AutoThirdSea or not v.Parent or v.Humanoid.Health <= 0
                                                Fastattack = false
                                                wait(.5)
                                                General = 2
                                                repeat
                                                    task.wait()
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "TravelZou")
                                                until General == 1
                                            end
                                        end
                                    end
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress",
                                        "General")
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress",
                                        "Begin")
                                end
                            elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "General") == 1 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                            else
                                if game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            if v.Name == "Don Swan [Lv. 1000] [Boss]" then
                                                repeat
                                                    task.wait()
                                                    EquipTool(_G.SelectWeapon)
                                                    Fastattack = true
                                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid:ChangeState(11)
                                                    v.Humanoid:ChangeState(14)
                                                    FarmPos = v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name
                                                    Click()
                                                until not AutoThirdSea or not v.Parent or v.Humanoid.Health <= 0
                                                Fastattack = false
                                            end
                                        end
                                    end
                                else
                                    if BypassTP then
                                        BTP(CFrame.new(2288.802, 15.1870775, 863.034607))
                                    else
                                        Tween(CFrame.new(2288.802, 15.1870775, 863.034607))
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
                                TabelDevilFruitStore = {}
                                TabelDevilFruitOpen = {}

                                for i, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
                                    for i1, v1 in pairs(v) do
                                        if i1 == "Name" then
                                            table.insert(TabelDevilFruitStore, v1)
                                        end
                                    end
                                end
                                for i, v in next, game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
                                    if v.Price >= 1000000 then
                                        table.insert(TabelDevilFruitOpen, v.Name)
                                    end
                                end
                                for i, DevilFruitOpenDoor in pairs(TabelDevilFruitOpen) do
                                    for i1, DevilFruitStore in pairs(TabelDevilFruitStore) do
                                        if DevilFruitOpenDoor == DevilFruitStore and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
                                            if not game.Players.LocalPlayer.Backpack:FindFirstChild(DevilFruitStore) then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "LoadFruit", DevilFruitStore)
                                            else
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "TalkTrevor", "1")
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "TalkTrevor", "2")
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "TalkTrevor", "3")
                                            end
                                        end
                                    end
                                end
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor", "1")
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor", "2")
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor", "3")
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
                            if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            if v.Name == "Swan Pirate [Lv. 775]" then
                                                pcall(function()
                                                    repeat
                                                        task.wait()
                                                        EquipTool(_G.SelectWeapon)
                                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                        v.HumanoidRootPart.Transparency = 1
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid:ChangeState(11)
                                                        v.Humanoid:ChangeState(14)
                                                        FarmPos = v.HumanoidRootPart.CFrame
                                                        MonFarm = v.Name
                                                        Click()
                                                    until not v.Parent or v.Humanoid.Health <= 0 or AutoThirdSea == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                end)
                                            end
                                        end
                                    end
                                else
                                    if BypassTP then
                                        BTP(CFrame.new(1057.92761, 137.614319, 1242.08069))
                                    else
                                        Tween(CFrame.new(1057.92761, 137.614319, 1242.08069))
                                    end
                                end
                            else
                                if BypassTP then
                                    BTP(CFrame.new(-456.28952, 73.0200958, 299.895966))
                                else
                                    Tween(CFrame.new(-456.28952, 73.0200958, 299.895966))
                                end
                            end
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
                            if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        if v.Name == "Jeremy [Lv. 850] [Boss]" then
                                            repeat
                                                task.wait()
                                                EquipTool(_G.SelectWeapon)
                                                Fastattack = true
                                                Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid:ChangeState(11)
                                                v.Humanoid:ChangeState(14)
                                                FarmPos = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                Click()
                                            until not v.Parent or v.Humanoid.Health <= 0 or AutoThirdSea == false
                                            Fastattack = false
                                        end
                                    end
                                end
                            else
                                if BypassTP then
                                    BTP(CFrame.new(2099.88159, 448.931, 648.997375))
                                else
                                    Tween(CFrame.new(2099.88159, 448.931, 648.997375))
                                end
                            end
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
                            CFrameThird = CFrame.new(-1836.1412353515625, 10.458294868469238, 1692.491943359375)

                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameThird.Position).Magnitude > 1500 then
                                if BypassTP then
                                    BTP(CFrameThird)
                                else
                                    Tween(CFrameThird)
                                end
                            else
                                wait(.5)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329,
                                    13.1789551, 1750.89685)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305,
                                    19.3777466, 1712.01807)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324,
                                    16.5789185, 1750.89685)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835,
                                    16.8604317, 1724.79541)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224,
                                    15.987854, 1681.00659)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979,
                                    16.4978027, 1684.52368)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343,
                                    14.795166, 1717.90625)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843,
                                    14.8604736, 1724.79541)
                            end
                        end
                    end
                end
            end)
        end
    end
end)
Main:AddLabel("Ectoplasm")
Main:AddToggle({
    Name = "Tự động cày Ectoplasm",
    Default = false,
    Callback = function(aef)
        AutoEcto = aef
    end
})
spawn(function()
    while wait(.1) do
        pcall(function()
            if AutoEcto then
                if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Ship Steward [Lv. 1300]" or v.Name == "Ship Engineer [Lv. 1275]" or v.Name == "Ship Deckhand [Lv. 1250]" or v.Name == "Ship Officer [Lv. 1325]" and v:FindFirstChild("Humanoid") then
                            if v.Humanoid.Health > 0 then
                                repeat
                                    game:GetService("RunService").Heartbeat:wait()
                                    EquipTool(_G.SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    Fastattack = true
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                        workspace.CurrentCamera.CFrame)
                                until AutoEcto == false or not v.Parent or v.Humanoid.Health == 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                                Fastattack = false
                            end
                        end
                    end
                else
                    local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
                        .Magnitude
                    if Distance > 20000 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                            Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                    end
                    Tween(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
                end
            end
        end)
    end
end)
Main:AddLabel("Rương")
Main:AddToggle({
    Name = "Tự động cày rương [Dịch chuyển]",
    Default = false,
    Callback = function(t)
        _G.d = t
        local function HttpGet(url)
            return game:GetService("HttpService"):JSONDecode(htgetf(url))
        end
        game:GetService('RunService').Stepped:connect(function()
            if _G.d then
                zeroGrav(game.Players.LocalPlayer.Character.HumanoidRootPart)
            end
        end)

        function FindNearest(chests)
            local lowest = math.huge -- infinity
            local chest = nil
            for i, v in pairs(chests) do
                if v then
                    local distance = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
                        .magnitude
                    if distance < lowest then
                        lowest = distance
                        chest = v
                    end
                end
            end
            return chest
        end

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes")
        local TeleportService = game:GetService("TeleportService")
        while _G.d and wait() do
            local chests = {}
            for i, d in pairs(game:GetService("Workspace"):GetChildren()) do
                if string.find(d.Name, "Chest") ~= nil then
                    table.insert(chests, d)
                end
            end
            if #chests == 0 then
                pcall(function()
                    local d = HttpGet("https:/www.roblox.com/games/getgameinstancesjson?placeId=" ..
                        game.PlaceId .. "&startindex=0")
                    local f = HttpGet("https:/www.roblox.com/games/getgameinstancesjson?placeId=" ..
                        game.PlaceId .. "&startindex=" .. math.random(0, tonumber(d.TotalCollectionSize)))
                    local c = f.Collection[math.random(1, #f.Collection)]
                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, c.Guid)
                end)
                wait(0.5)
            end
            if game.Players.LocalPlayer.Team == nil then
                game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("SetTeam", "Marines")
            end
            if game.Players.LocalPlayer.Character then
                local close = FindNearest(chests)
                if close == nil then
                    if game.VIPServerOwnerId == 0 then
                        pcall(function()
                            local d = HttpGet("https:/www.roblox.com/games/getgameinstancesjson?placeId=" ..
                                game.PlaceId .. "&startindex=0")
                            local f = HttpGet("https:/www.roblox.com/games/getgameinstancesjson?placeId=" ..
                                game.PlaceId .. "&startindex=" .. math.random(0, tonumber(d.TotalCollectionSize)))
                            local c = f.Collection[math.random(1, #f.Collection)]
                            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, c.Guid)
                        end)
                    end
                    wait(0.5)
                else
                    ChestCFrame = CFrame.new(close.CFrame.X, close.CFrame.Y, close.CFrame.Z)
                    Tween(ChestCFrame, TweenSpeedChest)
                    repeat wait() until d == nil or d.Parent == nil or _G.d == false
                end
            end
        end
    end
})

Main:AddToggle({
    Name = "Tự động cày rương [Nhảy]",
    Default = false,
    Callback = function(Value)
        _G.ChestBypass = Value
    end
})

spawn(function()
    while wait() do
        if _G.ChestBypass then
            pcall(function()
                for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if string.find(v.Name, "Chest") then
                        print(v.Name)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                        wait(.15)
                    end
                end
                game.Players.LocalPlayer.Character.Head:Destroy()
                for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                    if string.find(v.Name, "Chest") and v:IsA("TouchTransmitter") then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
                        wait()
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if _G.ChestBypass then
            local ohString1 = "SetTeam"
            local ohString2 = "Pirates"
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
        end
    end
end)


Main:AddLabel("Xương")
BoneCheck = Main:AddLabel("Số xương của bạn : ")
spawn(function()
    while wait() do
        pcall(function()
            BoneCheck:Set("Số xương của bạn : " ..
                (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check")))
        end)
    end
end)
Main:AddToggle({
    Name = "Tự động cày xương",
    Default = AutoFarmBone,
    Callback = function(bonefarn)
        AutoFarmBone = bonefarn
    end
})
spawn(function()
    while task.wait(.1) do
        local boneframe = CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625)
        if AutoFarmBone then
            pcall(function()
                if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - boneframe.Position).Magnitude > 2000 then
                        BTP(boneframe)
                        wait(3)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - boneframe.Position).Magnitude < 2000 then
                        Tween(boneframe)
                    end
                else
                    Tween(boneframe)
                end

                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
                            repeat
                                game:GetService("RunService").Heartbeat:wait()
                                EquipTool(_G.SelectWeapon)
                                Fastattack = true
                                Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                v.Humanoid:ChangeState(14)
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                Click()
                                if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                            until not AutoFarmBone or not v.Parent or v.Humanoid.Health <= 0
                            Fastattack = false
                        end
                    end
                end
                for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                    if v.Name == "Reborn Skeleton [Lv. 1975]" then
                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                    elseif v.Name == "Living Zombie [Lv. 2000]" then
                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                    elseif v.Name == "Demonic Soul [Lv. 2025]" then
                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                    elseif v.Name == "Posessed Mummy [Lv. 2050]" then
                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                    end
                end
            end)
        end
    end
end)
Main:AddToggle({
    Name = "Tự động random xương",
    Default = _G.Auto_Trade_Bone,
    Callback = function(value)
        _G.Auto_Trade_Bone = value
    end
})
spawn(function()
    while wait(.1) do
        if _G.Auto_Trade_Bone then
            local args = {
                [1] = "Bones",
                [2] = "Buy",
                [3] = 1,
                [4] = 1
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)
Main:AddToggle({
    Name = "Tự động thử vận may",
    Default = TryLuck,
    Callback = function(gravefunc)
        TryLuck = gravefunc
    end
})
Main:AddToggle({
    Name = "Tự động cầu nguyện",
    Default = TryLuck,
    Callback = function(prayfunc)
        Pray = prayfunc
    end
})

spawn(function()
    while wait(.1) do
        if TryLuck then
            TP2(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205,
                -1.78910387e-09, 1, -8.24392288e-09, -0.18326205, -8.43218029e-09, -0.983064115))
            wait()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 1)
        end
    end
end)

spawn(function()
    while wait(.1) do
        if Pray then
            TP2(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205,
                -1.78910387e-09, 1, -8.24392288e-09, -0.18326205, -8.43218029e-09, -0.983064115))
            wait()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
        end
    end
end)
Main:AddLabel("Quái khác")
Main:AddDropdown({
    Name = "Chọn quái",
    Default = "",
    Options = tableMon,
    Callback = function(monsterlistfunc)
        SelectMonster = monsterlistfunc
    end
})
Main:AddToggle({
    Name = "Tự động cày quái đã chọn (Nhiệm vụ) [Thử nghiệm]",
    Default = AutoFarmSelectMonsterQuest,
    Callback = function(smq)
        AutoFarmSelectMonsterQuest = smq
    end
})
spawn(function()
    while task.wait() do
        if AutoFarmSelectMonsterQuest then
            pcall(function()
                CheckLevel(SelectMonster)
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude > 2000 then
                            BTP(CFrameQ)
                            wait(3)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude < 2000 then
                            Tween(CFrameQ)
                        end
                    else
                        Tween(CFrameQ)
                    end
                    if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == SelectMonster then
                                repeat
                                    game:GetService("RunService").Heartbeat:wait()
                                    EquipTool(_G.SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                until not AutoFarmSelectMonsterQuest or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                    end
                    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
                        if string.find(v.Name, NameMon) then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
                                Tween(v.CFrame * Farm_Mode)
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Main:AddToggle({
    Name = "Tự động cày quái đã chọn (Không nhiệm vụ) [Thử nghiệm]",
    Default = AutoFarmSelectMonsterNoQuest,
    Callback = function(smnq)
        AutoFarmSelectMonsterNoQuest = smnq
    end
})
spawn(function()
    while task.wait(.1) do
        if AutoFarmSelectMonsterNoQuest then
            pcall(function()
                if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude > 2000 then
                        BTP(CFrameMon)
                        wait(3)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude < 2000 then
                        Tween(CFrameMon)
                    end
                else
                    Tween(CFrameMon)
                end
                CheckLevel(SelectMonster)
                if game:GetService("Workspace").Enemies:FindFirstChild(SelectMonster) then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == SelectMonster then
                                repeat
                                    game:GetService("RunService").Heartbeat:wait()
                                    EquipTool(_G.SelectWeapon)
                                    Fastattack = true
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                until not AutoFarmSelectMonsterNoQuest or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                                Fastattack = false
                            end
                        end
                    end
                else
                    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
                        if string.find(v.Name, NameMon) then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
                                Tween(v.CFrame * Farm_Mode)
                            end
                        end
                    end
                end
            end)
        end
    end
end)
Main:AddLabel("Nguyên liệu")
--// Material List

if World1 then
    MaterialList = {
        "Scrap Metal", "Leather", "Angel Wings", "Magma Ore", "Fish Tail"
    }
elseif World2 then
    MaterialList = {
        "Scrap Metal", "Leather", "Radioactive Material", "Mystic Droplet", "Magma Ore", "Vampire Fang"
    }
elseif World3 then
    MaterialList = {
        "Scrap Metal", "Leather", "Demonic Wisp", "Conjured Cocoa", "Dragon Scale", "Gunpowder", "Fish Tail", "Mini Tusk"
    }
end
Main:AddDropdown({
    Name = "Chọn nguyên liệu",
    Default = "",
    Options = MaterialList,
    Callback = function(matelist)
        SelectMaterial = matelist
    end
})

Main:AddToggle({
    Name = "Tự động cày nguyên liệu",
    Default = AutoFarmMaterial,
    Callback = function(automatefunc)
        AutoFarmMaterial = automatefunc
    end
})
spawn(function()
    while task.wait() do
        if AutoFarmMaterial then
            pcall(function()
                MaterialMon(SelectMaterial)
                if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MPos.Position).Magnitude > 2000 then
                        BTP(MPos)
                        wait(3)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MPos.Position).Magnitude < 2000 then
                        Tween(MPos)
                    end
                else
                    Tween(MPos)
                end
                if game:GetService("Workspace").Enemies:FindFirstChild(MMon) then
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == MMon then
                                repeat
                                    task.wait()
                                    EquipTool(_G.SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    Fastattack = true
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                until not AutoFarmMaterial or not v.Parent or v.Humanoid.Health <= 0
                                Fastattack = false
                            end
                        end
                    end
                else
                    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
                        if string.find(v.Name, MMon) then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
                                Tween(v.CFrame * Farm_Mode)
                            end
                        end
                    end
                end
            end)
        end
    end
end)
Main:AddLabel("Boss")
local Boss = {}
for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
    if string.find(v.Name, "Boss") then
        if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
        elseif v.Name == "rip_indra [Lv. 1500] [Boss]" then
        else
            table.insert(Boss, v.Name)
        end
    end
end
for i, v in pairs(game.workspace.Enemies:GetChildren()) do
    if string.find(v.Name, "Boss") then
        if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
        elseif v.Name == "rip_indra [Lv. 1500] [Boss]" then
        else
            table.insert(Boss, v.Name)
        end
    end
end

Main:AddDropdown({
    Name = "Chọn Boss",
    Default = "",
    Options = Boss,
    Callback = function(bosslist)
        SelectBoss = bosslist
    end
})
Main:AddButton({
    Name = "Làm mới",
    Callback = function()
        local newBoss = {}
        for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
            if string.find(v.Name, "Boss") then
                if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                elseif v.Name == "rip_indra [Lv. 1500] [Boss]" then
                else
                    table.insert(newBoss, v.Name)
                end
            end
        end
        for i, v in pairs(game.workspace.Enemies:GetChildren()) do
            if string.find(v.Name, "Boss") then
                if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                elseif v.Name == "rip_indra [Lv. 1500] [Boss]" then
                else
                    table.insert(newBoss, v.Name)
                end
            end
        end
        selectedBoss:Refresh(newBoss)
    end
})
Main:AddToggle({
    Name = "Tự động cày Boss đã chọn (Nhiệm vụ)",
    Default = AutoFarmBossQuest,
    Callback = function(afbq)
        AutoFarmBossQuest = afbq
    end
})
spawn(function()
    while task.wait() do
        if AutoFarmBossQuest then
            pcall(function()
                CheckBossQuest(selectBoss)
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    if game:GetService('ReplicatedStorage'):FindFirstChild(SelectBoss) then
                        wait(3)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss,
                            QuestLvBoss)
                    end
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameBoss.Position).Magnitude > 2000 then
                            BTP(CFrameBoss)
                            wait(3)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameBoss.Position).Magnitude < 2000 then
                            Tween(CFrameBoss)
                        end
                    else
                        Tween(CFrameBoss)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == SelectBoss then
                                repeat
                                    game:GetService("RunService").Heartbeat:wait()
                                    EquipTool(_G.SelectWeapon)
                                    Fastattack = true
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                until not AutoFarmBossQuest or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                        Fastattack = false
                    end
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss).HumanoidRootPart.CFrame *
                        Farm_Mode)
                end
            end)
        end
    end
end)

Main:AddToggle({
    Name = "Tự động cày Boss đã chọn (Không nhiệm vụ)",
    Default = toFarmBossNoQuest,
    Callback = function(afbnq)
        AutoFarmBossNoQuest = afbnq
    end
})
spawn(function()
    while task.wait(.1) do
        if AutoFarmBossNoQuest then
            pcall(function()
                CheckBossQuest(selectBoss)
                if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameBoss.Position).Magnitude > 2000 then
                        BTP(CFrameBoss)
                        wait(3)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameBoss.Position).Magnitude < 2000 then
                        Tween(CFrameBoss)
                    end
                else
                    Tween(CFrameBoss)
                end
                if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == SelectBoss then
                                repeat
                                    game:GetService("RunService").Heartbeat:wait()
                                    EquipTool(_G.SelectWeapon)
                                    Fastattack = true
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                until not AutoFarmBossNoQuest or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                            end
                        end
                        Fastattack = false
                    end
                else
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss).HumanoidRootPart.CFrame *
                        Farm_Mode)
                end
            end)
        end
    end
end)
Main:AddLabel("Cày thông thạo")
--// Mastery Farm

local MasteryType = {
    'Nhiệm vụ', 'Không nhiệm vụ', 'Boss', 'Gần nhất'
}

Main:AddDropdown({
    Name = "Chọn cách cày thông thạo",
    Default = "",
    Options = MasteryType,
    Callback = function(typefunc)
        TypeMastery = typefunc
    end
})

Main:AddToggle({
    Name = "Tự động cày thông thạo trái ác quỷ",
    Default = AutoFarmMasDevilFruit,
    Callback = function(dfm)
        AutoFarmMasDevilFruit = dfm
        SelectMonster = nil
    end
})
spawn(function()
    while task.wait(.1) do
        if _G.UseSkill then
            pcall(function()
                if _G.UseSkill then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                            repeat
                                game:GetService("RunService").Heartbeat:wait()
                                EquipTool(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value =
                                        PositionSkillMasteryDevilFruit
                                    local DevilFruitMastery = game:GetService("Players").LocalPlayer.Character
                                        :FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value
                                    if SkillZ and DevilFruitMastery >= 1 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                    end
                                    if SkillX and DevilFruitMastery >= 1 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                    end
                                    if SkillC and DevilFruitMastery >= 1 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                    end
                                    if SkillV and DevilFruitMastery >= 1 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                        wait(.1)
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                    end
                                    if SkillF and DevilFruitMastery >= 1 then
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
                                        wait(.1)
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
                                    end
                                end
                            until not AutoFarmMasDevilFruit or not _G.UseSkill or v.Humanoid.Health == 0
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(.1) do
        if AutoFarmMasDevilFruit and TypeMastery == 'Nhiệm vụ' then
            pcall(function()
                CheckLevel(SelectMonster)
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude > 2000 then
                            BTP(CFrameQ)
                            wait(3)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude < 2000 then
                            Tween(CFrameQ)
                        end
                    else
                        Tween(CFrameQ)
                    end
                    if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            if v.Name == Ms then
                                repeat
                                    game:GetService("RunService").Heartbeat:wait()
                                    if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                        _G.UseSkill = true
                                    else
                                        _G.UseSkill = false
                                        EquipTool(_G.SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                    end
                                until not AutoFarmMasDevilFruit or not v.Parent or v.Humanoid.Health == 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or not TypeMastery == 'Queat'
                                _G.UseSkill = false
                            end
                        end
                    end
                    _G.UseSkill = false
                    Tween(CFrameMon)
                end
            end)
        elseif AutoFarmMasDevilFruit and TypeMastery == 'Không nhiệm vụ' then
            pcall(function()
                CheckLevel()
                if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude > 2000 then
                        BTP(CFrameMon)
                        wait(3)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude < 2000 then
                        Tween(CFrameMon)
                    end
                else
                    Tween(CFrameMon)
                end
                if game.Workspace.Enemies:FindFirstChild(Ms) then
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Ms and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            repeat
                                game:GetService("RunService").Heartbeat:wait()
                                if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                    _G.UseSkill = true
                                else
                                    _G.UseSkill = false
                                    EquipTool(_G.SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                end
                            until not AutoFarmMasDevilFruit or not v.Parent or v.Humanoid.Health == 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or not TypeMastery == 'No Quest'
                            _G.UseSkill = false
                        end
                    end
                else
                    _G.UseSkill = false
                    Tween(CFrameMon)
                end
            end)
        elseif AutoFarmMasDevilFruit and TypeMastery == 'Gần nhất' then
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 2000 then
                            repeat
                                game:GetService("RunService").Heartbeat:wait()
                                if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                    _G.UseSkill = true
                                else
                                    _G.UseSkill = false
                                    EquipTool(_G.SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                end
                            until not AutoFarmMasDevilFruit or not MasteryType == 'Nearest' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Nearest'
                            _G.UseSkill = false
                        end
                    end
                end
            end)
        elseif AutoFarmMasDevilFruit and TypeMastery == 'Boss' then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                CheckBossQuest()
                if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQBoss.Position).Magnitude > 2000 then
                        BTP(CFrameQBoss)
                        wait(3)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQBoss.Position).Magnitude < 2000 then
                        Tween(CFrameQBoss)
                    end
                else
                    Tween(CFrameQBoss)
                end

                if (CFrameQBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss,
                        QuestLvBoss)
                end
            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                pcall(function()
                    CheckBossQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == selectBoss and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat
                                    game:GetService("RunService").Heartbeat:wait()
                                    if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                        _G.UseSkill = true
                                    else
                                        _G.UseSkill = false
                                        EquipTool(_G.SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                    end
                                until not AutoFarmMasDevilFruit or not TypeMastery == 'Boss' or not v.Parent or v.Humanoid.Health == 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                            end
                        end
                    else
                        _G.UseSkill = false
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss).HumanoidRootPart.CFrame *
                            Farm_Mode)
                    end
                end)
            end
        end
    end
end)
Main:AddToggle({
    Name = "Tự động cày thông thạo súng",
    Default = AutoFarmMasGun,
    Callback = function(gmf)
        AutoFarmMasGun = gmf
        SelectMonster = nil
    end
})
spawn(function()
    while task.wait(.1) do
        if AutoFarmMasGun and TypeMastery == 'Nhiệm vụ' then
            pcall(function()
                CheckLevel(SelectMonster)
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude > 2000 then
                            BTP(CFrameQ)
                            wait(3)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude < 2000 then
                            Tween(CFrameQ)
                        end
                    else
                        Tween(CFrameQ)
                    end
                    if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            if v.Name == Ms then
                                repeat
                                    game:GetService("RunService").Heartbeat:wait()
                                    if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                        EquipTool(CurrentEquipGun)
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                            .CFrame * CFrame.new(posX, posY, posZ)
                                        game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].Cooldown.Value = 0
                                        _G.UseGunMastery = true
                                    else
                                        _G.UseGunMastery = false
                                        EquipTool(_G.SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                    end
                                until not AutoFarmMasGun or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or not TypeMastery == 'Queat'
                                _G.UseGunMastery = false
                            end
                        end
                    end
                    _G.UseGunMastery = false
                    Tween(CFrameMon)
                end
            end)
        elseif AutoFarmMasGun and TypeMastery == 'Không nhiệm vụ' then
            pcall(function()
                if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude > 2000 then
                        BTP(CFrameMon)
                        wait(3)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameMon.Position).Magnitude < 2000 then
                        Tween(CFrameMon)
                    end
                else
                    Tween(CFrameMon)
                end
                CheckLevel()
                if game.Workspace.Enemies:FindFirstChild(Ms) then
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Ms and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            repeat
                                game:GetService("RunService").Heartbeat:wait()
                                if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                    EquipTool(CurrentEquipGun)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                        .CFrame * CFrame.new(posX, posY, posZ)
                                    game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].Cooldown.Value = 0
                                    _G.UseGunMastery = true
                                else
                                    _G.UseGunMastery = false
                                    EquipTool(_G.SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                end
                            until not AutoFarmMasGun or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or not TypeMastery == 'No Quest'
                        end
                    end
                else
                    _G.UseGunMastery = false
                    Tween(CFrameMon)
                end
            end)
        elseif AutoFarmMasGun and TypeMastery == 'Gần nhất' then
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 2000 then
                            repeat
                                game:GetService("RunService").Heartbeat:wait()
                                if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                    EquipTool(CurrentEquipGun)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart
                                        .CFrame * CFrame.new(posX, posY, posZ)
                                    game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].Cooldown.Value = 0
                                    _G.UseGunMastery = true
                                else
                                    _G.UseGunMastery = false
                                    EquipTool(_G.SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                end
                            until not AutoFarmMasGun or not MasteryType == 'Gần nhất' or not v.Parent or v.Humanoid.Health <= 0 or not TypeMastery == 'Nearest'
                            _G.UseGunMastery = false
                        end
                    end
                end
            end)
        elseif AutoFarmMasGun and TypeMastery == 'Boss' then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                CheckBossQuest()
                if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQBoss.Position).Magnitude > 2000 then
                        BTP(CFrameQBoss)
                        wait(3)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQBoss.Position).Magnitude < 2000 then
                        Tween(CFrameQBoss)
                    end
                else
                    Tween(CFrameQBoss)
                end

                if (CFrameQBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss,
                        QuestLvBoss)
                end
            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                pcall(function()
                    CheckBossQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == selectBoss and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat
                                    game:GetService("RunService").Heartbeat:wait()
                                    if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                        EquipTool(CurrentEquipGun)
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].Cooldown.Value = 0
                                        _G.UseGunMastery = true
                                    else
                                        _G.UseGunMastery = false
                                        EquipTool(_G.SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                    end
                                until not AutoFarmMasGun or not TypeMastery == 'Boss' or not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                            end
                        end
                    else
                        _G.UseGunMastery = false
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild(SelectBoss).HumanoidRootPart.CFrame *
                            Farm_Mode)
                    end
                end)
            end
        end
    end
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.UseGunMastery then
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == MonFarm then
                        game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].RemoteFunctionShoot
                            :InvokeServer(v.HumanoidRootPart.Position, v.HumanoidRootPart)
                        Click()
                    end
                end
            end)
        end
    end)
end)




Main:AddSlider({
    Name = "Giết ở",
    Min = 1,
    Max = 100,
    Default = 25,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "%",
    Callback = function(KillPercentfunc)
        KillPercent = KillPercentfunc
    end
})
SkillZ = true
SkillX = true
SkillC = true
SkillV = true
SkillF = true
Main:AddToggle({
    Name = "Chiêu Z",
    Default = SkillZ,
    Callback = function(zfunc)
        SkillZ = zfunc
    end
})
Main:AddToggle({
    Name = "Chiêu X",
    Default = SkillX,
    Callback = function(xfunc)
        SkillX = xfunc
    end
})
Main:AddToggle({
    Name = "Chiêu C",
    Default = SkillC,
    Callback = function(cfunc)
        SkillC = cfunc
    end
})
Main:AddToggle({
    Name = "Chiêu V",
    Default = SkillV,
    Callback = function(vfunc)
        SkillV = vfunc
    end
})
Main:AddToggle({
    Name = "Chiêu F",
    Default = SkillF,
    Callback = function(ffunc)
        SkillF = ffunc
    end
})
Main:AddLabel("Haki quan sát")
local ObservationRange = Main:AddLabel("")
spawn(function()
    while true do
        pcall(function()
            ObservationRange:Set("Điểm haki quan sát của bạn : " ..
                math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value))
            game.RunService.RenderStepped:wait()
        end)
    end
end)

Main:AddToggle({
    Name = "Tự động cày haki quan sát",
    Default = false,
    Callback = function(autokenf)
        AutoFarmKen = autokenf
    end
})
spawn(function()
    while task.wait() do
        if AutoFarmKen then
            pcall(function()
                repeat
                    task.wait()
                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                        game:GetService('VirtualUser'):CaptureController()
                        game:GetService('VirtualUser'):SetKeyDown('0x65')
                        wait(2)
                        game:GetService('VirtualUser'):SetKeyUp('0x65')
                    end
                until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not AutoFarmKen
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if AutoFarmKen then
            pcall(function()
                if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000 then
                    Notification('Haki quan sát', 'Số điểm haki quan sát của bạn đã tối đa')
                    wait(2)
                else
                    if World2 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
                            if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                repeat
                                    task.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game
                                        :GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]")
                                        .HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
                                until AutoFarmKen == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            else
                                repeat
                                    task.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game
                                        :GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]")
                                        .HumanoidRootPart.CFrame * CFrame.new(0, 50, 0) +
                                        wait(1)
                                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and AutoKenHop == true then
                                        game:GetService("TeleportService"):Teleport(game.PlaceId,
                                            game:GetService("Players").LocalPlayer)
                                    end
                                until AutoFarmKen == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            end
                        else
                            Tween(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                        end
                    elseif World1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
                            if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                repeat
                                    task.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game
                                        :GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]")
                                        .HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
                                until AutoFarmKen == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            else
                                repeat
                                    task.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game
                                        :GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]")
                                        .HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                                    wait(1)
                                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and AutoKenHop == true then
                                        game:GetService("TeleportService"):Teleport(game.PlaceId,
                                            game:GetService("Players").LocalPlayer)
                                    end
                                until AutoFarmKen == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            end
                        else
                            Tween(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                        end
                    elseif World3 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]") then
                            if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                repeat
                                    task.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game
                                        :GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]")
                                        .HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
                                until AutoFarmKen == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            else
                                repeat
                                    task.wait()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game
                                        :GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]")
                                        .HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                                    wait(1)
                                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and AutoKenHop == true then
                                        game:GetService("TeleportService"):Teleport(game.PlaceId,
                                            game:GetService("Players").LocalPlayer)
                                    end
                                until AutoFarmKen == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            end
                        else
                            Tween(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                        end
                    end
                end
            end)
        end
    end
end)
Main:AddToggle({
    Name = "Tự động haki V2",
    Default = false,
    Callback = function(autokenv2f)
        AutoKenV2 = autokenv2f
    end
})

Main:AddToggle({
    Name = "Tự động haki V2 [Đổi sever]",
    Default = false,
    Callback = function(kenhopf)
        AutoKenHop = kenhopf
    end
})
spawn(function()
    while task.wait() do
        if AutoKenV2 then
            pcall(function()
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 3 then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple") then
                        repeat
                            task.wait()
                            Tween(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                        until not AutoKenV2 or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
                        wait(.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress",
                            "Citizen")
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
                        repeat
                            task.wait()
                            Tween(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
                        until not AutoKenV2 or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
                        wait(.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Start")
                        wait(1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Buy")
                    else
                        for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                            if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
                                v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                    .CFrame * CFrame.new(0, 1, 10)
                                wait()
                                firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
                                    v.Handle, 0)
                                wait()
                            end
                        end
                    end
                end
            end)
        end
    end
end)
Main:AddToggle({
    Name = "Tự động haki thân thể",
    Default = true,
    Callback = function(busohakifunc)
        BusoHaki = busohakifunc
    end
})
Farm:AddLabel("Cận chiến")

Farm:AddToggle({
    Name = "Tự động Super Human",
    Default = false,
    Callback = function(Value)
        AutoSuperhuman = Value
    end
})

spawn(function()
    while task.wait() do
        if AutoSuperhuman then
            pcall(function()
                if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                        _G.SelectWeapon = "Superhuman"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                            _G.SelectWeapon = "Black Leg"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                            _G.SelectWeapon = "Electro"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                            _G.SelectWeapon = "Fishman Karate"
                        end
                        if game.Players.LocalPlayer.BackpacUnEquipWeaponk:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                            _G.SelectWeapon = "Dragon Claw"
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward",
                                "DragonClaw", "1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward",
                                "DragonClaw", "2")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward",
                                "DragonClaw", "1")
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward",
                                "DragonClaw", "2")
                        else
                            local Fragment = game:GetService("Players")["Localplayer"].Data.Fragments.Value
                            if Fragment <= 1499 then
                                AutoSuperhuman = true
                            else
                                AutoSuperhuman = false
                            end
                        end
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                        end
                        if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                        end
                    end
                end
            end)
        end
    end
end)

Farm:AddToggle({
    Name = "Tự động Death Step",
    Default = false,
    Callback = function(Value)
        AutoDeathStep = Value
    end
})

spawn(function()
    while task.wait() do
        if AutoDeathStep then
            pcall(function()
                if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                        SelectWeapon = "Death Step"
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                        SelectWeapon = "Death Step"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value < 400 then
                        SelectWeapon = "Black Leg"
                    end
                end
                if AutoDeathStep then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
                        if game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0 then
                            Tween(CFrame.new(6372.57275, 302.194611, -6838.97461, 0.838541508, -8.27643453e-05,
                                0.544837654, 8.27643453e-05, 1, 2.45265783e-05, -0.544837654, 2.45265783e-05, 0.838541508))
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key") then
                                EquipTool("Library Key")
                                repeat
                                    task.wait()
                                    if BypassTP then
                                        BTP(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375))
                                    else
                                        Tween(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375))
                                    end
                                until (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not AutoDeathStep
                                if (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                    wait(1.2)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                                    wait(0.5)
                                end
                            elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
                                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                if v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
                                                    repeat
                                                        task.wait()
                                                        EquipTool(SelectWeapon)
                                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                        v.HumanoidRootPart.Transparency = 1
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        --v.Humanoid:ChangeState(11)
                                                        --v.Humanoid:ChangeState(14)
                                                        FarmPos = v.HumanoidRootPart.CFrame
                                                        MonFarm = v.Name
                                                        Click()
                                                    until not v.Parent or v.Humanoid.Health <= 0 or AutoDeathStep == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
                                                end
                                            end
                                        end
                                    end
                                else
                                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild(
                                        "Awakened Ice Admiral [Lv. 1400] [Boss]").HumanoidRootPart.CFrame)
                                end
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                    end
                end
            end)
        end
    end
end)


Farm:AddToggle({
    Name = "Tự động Sharkman Karate",
    Default = false,
    Callback = function(Value)
        AutoSharkman = Value
    end
})

spawn(function()
    while task.wait() do
        if AutoSharkman then
            pcall(function()
                if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                            _G.SelectWeapon = "Sharkman Karate"
                        end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                            _G.SelectWeapon = "Sharkman Karate"
                        end
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 400 then
                            _G.SelectWeapon = "Fishman Karate"
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                end
                if AutoSharkman then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                        if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
                                repeat
                                    task.wait()
                                    Tween(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0,
                                        0.999093413, 0, 0.0425701365)
                                until (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not AutoSharkman
                                if (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                    wait(1.2)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",
                                        true)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                                    wait(0.5)
                                end
                            elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
                                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
                                                    repeat
                                                        task.wait()
                                                        EquipTool(_G.SelectWeapon)
                                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                        v.HumanoidRootPart.Transparency = 1
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        --v.Humanoid:ChangeState(11)
                                                        --v.Humanoid:ChangeState(14)
                                                        FarmPos = v.HumanoidRootPart.CFrame
                                                        MonFarm = v.Name
                                                        Click()
                                                    until not v.Parent or v.Humanoid.Health <= 0 or AutoSharkman == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
                                                end
                                            end
                                        end
                                    else
                                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild(
                                            "Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame)
                                    end
                                end
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                end
            end)
        end
    end
end)



Farm:AddToggle({
    Name = "Tự động Electric Claw",
    Default = false,
    Callback = function(Value)
        AutoElectricClaw = Value
    end
})

spawn(function()
    while task.wait() do
        if AutoElectricClaw then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
                        Tween(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                        if (CFrame.new(-10371.4717, 330.764496, -10131.4199).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start")
                            wait(2)
                        end
                        wait(1)
                        Tween(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                        if (CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            wait(1)
                        end
                        wait(1)
                        Tween(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                        if (CFrame.new(-10371.4717, 330.764496, -10131.4199).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                        end
                        wait(1)
                        Tween(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                        if (CFrame.new(-10371.4717, 330.764496, -10131.4199).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start")
                        end
                        wait(1)
                        Tween(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                        if (CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            wait(1)
                        end
                        wait(1)
                        Tween(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                        if (CFrame.new(-10371.4717, 330.764496, -10131.4199).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                        end
                        _G.SelectWeapon = "Electric Claw"
                        wait(.1)
                    end
                end
            end)
        end
    end
end)



Farm:AddToggle({
    Name = "Tự động Dragon Talon",
    Default = false,
    Callback = function(Value)
        AutoDragonTalon = Value
    end
})

spawn(function()
    while task.wait() do
        if AutoDragonTalon then
            pcall(function()
                if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                        _G.SelectWeapon = "Dragon Claw"
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value <= 399 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                        _G.SelectWeapon = "Dragon Claw"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                        _G.SelectWeapon = "Dragon Claw"
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true)
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        end
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                        _G.SelectWeapon = "Dragon Claw"
                        if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true)
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        end
                    end
                end
            end)
        end
    end
end)



Farm:AddToggle({
    Name = "Tự động Godhuman",
    Default = false,
    Callback = function(Value)
        AutoGodhuman = Value
    end
})

spawn(function()
    while task.wait() do
        if AutoGodhuman then
            pcall(function()
                if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true)) then
                    _G.SelectWeapon = "Godhuman"
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value <= 399 and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value <= 399 and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value <= 399 and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value <= 399 then
                    if not World3 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                    elseif World3 then
                        if CheckMaterial("Fish Tail") <= 20 then
                            Tween(CFrame.new(-10993, 332, -8940))
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]" then
                                        repeat
                                            task.wait()
                                            EquipTool(_G.SelectWeapon)
                                            Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                        until not AutoGodhuman or not v.Parent or v.Humanoid.Health <= 0 or CheckMaterial("Fish Tail") >= 20
                                    end
                                else
                                    Tween(CFrame.new(-10993, 332, -8940))
                                end
                            end
                        elseif CheckMaterial("Dragon Scale") <= 10 then
                            Tween(CFram.new(6594, 383, 139))
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]" then
                                        repeat
                                            task.wait()
                                            EquipTool(_G.SelectWeapon)
                                            Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                                workspace.CurrentCamera.CFrame)
                                        until not AutoGodhuman or not v.Parent or v.Humanoid.Health <= 0 or CheckMaterial("Dragon Scale") >= 10
                                    end
                                else
                                    Tween(CFram.new(6594, 383, 139))
                                end
                            end
                        end
                        if CheckMaterial("Dragon Scale") >= 10 and CheckMaterial("Fish Tail") >= 20 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                        end
                    end
                    if not World2 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                    elseif World2 then
                        if CheckMaterial("Magma Ore") <= 20 then
                            Tween(CFrame.new(-5428, 78, -5959))
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Magma Ninja [Lv. 1175]" then
                                        repeat
                                            task.wait()
                                            EquipTool(_G.SelectWeapon)
                                            Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                                workspace.CurrentCamera.CFrame)
                                        until not AutoGodhuman or not v.Parent or v.Humanoid.Health <= 0 or CheckMaterial("Magma Ore") >= 20
                                    end
                                else
                                    Tween(CFrame.new(-5428, 78, -5959))
                                end
                            end
                        elseif CheckMaterial("Mystic Droplet") <= 10 then
                            Tween(CFrame.new(-3385, 239, -10542))
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Water Fighter [Lv. 1450]" then
                                        repeat
                                            task.wait()
                                            EquipTool(_G.SelectWeapon)
                                            Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                                workspace.CurrentCamera.CFrame)
                                        until not AutoGodhuman or not v.Parent or v.Humanoid.Health <= 0 or CheckMaterial("Mystic Droplet") >= 10
                                    end
                                else
                                    Tween(CFrame.new(-3385, 239, -10542))
                                end
                            end
                        end
                        if CheckMaterial("Mystic Droplet") >= 10 and CheckMaterial("Magma Ore") >= 20 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                        end
                    end
                    if CheckMaterial("Mystic Droplet") >= 10 and CheckMaterial("Magma Ore") >= 20 and CheckMaterial("Dragon Scale") >= 10 and CheckMaterial("Fish Tail") >= 20 and World3 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                        wait(.3)
                        print("Succeed")
                        if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true)) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true)
                            wait(.3)
                            print("Succeed")
                        end
                    elseif not World3 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                    end
                else
                    Notification('Làm ơn cày tât cả các chiêu lên thông thạo 400 trước khi bật cái này')
                end
            end)
        end
    end
end)

local DoughPrince = Farm:AddLabel("")
DoughPrince:Set("Dough Prince")

local CakePrinceStatus = Farm:AddLabel("")
spawn(function()
    while task.wait() do
        pcall(function()
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                CakePrinceStatus:Set("Killed : " ..
                    string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39,
                        41) ..
                    ' / 500')
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                CakePrinceStatus:Set("Killed : " ..
                    string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39,
                        40) ..
                    ' / 500')
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                CakePrinceStatus:Set("Killed : " ..
                    string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39,
                        39) ..
                    ' / 500')
            else
                CakePrinceStatus:Set("Cake Prince đã xuất hiện")
            end
        end)
    end
end)

Farm:AddToggle({
    Name = "Tự động Dough Prince",
    Default = AutoCakePrince,
    Callback = function(autocakefunc)
        AutoCakePrince = autocakefunc
    end
})
spawn(function()
    while task.wait() do
        if AutoCakePrince then
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
            if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if AutoCakePrince and v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            repeat
                                task.wait()
                                EquipTool(_G.SelectWeapon)
                                Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                Fastattack = true
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                v.Humanoid:ChangeState(14)
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                game:GetService 'VirtualUser':CaptureController()
                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                    workspace.CurrentCamera.CFrame)
                            until not AutoCakePrince or not v.Parent or v.Humanoid.Health <= 0
                            Fastattack = false
                        end
                    end
                else
                    if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
                        Tween(CFrame.new(-2151.82153, 149.315704, -12404.9053))
                    end
                end
            else
                if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    EquipTool(_G.SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    Fastattack = true
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                        workspace.CurrentCamera.CFrame)
                                until not AutoCakePrince or not v.Parent or v.Humanoid.Health <= 0
                                Fastattack = false
                            end
                        end
                    end
                else
                    local cakepos = CFrame.new(-2077, 252, -12373)
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - cakepos.Position).Magnitude > 2000 then
                            BTP(cakepos)
                            wait(3)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - cakepos.Position).Magnitude < 2000 then
                            Tween(cakepos)
                        end
                    else
                        Tween(cakepos)
                    end
                end
            end
        end
    end
end)

local EliteHunter = Farm:AddLabel("")
EliteHunter:Set("Elite Hunter")
local EliteProgress = Farm:AddLabel("")
local BosstElite = Farm:AddLabel("")
spawn(function()
    while task.wait(.1) do
        pcall(function()
            local progelit = tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter",
                "Progress"))
            EliteProgress:Set("[Tổng số Elite đã giết đc : " .. progelit .. "]")
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                BosstElite:Set("Elite Boss : Đã xuất hiện")
            else
                BosstElite:Set("Elite Hunter chưa xuất hiện ")
            end
        end)
    end
end)

Farm:AddToggle({
    Name = "Tự động Elite Hunter",
    Default = AutoEliteHunter,
    Callback = function(autoelitefunc)
        AutoEliteHunter = autoelitefunc
    end
})
spawn(function()
    while task.wait() do
        if AutoEliteHunter then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                        repeat
                                            task.wait()
                                            EquipTool(_G.SelectWeapon)
                                            Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                            Fastattack = true
                                            MonsterPosition = v.HumanoidRootPart.CFrame
                                            v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(14)
                                            v.Humanoid:ChangeState(11)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        until AutoEliteHunter == false or v.Humanoid.Health <= 0 or not v.Parent
                                        Fastattack = false
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]")
                                    .HumanoidRootPart.CFrame * Farm_Mode)
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]")
                                    .HumanoidRootPart.CFrame * Farm_Mode)
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]")
                                    .HumanoidRootPart.CFrame * Farm_Mode)
                            end
                        end
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                end
            end)
        end
    end
end)


local item = Farm:AddLabel("")
item:Set("Item")
local CDK = Farm:AddLabel("")
CDK:Set("Cursed Dual Katana")
Farm:AddToggle({
    Name = "Tự động Tushita",
    Default = false,
    Callback = function(Value)
        AutoTushita = Value
    end
})

spawn(function()
    while task.wait(.1) do
        if AutoTushita then
            pcall(function()
                autoTushita()
            end)
        end
    end
end)
function enemyrip()
    Tween(CFrame.new(-5332.30371, 423.985413, -2673.48218))
    wait()
    if game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
        local mobs = game.Workspace.Enemies:GetChildren()
        for i, v in pairs(mobs) do
            if v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" and v:IsA("Model") and v:FindFirstChild("Humanoid") and
                v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
    return game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]")
end

function enemyEliteBoss()
    if game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") then
        local mobs = game.Workspace.Enemies:GetChildren()
        for i, v in pairs(mobs) do
            if v.Name == "Deandre [Lv. 1750]" or v.Name == "Diablo [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" and v:IsA("Model") and v:FindFirstChild("Humanoid") and
                v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
    return game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or
        game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or
        game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]")
end

function enemylongma()
    Tween(CFrame.new(-10171.7051, 406.981995, -9552.31738))
    if game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
        local mobs = game.Workspace.Enemies:GetChildren()
        for i, v in pairs(mobs) do
            if v.Name == "Longma [Lv. 2000] [Boss]" and v:IsA("Model") and v:FindFirstChild("Humanoid") and
                v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
    return game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]")
end

function autoTushita()
    if not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
        if game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]") then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                repeat
                    Tween(CFrame.new(5420.49219, 314.446045, -2823.07373))
                    wait()
                until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
                wait(1)
                repeat
                    Tween(CFrame.new(5420.49219, 314.446045, -2823.07373))
                    wait()
                until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
                wait(1.1)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                wait(1)
            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                CheckLevel()
                pcall(function()
                    EquipTool(_G.SelectWeapon)
                    pcall(function()
                        local v = enemyEliteBoss()
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                        Click()
                    end)
                end)
            end
        else
            Tween(CFrame.new(-12554.9443, 337.194092, -7501.44727))
        end
    elseif game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Winter Sky")
        wait(0.5)
        repeat
            Tween(CFrame.new(-5420.16602, 1084.9657, -2666.8208))
            wait()
        until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10
        wait(0.5)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Pure Red")
        wait(0.5)
        repeat
            Tween(CFrame.new(-5414.41357, 309.865753, -2212.45776))
            wait()
        until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10
        wait(0.5)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Snow White")
        wait(0.5)
        repeat
            Tween(CFrame.new(-4971.47559, 331.565765, -3720.02954))
            wait()
        until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10
        wait(0.5)
        EquipTool("God's Chalice")
        wait(0.5)
        repeat
            Tween(CFrame.new(-5560.27295, 313.915466, -2663.89795))
            wait()
        until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-5560.27295, 313.915466, -2663.89795)).Magnitude <= 10
        wait(0.5)
        repeat
            Tween(CFrame.new(-5561.37451, 313.342529, -2663.4948))
            wait()
        until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
        wait(1)
        repeat
            Tween(CFrame.new(5154.17676, 141.786423, 911.046326))
            wait()
        until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
        wait(0.2)
        repeat
            Tween(CFrame.new(5148.03613, 162.352493, 910.548218))
            wait()
        until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
        wait(1)
        EquipTool("Holy Torch")
        wait(1)
        wait(0.4)
        repeat
            Tween(CFrame.new(-10752.7695, 412.229523, -9366.36328))
            wait()
        until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
        wait(0.4)
        repeat
            Tween(CFrame.new(-11673.4111, 331.749023, -9474.34668))
            wait()
        until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
        wait(0.4)
        repeat
            Tween(CFrame.new(-12133.3389, 519.47522, -10653.1904))
            wait()
        until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
        wait(0.4)
        repeat
            Tween(CFrame.new(-13336.5, 485.280396, -6983.35254))
            wait()
        until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
        wait(0.4)
        repeat
            Tween(CFrame.new(-13487.4131, 334.84845, -7926.34863))
            wait()
        until not AutoTushita or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
        wait(1)
    elseif game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") or game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]") then
        pcall(function()
            EquipTool(_G.SelectWeapon)
            pcall(function()
                local v = enemylongma()
                v.HumanoidRootPart.CanCollide = false
                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                Click()
            end)
        end)
    elseif game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
        pcall(function()
            EquipTool(_G.SelectWeapon)
            pcall(function()
                local v = enemyrip()
                v.HumanoidRootPart.CanCollide = false
                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                Click()
            end)
        end)
    else
        Tween(CFrame.new(-12554.9443, 337.194092, -7501.44727))
    end
end

Farm:AddToggle({
    Name = "Tự động Yama",
    Default = false,
    Callback = function(Value)
        AutoYama = Value
    end
})

spawn(function()
    while task.wait() do
        if AutoYama then
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30 then
                repeat
                    task.wait()
                    fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not AutoYama
            end
        end
    end
end)


Farm:AddToggle({
    Name = "Tự động song kiếm Oden",
    Default = false,
    Callback = function(Value)
        Auto_Cursed_Dual_Katana = Value
    end
})

spawn(function()
    while wait() do
        pcall(function()
            if Auto_Cursed_Dual_Katana then
                if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                            EquipTool("Tushita")
                        end
                    elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                            EquipTool("Yama")
                        end
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem", "Tushita")
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if Auto_Cursed_Dual_Katana then
                if GetMaterial("Alucard Fragment") == 0 then
                    Auto_Quest_Yama_1 = true
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil")
                elseif GetMaterial("Alucard Fragment") == 1 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = true
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil")
                elseif GetMaterial("Alucard Fragment") == 2 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = true
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil")
                elseif GetMaterial("Alucard Fragment") == 3 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = true
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good")
                elseif GetMaterial("Alucard Fragment") == 4 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = true
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good")
                elseif GetMaterial("Alucard Fragment") == 5 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = true
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good")
                elseif GetMaterial("Alucard Fragment") == 6 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cursed Skeleton Boss [Lv. 2025] [Boss]" or v.Name == "Cursed Skeleton [Lv. 2200]" then
                                    if v.Humanoid.Health > 0 then
                                        EquipTool(Sword)
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                    end
                                end
                            end
                        end
                    else
                        if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress",
                                "Good")
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress",
                                "Evil")
                            wait(1)
                            Tween(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)
                            Tween(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
                        else
                            Tween(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        if Auto_Quest_Yama_1 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate [Lv. 1850]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Mythological Pirate [Lv. 1850]" then
                            repeat
                                wait()
                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2))
                            until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_1 == false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial",
                                "Evil")
                        end
                    end
                else
                    Tween(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if Auto_Quest_Yama_2 then
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HazeESP") then
                        v.HazeESP.Size = UDim2.new(50, 50, 50, 50)
                        v.HazeESP.MaxDistance = "inf"
                    end
                end
                for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                    if v:FindFirstChild("HazeESP") then
                        v.HazeESP.Size = UDim2.new(50, 50, 50, 50)
                        v.HazeESP.MaxDistance = "inf"
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
                    v.HumanoidRootPart.CFrame = PosMonsEsp
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                    if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                        vc.Velocity = Vector3.new(0, 0, 0)
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        if Auto_Quest_Yama_2 then
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HazeESP") then
                        repeat
                            wait()
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                Tween(V.HumanoidRootPart.CFrame * Farm_Mode)
                            else
                                EquipTool(Sword)
                                Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                --v.Humanoid:ChangeState(11)
                                --v.Humanoid:ChangeState(14)
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                Click()
                                if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                            end
                        until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
                    else
                        for x, y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                            if y:FindFirstChild("HazeESP") then
                                if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                    Tween(y.HumanoidRootPart.CFrameMon * Farm_Mode)
                                else
                                    Tween(y.HumanoidRootPart.CFrame * Farm_Mode)
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if Auto_Quest_Yama_3 then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then
                    Tween(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                    repeat
                        wait()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Hell's Messenger [Lv. 2200] [Boss]" then
                                    if v.Humanoid.Health > 0 then
                                        repeat
                                            wait()
                                            EquipTool(Sword)
                                            Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                            if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                        until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
                                    end
                                end
                            end
                        else
                            wait(5)
                            Tween(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)
                            Tween(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)
                            Tween(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)
                            Tween(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                        end
                    until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]" then
                                    if v.Humanoid.Health > 0 then
                                        repeat
                                            wait()
                                            Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
                                    end
                                end
                            end
                        else
                            Tween(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_1 then
            Tween(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
            wait(5)
            Tween(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
            wait(5)
            Tween(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_2 then
            pcall(function()
                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                repeat
                                    wait()
                                    EquipTool(Sword)
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    --v.Humanoid:ChangeState(11)
                                    --v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
                            end
                        end
                    end
                else
                    Tween(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
                                if v.Humanoid.Health > 0 then
                                    repeat
                                        wait()
                                        EquipTool(Sword)
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                        if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                    until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
                                end
                            end
                        end
                    else
                        Tween(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
                    end
                elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
                    repeat
                        wait()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Heaven's Guardian [Lv. 2200] [Boss]" then
                                    if v.Humanoid.Health > 0 then
                                        repeat
                                            wait()
                                            EquipTool(Sword)
                                            Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                            if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                        until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
                                    end
                                end
                            end
                        else
                            wait(5)
                            Tween(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)
                            Tween(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)
                            Tween(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)
                            Tween(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                        end
                    until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or GetMaterial("Alucard Fragment") == 6
                end
            end)
        end
    end
end)
local moreitem = Farm:AddLabel("")
moreitem:Set("Vật phẩm khác")
Farm:AddToggle({
    Name = "Tự động Rengoku",
    Default = false,
    Callback = function(Value)
        AutoRengoku = Value
    end
})

spawn(function()
    while task.wait() do
        if AutoRengoku then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                    EquipTool("Hidden Key")
                    loc1 = CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875)
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - loc1.Position).Magnitude > 2000 then
                            BTP(loc1)
                            wait(3)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - loc1.Position).Magnitude < 2000 then
                            Tween(loc1)
                        end
                    else
                        Tween(loc1)
                    end
                elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]" then
                                repeat
                                    task.wait()
                                    EquipTool(_G.SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    --v.Humanoid:ChangeState(11)
                                    --v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                        workspace.CurrentCamera.CFrame)
                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    Tween(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                end
            end)
        end
    end
end)

Farm:AddToggle({
    Name = "Tự động Buddy",
    Default = false,
    Callback = function(Value)
        AutoBuddySword = Value
    end
})

spawn(function()
    while task.wait() do
        if AutoBuddySword then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
                                repeat
                                    task.wait()
                                    EquipTool(_G.SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    --v.Humanoid:ChangeState(11)
                                    --v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                        workspace.CurrentCamera.CFrame)
                                until not AutoBuddySword or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]")
                        .HumanoidRootPart.CFrame)
                end
            end)
        end
    end
end)

Farm:AddToggle({
    Name = "Tự động Hallow Sycthe",
    Default = false,
    Callback = function(Value)
        AutoHallowSycthe = Value
    end
})

spawn(function()
    while task.wait() do
        if AutoHallowSycthe then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]" then
                                repeat
                                    task.wait()
                                    EquipTool(_G.SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    --v.Humanoid:ChangeState(11)
                                    --v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                        workspace.CurrentCamera.CFrame)
                                until v.Humanoid.Health <= 0 or not AutoHallowSycthe
                            end
                        end
                    end
                else
                    loc3 = CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)
                    loc4 = game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]")
                        .HumanoidRootPart.CFrame
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        repeat
                            task.wait()
                            Tween(loc3)
                            wait()
                        until (loc3.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
                        EquipTool("Hallow Essence")
                    else
                        Tween(loc4)
                    end
                end
            end)
        end
    end
end)

Farm:AddToggle({
    Name = "Tự động Cavander",
    Default = false,
    Callback = function(Value)
        AutoCavander = Value
    end
})

spawn(function()
    while task.wait() do
        if AutoCavander then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                                repeat
                                    task.wait()
                                    EquipTool(_G.SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    --v.Humanoid:ChangeState(11)
                                    --v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                        workspace.CurrentCamera.CFrame)
                                until not AutoCavander or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    loc5 = game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]")
                        .HumanoidRootPart.CFrame
                    Tween(loc5)
                end
            end)
        end
    end
end)


Farm:AddToggle({
    Name = "Tự động Mini Yoru",
    Default = false,
    Callback = function(Value)
        AutoDarkDagger = Value
    end
})

spawn(function()
    while task.wait() do
        if AutoDarkDagger then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
                                repeat
                                    task.wait()
                                    EquipTool(_G.SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    --v.Humanoid:ChangeState(11)
                                    --v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    game:GetService 'VirtualUser':CaptureController()
                                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                        workspace.CurrentCamera.CFrame)
                                until not AutoDarkDagger or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    loc7 = game:GetService("ReplicatedStorage"):FindFirstChild(
                        "rip_indra True Form [Lv. 5000] [Raid Boss]").HumanoidRootPart.CFrame
                    Tween(loc7)
                end
            end)
        end
    end
end)

Farm:AddToggle({
    Name = "Tự động Soul Gitar",
    Default = false,
    Callback = function(Value)
        AutoSoulGuitar = Value
    end
})

spawn(function()
    while task.wait() do
        pcall(function()
            if AutoSoulGuitar then
                if GetWeaponInventory("Soul Guitar") == false then
                    if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 then
                        if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy", true)
                        else
                            if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
                                if game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0 then
                                    Quest2 = true
                                    repeat
                                        task.wait()
                                        Tween(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875))
                                    until (CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not AutoSoulGuitar
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left
                                        .ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left
                                        .ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left
                                        .ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right
                                        .ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left
                                        .ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right
                                        .ClickDetector)
                                    wait(1)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right
                                        .ClickDetector)
                                    wait(1)
                                elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
                                    if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
                                        Quest4 = true
                                        repeat
                                            task.wait()
                                            Tween(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625))
                                        until (CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not AutoSoulGuitar
                                        wait(1)
                                        Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"]
                                            .ColorFloor.Model.Part3.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]
                                            ["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
                                        wait(1)
                                        Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"]
                                            .ColorFloor.Model.Part4.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]
                                            ["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]
                                            ["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]
                                            ["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                        wait(1)
                                        Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"]
                                            .ColorFloor.Model.Part6.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]
                                            ["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]
                                            ["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                        wait(1)
                                        Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"]
                                            .ColorFloor.Model.Part8.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]
                                            ["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
                                        wait(1)
                                        Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"]
                                            .ColorFloor.Model.Part10.CFrame)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]
                                            ["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]
                                            ["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                        wait(1)
                                        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]
                                            ["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                    else
                                        Quest3 = true
                                        --Not Work Yet
                                    end
                                else
                                    if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
                                        local args = {
                                            [1] = "GuitarPuzzleProgress",
                                            [2] = "Ghost"
                                        }

                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                    if game.Workspace.Enemies:FindFirstChild("Living Zombie [Lv. 2000]") then
                                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                if v.Name == "Living Zombie [Lv. 2000]" then
                                                    EquipTool(_G.SelectWeapon)
                                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                    v.HumanoidRootPart.Transparency = 1
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                    --v.Humanoid:ChangeState(11)
                                                    --v.Humanoid:ChangeState(14)
                                                    FarmPos = v.HumanoidRootPart.CFrame
                                                    MonFarm = v.Name
                                                    Click()
                                                end
                                            end
                                        end
                                    else
                                        Tween(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
                                    end
                                end
                            else
                                if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2), "Error") then
                                    print("Go to Grave")
                                    Tween(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                                elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2), "Nothing") then
                                    print("Wait Next Night")
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2,
                                        true)
                                end
                            end
                        end
                    else
                        Tween(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
                    end
                end
            end
        end)
    end
end)

Farm:AddToggle({
    Name = "Tự động Serpent Bow",
    Default = false,
    Callback = function(Value)
        Auto_Serpent_Bow = Value
    end
})

spawn(function()
    while task.wait(.5) do
        pcall(function()
            if Auto_Serpent_Bow then
                if game.Workspace.Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Island Empress [Lv. 1675] [Boss]" then
                                repeat
                                    task.wait()
                                    EquipTool(_G.SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    --v.Humanoid:ChangeState(11)
                                    --v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                until v.Humanoid.Health <= 0 or not v.Parent or not Auto_Serpent_Bow
                            end
                        end
                    end
                else
                    Tween(game.ReplicatedStorage:FindFirstChild("Island Empress [Lv. 1675] [Boss]").HumanoidRootPart
                        .CFrame * Farm_Mode)
                end
            end
        end)
    end
end)

Farm:AddToggle({
    Name = "Tự động Saber",
    Default = false,
    Callback = function(Value)
        AutoSaber = Value
    end
})

spawn(function()
    while task.wait() do
        if AutoSaber and game.Players.LocalPlayer.Data.Level.Value >= 200 and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and not game.Players.LocalPlayer.Character:FindFirstChild("Saber") then
            pcall(function()
                if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                    if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                        if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")
                                .Map.Jungle.QuestPlates.Plate1.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")
                                .Map.Jungle.QuestPlates.Plate2.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")
                                .Map.Jungle.QuestPlates.Plate3.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")
                                .Map.Jungle.QuestPlates.Plate4.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")
                                .Map.Jungle.QuestPlates.Plate5.Button.CFrame
                            wait(1)
                        else
                            Tween(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724,
                                3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                        end
                    else
                        if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                EquipTool("Torch")
                                Tween(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09,
                                    0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10,
                                    -0.648466587))
                            else
                                Tween(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285,
                                    -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515,
                                    0.965917408))
                            end
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                    "GetCup")
                                wait(0.5)
                                EquipTool("Cup")
                                wait(0.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                    "FillCup", game:GetService("Players").LocalPlayer.Character.Cup)
                                wait(0)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                    "SickMan")
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                        "RichSon")
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                if v.Name == "Mob Leader [Lv. 120] [Boss]" then
                                                    repeat
                                                        task.wait()
                                                        EquipTool(_G.SelectWeapon)
                                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                        v.HumanoidRootPart.Transparency = 1
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        --v.Humanoid:ChangeState(11)
                                                        --v.Humanoid:ChangeState(14)
                                                        FarmPos = v.HumanoidRootPart.CFrame
                                                        MonFarm = v.Name
                                                        game:GetService 'VirtualUser':CaptureController()
                                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                                            workspace.CurrentCamera.CFrame)
                                                    until v.Humanoid.Health <= 0 or AutoSaber == false
                                                end
                                            end
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                                Tween(game:GetService("ReplicatedStorage"):FindFirstChild(
                                                    "Mob Leader [Lv. 120] [Boss]").HumanoidRootPart.CFrame * Farm_Mode)
                                            end
                                        end
                                    end
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress",
                                        "RichSon")
                                    wait(0.5)
                                    EquipTool("Relic")
                                    wait(0.5)
                                    Tween(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09,
                                        0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08,
                                        0.876514494))
                                end
                            end
                        end
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Saber Expert [Lv. 200] [Boss]" then
                                    repeat
                                        task.wait()
                                        EquipTool(_G.SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                            workspace.CurrentCamera.CFrame)
                                    until v.Humanoid.Health <= 0 or AutoSaber == false
                                    if v.Humanoid.Health <= 0 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "ProQuestProgress", "PlaceRelic")
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

Farm:AddToggle({
    Name = "Tự động Citizen Quest",
    Default = false,
    Callback = function(Value)
        AutoCitizen = Value
    end
})

spawn(function()
    while wait(.1) do
        if AutoCitizen then
            if game.Players.LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
                if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Forest Pirate [Lv. 1825]" then
                                repeat
                                    game:GetService("RunService").Heartbeat:wait()
                                    pcall(function()
                                        EquipTool(_G.SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                            workspace.CurrentCamera.CFrame)
                                    end)
                                until AutoCitizen == false or not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                            end
                        end
                    else
                        Tween(CFrame.new(-13459.065429688, 412.68927001953, -7783.1860351563))
                    end
                else
                    Tween(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                    if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                        wait(1.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1)
                    end
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
                if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                repeat
                                    game:GetService("RunService").Heartbeat:wait()
                                    pcall(function()
                                        EquipTool(_G.SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                            workspace.CurrentCamera.CFrame)
                                    end)
                                until AutoCitizen == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not gamr:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                            end
                        end
                    else
                        Tween(CFrame.new(-13459.065429688, 412.68927001953, -7783.1860351563))
                    end
                else
                    Tween(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                    if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                        wait(1.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress",
                            "Citizen")
                    end
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 2 then
                Tween(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
            end
        end
    end
end)
local sea2more = Farm:AddLabel("")
sea2more:Set("Thêm ở Sea 2")

Farm:AddToggle({
    Name = "Tự động tộc V2",
    Default = false,
    Callback = function(Value)
        AutoEvoRace = Value
    end
})

spawn(function()
    while wait(.1) do
        if AutoEvoRace then
            if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 0 then
                    Tween(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886,
                        3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                    if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "2")
                    end
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 1 then
                    pcall(function()
                        if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                            Tween(game.Workspace.Flower1.CFrame)
                        elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                            Tween(game.Workspace.Flower2.CFrame)
                        elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Zombie [Lv. 950]") then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Zombie [Lv. 950]" then
                                        repeat
                                            game:GetService("RunService").Heartbeat:wait()
                                            EquipTool(_G.SelectWeapon)
                                            Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                                workspace.CurrentCamera.CFrame)
                                        until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or AutoEvoRace == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                                    end
                                end
                            else
                                Tween(CFrame.new(-5854.39014, 145.093857, -686.942017, 0.379233211, -1.41975844e-08,
                                    -0.925301135, -3.77265719e-10, 1, -1.5498367e-08, 0.925301135, 6.2265797e-09,
                                    0.379233211))
                            end
                        end
                    end)
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 2 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3")
                end
            end
        end
    end
end)

Farm:AddToggle({
    Name = "Tự động nhiệm vụ Bartilo",
    Default = false,
    Callback = function(Value)
        AutoBartilo = Value
    end
})

spawn(function()
    while wait(.1) do
        if AutoBartilo then
            if game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
                if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Swan Pirate [Lv. 775]" then
                                pcall(function()
                                    repeat
                                        wait(.1)
                                        EquipTool(_G.SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                            workspace.CurrentCamera.CFrame)
                                    until not v.Parent or v.Humanoid.Health <= 0 or AutoBartilo == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                                end)
                            end
                        end
                    else
                        Tween(CFrame.new(1057.92761, 137.614319, 1242.08069))
                    end
                else
                    Tween(CFrame.new(-456.28952, 73.0200958, 299.895966))
                    if (Vector3.new(-456.28952, 73.0200958, 299.895966) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
                    end
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
                if QuestBartilo == nil then
                    Tween(CFrame.new(-456.28952, 73.0200958, 299.895966))
                end
                if (Vector3.new(-456.28952, 73.0200958, 299.895966) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                    wait(1.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo")
                    QuestBartilo = 1
                end
                if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == "Jeremy [Lv. 850] [Boss]" then
                            repeat
                                task.wait(.1)
                                EquipTool(_G.SelectWeapon)
                                Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                --v.Humanoid:ChangeState(11)
                                --v.Humanoid:ChangeState(14)
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                game:GetService 'VirtualUser':CaptureController()
                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                    workspace.CurrentCamera.CFrame)
                            until not v.Parent or v.Humanoid.Health <= 0 or AutoBartilo == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                        end
                    end
                else
                    if QuestBartilo == 1 then
                        Tween(CFrame.new(1931.5931396484, 402.67391967773, 956.52215576172))
                    end
                end
            elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
                Tween(game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate1.CFrame)
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa
                    .BartiloPlates.Plate2.CFrame
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa
                    .BartiloPlates.Plate3.CFrame
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa
                    .BartiloPlates.Plate4.CFrame
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa
                    .BartiloPlates.Plate5.CFrame
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa
                    .BartiloPlates.Plate6.CFrame
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa
                    .BartiloPlates.Plate7.CFrame
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Dressrosa
                    .BartiloPlates.Plate8.CFrame
                wait(1)
            end
        end
    end
end)
local hakiauto = Farm:AddLabel("")
hakiauto:Set("Haki")
Farm:AddToggle({
    Name = "Tự động haki 7 màu",
    Default = false,
    Callback = function(Value)
        AutoRainbowHaki = Value
    end
})

spawn(function()
    while task.wait() do
        if AutoRainbowHaki then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    loc12 = CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875)
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - loc12.Position).Magnitude > 2000 then
                            BTP(loc12)
                            wait(3)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - loc12.Position).Magnitude < 2000 then
                            Tween(loc12)
                        end
                    else
                        Tween(loc12)
                    end
                    if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                        wait(1.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet")
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Stone [Lv. 1550] [Boss]" then
                                    repeat
                                        task.wait()
                                        EquipTool(_G.SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                            workspace.CurrentCamera.CFrame)
                                    until AutoRainbowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Stone [Lv. 1550] [Boss]") then
                            loc13 = game:GetService("ReplicatedStorage"):FindFirstChild("Stone [Lv. 1550] [Boss]")
                                .HumanoidRootPart.CFrame
                            if BypassTP then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - loc13.Position).Magnitude > 2000 then
                                    BTP(loc13 * Farm_Mode)
                                    wait(3)
                                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - loc13.Position).Magnitude < 2000 then
                                    Tween(loc13 * Farm_Mode)
                                end
                            else
                                Tween(loc13 * Farm_Mode)
                            end
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Island Empress [Lv. 1675] [Boss]" then
                                    repeat
                                        task.wait()
                                        EquipTool(_G.SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                            workspace.CurrentCamera.CFrame)
                                    until AutoRainbowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
                            loc14 = game:GetService("ReplicatedStorage"):FindFirstChild(
                                "Island Empress [Lv. 1675] [Boss]").HumanoidRootPart.CFrame
                            if BypassTP then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - loc14.Position).Magnitude > 2000 then
                                    BTP(loc14 * Farm_Mode)
                                    wait(3)
                                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - loc14.Position).Magnitude < 2000 then
                                    Tween(loc14 * Farm_Mode)
                                end
                            else
                                Tween(loc14 * Farm_Mode)
                            end
                        end
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
                                    repeat
                                        task.wait()
                                        EquipTool(_G.SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                            workspace.CurrentCamera.CFrame)
                                    until AutoRainbowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
                            loc15 = game:GetService("ReplicatedStorage"):FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]")
                                .HumanoidRootPart.CFrame
                            if BypassTP then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - loc15.Position).Magnitude > 2000 then
                                    BTP(loc15 * Farm_Mode)
                                    wait(3)
                                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - loc15.Position).Magnitude < 2000 then
                                    Tween(loc15 * Farm_Mode)
                                end
                            else
                                Tween(loc15 * Farm_Mode)
                            end
                        end
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                    repeat
                                        task.wait()
                                        EquipTool(_G.SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                            workspace.CurrentCamera.CFrame)
                                    until AutoRainbowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                            loc16 = game:GetService("ReplicatedStorage"):FindFirstChild(
                                "Captain Elephant [Lv. 1875] [Boss]").HumanoidRootPart.CFrame
                            if BypassTP then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - loc16.Position).Magnitude > 2000 then
                                    BTP(loc16 * Farm_Mode)
                                    wait(3)
                                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - loc16.Position).Magnitude < 2000 then
                                    Tween(loc16 * Farm_Mode)
                                end
                            else
                                Tween(loc16 * Farm_Mode)
                            end
                        end
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                                    repeat
                                        task.wait()
                                        EquipTool(_G.SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672),
                                            workspace.CurrentCamera.CFrame)
                                    until AutoRainbowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                            loc17 = game:GetService("ReplicatedStorage"):FindFirstChild(
                                "Beautiful Pirate [Lv. 1950] [Boss]").HumanoidRootPart.CFrame
                            if BypassTP then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - loc17.Position).Magnitude > 2000 then
                                    BTP(loc17 * Farm_Mode)
                                    wait(3)
                                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - loc17.Position).Magnitude < 2000 then
                                    Tween(loc17 * Farm_Mode)
                                end
                            else
                                Tween(loc17 * Farm_Mode)
                            end
                        end
                    end
                else
                    loc17 = CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875)
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - loc17.Position).Magnitude > 2000 then
                            BTP(loc17)
                            wait(3)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - loc17.Position).Magnitude < 2000 then
                            Tween(loc17)
                        end
                    else
                        Tween(loc17)
                    end
                    if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                        wait(1.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet")
                    end
                end
            end)
        end
    end
end)

Farm:AddToggle({
    Name = "Tự động mua haki",
    Default = false,
    Callback = function(Value)
        AutoColorHaki = Value
    end
})

local raid = Raid:AddLabel("")
raid:Set("Raid")

Raid:AddDropdown({
    Name = "Chọn chip",
    Default = "nil",
    Options = { "Flame", "Ice", "Quake", "Light", "Dark", "Spider", "Rumble", "Magma", "Human: Buddha", "Sand",
        "Bird: Phoenix", "Dough" },
    Callback = function(Value)
        SelectChip = Value
    end
})

Raid:AddButton({
    Name = "Mua chip",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", SelectChip)
    end
})

Raid:AddButton({
    Name = "Bắt đầu Raid",
    Callback = function()
        if World2 then
            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
        elseif World3 then
            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
        end
    end
})

Raid:AddToggle({
    Name = "Tự động raid đã chọn",
    Default = _G.AutoSelectDungeon,
    Callback = function(value)
        _G.AutoSelectDungeon = value
    end
})

spawn(function()
    while wait() do
        if _G.AutoSelectDungeon then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame") then
                    _G.SelectChip = "Flame"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice") then
                    _G.SelectChip = "Ice"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake") then
                    _G.SelectChip = "Quake"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light") then
                    _G.SelectChip = "Light"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark") then
                    _G.SelectChip = "Dark"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("String-String") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String-String") then
                    _G.SelectChip = "String"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble") then
                    _G.SelectChip = "Rumble"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma") then
                    _G.SelectChip = "Magma"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                    _G.SelectChip = "Human: Buddha"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand") then
                    _G.SelectChip = "Sand"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix") then
                    _G.SelectChip = "Bird: Phoenix"
                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough") then
                    _G.SelectChip = "Dough"
                else
                    _G.SelectChip = "Flame"
                end
            end)
        end
    end
end)


Raid:AddToggle({
    Name = "Kill Aura",
    Default = false,
    Callback = function(Value)
        _G.concubu = Value
    end
})


spawn(function()
    while wait() do
        if _G.concubu then
            for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    pcall(function()
                        repeat
                            wait(.1)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        until not _G.concubu or not v.Parent or v.Humanoid.Health <= 0
                    end)
                end
            end
        end
    end
end)


Raid:AddToggle({
    Name = "Tự động đảo tiếp theo",
    Default = false,
    Callback = function(Value)
        _G.Auto_Dungeon = Value
        StopTween(_G.Auto_Dungeon)
    end
})

spawn(function()
    while wait() do
        if _G.Auto_Dungeon then
            if not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
                if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                    topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame *
                        CFrame.new(0, 70, 100))
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                    topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame *
                        CFrame.new(0, 70, 100))
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                    topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame *
                        CFrame.new(0, 70, 100))
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                    topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame *
                        CFrame.new(0, 70, 100))
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                    topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame *
                        CFrame.new(0, 70, 100))
                end
            end
        end
    end
end)



Raid:AddToggle({
    Name = "Tự động thức tỉnh trái ác quỷ",
    Default = false,
    Callback = function(Value)
        AutoAwakenAbilities = Value
    end
})

spawn(function()
    while task.wait() do
        if AutoAwakenAbilities then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken")
            end)
        end
    end
end)

Raid:AddToggle({
    Name = "Tự động bắt đầu raid",
    Default = _G.Auto_StartRaid,
    Callback = function(value)
        _G.Auto_StartRaid = value
    end
})

spawn(function()
    while wait(.1) do
        pcall(function()
            if _G.Auto_StartRaid then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if World2 then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main
                                .ClickDetector)
                        elseif World3 then
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main
                                .ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)

Raid:AddToggle({
    Name = "Tự động mua chip",
    Default = _G.AutoBuyChip,
    Callback = function(value)
        _G.AutoBuyChip = value
    end
})

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoBuyChip then
                if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select",
                            _G.SelectChip)
                    end
                end
            end
        end
    end)
end)

Raid:AddButton({
    Name = "Dịch chuyển đến Lab ",
    Callback = function()
        if Second_Sea then
            TP2(CFrame.new(-6438.73535, 250.645355, -4501.50684))
        elseif Third_Sea then
            TP2(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238,
                4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
        end
    end
})

local team = Misc:AddLabel("")
team:Set("Team")

Misc:AddButton({
    Name = "Hải tặc",
    Callback = function()
        local args = {
            [1] = "SetTeam",
            [2] = "Pirates"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        local args = {
            [1] = "BartiloQuestProgress"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})

Misc:AddButton({
    Name = "Hải quân",
    Callback = function()
        local args = {
            [1] = "SetTeam",
            [2] = "Marines"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        local args = {
            [1] = "BartiloQuestProgress"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})

local ui = Misc:AddLabel("")
ui:Set("Mở cửa hàng trái ác quỷ & Khác")
Misc:AddButton({
    Name = "Hiện tất cả vật phẩm",
    Callback = function()
        local LocalPlayer = game:GetService('Players').LocalPlayer
        local PlayerGui = LocalPlayer:WaitForChild('PlayerGui')
        local MainScreen = PlayerGui:WaitForChild('Main')
        local AwakeningToggler = MainScreen:WaitForChild('AwakeningToggler')
        local HttpService = game:GetService('HttpService')
        local PostionXCount = 0;
        local ItemRange = 0;
        local PositionYCount = 0;
        local PostionXCountFruit = 800;
        local ItemRangeFruit = 0;
        local ItemMaxFruit = 2;
        local PositionYCountFruit = 113;
        local RequestGetInvertory;
        _G.MythicalCut = true
        _G.LegendaryCut = true
        _G.RareCut = false
        _G.UncommonCut = false
        _G.CommonCut = false
        _G.MaxCountItem = 10
        _G.ShowMasteryCut = true
        _G.LevelMasteryCut = 300
        local __Config = {
            ['Rarity'] = {
                __Mythical = _G.MythicalCut,
                __Legendary = _G.LegendaryCut,
                __Rare = _G.RareCut,
                __Uncommon = _G.UncommonCut,
                __Common = _G.CommonCut
            },
            ['MaxLength'] = _G.MaxCountItem,
            ['ShowMastery'] = _G.ShowMasteryCut,
            ['LevelShowMastery'] = _G.LevelMasteryCut,
        };
        local MaleeList = {};
        local ItemMax = __Config['MaxLength'];
        local Requirement = {
            ['Mythical'] = {},
            ['Legendary'] = {},
            ['Rare'] = {},
            ['Uncommon'] = {},
            ['Common'] = {}
        }
        local ViewportSize = workspace.CurrentCamera.ViewportSize
        local IconModule = require(game.Players.LocalPlayer.PlayerGui.Main.UIController.Inventory.Spritesheets)
        if game.CoreGui:FindFirstChild('CreateItem') then
            game.CoreGui:FindFirstChild('CreateItem'):Destroy()
        end
        function OffsetXToSacle(offset)
            return offset / ViewportSize.X
        end

        function OffsetYToSacle(offset)
            return offset / ViewportSize.Y
        end

        function SacleXToOffeset(offset)
            return offset / ViewportSize.X
        end

        function SacleYToOffeset(offset)
            return offset / ViewportSize.Y
        end

        function queryData(ItemName)
            local v1 = ItemName:gsub("'", ""):gsub(":", "") .. "1.png";
            local v2 = ItemName:gsub("'", ""):gsub(":", "") .. "2.png";
            for i, _ in pairs(IconModule) do
                for v, __ in pairs(_) do
                    if v == v1 then
                        local j = __
                        local q = i
                        return {
                            ['Name'] = q,
                            ['Value'] = __
                        }
                    end
                end
            end
        end

        function formatNumber(nb)
            local i, k, j = tostring(nb):match("(%-?%d?)(%d*)(%.?.*)")
            return i .. k:reverse():gsub("(%d%d%d)", "%1,"):reverse() .. j
        end

        local CreateItemScreen = Instance.new("ScreenGui")
        local CreateItems = Instance.new('Frame')
        local CreateItemFruit = Instance.new('Frame')

        CreateItemScreen.Name = 'CreateItem'
        CreateItemScreen.Parent = game.CoreGui

        CreateItems.Name = HttpService:GenerateGUID()
        CreateItems.Parent = CreateItemScreen
        CreateItems.Size = UDim2.new(1, 0, 1, 0)
        CreateItems.BackgroundTransparency = 1.000
        CreateItemFruit.Name = HttpService:GenerateGUID()
        CreateItemFruit.Parent = CreateItemScreen
        CreateItemFruit.Size = UDim2.new(1, 0, 1, 0)
        CreateItemFruit.BackgroundTransparency = 1.000
        local Fragments = Instance.new("TextLabel")
        Fragments.Name = HttpService:GenerateGUID()
        Fragments.Parent = CreateItemScreen
        Fragments.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Fragments.BackgroundTransparency = 1.000
        Fragments.Position = UDim2.new(0, 6, 0.65, 0);
        Fragments.Size = UDim2.new(0.150000006, 0, 0.0599999987, 5)
        Fragments.ZIndex = -9
        Fragments.Font = Enum.Font.SourceSansBold
        Fragments.Text = 'ƒ' .. formatNumber(game:GetService("Players").LocalPlayer.Data.Fragments.Value)
        Fragments.TextColor3 = Color3.fromRGB(177, 121, 255)
        Fragments.TextScaled = true
        Fragments.TextSize = 36.000
        Fragments.TextStrokeTransparency = 0.000
        Fragments.TextWrapped = true
        Fragments.TextXAlignment = Enum.TextXAlignment.Left
        game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton.Position = UDim2.new(0, 10, 0.6, 0)
        function CreateItemFruit(ItemType, ItemNames, ItemIcon, ImageRectSize, ItemRectOffset, ItemBackgroundColor,
                                 ExtraData, Data)
            local _1 = Instance.new("Frame")
            local ItemLine2 = Instance.new("TextLabel")
            local ItemName = Instance.new("TextLabel")
            local Background = Instance.new("ImageLabel")
            local UICorner = Instance.new("UICorner")
            local UIGradient = Instance.new("UIGradient")
            local Icon = Instance.new("ImageLabel")
            if ItemRangeFruit >= ItemMaxFruit then
                PositionYCountFruit = PositionYCountFruit + 105;
                ItemRangeFruit = 0;
                PostionXCountFruit = 800;
            end
            _1.Name = HttpService:GenerateGUID()
            _1.Parent = CreateItems
            _1.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
            _1.BackgroundTransparency = 1.000
            _1.LayoutOrder = 1
            _1.Size = UDim2.new(0, 100, 0, 100)
            _1.Position = UDim2.new(OffsetXToSacle(PostionXCountFruit), 0, OffsetYToSacle(PositionYCountFruit), 0)
            PostionXCountFruit = PostionXCountFruit + 101;
            ItemRangeFruit = ItemRangeFruit + 1;

            ItemLine2.Name = HttpService:GenerateGUID()
            ItemLine2.Parent = _1
            ItemLine2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ItemLine2.BackgroundTransparency = 1.000
            ItemLine2.Position = UDim2.new(0.0799999982, 0, 0.0199999996, 0)
            ItemLine2.Size = UDim2.new(0.699999988, 0, 0.150000006, 0)
            ItemLine2.ZIndex = 5
            ItemLine2.Font = Enum.Font.SourceSansItalic
            ItemLine2.Text = ItemType
            ItemLine2.TextColor3 = Color3.fromRGB(255, 255, 255)
            ItemLine2.TextScaled = true
            ItemLine2.TextSize = 14.000
            ItemLine2.TextStrokeTransparency = 0.600
            ItemLine2.TextWrapped = true
            ItemLine2.TextXAlignment = Enum.TextXAlignment.Left
            ItemLine2.TextYAlignment = Enum.TextYAlignment.Top

            ItemName.Name = HttpService:GenerateGUID()
            ItemName.Parent = _1
            ItemName.AnchorPoint = Vector2.new(1, 1)
            ItemName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ItemName.BackgroundTransparency = 1.000
            ItemName.Position = UDim2.new(0.959999979, 0, 0.980000019, 0)
            ItemName.Size = UDim2.new(0.600000024, 0, 0.319999993, 0)
            ItemName.ZIndex = 5
            ItemName.Font = Enum.Font.SourceSansSemibold
            ItemName.Text = ItemNames
            ItemName.TextColor3 = Color3.fromRGB(255, 255, 255)
            ItemName.TextScaled = true
            ItemName.TextSize = 14.000
            ItemName.TextStrokeTransparency = 0.600
            ItemName.TextWrapped = true
            ItemName.TextXAlignment = Enum.TextXAlignment.Right
            ItemName.TextYAlignment = Enum.TextYAlignment.Bottom

            Background.Name = HttpService:GenerateGUID()
            Background.Parent = _1
            Background.BackgroundColor3 = ItemBackgroundColor
            Background.BorderSizePixel = 0
            Background.Size = UDim2.new(1, 0, 1, 0)
            Background.ZIndex = 3
            Background.Image = "http://www.roblox.com/asset/?id=9944431153"
            Background.ImageColor3 = Color3.fromRGB(0, 0, 0)
            Background.ImageTransparency = 1.000

            UICorner.CornerRadius = UDim.new(0.0700000003, 0)
            UICorner.Parent = Background

            UIGradient.Color = ColorSequence.new { ColorSequenceKeypoint.new(0.00, Color3.fromRGB(172, 172, 172)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(225, 225, 225)) }
            UIGradient.Rotation = 90
            UIGradient.Parent = Background

            Icon.Name = HttpService:GenerateGUID()
            Icon.Parent = _1
            Icon.AnchorPoint = Vector2.new(0.5, 0.5)
            Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Icon.BackgroundTransparency = 1.000
            Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
            Icon.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
            Icon.Visible = true
            Icon.ZIndex = 4
            Icon.Image = ItemIcon
            Icon.ScaleType = Enum.ScaleType.Fit
            Icon.ImageRectSize = ItemRectOffset
            Icon.ImageRectOffset = ImageRectSize
            if ExtraData then
                local ItemLine1 = Instance.new("TextLabel")
                ItemLine1.Name = HttpService:GenerateGUID()
                ItemLine1.Parent = _1
                ItemLine1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ItemLine1.BackgroundTransparency = 1.000
                ItemLine1.Position = UDim2.new(0.0799999982, 0, 0.140000001, 0)
                ItemLine1.Size = UDim2.new(0.699999988, 0, 0.150000006, 0)
                ItemLine1.Visible = true
                ItemLine1.ZIndex = 5
                ItemLine1.Font = Enum.Font.SourceSansSemibold
                ItemLine1.Text = Data
                ItemLine1.TextColor3 = Color3.fromRGB(255, 255, 255)
                ItemLine1.TextScaled = true
                ItemLine1.TextSize = 14.000
                ItemLine1.TextStrokeTransparency = 0.600
                ItemLine1.TextWrapped = true
                ItemLine1.TextXAlignment = Enum.TextXAlignment.Left
                ItemLine1.TextYAlignment = Enum.TextYAlignment.Top
            end
        end

        function CreateItem(ItemType, ItemNames, ItemIcon, ImageRectSize, ItemRectOffset, ItemBackgroundColor, ExtraData,
                            Data)
            local _1 = Instance.new("Frame")
            local ItemLine2 = Instance.new("TextLabel")
            local ItemName = Instance.new("TextLabel")
            local Background = Instance.new("ImageLabel")
            local UICorner = Instance.new("UICorner")
            local UIGradient = Instance.new("UIGradient")
            local Icon = Instance.new("ImageLabel")
            if ItemRange >= ItemMax then
                PositionYCount = PositionYCount + 101;
                ItemRange = 0;
                PostionXCount = 0;
            end
            _1.Name = HttpService:GenerateGUID()
            _1.Parent = CreateItems
            _1.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
            _1.BackgroundTransparency = 1.000
            _1.LayoutOrder = 1
            _1.Size = UDim2.new(0, 100, 0, 100)
            _1.Position = UDim2.new(0, PostionXCount, 0, PositionYCount)
            PostionXCount = PostionXCount + 101;
            ItemRange = ItemRange + 1;

            ItemLine2.Name = HttpService:GenerateGUID()
            ItemLine2.Parent = _1
            ItemLine2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ItemLine2.BackgroundTransparency = 1.000
            ItemLine2.Position = UDim2.new(0.0799999982, 0, 0.0199999996, 0)
            ItemLine2.Size = UDim2.new(0.699999988, 0, 0.150000006, 0)
            ItemLine2.ZIndex = 5
            ItemLine2.Font = Enum.Font.SourceSansItalic
            ItemLine2.Text = ItemType
            ItemLine2.TextColor3 = Color3.fromRGB(255, 255, 255)
            ItemLine2.TextScaled = true
            ItemLine2.TextSize = 14.000
            ItemLine2.TextStrokeTransparency = 0.600
            ItemLine2.TextWrapped = true
            ItemLine2.TextXAlignment = Enum.TextXAlignment.Left
            ItemLine2.TextYAlignment = Enum.TextYAlignment.Top

            ItemName.Name = HttpService:GenerateGUID()
            ItemName.Parent = _1
            ItemName.AnchorPoint = Vector2.new(1, 1)
            ItemName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ItemName.BackgroundTransparency = 1.000
            ItemName.Position = UDim2.new(0.959999979, 0, 0.980000019, 0)
            ItemName.Size = UDim2.new(0.600000024, 0, 0.319999993, 0)
            ItemName.ZIndex = 5
            ItemName.Font = Enum.Font.SourceSansSemibold
            ItemName.Text = ItemNames
            ItemName.TextColor3 = Color3.fromRGB(255, 255, 255)
            ItemName.TextScaled = true
            ItemName.TextSize = 14.000
            ItemName.TextStrokeTransparency = 0.600
            ItemName.TextWrapped = true
            ItemName.TextXAlignment = Enum.TextXAlignment.Right
            ItemName.TextYAlignment = Enum.TextYAlignment.Bottom

            Background.Name = HttpService:GenerateGUID()
            Background.Parent = _1
            Background.BackgroundColor3 = ItemBackgroundColor
            Background.BorderSizePixel = 0
            Background.Size = UDim2.new(1, 0, 1, 0)
            Background.ZIndex = 3
            Background.Image = "http://www.roblox.com/asset/?id=9944431153"
            Background.ImageColor3 = Color3.fromRGB(0, 0, 0)
            Background.ImageTransparency = 1.000

            UICorner.CornerRadius = UDim.new(0.0700000003, 0)
            UICorner.Parent = Background

            UIGradient.Color = ColorSequence.new { ColorSequenceKeypoint.new(0.00, Color3.fromRGB(172, 172, 172)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(225, 225, 225)) }
            UIGradient.Rotation = 90
            UIGradient.Parent = Background

            Icon.Name = HttpService:GenerateGUID()
            Icon.Parent = _1
            Icon.AnchorPoint = Vector2.new(0.5, 0.5)
            Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Icon.BackgroundTransparency = 1.000
            Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
            Icon.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
            Icon.Visible = true
            Icon.ZIndex = 4
            Icon.Image = ItemIcon
            Icon.ScaleType = Enum.ScaleType.Fit
            Icon.ImageRectSize = ItemRectOffset
            Icon.ImageRectOffset = ImageRectSize
            if ExtraData then
                local ItemLine1 = Instance.new("TextLabel")
                ItemLine1.Name = HttpService:GenerateGUID()
                ItemLine1.Parent = _1
                ItemLine1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ItemLine1.BackgroundTransparency = 1.000
                ItemLine1.Position = UDim2.new(0.0799999982, 0, 0.140000001, 0)
                ItemLine1.Size = UDim2.new(0.699999988, 0, 0.150000006, 0)
                ItemLine1.Visible = true
                ItemLine1.ZIndex = 5
                ItemLine1.Font = Enum.Font.SourceSansSemibold
                ItemLine1.Text = Data
                ItemLine1.TextColor3 = Color3.fromRGB(255, 255, 255)
                ItemLine1.TextScaled = true
                ItemLine1.TextSize = 14.000
                ItemLine1.TextStrokeTransparency = 0.600
                ItemLine1.TextWrapped = true
                ItemLine1.TextXAlignment = Enum.TextXAlignment.Left
                ItemLine1.TextYAlignment = Enum.TextYAlignment.Top
            end
        end

        RequestGetInvertory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")


        function getBackgroundColor(Rarity)
            if Rarity == 0 then
                return Color3.fromRGB(179, 179, 179)
            elseif Rarity == 1 then
                return Color3.fromRGB(92, 140, 211)
            elseif Rarity == 2 then
                return Color3.fromRGB(140, 82, 255)
            elseif Rarity == 3 then
                return Color3.fromRGB(213, 43, 228)
            elseif Rarity == 4 then
                return Color3.fromRGB(238, 47, 50)
            end
        end

        for _, __ in pairs(RequestGetInvertory) do
            if __['Rarity'] == 4 then
                if __Config['Rarity']['__Mythical'] then
                    table.insert(Requirement['Mythical'], __)
                end
            end
            if __['Rarity'] == 3 then
                if __Config['Rarity']['__Legendary'] then
                    table.insert(Requirement['Legendary'], __)
                end
            end
            if __['Rarity'] == 2 then
                if __Config['Rarity']['__Rare'] then
                    table.insert(Requirement['Rare'], __)
                end
            end
            if __['Rarity'] == 1 then
                if __Config['Rarity']['__Uncommon'] then
                    table.insert(Requirement['Uncommon'], __)
                end
            end
            if __['Rarity'] == 0 then
                if __Config['Rarity']['__Common'] then
                    table.insert(Requirement['Common'], __)
                end
            end
        end

        function SortItemSword(itemType)
            for i, __ in pairs(Requirement['Mythical']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    if __['Mastery'] >= __Config['LevelShowMastery'] and __Config['ShowMastery'] then
                        CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                            true, "Mastery - " .. tostring(__['Mastery']))
                    else
                        CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                            false, "")
                    end
                end
            end
            for i, __ in pairs(Requirement['Legendary']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    if __['Mastery'] >= __Config['LevelShowMastery'] and __Config['ShowMastery'] then
                        CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                            true, "Mastery - " .. tostring(__['Mastery']))
                    else
                        CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                            false, "")
                    end
                end
            end
            for i, __ in pairs(Requirement['Rare']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    if __['Mastery'] >= __Config['LevelShowMastery'] and __Config['ShowMastery'] then
                        CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                            true, "Mastery - " .. tostring(__['Mastery']))
                    else
                        CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                            false, "")
                    end
                end
            end
            for i, __ in pairs(Requirement['Uncommon']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    if __['Mastery'] >= __Config['LevelShowMastery'] and __Config['ShowMastery'] then
                        CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                            true, "Mastery - " .. tostring(__['Mastery']))
                    else
                        CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                            false, "")
                    end
                end
            end
            for i, __ in pairs(Requirement['Common']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    if __['Mastery'] >= __Config['LevelShowMastery'] and __Config['ShowMastery'] then
                        CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                            true, "Mastery - " .. tostring(__['Mastery']))
                    else
                        CreateItem('Sword', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                            false, "")
                    end
                end
            end
            ItemRange = ItemMax
        end

        SortItemSword('Sword')
        function SortItemBloxFruit(itemType)
            for i, __ in pairs(Requirement['Mythical']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItemFruit(__['Type'], __['Name'], IconData['Name'], Size, Offset,
                        getBackgroundColor(__['Rarity']), true, "x" .. __['Count'])
                end
            end
            for i, __ in pairs(Requirement['Legendary']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItemFruit(__['Type'], __['Name'], IconData['Name'], Size, Offset,
                        getBackgroundColor(__['Rarity']), true, "x" .. __['Count'])
                end
            end
            for i, __ in pairs(Requirement['Rare']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItemFruit(__['Type'], __['Name'], IconData['Name'], Size, Offset,
                        getBackgroundColor(__['Rarity']), true, "x" .. __['Count'])
                end
            end
            for i, __ in pairs(Requirement['Uncommon']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItemFruit(__['Type'], __['Name'], IconData['Name'], Size, Offset,
                        getBackgroundColor(__['Rarity']), true, "x" .. __['Count'])
                end
            end
            for i, __ in pairs(Requirement['Common']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItemFruit(__['Type'], __['Name'], IconData['Name'], Size, Offset,
                        getBackgroundColor(__['Rarity']), true, "x" .. __['Count'])
                end
            end
            ItemRange = ItemMax
        end

        SortItemBloxFruit("Blox Fruit")
        function SortItemWear(itemType)
            for i, __ in pairs(Requirement['Mythical']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItem('Accessory', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                        false, "")
                end
            end
            for i, __ in pairs(Requirement['Legendary']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItem('Accessory', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                        false, "")
                end
            end
            for i, __ in pairs(Requirement['Rare']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItem('Accessory', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                        false, "")
                end
            end
            for i, __ in pairs(Requirement['Uncommon']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItem('Accessory', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                        false, "")
                end
            end
            for i, __ in pairs(Requirement['Common']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItem('Accessory', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                        false, "")
                end
            end
            ItemRange = ItemMax
        end

        function SortItemGun(itemType)
            for i, __ in pairs(Requirement['Mythical']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItem('Gun', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false,
                        "")
                end
            end
            for i, __ in pairs(Requirement['Legendary']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItem('Gun', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false,
                        "")
                end
            end
            for i, __ in pairs(Requirement['Rare']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItem('Gun', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false,
                        "")
                end
            end
            for i, __ in pairs(Requirement['Uncommon']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItem('Gun', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false,
                        "")
                end
            end
            for i, __ in pairs(Requirement['Common']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItem('Gun', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']), false,
                        "")
                end
            end
            ItemRange = ItemMax
        end

        SortItemGun('Gun')
        SortItemWear('Wear')
        function SortItemMaterial(itemType)
            for i, __ in pairs(Requirement['Mythical']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItem('Material', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                        true, "x" .. __['Count'])
                end
            end
            for i, __ in pairs(Requirement['Legendary']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItem('Material', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                        true, "x" .. __['Count'])
                end
            end
            for i, __ in pairs(Requirement['Rare']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItem('Material', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                        true, "x" .. __['Count'])
                end
            end
            for i, __ in pairs(Requirement['Uncommon']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItem('Material', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                        true, "x" .. __['Count'])
                end
            end
            for i, __ in pairs(Requirement['Common']) do
                if __['Type'] == itemType then
                    local IconData = queryData(__['Name'])
                    local Offset = Vector2.new(IconData['Value'][3], IconData['Value'][4])
                    local Size = Vector2.new(IconData['Value'][1], IconData['Value'][2])
                    CreateItem('Material', __['Name'], IconData['Name'], Size, Offset, getBackgroundColor(__['Rarity']),
                        true, "x" .. __['Count'])
                end
            end
            ItemRange = ItemMax
        end

        SortItemMaterial('Material')
        local MaleeY = 0.0922693312;
        function CreateItemMalee(ImageId)
            local ImageLabel = Instance.new("ImageLabel")

            ImageLabel.Parent = CreateItemScreen
            ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel.BackgroundTransparency = 1.000
            ImageLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
            ImageLabel.BorderSizePixel = 0
            ImageLabel.Position = UDim2.new(0.915300548, 0, MaleeY, 0)
            ImageLabel.Size = UDim2.new(0, 100, 0, 100)
            ImageLabel.Image = ImageId
            MaleeY = MaleeY + OffsetYToSacle(102)
        end

        RequestGodhuman = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true)
        if RequestGodhuman == 1 then
            table.insert(MaleeList, "http://www.roblox.com/asset/?id=10338473987")
        end
        RquestSuperhuman = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman", true)

        if RquestSuperhuman == 1 then
            table.insert(MaleeList, "http://www.roblox.com/asset/?id=4831781711")
        end
        RequestSharkMan = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)

        if RequestSharkMan == 1 then
            table.insert(MaleeList, "http://www.roblox.com/asset/?id=6525157144")
        end


        RequestDeathStep = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true)

        if RequestDeathStep == 1 then
            table.insert(MaleeList, "http://www.roblox.com/asset/?id=6085350468")
        end

        RequestElectricClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true)

        if RequestElectricClaw == 1 then
            table.insert(MaleeList, "http://www.roblox.com/asset/?id=6866994470"
            )
        end

        RequestDragonTalon = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true)

        if RequestDragonTalon == 1 then
            table.insert(MaleeList, "http://www.roblox.com/asset/?id=7831677967")
        end
        for i, v in pairs(MaleeList) do
            CreateItemMalee(v)
        end
        for i, v in pairs(AwakeningToggler:GetChildren()) do
            if v:IsA('Frame') or v:IsA('TextLabel') then
                v.Visible = false
            end
        end

        AwakeningToggler.Visible = true
        wait(4 * math.random(0.5, 2.5))
        local AwakeningTogglerMain = AwakeningToggler:Clone()
        AwakeningTogglerMain.Name = HttpService:GenerateGUID()
        AwakeningTogglerMain.Parent = CreateItemScreen
        AwakeningTogglerMain.Position = UDim2.new(0.5, 0, 0.800000012, 2)
        AwakeningTogglerMain.Size = UDim2.new(1, 0, 0.300000012, 0)
        for i, v in pairs(AwakeningTogglerMain:GetDescendants()) do
            v.Name = HttpService:GenerateGUID()
            if v:IsA('Frame') or v:IsA('TextLabel') then
                v.Visible = true
            end
        end
        AwakeningToggler.Visible = false
        for i, v in pairs(AwakeningToggler:GetChildren()) do
            if v:IsA('Frame') or v:IsA('TextLabel') then
                v.Visible = true
            end
        end
    end
})


Misc:AddButton({
    Name = "Devil Fruit Shop",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
    end
})

Misc:AddButton({
    Name = "Title",
    Callback = function()
        local args = {
            [1] = "getTitles"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
    end
})
Misc:AddButton({
    Name = "Haki Color",
    Callback = function()
        game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
    end
})
local buff = Misc:AddLabel("")
buff:Set("Setting Buff")

Misc:AddToggle({
    Name = "Auto Rejoin",
    Default = true,
    Callback = function(Value)
        _G.AutoRejoin = Value
    end
})

spawn(function()
    while wait() do
        if _G.AutoRejoin then
            getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(
                child)
                if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
                    game:GetService("TeleportService"):Teleport(game.PlaceId)
                end
            end)
        end
    end
end)


Misc:AddButton({
    Name = "Phật khổng lồ",
    Callback = function()
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local Character = LocalPlayer.Character
        local Humanoid = Character:FindFirstChildOfClass("Humanoid")

        function rm()
            for i, v in pairs(Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    if v.Name == "Handle" or v.Name == "Head" then
                        if Character.Head:FindFirstChild("OriginalSize") then
                            Character.Head.OriginalSize:Destroy()
                        end
                    else
                        for i, cav in pairs(v:GetDescendants()) do
                            if cav:IsA("Attachment") then
                                if cav:FindFirstChild("OriginalPosition") then
                                    cav.OriginalPosition:Destroy()
                                end
                            end
                        end
                        v:FindFirstChild("OriginalSize"):Destroy()
                        if v:FindFirstChild("AvatarPartScaleType") then
                            v:FindFirstChild("AvatarPartScaleType"):Destroy()
                        end
                    end
                end
            end
        end

        rm()
        wait(0.5)
        Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
        wait(1)
    end
})
local pbuff = Misc:AddLabel("")
pbuff:Set("Người chơi")

Misc:AddToggle({
    Name = "Đi trên nước",
    Default = true,
    Callback = function(Value)
        _G.WalkWater = Value
    end
})
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.WalkWater then
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000)
            else
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000)
            end
        end)
    end
end)



Misc:AddToggle({
    Name = "Chạy nhanh",
    Default = false,
    Callback = function(Value)
        _G.GsE = Value
    end
})

spawn(function()
    while wait() do
        pcall(function()
            if _G.GsE then
                game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 300
                game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 300
                game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 300
            end
        end)
    end
end)

Misc:AddToggle({
    Name = "Soru vô tận",
    Default = false,
    Callback = function(Value)
        getgenv().InfSoru = Value
    end
})

spawn(function()
    while wait() do
        pcall(function()
            if getgenv().InfSoru and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil then
                for i, v in next, getgc() do
                    if game:GetService("Players").LocalPlayer.Character.Soru then
                        if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
                            for i2, v2 in next, getupvalues(v) do
                                if typeof(v2) == "table" then
                                    repeat
                                        wait(0.1)
                                        v2.LastUse = 0
                                    until not getgenv().InfSoru or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

Misc:AddToggle({
    Name = "Geppo vô tận",
    Default = getgenv().InfGeppo,
    Callback = function(a)
        getgenv().InfGeppo = a
    end
})
spawn(function()
    while wait() do
        if getgenv().InfGeppo then
            for a, a in next, getgc() do
                if game:GetService("Players").LocalPlayer.Character.Geppo then
                    if typeof(a) == "function" and getfenv(a).script == game:GetService("Players").LocalPlayer.Character.Geppo then
                        for b, c in next, getupvalues(a) do
                            if tostring(b) == "9" then
                                repeat
                                    wait(.1)
                                    setupvalue(a, b, 0)
                                until not getgenv().InfGeppo or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                            end
                        end
                    end
                end
            end
        end
    end
end)

if World1 or World2 then
    RaceV4:AddLabel("Mày đéo ở sea 3")
end

if World3 then
    local fmmg = RaceV4:AddLabel("")
    fmmg:Set("Trăng tròn & Đảo bí ẩn")
    local FM = RaceV4:AddLabel("Mày đéo ở sea 3")
    local Mirragecheck = RaceV4:AddLabel("You Not In Third Sea")

    task.spawn(function()
        while task.wait() do
            pcall(function()
                if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
                    FM:Set("Trăng tròn 100%")
                elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
                    FM:Set("Trăng tròn 75%")
                elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
                    FM:Set("Trăng tròn 50%")
                elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
                    FM:Set("Trăng tròn 25%")
                elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
                    FM:Set("Trăng tròn 15%")
                else
                    FM:Set("Trăng tròn 0%")
                end
            end)
        end
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                    Mirragecheck:Set('Đảo bí ẩn đang xuất hiện')
                else
                    Mirragecheck:Set('Đảo bí ẩn chưa xuất hiện')
                end
            end
        end)
    end)
    local tempe1 = RaceV4:AddLabel("")
    tempe1:Set("Dịch chuyển")

    RaceV4:AddButton({
        Name = "Dịch chuyển đến Temple Of Time",
        Callback = function()
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875,
                14895.3017578125, 102.62469482421875)
        end
    })



    RaceV4:AddButton({
        Name = "Dịch chuyển đến Level Pull",
        Callback = function()
            TP2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
        end
    })



    RaceV4:AddButton({
        Name = "Dịch chuyển đến Acient One",
        Callback = function()
            TP2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
        end
    })

    RaceV4:AddButton({
        Name = "Mua 1 nhiệm vụ Acient",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('UpgradeRace', 'Buy')
        end
    })

    local racedoor = RaceV4:AddLabel("")
    racedoor:Set("Dịch chuyển đến cửa tộc")


    RaceV4:AddButton({
        Name = "Người máy",
        Callback = function()
            TP2(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
        end
    })

    RaceV4:AddButton({
        Name = "Cá",
        Callback = function()
            TP2(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
        end
    })

    RaceV4:AddButton({
        Name = "Quỷ",
        Callback = function()
            TP2(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
        end
    })

    RaceV4:AddButton({
        Name = "Human",
        Callback = function()
            TP2(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
        end
    })

    RaceV4:AddButton({
        Name = "Thỏ",
        Callback = function()
            TP2(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
        end
    })

    RaceV4:AddButton({
        Name = "Thiên thần",
        Callback = function()
            TP2(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
        end
    })

    local comptrialkill = RaceV4:AddLabel("")
    comptrialkill:Set("Giết người chơi")

    RaceV4:AddToggle({
        Name = "Giết người chơi khi trial V4",
        Default = false,
        Callback = function(Value)
            KillPlayer = Value
            StopTween(KillPlayer)
        end
    })
    spawn(function()
        while wait() do
            pcall(function()
                if KillPlayer then
                    for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                        if v.Name ~= game.Players.LocalPlayer.Name and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            if v.Humanoid.Health > 0 then
                                repeat
                                    wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    NameTarget = v.Name
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0))
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    Click()
                                until not KillPlayer or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                end
            end)
        end
    end)

    RaceV4:AddToggle({
        Name = "Giết người chơi khi trial V4 [Spam chiêu]",
        Default = false,
        Callback = function(Value)
            KillPlayerSpam = Value
            StopTween(KillPlayerSpam)
        end
    })

    spawn(function()
        while wait() do
            pcall(function()
                if KillPlayerSpam then
                    for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                        if v.Name ~= game.Players.LocalPlayer.Name and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            if v.Humanoid.Health > 0 then
                                repeat
                                    wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    NameTarget = v.Name
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0))
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    Click()
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false,
                                        game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false,
                                        game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(.2)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false,
                                        game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false,
                                        game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(.2)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false,
                                        game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false,
                                        game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(.2)
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false,
                                        game.Players.LocalPlayer.Character.HumanoidRootPart)
                                until not KillPlayer or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                end
            end)
        end
    end)


    local comptrial = RaceV4:AddLabel("")
    comptrial:Set("TỰ động hoàn thành trial")

    RaceV4:AddToggle({
        Name = "Hoàn thành trial V4",
        Default = false,
        Callback = function(Value)
            _G.AutoQuestRace = Value
            StopTween(_G.AutoQuestRace)
        end
    })

    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoQuestRace then
                    if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                        for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                pcall(function()
                                    repeat
                                        wait(.1)
                                        v.Humanoid.Health = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
                                end)
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                        for i, v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
                            topos(game.Workspace.Map.SkyTrial.Model.FinishPart.CFrame)
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                        for i, v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
                            if v.Name == "HumanoidRootPart" then
                                topos(v.CFrame * CFrame.new(PosX, PosY, PosZ))
                                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
                                        if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                        end
                                    end
                                end
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(.2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(.2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(.2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
                                        if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                        end
                                    end
                                end
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(.2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(.2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)

                                wait(0.5)
                                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
                                        if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                        end
                                    end
                                end
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(.2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(.2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(0.5)
                                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
                                        if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                        end
                                    end
                                end
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(.2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                wait(.2)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false,
                                    game.Players.LocalPlayer.Character.HumanoidRootPart)
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                        topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                        for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                pcall(function()
                                    repeat
                                        wait(.1)
                                        v.Humanoid.Health = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                    until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
                                end)
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                        for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                            if v.Name == "StartPoint" then
                                topos(v.CFrame * CFrame.new(0, 9, 0))
                            end
                        end
                    end
                end
            end
        end)
    end)




    local Mirage = RaceV4:AddLabel("")
    Mirage:Set("Đảo bí ẩn")

    RaceV4:AddToggle({
        Name = "Tự động đảo bí ẩn",
        Default = false,
        Callback = function(state)
            _G.dao = state
            if state then
                _G.dao = true
            else
                _G.dao = false
            end

            if _G.dao then
                local args = {
                    [1] = "requestEntrance",
                    [2] = Vector3.new(-12463.6025390625, 378.3270568847656, -7566.0830078125)
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5411.22021, 778.609863,
                    -2682.27759, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396)
                wait(0)
                -- Script generated by SimpleSpy - credits to exx#9394

                local args = {
                    [1] = "BuyBoat",
                    [2] = "PirateBrigade"
                }

                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                function two(gotoCFrame) --- Tween
                    pcall(function()
                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                    end)
                    if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude <= 200 then
                        pcall(function()
                            tweenz:Cancel()
                        end)
                        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = gotoCFrame
                    else
                        local tween_s = game:service "TweenService"
                        local info = TweenInfo.new(
                            (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position)
                            .Magnitude / 325, Enum.EasingStyle.Linear)
                        tween, err = pcall(function()
                            tweenz = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info,
                                { CFrame = gotoCFrame })
                            tweenz:Play()
                        end)
                        if not tween then return err end
                    end
                    function _TweenCanCle()
                        tweenz:Cancel()
                    end
                end

                two(CFrame.new(-5100.7085, 29.968586, -6792.45459, -0.33648631, -0.0396691673, 0.940852463,
                    -6.40461678e-07, 0.999112308, 0.0421253517, -0.941688359, 0.0141740013, -0.336187631))

                wait(13)
                for _, v in next, workspace.Boats.PirateBrigade:GetDescendants() do
                    if v.Name:find("VehicleSeat") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                            topos(game:GetService("Workspace").Map:FindFirstChild("MysticIsland").HumanoidRootPart
                                .CFrame * CFrame.new(0, 500, -100))
                        end
                    end
                end
            end
        end
    })


    function EquipAllWeapon()
        pcall(function()
            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA('Tool') and not (v.Name == "Summon Sea Beast" or v.Name == "Water Body" or v.Name == "Awakening") then
                    local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid)
                    wait(1)
                end
            end
        end)
    end

    RaceV4:AddToggle({
        Name = "Tự động quái vật biển",
        Default = false,
        Callback = function(Value)
            _G.Auto_Seabest = Value
        end
    })


    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg, false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = { ... }
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if Skillaimbot then
                        args[2] = AimBotSkillPosition
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)


    Skillz = true
    Skillx = true
    Skillc = true
    Skillv = true

    spawn(function()
        while wait() do
            pcall(function()
                if AutoSkill then
                    if Skillz then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                    end
                    if Skillx then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                    end
                    if Skillc then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                    end
                    if Skillv then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                    end
                end
            end)
        end
    end)

    task.spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Seabest then
                    if not game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
                        if not game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") then
                            if not game:GetService("Workspace").Enemies:FindFirstChild("PirateBasic") then
                                if not game:GetService("Workspace").Boats:FindFirstChild("MarineBrigade") then
                                    buyb = topos(CFrame.new(-11.78054428100586, 10.302456855773926, 2927.2255859375))
                                    if (CFrame.new(-11.78054428100586, 10.302456855773926, 2927.2255859375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                        if buyb then buyb:Stop() end
                                        local args = {
                                            [1] = "BuyBoat",
                                            [2] = "PirateBrigade"
                                        }

                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                elseif game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                                    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                                        TPP(game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat.CFrame *
                                            CFrame.new(0, 1, 0))
                                    elseif game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
                                        repeat
                                            wait()
                                            if (game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                                TPB(CFrame.new(35.04552459716797, 17.750778198242188, 4819.267578125))
                                            end
                                        until game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or _G.Auto_Seabest == false
                                    end
                                end
                            elseif game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") then
                                for is, vs in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if vs.Name == "PirateBrigade" then
                                        if v:FindFirstChild("VehicleSeat") then
                                            repeat
                                                wait()
                                                game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                                TPP(vs.VehicleSeat.CFrame * CFrame.new(0, 30, 0))
                                                EquipAllWeapon()
                                                AutoSkill = true
                                                AimBotSkillPosition = vs.VehicleSeat
                                                Skillaimbot = true
                                            until not game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or _G.Auto_Seabest == false
                                            AutoSkill = false
                                            Skillaimbot = false
                                        end
                                    end
                                end
                            end
                        elseif game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") then
                            for iss, vss in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if vss.Name == "PirateBrigade" then
                                    if v:FindFirstChild("VehicleSeat") then
                                        repeat
                                            wait()
                                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                            TPP(vss.VehicleSeat.CFrame * CFrame.new(0, 30, 0))
                                            EquipAllWeapon()
                                            AutoSkill = true
                                            AimBotSkillPosition = vss.VehicleSeat
                                            Skillaimbot = true
                                        until not game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or _G.Auto_Seabest == false
                                        AutoSkill = false
                                        Skillaimbot = false
                                    end
                                end
                            end
                        end
                    elseif game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
                        for i, v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") then
                                repeat
                                    wait()
                                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                    TPP(v.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0))
                                    EquipAllWeapon()
                                    AutoSkill = true
                                    AimBotSkillPosition = v.HumanoidRootPart
                                    Skillaimbot = true
                                until not v:FindFirstChild("HumanoidRootPart") or _G.Auto_Seabest == false
                                AutoSkill = false
                                Skillaimbot = false
                            end
                        end
                    end
                end
            end)
        end
    end)






    RaceV4:AddToggle({
        Name = "Dịch chuyển đến đảo bí ẩn",
        Default = false,
        Callback = function(Value)
            _G.Mirage = Value
        end
    })

    spawn(function()
        pcall(function()
            while wait() do
                if _G.Mirage then
                    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                        function toTargetWait(a)
                            local b = (a.p - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
                                .Magnitude; tweenrach = game:GetService('TweenService'):Create(
                                game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"),
                                TweenInfo.new(b / 250, Enum.EasingStyle.Linear), { CFrame = a })
                            tweenrach:Play()
                        end; toTargetWait(workspace.Map.MysticIsland.PrimaryPart.CFrame * CFrame.new(0, 250, 0))
                    else
                        OrionLib:MakeNotification({
                            Name = "Đảo bí ẩn chưa xuất hiện",
                            Content = "Crazzy Hub",
                            Image = "rbxassetid://14879163492",
                            Time = 7
                        })
                        if _G.MirageHop then
                            wait(6)
                            Hop()
                        end
                    end
                end
            end
        end)
    end)




    RaceV4:AddButton({
        Name = "Dịch chuyển đến bánh răng xanh",
        Callback = function(Value)
            _G.TweenMGear = Value
            StopTween(_G.TweenMGear)
        end
    })

    spawn(function()
        pcall(function()
            while wait() do
                if _G.TweenMGear then
                    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                        for i, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
                            if v:IsA("MeshPart") then
                                if v.Material == Enum.Material.Neon then
                                    topos(v.CFrame)
                                end
                            end
                        end
                    end
                end
            end
        end)
    end)

    RaceV4:AddButton({
        Name = "Xóa xương mù",
        Callback = function()
            game.Lighting.Sky:Destroy()
        end
    })
end


DF:AddToggle({
    Name = "Random trái ác quỷ",
    Default = false,
    Callback = function(Value)
        _G.Random_Auto = Value
    end
})

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Random_Auto then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
            end
        end
    end)
end)


DF:AddToggle({
    Name = "Tự động lưu trữ trái ác quỷ",
    Default = false,
    Callback = function(Value)
        _G.AutoStoreFruit = Value
    end
})

spawn(function()
    while task.wait() do
        if _G.AutoStoreFruit then
            pcall(function()
                if _G.AutoStoreFruit then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bomb-Bomb",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spike-Spike",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Chop-Chop",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spring-Spring",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Kilo-Kilo",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Smoke-Smoke",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spin-Spin",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Flame-Flame",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",
                            "Bird-Bird: Falcon",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Ice-Ice",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Sand-Sand",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dark-Dark",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Revive-Revive",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Diamond-Diamond",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Light-Light",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Love-Love",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rubber-Rubber",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Barrier-Barrier",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Magma-Magma",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Door-Door",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit"))
                    end
                end
                if not trygettrevo then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Quake-Quake",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",
                            "Human-Human: Buddha",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "String-String",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",
                            "Bird-Bird: Phoenix",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rumble-Rumble",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Paw-Paw",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Gravity-Gravity",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dough-Dough",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Shadow-Shadow",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Venom-Venom",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Control-Control",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Soul Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Soul-Soul",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dragon-Dragon",
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
                    end
                end
            end)
        end
        wait(1)
    end
end)


DF:AddToggle({
    Name = "Dịch chuyển đến trái ác quỷ",
    Default = false,
    Callback = function(Value)
        _G.Grabfruit = Value
    end
})

spawn(function()
    while wait(.1) do
        if _G.Grabfruit then
            for i, v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                end
            end
        end
    end
end)

local melee = Shop:AddLabel("")
melee:Set("Cận chiến")
Shop:AddButton({
    Name = " Mua Black Leg",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end
})

Shop:AddButton({
    Name = " Mua Electro",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end
})

Shop:AddButton({
    Name = " Mua Fishman Karate",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end
})

Shop:AddButton({
    Name = " Mua Dragon Claw",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
    end
})

Shop:AddButton({
    Name = " Mua Superhuman",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end
})

Shop:AddButton({
    Name = " Mua Death Step",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end
})

Shop:AddButton({
    Name = " Mua Sharkman Karate",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end
})

Shop:AddButton({
    Name = " Mua Electric Claw",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end
})

Shop:AddButton({
    Name = " Mua Dragon Talon",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end
})

Shop:AddButton({
    Name = " Mua God Human",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end
})
local sotig = Shop:AddLabel("")
sotig:Set("Something")
Shop:AddButton({
    Name = "Mua Buso Haki",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
    end
})

Shop:AddButton({
    Name = "Mua Geppo",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
    end
})

Shop:AddButton({
    Name = "Mua Soru",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
    end
})

Shop:AddButton({
    Name = "Mua haki quan sát",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
    end
})

Shop:AddButton({
    Name = "Tẩy chí số",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
    end
})

Shop:AddButton({
    Name = "Đổi tộc",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
    end
})


local sever = Misc:AddLabel("")
sever:Set("Sever")

Misc:AddButton({
    Name = "Vào lại sever",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end
})
Misc:AddButton({
    Name = "Đổi sever",
    Callback = function()
        Hop()
    end
})
function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' ..
                PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' ..
                PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i, v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _, Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                -- delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(.1)
                end
            end
        end
    end

    function Teleport()
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end

    Teleport()
end

local auto = Stats:AddLabel("")
auto:Set("Tự động chỉ số")


Stats:AddToggle({
    Name = " Tự động cận chiến",
    Default = false,
    Callback = function(value)
        _G.Auto_Stats_Melee = value
    end
})

spawn(function()
    while wait() do
        if _G.Auto_Stats_Melee then
            local args = {
                [1] = "AddPoint",
                [2] = "Melee",
                [3] = _G.Point
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

Stats:AddToggle({
    Name = "Tự động phòng thủ",
    Default = false,
    Callback = function(Value)
        _G.Auto_Stats_Defense = Value
    end
})

spawn(function()
    while wait() do
        if _G.Auto_Stats_Defense then
            local args = {
                [1] = "AddPoint",
                [2] = "Defense",
                [3] = _G.Point
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)


Stats:AddToggle({
    Name = "Tự động kiếm",
    Default = false,
    Callback = function(Value)
        _G.Auto_Stats_Sword = Value
    end
})

spawn(function()
    while wait() do
        if _G.Auto_Stats_Sword then
            local args = {
                [1] = "AddPoint",
                [2] = "Sword",
                [3] = _G.Point
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)


Stats:AddToggle({
    Name = "Tự động súng",
    Default = false,
    Callback = function(Value)
        _G.Auto_Stats_Gun = Value
    end
})

spawn(function()
    while wait() do
        if _G.Auto_Stats_Gun then
            local args = {
                [1] = "AddPoint",
                [2] = "Gun",
                [3] = _G.Point
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)



Stats:AddToggle({
    Name = "Tự động trái ác quỷ",
    Default = false,
    Callback = function(Value)
        _G.Auto_Stats_Devil_Fruit = Value
    end
})

spawn(function()
    while wait() do
        if _G.Auto_Stats_Devil_Fruit then
            local args = {
                [1] = "AddPoint",
                [2] = "Demon Fruit",
                [3] = _G.Point
            }

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)
local ripindra = Farm:AddLabel("")
ripindra:Set("Rip Indra")
Farm:AddToggle({
    Name = "Tự động Rip_Indra",
    Default = false,
    Callback = function(Value)
        RipIndra = Value
    end
})

spawn(function()
    while task.wait() do
        if RipIndra then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
                                repeat
                                    task.wait()
                                    EquipTool(_G.SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    --v.Humanoid:ChangeState(11)
                                    --v.Humanoid:ChangeState(14)
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                until v.Humanoid.Health <= 0 or not RipIndra
                            end
                        end
                    end
                else
                    loc11 = CFrame.new(-5524.53271, 313.800537, -2918.07422, 0.964194059, 0, 0.265197694, 0, 1, 0,
                        -0.265197694, 0, 0.964194059)
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - loc11.Position).Magnitude > 2000 then
                            BTP(loc11)
                            wait(3)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - loc11.Position).Magnitude < 2000 then
                            Tween(loc11)
                        end
                    else
                        Tween(loc11)
                    end
                end
            end)
        end
    end
end)

Stats:AddSlider({
    Name = "Số điểm muốn nâng",
    Min = 1,
    Max = 100,
    Default = 1,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "",
    Callback = function(value)
        _G.Point = value
        return "Point : " .. tostring(value)
    end
})
local fpsboost = Misc:AddLabel("")
fpsboost:Set("Tăng FPS và màn hình")

Misc:AddToggle({
    Name = "Màn hình trắng",
    Default = false,
    Callback = function(Value)
        _G.WhiteScreen = Value
        if _G.WhiteScreen == true then
            game:GetService("RunService"):Set3dRenderingEnabled(false)
        elseif _G.WhiteScreen == false then
            game:GetService("RunService"):Set3dRenderingEnabled(true)
        end
    end
})

Misc:AddToggle({
    Name = "Màn hình đen",
    Default = false,
    Callback = function(Value)
        StartBlackScreen = Value
        local BlackScreen = game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen
        getgenv().DefaultSize = BlackScreen.Size
        getgenv().NewSize = UDim2.new(500, 0, 500, 500)
        getgenv().StartBlackScreen = false
        if StartBlackScreen then
            BlackScreen.Size = NewSize
        else
            BlackScreen.Size = UDim2.new(DefaultSize)
        end
        _G.WhiteScreen = value
        if _G.WhiteScreen == true then
            game:GetService("RunService"):Set3dRenderingEnabled(false)
        elseif _G.WhiteScreen == false then
            game:GetService("RunService"):Set3dRenderingEnabled(true)
        end
    end
})


Misc:AddButton({
    Name = "Tăng FPS",
    Callback = function()
        for i, v in pairs(game.Workspace.Map:GetDescendants()) do
            if v.Name == "Tavern" or v.Name == "SmileFactory" or v.Name == "Tree" or v.Name == "Rocks" or v.Name == "PartHouse" or v.Name == "Hotel" or v.Name == "WallPiece" or v.Name == "MiddlePillars" or v.Name == "Cloud" or v.Name == "PluginGrass" or v.Name == "BigHouse" or v.Name == "SmallHouse" or v.Name == "Detail" then
                v:Destroy()
            end
        end
        for i, v in pairs(game.ReplicatedStorage.Unloaded:GetDescendants()) do
            if v.Name == "Tavern" or v.Name == "SmileFactory" or v.Name == "Tree" or v.Name == "Rocks" or v.Name == "PartHouse" or v.Name == "Hotel" or v.Name == "WallPiece" or v.Name == "MiddlePillars" or v.Name == "Cloud" or v.Name == "PluginGrass" or v.Name == "BigHouse" or v.Name == "SmallHouse" or v.Name == "Detail" then
                v:Destroy()
            end
        end
        for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("Accessory") or v.Name == "Pants" or v.Name == "Shirt" then
                v:Destroy()
            end
        end
        local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false
            elseif v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = 10385902758728957
            end
        end
        for i, e in pairs(l:GetChildren()) do
            if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                e.Enabled = false
            end
        end
    end
})

Misc:AddButton({
    Name = "Tăng FPS SUPERRRRRRRRRRRR",
    Callback = function(value)
        _G.SuperFPSboost = value
    end
})



spawn(function()
    while wait() do
        if _G.SuperFPSboost then
            for i, v in pairs(game.Workspace.Map:GetDescendants()) do
                if v.Name == "Tavern" or v.Name == "SmileFactory" or v.Name == "Tree" or v.Name == "Rocks" or v.Name == "PartHouse" or v.Name == "Hotel" or v.Name == "WallPiece" or v.Name == "MiddlePillars" or v.Name == "Cloud" or v.Name == "PluginGrass" or v.Name == "BigHouse" or v.Name == "SmallHouse" or v.Name == "Detail" then
                    v:Destroy()
                end
            end
            for i, v in pairs(game.ReplicatedStorage.Unloaded:GetDescendants()) do
                if v.Name == "Tavern" or v.Name == "SmileFactory" or v.Name == "Tree" or v.Name == "Rocks" or v.Name == "PartHouse" or v.Name == "Hotel" or v.Name == "WallPiece" or v.Name == "MiddlePillars" or v.Name == "Cloud" or v.Name == "PluginGrass" or v.Name == "BigHouse" or v.Name == "SmallHouse" or v.Name == "Detail" then
                    v:Destroy()
                end
            end
            for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("Accessory") or v.Name == "Pants" or v.Name == "Shirt" then
                    v:Destroy()
                end
            end
            local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
            local g = game
            local w = g.Workspace
            local l = g.Lighting
            local t = w.Terrain
            t.WaterWaveSize = 0
            t.WaterWaveSpeed = 0
            t.WaterReflectance = 0
            t.WaterTransparency = 0
            l.GlobalShadows = false
            l.FogEnd = 9e9
            l.Brightness = 0
            settings().Rendering.QualityLevel = "Level01"
            for i, v in pairs(g:GetDescendants()) do
                if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                    v.Enabled = false
                elseif v:IsA("MeshPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                    v.TextureID = 10385902758728957
                end
            end
            for i, e in pairs(l:GetChildren()) do
                if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                    e.Enabled = false
                end
            end
        end
    end
end)

Misc:AddSlider({
    Name = "Khóa FPS",
    Min = 1,
    Max = 499,
    Default = 60,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "",
    Callback = function(K)
        setfpscap(tonumber(K));
    end
})

Misc:AddButton({
    Name = "Mở khóa FPS",
    Callback = function()
        setfpscap(500)
    end
})

Misc:AddButton({
    Name = "Tăng FSP [Xóa màu]",
    Callback = function()
        for _, v in pairs(workspace:GetDescendants()) do
            if v.ClassName == "Part"
                or v.ClassName == "SpawnLocation"
                or v.ClassName == "WedgePart"
                or v.ClassName == "Terrain"
                or v.ClassName == "MeshPart" then
                v.BrickColor = BrickColor.new(155, 155, 155)
                v.Material = "Plastic"
            end
        end
    end
})

Misc:AddButton({
    Name = "Tăng FSP [Chế độ nhanh]",
    Callback = function()
        for _, v in pairs(workspace:GetDescendants()) do
            if v.ClassName == "Part"
                or v.ClassName == "SpawnLocation"
                or v.ClassName == "WedgePart"
                or v.ClassName == "Terrain"
                or v.ClassName == "MeshPart" then
                v.Material = "Plastic"
            end
        end
    end
})
Misc:AddToggle({
    Name = "Xóa thông báo",
    Default = false,
    Callback = function(Value)
        _G.Remove_trct = Value
    end
})

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.Remove_trct == true then
            game:GetService("ReplicatedStorage").Notification:Destroy()
        end
    end)
end)
local jobid = Misc:AddLabel("")
jobid:Set("Job ID dịch chuyển đến sever l nào đó")
Misc:AddTextbox({
    Name = "Dán Job ID vào đây",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        _G.Job = Value
    end
})

Misc:AddButton({
    Name = "Dịch chuyển",
    Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, _G.Job, game.Players.LocalPlayer)
    end
})

Misc:AddButton({
    Name = "Sao chép Job ID của cái sever l này",
    Callback = function()
        setclipboard(tostring(game.JobId))
    end
})



local des = Misc:AddLabel("")
des:Set("Phá hủy Gui")
Misc:AddButton({
    Name = "Phá hủy Gui Crazzy Hub",
    Callback = function()
        OrionLib:Destroy()
    end
})
local islandtp = Island:AddLabel("")
islandtp:Set("Dịch chuyển đến đảo")


if World1 then
    Island:AddDropdown({
        Name = "Chọn đảo",
        Default = "1",
        Options = {
            "WindMill",
            "Marine",
            "Middle Town",
            "Jungle",
            "Pirate Village",
            "Desert",
            "Snow Island",
            "MarineFord",
            "Colosseum",
            "Sky Island 1",
            "Sky Island 2",
            "Sky Island 3",
            "Prison",
            "Magma Village",
            "Under Water Island",
            "Fountain City",
            "Shank Room",
            "Mob Island"
        },
        Callback = function(Value)
            _G.SelectIsland = Value
        end
    })
end

if World2 then
    Island:AddDropdown({
        Name = "Chọn đảo",
        Default = "1",
        Options = {
            "The Cafe",
            "Frist Spot",
            "Dark Area",
            "Flamingo Mansion",
            "Flamingo Room",
            "Green Zone",
            "Factory",
            "Colossuim",
            "Zombie Island",
            "Two Snow Mountain",
            "Punk Hazard",
            "Cursed Ship",
            "Ice Castle",
            "Forgotten Island",
            "Ussop Island",
            "Mini Sky Island"
        },
        Callback = function(Value)
            _G.SelectIsland = Value
        end
    })
end

if World3 then
    Island:AddDropdown({
        Name = "Chọn đảo",
        Default = "1",
        Options = {
            "Mansion",
            "Port Town",
            "Great Tree",
            "Castle On The Sea",
            "MiniSky",
            "Hydra Island",
            "Floating Turtle",
            "Haunted Castle",
            "Ice Cream Island",
            "Peanut Island",
            "Cake Island",
            "Cocoa Island",
            "Candy Island"
        },
        Callback = function(Value)
            _G.SelectIsland = Value
        end
    })
end

Island:AddToggle({
    Name = "Dịch chuyển",
    Default = false,
    Callback = function(Value)
        _G.TeleportIsland = Value
        if _G.TeleportIsland == true then
            repeat
                wait()
                if _G.SelectIsland == "WindMill" then
                    Tween(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif _G.SelectIsland == "Marine" then
                    Tween(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif _G.SelectIsland == "Middle Town" then
                    Tween(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif _G.SelectIsland == "Jungle" then
                    Tween(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif _G.SelectIsland == "Pirate Village" then
                    Tween(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif _G.SelectIsland == "Desert" then
                    Tween(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif _G.SelectIsland == "Snow Island" then
                    Tween(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif _G.SelectIsland == "MarineFord" then
                    Tween(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif _G.SelectIsland == "Colosseum" then
                    Tween(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif _G.SelectIsland == "Sky Island 1" then
                    Tween(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif _G.SelectIsland == "Sky Island 2" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(-4607.82275, 872.54248, -1667.55688))
                elseif _G.SelectIsland == "Sky Island 3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif _G.SelectIsland == "Prison" then
                    Tween(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif _G.SelectIsland == "Magma Village" then
                    Tween(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif _G.SelectIsland == "Under Water Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.SelectIsland == "Fountain City" then
                    Tween(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                elseif _G.SelectIsland == "Shank Room" then
                    Tween(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                elseif _G.SelectIsland == "Mob Island" then
                    Tween(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                elseif _G.SelectIsland == "The Cafe" then
                    Tween(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif _G.SelectIsland == "Frist Spot" then
                    Tween(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif _G.SelectIsland == "Dark Area" then
                    Tween(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif _G.SelectIsland == "Flamingo Mansion" then
                    Tween(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif _G.SelectIsland == "Flamingo Room" then
                    Tween(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                elseif _G.SelectIsland == "Green Zone" then
                    Tween(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif _G.SelectIsland == "Factory" then
                    Tween(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif _G.SelectIsland == "Colossuim" then
                    Tween(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif _G.SelectIsland == "Zombie Island" then
                    Tween(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                elseif _G.SelectIsland == "Two Snow Mountain" then
                    Tween(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                elseif _G.SelectIsland == "Punk Hazard" then
                    Tween(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                elseif _G.SelectIsland == "Cursed Ship" then
                    Tween(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
                elseif _G.SelectIsland == "Ice Castle" then
                    Tween(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif _G.SelectIsland == "Forgotten Island" then
                    Tween(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif _G.SelectIsland == "Ussop Island" then
                    Tween(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif _G.SelectIsland == "Mini Sky Island" then
                    Tween(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                elseif _G.SelectIsland == "Great Tree" then
                    Tween(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                elseif _G.SelectIsland == "Castle On The Sea" then
                    Tween(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
                elseif _G.SelectIsland == "MiniSky" then
                    Tween(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                elseif _G.SelectIsland == "Port Town" then
                    Tween(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                elseif _G.SelectIsland == "Hydra Island" then
                    Tween(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
                elseif _G.SelectIsland == "Floating Turtle" then
                    Tween(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                elseif _G.SelectIsland == "Mansion" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                        Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                elseif _G.SelectIsland == "Haunted Castle" then
                    Tween(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                elseif _G.SelectIsland == "Ice Cream Island" then
                    Tween(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                elseif _G.SelectIsland == "Peanut Island" then
                    Tween(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                elseif _G.SelectIsland == "Cake Island" then
                    Tween(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                elseif _G.SelectIsland == "Cocoa Island" then
                    Tween(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
                elseif _G.SelectIsland == "Candy Island" then
                    Tween(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                end
            until not _G.TeleportIsland
        end
        StopTween(_G.TeleportIsland)
    end
})

local btpzzz = Island:AddLabel("")
btpzzz:Set("Dịch chuyển nhanh")
if World1 then
    Island:AddDropdown({
        Name = "Chọn đảo",
        Default = "1",
        Options = {
            "WindMill",
            "Marine",
            "Middle Town",
            "Jungle",
            "Pirate Village",
            "Desert",
            "Snow Island",
            "MarineFord",
            "Colosseum",
            "Sky Island 1",
            "Prison",
            "Magma Village",
            "Under Water Island",
            "Fountain City"
        },
        Callback = function(Value)
            _G.SelectWarp = Value
        end
    })
end

if World2 then
    Island:AddDropdown({
        Name = "Chọn đảo",
        Default = "1",
        Options = {
            "The Cafe",
            "Frist Spot",
            "Flamingo Room",
            "Green Zone",
            "Zombie Island",
            "Two Snow Mountain",
            "Punk Hazard",
            "Cursed Ship",
            "Ice Castle",
            "Forgotten Island"
        },
        Callback = function(Value)
            _G.SelectWarp = Value
        end
    })
end

if World3 then
    Island:AddDropdown({
        Name = "Chọn đảo",
        Default = "1",
        Options = {
            "Mansion",
            "Port Town",
            "Great Tree",
            "Castle On The Sea",
            "Hydra Island",
            "Haunted Castle",
            "Ice Cream Island",
            "Peanut Island",
            "Cake Island",
            "Sea to Treats",
            "Cake Island"
        },
        Callback = function(Value)
            _G.SelectWarp = Value
        end
    })
end

Island:AddButton({
    Name = "Dịch chuyển nhanh",
    Callback = function()
        if _G.TeleportWarp == "Manslon" then
        elseif _G.SelectWarp == "WindMill" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(979.79895019531, 16.516613006592,
                1429.0466308594)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Marine" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2566.4296875, 6.8556680679321,
                2045.2561035156)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Middle Town" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-690.33081054688, 15.09425163269,
                1582.2380371094)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Jungle" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1612.7957763672, 36.852081298828,
                149.12843322754)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Pirate Village" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1181.3093261719, 4.7514905929565,
                3803.5456542969)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Desert" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(944.15789794922, 20.919729232788,
                4373.3002929688)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Snow Island" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.8067626953, 104.66806030273,
                -1319.7370605469)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "MarineFord" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4914.8212890625, 50.963626861572,
                4281.0278320313)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Colosseum" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1427.6203613281, 7.2881078720093,
                -2792.7722167969)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Sky Island 1" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4869.1025390625, 733.46051025391,
                -2667.0180664063)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Prison" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4875.330078125, 5.6519818305969,
                734.85021972656)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Magma Village" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5247.7163085938, 12.883934020996,
                8504.96875)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Under Water Island" then
            wait(.1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        elseif _G.SelectWarp == "Fountain City" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5127.1284179688, 59.501365661621,
                4105.4458007813)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Shank Room" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.16553, 29.8788261, -28.3547478)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Mob Island" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2850.20068, 7.39224768, 5354.99268)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "The Cafe" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-380.47927856445, 77.220390319824,
                255.82550048828)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Frist Spot" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11.311455726624, 29.276733398438,
                2771.5224609375)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Dark Area" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3780.0302734375, 22.652164459229,
                -3498.5859375)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Flamingo Mansion" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-483.73370361328, 332.0383605957,
                595.32708740234)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Flamingo Room" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2284.4140625, 15.152037620544,
                875.72534179688)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Green Zone" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2448.5300292969, 73.016105651855,
                -3210.6306152344)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Factory" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(424.12698364258, 211.16171264648,
                -427.54049682617)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Colossuim" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1503.6224365234, 219.7956237793,
                1369.3101806641)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Zombie Island" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5622.033203125, 492.19604492188,
                -781.78552246094)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Two Snow Mountain" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(753.14288330078, 408.23559570313,
                -5274.6147460938)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Punk Hazard" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6127.654296875, 15.951762199402,
                -5040.2861328125)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Cursed Ship" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(923.40197753906, 125.05712890625,
                32885.875)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Ice Castle" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6148.4116210938, 294.38687133789,
                -6741.1166992188)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Forgotten Island" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3032.7641601563, 317.89672851563,
                -10075.373046875)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Ussop Island" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4816.8618164063, 8.4599885940552,
                2863.8195800781)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Mini Sky Island" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-288.74060058594, 49326.31640625,
                -35248.59375)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Great Tree" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2681.2736816406, 1682.8092041016,
                -7190.9853515625)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Castle On The Sea" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5085.23681640625, 316.5072021484375,
                -3156.202880859375)
        elseif _G.SelectWarp == "MiniSky" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260.65557861328, 49325.8046875,
                -35253.5703125)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Port Town" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-290.7376708984375, 6.729952812194824,
                5343.5537109375)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Hydra Island" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5749.7861328125, 611.9736938476562,
                -276.2497863769531)
        elseif _G.SelectWarp == "Floating Turtle" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13274.528320313, 531.82073974609,
                -7579.22265625)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Mansion" then
            wait(.1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Haunted Castle" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9515.3720703125, 164.00624084473,
                5786.0610351562)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Ice Cream Island" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-902.56817626953, 79.93204498291,
                -10988.84765625)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Peanut Island" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2062.7475585938, 50.473892211914,
                -10232.568359375)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Cake Island" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1884.7747802734375,
                19.327526092529297, -11666.8974609375)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Sea to Treats Old" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(508.21466064453125, 25.07753562927246,
                -12438.2294921875)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Cake Island" then
            wait(.1)
            game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1141.0223388671875,
                47.25519561767578, -14204.609375)
            game.Players.LocalPlayer.Character.Head:Destroy()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    end
})
local esp = Island:AddLabel("")
esp:Set("Esp")

function isnil(thing)
    return (thing == nil)
end

local function round(n)
    return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
    for i, v in pairs(game:GetService 'Players':GetChildren()) do
        pcall(function()
            if not isnil(v.Character) then
                if ESPPlayer then
                    if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui', v.Character.Head)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v.Character.Head
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. ' M')
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Team == game.Players.LocalPlayer.Team then
                            name.TextColor3 = Color3.new(0, 255, 0)
                        else
                            name.TextColor3 = Color3.new(255, 0, 0)
                        end
                    else
                        v.Character.Head['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude / 3) .. ' M')
                    end
                else
                    if v.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        v.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end)
    end
end

function UpdateChestChams()
    for i, v in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if string.find(v.Name, "Rương") then
                if ChestESP then
                    if string.find(v.Name, "Chest") then
                        if not v:FindFirstChild('NameEsp' .. Number) then
                            local bill = Instance.new('BillboardGui', v)
                            bill.Name = 'NameEsp' .. Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1, 200, 1, 30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel', bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            if v.Name == "Chest1" then
                                name.TextColor3 = Color3.fromRGB(10, 224, 153)
                                name.Text = ("Rương 1" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                            end
                            if v.Name == "Chest2" then
                                name.TextColor3 = Color3.fromRGB(10, 224, 153)
                                name.Text = ("Rương 2" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                            end
                            if v.Name == "Chest3" then
                                name.TextColor3 = Color3.fromRGB(10, 224, 153)
                                name.Text = ("Rương 3" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                            end
                        else
                            v['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp' .. Number) then
                        v:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end)
    end
end

function UpdateDevilChams()
    for i, v in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if DevilFruitESP then
                if string.find(v.Name, "Fruit") then
                    if not v.Handle:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui', v.Handle)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v.Handle
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(10, 224, 153)
                        name.Text = (v.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
                    else
                        v.Handle['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude / 3) .. ' M')
                    end
                end
            else
                if v.Handle:FindFirstChild('NameEsp' .. Number) then
                    v.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end

function UpdateFlowerChams()
    for i, v in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if v.Name == "Flower2" or v.Name == "Flower1" then
                if FlowerESP then
                    if not v:FindFirstChild('NameEsp' .. Number) then
                        local bill = Instance.new('BillboardGui', v)
                        bill.Name = 'NameEsp' .. Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1, 200, 1, 30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel', bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1, 0, 1, 0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(10, 224, 153)
                        if v.Name == "Flower1" then
                            name.Text = ("Blue Flower" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                            name.TextColor3 = Color3.fromRGB(10, 224, 153)
                        end
                        if v.Name == "Flower2" then
                            name.Text = ("Red Flower" .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                            name.TextColor3 = Color3.fromRGB(10, 224, 153)
                        end
                    else
                        v['NameEsp' .. Number].TextLabel.Text = (v.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude / 3) .. ' M')
                    end
                else
                    if v:FindFirstChild('NameEsp' .. Number) then
                        v:FindFirstChild('NameEsp' .. Number):Destroy()
                    end
                end
            end
        end)
    end
end

Island:AddToggle({
    Name = "Esp người chơi",
    Default = false,
    Callback = function(Value)
        ESPPlayer = Value
        while ESPPlayer do
            wait()
            UpdatePlayerChams()
        end
    end
})

Island:AddToggle({
    Name = "Esp rương",
    Default = false,
    Callback = function(Value)
        ChestESP = Value
        while ChestESP do
            wait()
            UpdateChestChams()
        end
    end
})

Island:AddToggle({
    Name = "Esp trái ác quỷ",
    Default = false,
    Callback = function(Value)
        DevilFruitESP = Value
        while DevilFruitESP do
            wait()
            UpdateDevilChams()
        end
    end
})


Island:AddToggle({
    Name = "Esp hoa",
    Default = false,
    Callback = function(Value)
        FlowerESP = Value
        while FlowerESP do
            wait()
            UpdateFlowerChams()
        end
    end
})

Set:AddToggle({
    Name = "Tự động click",
    Default = false,
    Callback = function(Value)
        _G.AutoClick = Value
    end
})

--// Function Auto Click
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.AutoClick or Fastattack then
            pcall(function()
                game:GetService 'VirtualUser':CaptureController()
                game:GetService 'VirtualUser':Button1Down(Vector2.new(0, 1, 0, 1))
            end)
        end
    end)
end)

Set:AddToggle({
    Name = "Tự động bật tộc V4",
    Default = true,
    Callback = function(Value)
        AutoAwakeningRace = Value
    end
})

spawn(function()
    while wait() do
        pcall(function()
            if AutoAwakeningRace then
                game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game)
            end
        end)
    end
end)


Playerslist = {}

for i, v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist, v.Name)
end

local SelectedPly = Combat:AddDropdown({
    Name = "Select Players",
    Default = "",
    Options = Playerslist,
    Callback = function(Value)
        _G.SelectPly = Value
    end
})

Combat:AddButton({
    Name = "Refresh Player",
    Callback = function()
        Playerslist = {}
        SelectedPly:Refresh()
        for i, v in pairs(game:GetService("Players"):GetChildren()) do
            SelectedPly:Set(v.Name)
        end
    end
})

Combat:AddToggle({
    Name = "Teleport Player",
    Default = false,
    Callback = function(Value)
        _G.TeleportPly = Value
        pcall(function()
            if _G.TeleportPly then
                repeat
                    Tween(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame)
                    wait()
                until _G.TeleportPly == false
            end
            StopTween(_G.TeleportPly)
        end)
    end
})

Combat:AddButton({
    Name = "Get Kill Player Quest",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
    end
})

Combat:AddToggle({
    Name = "Kill Player [Selected]",
    Default = false,
    Callback = function(Value)
        _G.Auto_Kill_Ply = Value
    end
})

spawn(function()
    while wait() do
        if _G.Auto_Kill_Ply then
            pcall(function()
                if _G.SelectPly ~= nil then
                    if game.Players:FindFirstChild(_G.SelectPly) then
                        if game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health > 0 then
                            repeat
                                task.wait()
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CanCollide = false
                                topos(game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame *
                                    CFrame.new(0, 5, 0))
                                spawn(function()
                                    pcall(function()
                                        if _G.SelectWeapon == SelectWeaponGun then
                                            local args = {
                                                [1] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Position,
                                                [2] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart
                                            }
                                            game:GetService("Players").LocalPlayer.Character[SelectWeaponGun]
                                                .RemoteFunctionShoot:InvokeServer(unpack(args))
                                        else
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                        end
                                    end)
                                end)
                            until game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(_G.SelectPly) or not _G.Auto_Kill_Ply
                        end
                    end
                end
            end)
        end
    end
end)

local cc = Stats:AddLabel("")
cc:Set("Fake Stats")

Stats:AddToggle({
    Name = "Enable Fake",
    Default = true,
    Callback = function(value)
        _G.EnabledStat = value
    end
})

Stats:AddTextbox({
    Name = "Level",
    Default = "",
    TextDisappear = true,
    Callback = function(value)
        if _G.EnabledStat then
            game:GetService("Players")["LocalPlayer"].Data.Level.Value = tonumber(value)
        end
    end
})
Stats:AddTextbox({
    Name = "Exp",
    Default = "",
    TextDisappear = true,
    Callback = function(value)
        if _G.EnabledStat then
            game:GetService("Players")["LocalPlayer"].Data.Exp.Value = tonumber(value)
        end
    end
})
Stats:AddTextbox({
    Name = "Beli",
    Default = "",
    TextDisappear = true,
    Callback = function(value)
        if _G.EnabledStat then
            game:GetService("Players")["LocalPlayer"].Data.Beli.Value = tonumber(value)
        end
    end
})
Stats:AddTextbox({
    Name = "Fragment",
    Default = "",
    TextDisappear = true,
    Callback = function(value)
        if _G.EnabledStat then
            game:GetService("Players")["Localplayer"].Data.Fragments.Value = tonumber(value)
        end
    end
})
Stats:AddTextbox({
    Name = "Bounty",
    Default = "",
    TextDisappear = true,
    Callback = function(value)
        if _G.EnabledStat then
            game:GetService("Players")["LocalPlayer"].leaderstats["Bounty/Honor"].Value = tonumber(value)
        end
    end
})
OrionLib:Init()
