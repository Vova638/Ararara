
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Bengal cat hub", "RJTheme3")

local Tab = Window:NewTab("main")

local Section = Tab:NewSection("name section")


Section:NewButton("ButtonText", "ButtonInfo", function()
    print("Clicked")
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


Section:NewButton("esp(leave for disable)", "ButtonInfo", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
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

Section:NewButton("auto farm gui", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NoCapital2/MM2Autofarm/main/script"))() 
end)












