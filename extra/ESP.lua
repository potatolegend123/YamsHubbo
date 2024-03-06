--[[

local ESP = {
    Enabled = false,
    Boxes = true,
    BoxShift = CFrame.new(0,-1.5,0),
	BoxSize = Vector3.new(4,6,0),
    Color = Color3.fromRGB(255, 170, 0),
    FaceCamera = false,
    Names = true,
    TeamColor = true,
    Thickness = 2,
    AttachShift = 1,
    TeamMates = true,
    Players = true,
    
    Objects = setmetatable({}, {__mode="kv"}),
    Overrides = {}
}

]]

if Tabs and Window then
    Tabs['Visuals'] = Window:AddTab('Visuals')
else
    return
end

ESPGroup = Tabs.Visuals:AddLeftGroupbox('ESP', "Center")
ESPTeams = Tabs.Visuals:AddRightGroupbox('Players', "Center")
ESPConfigGroup = Tabs.Visuals:AddLeftGroupbox('Configuration', "Center")

ESP = loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostDuckyy/ESP-Library/main/Kiriot22/source.lua'))()
ESP.Enabled = false

ESPGroup:AddToggle('ToggleESP', {
    Text = 'ESP',
    Default = false, -- Default value (true / false)

    Callback = function(Value)
        ESP.Enabled = Value
    end
})

ESPTeams:AddToggle('showPlayers', {
    Text = 'Show Players',
    Default = false, -- Default value (true / false)

    Callback = function(Value)
       ESP.Players = Value
    end
})

ESPTeams:AddToggle('TeamESP', {
    Text = 'Team Color',
    Default = false, -- Default value (true / false)

    Callback = function(Value)
       ESP.TeamColor = Value
    end
})

ESPTeams:AddToggle('TeamMatesESP', {
    Text = 'Teammates',
    Default = false, -- Default value (true / false)

    Callback = function(Value)
        ESP.TeamMates = Value
    end
})

ESPConfigGroup:AddToggle('BoxesESP', {
    Text = 'Boxes',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.BoxesESP = Value
    end
})
ESPConfigGroup:AddToggle('TeamColor', {
    Text = 'Show TeamColor',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.TeamColor = Value
    end
})
ESPConfigGroup:AddToggle('Names', {
    Text = 'Show Names',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.Names = Value
    end
})
ESPConfigGroup:AddToggle('FaceCamera', {
    Text = 'Face Camera',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.FaceCamera = Value
    end
})


-- 3. Load the esp. It doesn't really matter where you put this, but it's recommended you put it at the end of your script.
Sense.Load()
