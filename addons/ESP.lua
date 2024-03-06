if Tabs and Window then
    Tabs['Visuals'] = Window:AddTab('Visuals')
else
    return
end

ESP = loadstring(game:HttpGet('https://raw.githubusercontent.com/potatolegend123/YamsHubbo/main/libraries/ESP.lua'))()
ESP.options.enabled = false

ESPGroup = Tabs.Visuals:AddLeftGroupbox('ESP', "Center")
ESPGroup:AddToggle('ToggleESP', {
    Text = 'Enabled',
    Default = false, -- Default value (true / false)

    Callback = function(Value)
        ESP.options.enabled = Value
    end
})

ESPPlayersGroup = Tabs.Visuals:AddRightGroupbox('Players', "Center")
ESPPlayersGroup:AddToggle('healthTextBars', {
    Text = 'Show Health',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.healthBars = Value
        ESP.options.healthText = Value
    end
})
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

ESPTeams = Tabs.Visuals:AddRightGroupbox('Teams', "Center")
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

ESPBoxesGroup = Tabs.Visuals:AddLeftGroupbox('Boxes', "Center")
ESPBoxesGroup:AddToggle('boxes', {
    Text = 'Show Boxes',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.boxes = Value
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
    Default = 0,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        ESP.options.boxFillTransparency = Value
    end
})
ESPBoxesGroup:AddLabel('Border'):AddColorPicker('boxesColor', {
    Default = Color3.new(1,1,1), -- Bright green
    Title = 'Boxes Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.boxesColor = Value
    end
})
ESPBoxesGroup:AddLabel('Fill'):AddColorPicker('boxFillColor', {
    Default = Color3.new(1,0,0), -- Bright green
    Title = 'Boxes Fill', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.boxFillColor = Value
    end
})

ESPDistanceGroup = Tabs.Visuals:AddLeftGroupbox('Distance', "Center")
ESPDistanceGroup:AddToggle('distances', {
    Text = 'Show Distances',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.distance = Value
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
    Default = 500,
    Min = 1,
    Max = 1000,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        ESP.options.maxDistance = Value
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

ESPTracersGroup = Tabs.Visuals:AddLeftGroupbox('Tracers', "Center")
ESPTracersGroup:AddToggle('tracers', {
    Text = 'Show Tracers',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.tracers = Value
    end
})
ESPTracersGroup:AddDropdown('tracerOrigin', {
    Values = {'Mouse', 'Top', 'Bottom'},
    Default = 'Bottom', -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected
    Text = 'Tracer Origin',

    Callback = function(Value)
        ESP.options.tracerOrigin = Value
    end
})
ESPTracersGroup:AddLabel('Color'):AddColorPicker('tracerColor', {
    Default = Color3.new(1,0,0), -- Bright green
    Title = 'Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.tracerColor = Value
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
ESPChamsGroup:AddLabel('Outline Color'):AddColorPicker('chamsOutlineColor', {
    Default = Color3.new(), -- Bright green
    Title = 'Outline Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.chamsOutlineColor = Value
    end
})
ESPChamsGroup:AddLabel('Fill Color'):AddColorPicker('chamsFillColor', {
    Default = Color3.new(1,0,0), -- Bright green
    Title = 'Fill Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.chamsFillColor = Value
    end
})

ESPArrowsGroup = Tabs.Visuals:AddRightGroupbox('Out Of View Arrows', "Center")
ESPArrowsGroup:AddToggle('outOfViewArrows', {
    Text = 'Show Arrows',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.outOfViewArrows = Value
    end
})
ESPArrowsGroup:AddSlider('outOfViewArrowsSize', {
    Text = 'Size',
    Default = 25,
    Min = 0,
    Max = 50,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        ESP.options.outOfViewArrowsSize = Value
    end
})
ESPArrowsGroup:AddSlider('outOfViewArrowsRadius', {
    Text = 'Radius',
    Default = 100,
    Min = 0,
    Max = 1000,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        ESP.options.outOfViewArrowsRadius = Value
    end
})
ESPArrowsGroup:AddLabel('Color'):AddColorPicker('outOfViewArrowsColor', {
    Default = Color3.new(1, 1, 1), -- Bright green
    Title = 'Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.outOfViewArrowsColor = Value
    end
})

ESP:Load()
