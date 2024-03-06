if Tabs and Window then
    Tabs['Visuals'] = Window:AddTab('Visuals')
else
    return
end

ESP = loadstring(game:HttpGet('https://raw.githubusercontent.com/potatolegend123/YamsHubbo/main/libraries/ESP.lua'))()
ESP.options.enabled = false

ESPGroup = Tabs.Visuals:AddLeftGroupbox('ESP', "Center")
ESPGroup:AddToggle('ToggleESP', {
    Text = 'ESP',
    Default = false, -- Default value (true / false)

    Callback = function(Value)
        ESP.options.enabled = Value
    end
})

ESPTeams = Tabs.Visuals:AddRightGroupbox('Players', "Center")
ESPTeams:AddToggle('teamCheck', {
    Text = 'Team Check',
    Default = false, -- Default value (true / false)

    Callback = function(Value)
       ESP.options.teamCheck = Value
    end
})

ESPTeams:AddToggle('teamColor', {
    Text = 'Team Color',
    Default = false, -- Default value (true / false)

    Callback = function(Value)
        ESP.options.teamColor = Value
    end
})

ESPPlayersGroup = Tabs.Visuals:AddLeftGroupbox('Players', "Center")
ESPPlayersGroup:AddToggle('visibleOnly', {
    Text = 'Show Visible Only',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.visibleOnly = Value
    end
})
ESPPlayersGroup:AddToggle('names', {
    Text = 'Show Names',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.names = Value
    end
})
ESPPlayersGroup:AddLabel('Color'):AddColorPicker('nameColor', {
    Default = Color3.new(1,1,1), -- Bright green
    Title = 'Name Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.nameColor = Value
    end
})

ESPPlayersGroup:AddToggle('healthTextBars', {
    Text = 'Show Health',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.healthBars = Value
        ESP.options.healthText = Value
    end
})

ESPBoxesGroup = Tabs.Visuals:AddRightGroupbox('Boxes', "Center")
ESPBoxesGroup:AddToggle('boxes', {
    Text = 'Show Boxes',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.boxes = Value
    end
})
ESPBoxesGroup:AddLabel('Color'):AddColorPicker('boxesColor', {
    Default = Color3.new(1,1,1), -- Bright green
    Title = 'Boxes Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.boxesColor = Value
    end
})
ESPBoxesGroup:AddSlider('boxesTransparency', {
    Text = 'Boxes Transparency',
    Default = 0.5,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        ESP.options.boxesTransparency = Value
    end
})
ESPBoxesGroup:AddSlider('boxFillTransparency', {
    Text = 'Boxes Fill Transparency',
    Default = 1,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        ESP.options.boxFillTransparency = Value
    end
})
ESPBoxesGroup:AddLabel('Color'):AddColorPicker('boxFillColor', {
    Default = Color3.new(1,0,0), -- Bright green
    Title = 'Boxes Fill Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.boxFillColor = Value
    end
})

ESPDistanceGroup = Tabs.Visuals:AddRightGroupbox('Distance', "Center")
ESPDistanceGroup:AddToggle('distances', {
    Text = 'Show Distances',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.distance = Value
    end
})
ESPDistanceGroup:AddLabel('Color'):AddColorPicker('distanceColor', {
    Default = Color3.new(1,1,1), -- Bright green
    Title = 'Distance Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.distanceColor = Value
    end
})
ESPDistanceGroup:AddToggle('limitdistances', {
    Text = 'Limit Distances',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.limitDistance = Value
    end
})
ESPDistanceGroup:AddSlider('distanceSlider', {
    Text = 'Max Distance',
    Default = 30,
    Min = 1,
    Max = 1000,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        ESP.options.maxDistance = Value
    end
})

ESPTracersGroup = Tabs.Visuals:AddRightGroupbox('Tracers', "Center")
ESPTracersGroup:AddToggle('tracers', {
    Text = 'Show Tracers',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.tracers = Value
    end
})

ESPChamsGroup = Tabs.Visuals:AddRightGroupbox('Chams', "Center")
ESPChamsGroup:AddToggle('chams', {
    Text = 'Show Chams',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.chams = Value
    end
})
ESPChamsGroup:AddSlider('chamsFillTransparency', {
    Text = 'Chams Fill Transparency',
    Default = 0.5,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        ESP.options.chamsFillTransparency = Value
    end
})
ESPChamsGroup:AddLabel('Color'):AddColorPicker('chamsOutlineColor', {
    Default = Color3.new(), -- Bright green
    Title = 'Chams Outline Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.chamsOutlineColor = Value
    end
})
ESPChamsGroup:AddLabel('Color'):AddColorPicker('chamsFillColor', {
    Default = Color3.new(1,0,0), -- Bright green
    Title = 'Chams Fill Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.chamsFillColor = Value
    end
})

ESP:Load()
