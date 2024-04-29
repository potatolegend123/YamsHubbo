local function Rejoin()
    TeleportService:Teleport(game.PlaceId, Player)
end

local function Serverhop()
    local Api = "https://games.roblox.com/v1/games/"
    
    local _place,_id = game.PlaceId, game.JobId
    local _servers = Api.._place.."/servers/Public?sortOrder=Desc&limit=100"
    function ListServers(cursor)
       local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
       return HttpService:JSONDecode(Raw)
    end
    
    local Next; repeat
        local Servers = ListServers(Next)
        for i,v in next, Servers.data do
            if v.playing < v.maxPlayers and v.id ~= _id then
                local s, r = pcall(TeleportService.TeleportToPlaceInstance, TeleportService, _place, v.id, Player)
                if s then break end
            end
        end
       
        Next = Servers.nextPageCursor
    until not Next
end

local function JoinLowest()
    local Api = "https://games.roblox.com/v1/games/"
    
    local _place = game.PlaceId
    local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
    function ListServers(cursor)
        local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
        return HttpService:JSONDecode(Raw)
    end
    
    local Server, Next; repeat
        local Servers = ListServers(Next)
        Server = Servers.data[1]
        Next = Servers.nextPageCursor
    until Server
    
    TeleportService:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
end

Tabs['Extra'] = Window:AddTab('Extra')
Tabs['UI Settings'] = Window:AddTab('UI Settings')

local Groups = {
    Scripts = Tabs['Extra']:AddLeftGroupbox('Scripts', "Center"),
    Server = Tabs['Extra']:AddRightGroupbox('Server', "Center"),
    Menu = Tabs['UI Settings']:AddLeftGroupbox('Menu', "Center"),
}

Groups.Scripts:AddButton('Infinite Yield', function() 
    loadstring(game:HttpGet("https://africazone.online/lua/files/utils/InfiniteYield.lua"))()
end)
--TEMPORARY
Groups.Scripts:AddButton('RemoteSpy', function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/potatolegend123/YamsHubbo/main/extra/SimpleRemoteSpy"))()
end)
Groups.Scripts:AddButton('Dex', function() 
    loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Decompiler-for-Krampus-11922"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/potatolegend123/YamsHubbo/main/extra/Dex"))()
end)

Groups.Server:AddButton({
    Text = 'Rejoin',
    Func = function()
        Rejoin()
    end,
    DoubleClick = false,
    Tooltip = 'Same Server'
})

Groups.Server:AddButton({
    Text = 'Serverhop',
    Func = function()
        Serverhop()
    end,
    DoubleClick = false,
    Tooltip = 'Different Server'
})

Groups.Server:AddButton({
    Text = 'Join lowest server',
    Func = function()
        JoinLowest()
    end,
    DoubleClick = false,
    Tooltip = 'Low player Server'
})

local UnloadLibrary = false
local FrameTimer = tick()
local FrameCounter = 0;
local FPS = 60;

Trove:Connect(RunService.RenderStepped, function()
    if G.__EXECUTED then
        if UnloadLibrary or Library.Unloaded then return end
        Library:Unload()
    end
    FrameCounter += 1;

    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter;
        FrameTimer = tick();
        FrameCounter = 0;
    end;

    Library:SetWatermark(('OSAKA | dwQkjprM | %s fps | %s ms'):format(
        math.floor(FPS),
        math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
    ));

end);

Library:OnUnload(function()
    if ESP then
        ESP:Unload()
    end
    
    if Trove then
        Trove:Destroy()
    end

    Library.Unloaded = true
end)

--Groups.Menu:AddButton('Copy Discord Link', function() if setclipboard then setclipboard('https://discord.gg/') end end)
Groups.Menu:AddButton('Unload', function()
    if UnloadLibrary then return end 
    UnloadLibrary = true; 
    Library:Unload() 
end)
Groups.Menu:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { 
    Default = 'End', 
    NoUI = false, 
    Text = 'Menu keybind',
    Callback = function(Value)
        Library:Toggle()
    end,
})

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings()

SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })

ThemeManager:SetFolder("JisK")
SaveManager:SetFolder(`JisK/Games/{gameName}`)

SaveManager:BuildConfigSection(Tabs['UI Settings'])
ThemeManager:ApplyToTab(Tabs['UI Settings'])

SaveManager:LoadAutoloadConfig()
