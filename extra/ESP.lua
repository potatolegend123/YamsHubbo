if Tabs and Window then
    Tabs['Visuals'] = Window:AddTab('Visuals')
else
    return
end

ESPGroup = Tabs.Visuals:AddLeftGroupbox('ESP', "Center")
ESPTeams = Tabs.Visuals:AddRightGroupbox('Players', "Center")
ESPConfigGroup = Tabs.Visuals:AddLeftGroupbox('Configuration', "Center")

ESP = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Sirius/request/library/esp/esp.lua'))()
ESP.options.enabled = false

ESPGroup:AddToggle('ToggleESP', {
    Text = 'ESP',
    Default = false, -- Default value (true / false)

    Callback = function(Value)
        ESP.options.enabled = Value
    end
})

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

ESPConfigGroup:AddToggle('names', {
    Text = 'Show Names',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.names = Value
    end
})
ESPConfigGroup:AddLabel('Color'):AddColorPicker('nameColor', {
    Default = Color3.new(1,1,1), -- Bright green
    Title = 'Name Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.nameColor = Value
    end
})

ESPConfigGroup:AddToggle('healthBars', {
    Text = 'Show Health Bar',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.healthBars = Value
    end
})
ESPConfigGroup:AddLabel('Color'):AddColorPicker('healthBarsColor', {
    Default = Color3.new(0, 1, 0), -- Bright green
    Title = 'Health Bar Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.healthBarsColor = Value
    end
})
ESPConfigGroup:AddToggle('healthText', {
    Text = 'Show Health Bar',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.healthText = Value
    end
})
ESPConfigGroup:AddLabel('Color'):AddColorPicker('healthTextColor', {
    Default = Color3.new(1,1,1), -- Bright green
    Title = 'Health Bar Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.healthTextColor = Value
    end
})
ESPConfigGroup:AddToggle('boxes', {
    Text = 'Show Boxes',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.boxes = Value
    end
})
ESPConfigGroup:AddLabel('Color'):AddColorPicker('boxesColor', {
    Default = Color3.new(1,1,1), -- Bright green
    Title = 'Boxes Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.boxesColor = Value
    end
})
ESPConfigGroup:AddSlider('boxesTransparency', {
    Text = 'Boxes Transparency',
    Default = 0.5,
    Min = 0,
    Max = 1,
    Rounding = 0.1,
    Compact = false,

    Callback = function(Value)
        ESP.options.boxesTransparency = Value
    end
})
ESPConfigGroup:AddSlider('boxFillTransparency', {
    Text = 'Boxes Fill Transparency',
    Default = 0.5,
    Min = 0,
    Max = 1,
    Rounding = 0.1,
    Compact = false,

    Callback = function(Value)
        ESP.options.boxFillTransparency = Value
    end
})
ESPConfigGroup:AddLabel('Color'):AddColorPicker('boxFillColor', {
    Default = Color3.new(1,0,0), -- Bright green
    Title = 'Boxes Fill Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.boxFillColor = Value
    end
})
ESPConfigGroup:AddToggle('distances', {
    Text = 'Show Distances',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.distance = Value
    end
})
ESPConfigGroup:AddLabel('Color'):AddColorPicker('distanceColor', {
    Default = Color3.new(1,1,1), -- Bright green
    Title = 'Distance Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.distanceColor = Value
    end
})
ESPConfigGroup:AddToggle('limitdistances', {
    Text = 'Limit Distances',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.limitDistance = Value
    end
})
ESPConfigGroup:AddSlider('distanceSlider', {
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
ESPConfigGroup:AddToggle('tracers', {
    Text = 'Show Tracers',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.tracers = Value
    end
})
ESPConfigGroup:AddLabel('Color'):AddColorPicker('tracerColor', {
    Default = Color3.new(1,1,1), -- Bright green
    Title = 'Tracer Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.tracerColor = Value
    end
})
ESPConfigGroup:AddToggle('chams', {
    Text = 'Show Chams',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.chams = Value
    end
})
ESPConfigGroup:AddSlider('chamsFillTransparency', {
    Text = 'Chams Fill Transparency',
    Default = 0.5,
    Min = 0,
    Max = 1,
    Rounding = 0.1,
    Compact = false,

    Callback = function(Value)
        ESP.options.chamsFillTransparency = Value
    end
})
ESPConfigGroup:AddLabel('Color'):AddColorPicker('chamsOutlineColor', {
    Default = Color3.new(), -- Bright green
    Title = 'Chams Outline Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.chamsOutlineColor = Value
    end
})
ESPConfigGroup:AddLabel('Color'):AddColorPicker('chamsFillColor', {
    Default = Color3.new(1,0,0), -- Bright green
    Title = 'Chams Fill Color', -- Optional. Allows you to have a custom color picker title (when you open it)
    Transparency = 0, -- Optional. Enables transparency changing for this color picker (leave as nil to disable)

    Callback = function(Value)
        ESP.options.chamsFillColor = Value
    end
})
ESPConfigGroup:AddToggle('visibleOnly', {
    Text = 'Show Visible Only',
    Default = false, -- Default value (true / false)
    Callback = function(Value)
        ESP.options.visibleOnly = Value
    end
})
