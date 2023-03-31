-- LeftBottom, RightBottom, LeftTop, RightTop

-- {{ STARTUP }} --

repeat task.wait() until game:IsLoaded()
task.wait(1)

-- {{ VARS }} --

local BottomButtonFrame = game:GetService("CoreGui").RobloxGui.SettingsShield.SettingsShield.MenuContainer.BottomButtonFrame
local LeaveGameButton = BottomButtonFrame:FindFirstChild("LeaveGameButtonButton")
local ResetCharacterButton = BottomButtonFrame:FindFirstChild("ResetCharacterButtonButton")
local ResumeButton = BottomButtonFrame:FindFirstChild("ResumeButtonButton")
local MuteButton = BottomButtonFrame:FindFirstChild("MuteButtonButtonButton")
local HomeButton = game:GetService("CoreGui").RobloxGui.SettingsShield.SettingsShield.MenuContainer.HubBar:FindFirstChild("HubBarHomeButton")
local PageViewClipper = game:GetService("CoreGui").RobloxGui.SettingsShield.SettingsShield.MenuContainer:FindFirstChild("PageViewClipper")
local MicText = game:GetService("CoreGui").RobloxGui.SettingsShield.SettingsShield.MenuContainer.HubBar.Frame:FindFirstChild("TextLabel")

-- {{ FUNCTIONS }} --

local function Setup(Setting: string)
    if Setting == "LeftBottom" then
        print(tostring(Setting))
        ResetCharacterButton.Position = UDim2.new(0.5, -955 , 0.5, 110)
        LeaveGameButton.Position = UDim2.new(0.5, -955 , 0.5, 40)
        ResumeButton.Position = UDim2.new(0.5, -955 , 0.5, -30)
        MuteButton.Position = UDim2.new(0.5, -955 , 0.5, -100)
        MicText.Position = UDim2.new(0.5, -480 , 0.5, 600)
    elseif Setting == "RightBottom" then
        print(tostring(Setting))
        ResetCharacterButton.Position = UDim2.new(0.5, 720 , 0.5, 110)
        LeaveGameButton.Position = UDim2.new(0.5, 720 , 0.5, 40)
        ResumeButton.Position = UDim2.new(0.5, 720 , 0.5, -30)
        MuteButton.Position = UDim2.new(0.5, 885 , 0.5, -100)
        MicText.Position = UDim2.new(0.5, 1125 , 0.5, 603)
    elseif Setting == "LeftTop" then
        print(tostring(Setting))
        ResetCharacterButton.Position = UDim2.new(0.5, -955 , 0.5, -800)
        LeaveGameButton.Position = UDim2.new(0.5, -955 , 0.5, -730)
        ResumeButton.Position = UDim2.new(0.5, -955 , 0.5, -660)
        MuteButton.Position = UDim2.new(0.5, -955 , 0.5, -590)
        MicText.Position = UDim2.new(0.5, -480 , 0.5, 115)
    elseif Setting == "RightTop" then
        print(tostring(Setting))
        ResetCharacterButton.Position = UDim2.new(0.5, 720 , 0.5, -835)
        LeaveGameButton.Position = UDim2.new(0.5, 720 , 0.5, -765)
        ResumeButton.Position = UDim2.new(0.5, 720 , 0.5, -695)
        MuteButton.Position = UDim2.new(0.5, 885 , 0.5, -625)
        MicText.Position = UDim2.new(0.5, 1125 , 0.5, 78)
    else
        print("Nothing Picked, Setting to default...")
        ResetCharacterButton.Position = UDim2.new(0.5, -400, 0.5, -25)
        LeaveGameButton.Position = UDim2.new(0.5, -157, 0.5, -25)
        ResumeButton.Position = UDim2.new(0.5, 85, 0.5, -25)
        MuteButton.Position = UDim2.new(0.5, 330, 0.5, -25)
    end
end

-- {{ MAIN }} --

Setup(tostring(getgenv().mode)) -- Calling the function with the local mode as the setting string.
