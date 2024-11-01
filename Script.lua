local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Bengal Key System", HidePremium = true, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "You logged",
	Content = "thx for use  my script:)",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "Bengal-Cat-Hub-Beta"
_G.KeyInput = "string"

function MakeScriptHub()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Bengal cat hub", "RJTheme3")

local Tab = Window:NewTab("main")

local Section = Tab:NewSection("main")


Section:NewButton("ESP", "ButtonInfo", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Vova638/Esp.lua/refs/heads/main/Esp.lua"))()
end)


Section:NewButton("InfJump", "ButtonInfo", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Vova638/Ararara/refs/heads/main/Infjump.lua"))()
end)



Section:NewSlider("SpeedWalk", "SliderInfo", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("SliderText", "Sliderinfo", 200, 16, function(x) 
game.Players.LocalPlayer.Character.Humanoid.JumpPower = x
end)

Section:NewSlider("Gravity", "Sliderinfo", 200, 30, function(y) 
game.Workspace.Gravity = y
end)


Section:NewButton("fly mobile", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end)

Section:NewButton("infinity yield", "ButtonInfo", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/DarkNetworks/Infinite-Yield/main/latest.lua'))()
end)


local Tab = Window:NewTab("mm2")

local Section = Tab:NewSection("mm2 scripts")

Section:NewButton("eclipse(auto farm)", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script", true))()
end)

Section:NewButton("auto farm gui)", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NoCapital2/MM2Autofarm/main/script"))() 
end)


local Tab = Window:NewTab("a dusty trip")

local Section = Tab:NewSection("a dusty trip scripts")

Section:NewButton("a dusty trip", "ButtonInfo", function()
    loadstring(game:HttpGet("https://scriptblox.com/raw/a-dusty-trip-ROCKET-very-op-script-12870"))()
end)


local Tab = Window:NewTab("doors")

local Section = Tab:NewSection("doors scripts")

Section:NewButton("doors", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/DoorsV3_ByNerd.lua"))()
end)


local Tab = Window:NewTab("blox fruits")

local Section = Tab:NewSection("blox fruit scripts")

Section:NewButton("speed hub x", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
end)


local Tab = Window:NewTab("Soon...")

local Section = Tab:NewSection("Soon...")

end


function CorrectKeyNotifications()
    OrionLib:MakeNotification({
        Name = "Correct Key",
        Content = "Loading Hub...",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function WrongKeyNotifications()
    OrionLib:MakeNotification({
        Name = " Wrong Key",
        Content = "Try again",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local Tab = Window:MakeTab({
	Name = "bengal key system",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key",
	Default = "Enter Key",
	TextDisappear = true,
	Callback = function(Value)
        _G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key!",
	Callback = function()
        if _G.KeyInput == _G.Key then
         MakeScriptHub()
         CorrectKeyNotifications()
     else
        WrongKeyNotifications()
        end
  	end    
})

