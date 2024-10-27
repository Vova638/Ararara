-- Получаем игрока и его персонажа
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Подключаемся к событию нажатия на пробел
local UserInputService = game:GetService("UserInputService")

UserInputService.JumpRequest:Connect(function()
    if humanoid and humanoid:GetState() ~= Enum.HumanoidStateType.Seated then
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)
