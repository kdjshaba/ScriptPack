--[[ | PING | NOVA Admin | Original Creator : TeamDman. Dont mind if others use it as long as they give credit.   ]]--
Players = game:GetService("Players")
LocalPlayer = Players.LocalPlayer
Camera = workspace.CurrentCamera
script.Name = "NOVA"
script.Parent = game:GetService("ScriptContext")
Banned = {"Koilered"}
RandomNames = {"Norost","Morilec","Kronos","Dimonok","Demonis"}
PRIList = {"TeamDman","ThePC8110"}
Indexed = {}
Jails = {}
Sounds = {}

Removed = false
AntiFall = true
ScriptsDesabled = false
TrollFace = false
PRI = false

BBG = Instance.new("BillboardGui")
BBG.Size = UDim2.new(2,0,2,0)
BBG.StudsOffset = Vector3.new(0, 0, 1)

Img = Instance.new("ImageLabel",BBG)
Img.Size = UDim2.new(1,0,1,0)
Img.BackgroundTransparency = 1
Img.Image = "http://www.roblox.com/asset/?id=45120559"


Commands = {
{Name = "kill", Desc = "Kills the  player.", Args = "<Player>"},
{Name = "kick", Desc = "Removes the player from the game.", Args = "<Player>"},
{Name = "ban", Desc = "Removes the  player from the game forever.", Args = "<Player>"},
{Name = "punish", Desc = "ReParents the player's character.", Args = "<Player>"},
{Name = "Destroy", Desc = "Destroys the player.", Args = "<Player>"},
{Name = "unpunish", Desc = "ReParents the player's character.", Args = "<Player>"},
{Name = "nil", Desc = "Sets the player's character to nil.", Args = "<Player>"},
{Name = "nova", Desc = "Clears the workspace using NOVA Clear.", Args = "No Arguments"},
{Name = "m", Desc = "Makes a message in workspace with the following string.", Args = "<String>"},
{Name = "walkspeed", Desc = "Sets the player's speed to the number.", Args = "<Player><number>"},
{Name = "c", Desc = "Creates a pseudo script in workspace.", Args = "<Source>"},
{Name = "local", Desc = "Creates a local pseudo in the LocalPlayer's backpack.", Args = "<Source>"},
{Name = "ff", Desc = "Creates a forcefield from the player.",Args = "<Player>"},
{Name = "inf", Desc = "Sets the player's health to math.huge.", Args = "<Player>"},
{Name = "lockh", Desc = "Locks the player's health to the max health.", Args = "<Player>"},
{Name = "god", Desc = "Kills anyone who touches the player's torso.", Args = "<Player>"},
{Name = "expl", Desc = "Creates an explosion at the player's torso.", Args = "<Player>"},
{Name = "teleport", Desc = "Moves a player to another player.", Args = "<Player> <Player>"},
{Name = "freeze", Desc = "Anchors the player's character.", Args = "<Player>"},
{Name = "thaw", Desc = "UnAnchors the player's character.", Args = "<Player>"},
{Name = "shutdown", Desc = "Shuts down the server from usage.", Args = "No Arguments"},
{Name = "check", Desc = "Outputs information about the server.", Args = "No Arguments"},
{Name = "rtools", Desc = "Removes the player's tools.", Args = "<Player>"},
{Name = "nobp", Desc = "Removes the player's backpack.", Args = "<Player>"},
{Name = "ping", Desc = "Outputs message in random color.", Args = "<<Message>"},
{Name = "play", Desc = "Plays the sound.", Args = "<Name>"},
{Name = "stop", Desc = "Stops all sounds.", Args = "<Name>"},
{Name = "respawn", Desc = "Respawns the player.", Args = "<Player>"},
{Name = "rs", Desc = "Respawns the player.", Args = "<Player>"},
{Name = "nuke", Desc = "nukes the player.", Args = "<Player>"},
{Name = "jail", Desc = "Jails the player.", Args = "<Player>"},
{Name = "rhats", Desc = "Removes the player's hats.", Args = "<Player>"},
{Name = "trans", Desc = "Makes the player invisible.", Args = "<Player>"},
{Name = "visible", Desc = "Makes the player visible.", Args = "<Player>"},
{Name = "antilag", Desc = "Removes any message entering the player.", Args = "No Arguments"},
{Name = "go", Desc = "Removes the player.", Args = "No Arguments"},
{Name = "sit", Desc = "Makes the player sit down.", Args = "No Arguments"},
{Name = "stand", Desc = "Makes the player stand up.", Args = "No Arguments"},
{Name = "ps", Desc = "Sets the value of PlatformStand inside the player.", Args = "No Arguments"},
{Name = "unps", Desc = "Sets the value of PlatformStand inside the player.", Args = "No Arguments"},
{Name = "control", Desc = "Controls the player.", Args = "No Arguments"},
{Name = "up", Desc = "Sets the LocalPlayer's character to nil and removes the last one.", Args = "No Arguments"},
{Name = "bannedlist", Desc = "Lists the banned player(s) .", Args = "<Name>"},
{Name = "nbc", Desc = "Changes the buildersclub of the player .", Args = "<Name>"},
{Name = "tbc", Desc = "Changes the buildersclub of the player  .", Args = "<Name>"},
{Name = "obc", Desc = "Changes the buildersclub of the player  .", Args = "<Name>"},
{Name = "unban", Desc = "Unabans a player(s) .", Args = "<Name>"},
{Name = "killtalk", Desc = "Kills the player when they chat .", Args = "<Player>"},
{Name = "kicktalk", Desc = "Kicks the player when they chat .", Args = "<Player>"}}

function CreateScript(Source,Parent,Type)
        if Parent == nil then print("Parent is required.") return end
                if Type == "Normal" or Type == 1 then
                        if game.PlaceId == 20279777 then
                        newScript(Source,workspace)
                        else print("No preset avalible.")
                        end
                elseif Type == "Local" or Type == 2 then
                    if game.PlaceId == 20279777 then
                        newLocalScript(Source,Parent)
                    end
                end
end

function Index(part)
        pcall(function()
                if part:IsA("Script") or part:IsA("LocalScript") then
                        table.insert(Indexed,part)
                end
        end)
end
 
workspace.DescendantAdded:connect(Index)
game:GetService("Players").DescendantAdded:connect(Index)
game:GetService("Lighting").DescendantAdded:connect(Index)
game:GetService("Debris").DescendantAdded:connect(Index)
game:GetService("ScriptContext").DescendantAdded:connect(Index)
 
function ClearChildren(Part)
        for _,v in pairs(part:GetChildren()) do
                v:Remove()
        end
end
 
function makeSound(asd,Tab)
        S = Instance.new("Sound")
        S.SoundId = "http://www.roblox.com/asset/?id="..Tab.SoundId 
        S.Pitch = Tab.Pitch
        S.Volume = Tab.Volume
        S.Looped = Tab.Looped
        S.Name = Tab.Name
        table.insert(Sounds,S)
end
 
function PlaySound(Name)
        for _,v in pairs(Sounds) do
                if string.sub(v.Name:lower(),1,#Name) == Name then
                        v.Parent = workspace
                        wait(0.5)
                        v:Play()
                end
        end
end
 
function StopSounds()
        for _,v in pairs(Sounds) do
                v:Stop()
        end
end
 
makeSound('Musics',{SoundId=27697713;Pitch=3;Volume=1;Looped=true;Name='Music for a Film - Daniel Bautista'})
makeSound('Musics',{SoundId=27697743;Pitch=3;Volume=1;Looped=true;Name='Zero Project - Gothic'})
makeSound('Musics',{SoundId=27697277;Pitch=1.37;Volume=1;Looped=true;Name='Positively Dark - Awakening'})
makeSound('Musics',{SoundId=27697735;Pitch=2;Volume=1;Looped=true;Name='Jeff Syndicate - Hip Hop'})
makeSound('Musics',{SoundId=1015394;Pitch=1;Volume=1;Looped=true;Name='Wind Of Fjords'})
makeSound('Musics',{SoundId=11420933;Pitch=1;Volume=1;Looped=true;Name='TOPW (idk)'})
makeSound('Musics',{SoundId=11231513;Pitch=1;Volume=1;Looped=true;Name='Toccata and Fugue in D minor'})
makeSound('Musics',{SoundId=27697719;Pitch=2.4;Volume=1;Looped=true;Name='Flight of the Bumblebee - Daniel Bautista'})
makeSound('Musics',{SoundId=11060062;Pitch=1;Volume=1;Looped=true;Name='Fast-Forward'})
makeSound('Musics',{SoundId=45819151;Pitch=1;Volume=1;Looped=true;Name='background Song1'})
makeSound('Musics',{SoundId=27697707;Pitch=1;Volume=1;Looped=true;Name='Intro - Daniel Bautista'})
makeSound('Musics',{SoundId=27697707;Pitch=2;Volume=1;Looped=true;Name='Intro (fast) - Daniel Bautista'})
makeSound('Musics',{SoundId=5986151;Pitch=1;Volume=1;Looped=true;Name='Woman King'})
makeSound('Musics',{SoundId=9650822;Pitch=1;Volume=1;Looped=true;Name='S4Tunnel'})
makeSound('Musics',{SoundId=11420922;Pitch=1;Volume=1;Looped=true;Name='DOTR'})
makeSound('Musics',{SoundId=8610025;Pitch=1;Volume=1;Looped=true;Name='NerezzaSong'})
makeSound('Musics',{SoundId=35930009;Pitch=.9;Volume=1;Looped=true;Name='Troll'})
makeSound('Musics',{SoundId=1372260;Pitch=1;Volume=1;Looped=true;Name='Only one lul'})
makeSound('Musics',{SoundId=8663653;Pitch=1;Volume=1;Looped=true;Name='Zen'})
 
function Color()
        local Choice = math.random(1, 5)
        if Choice == 1 then
                return "Institutional white"
        elseif Choice == 2 then
                return "White"
        elseif Choice == 3 then
                return "Really red"
        elseif Choice == 4 then
                return "New Yeller"
        elseif Choice == 5 then
                return "Black"
        end
end   
 
function Nuke(Position)   
        local Sound = Instance.new("Sound", workspace)
        Sound.SoundId = "http://www.roblox.com/Asset/?id=2101159"
        Sound.Volume = 1
        Sound.Pitch = math.random(90, 110) / 100
        Sound:Play()
        local Sound = Instance.new("Sound", workspace)
        Sound.SoundId = "http://www.roblox.com/Asset/?id=3087031"
        Sound.Volume = 1
        Sound.Pitch = math.random(90, 110) / 100
        Sound:Play()
        for i = 1, math.random(5, 7) do
                local ExplosionBall = Instance.new("Part", game:service("Workspace"))
                ExplosionBall.Name = "Explosion Ball"
                ExplosionBall.formFactor = "Custom"
                ExplosionBall.TopSurface = 0
                ExplosionBall.BottomSurface = 0
                ExplosionBall.Anchored = true
                ExplosionBall.CanCollide = false
                ExplosionBall.Size = Vector3.new(1, 1, 1)
                ExplosionBall.BrickColor = BrickColor.new(Color())
                ExplosionBall.CFrame = CFrame.new(Position)
                ExplosionBall.Touched:connect(function(part) part:BreakJoints() end)
                Instance.new("SpecialMesh", ExplosionBall).MeshType = "Sphere"
                coroutine.wrap(function()
                        for i = 0, 1, 0.005 do
                                ExplosionBall.Transparency = (1 - i)
                                ExplosionBall.Mesh.Scale = Vector3.new(i * 250, i * 250, i * 250)
                                ExplosionBall.CFrame = CFrame.new(Position + (Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * i))
                                if math.random(1, 25) == 1 then
                                        local Explosion = Instance.new("Explosion")
                                        Explosion.Position = ExplosionBall.Position + (Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * i)
                                        Explosion.BlastPressure = 10000 * i
                                        Explosion.BlastRadius = i * 250
                                        Explosion.Parent = game:service("Workspace")
                                end
                                wait()
                        end
                        for i = 0, 1, 0.05 do
                                ExplosionBall.Transparency = i
                                ExplosionBall.CFrame = CFrame.new(Position + (Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * (1 - i)))
                                wait()
                        end
                        ExplosionBall:Remove()
                end)()
        end
end
 
function Jail(Part,Player)
b = Instance.new("Model")
b.Parent = workspace
b.Name = "Jail"
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(18, 2, 2)
c.Anchored = true
c.CFrame = Part.CFrame * CFrame.new(Vector3.new(0, -8, -8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(18, 2, 2)
c.Anchored = true
c.CFrame = Part.CFrame * CFrame.new(Vector3.new(0, -8, 8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(18, 2, 2)
c.Anchored = true
c.CFrame = Part.CFrame * CFrame.new(Vector3.new(0, 8, -8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(18, 2, 2)
c.Anchored = true
c.CFrame = Part.CFrame * CFrame.new(Vector3.new(0, 8, 8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 2, 18)
c.Anchored = true
c.CFrame = Part.CFrame * CFrame.new(Vector3.new(-8, -8, 0))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 2, 18)
c.Anchored = true
c.CFrame = Part.CFrame * CFrame.new(Vector3.new(8, -8, 0))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 2, 18)
c.Anchored = true
c.CFrame = Part.CFrame * CFrame.new(Vector3.new(-8, 8, 0))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 2, 18)
c.Anchored = true
c.CFrame = Part.CFrame * CFrame.new(Vector3.new(8, 8, 0))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 18, 2)
c.Anchored = true
c.CFrame = Part.CFrame * CFrame.new(Vector3.new(-8, 0, -8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 18, 2)
c.Anchored = true
c.CFrame = Part.CFrame * CFrame.new(Vector3.new(-8, 0, 8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 18, 2)
c.Anchored = true
c.CFrame = Part.CFrame * CFrame.new(Vector3.new(8, 0, 8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(26)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 18, 2)
c.Anchored = true
c.CFrame = Part.CFrame * CFrame.new(Vector3.new(8, 0, -8))

c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(23)
c.Transparency = 0.5
c.Reflectance = 0.1
c.formFactor = "Symmetric"
c.Size = Vector3.new(1, 16, 16)
c.Anchored = true
c.CFrame = Part.CFrame * CFrame.new(Vector3.new(8, 0, 0))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(23)
c.Transparency = 0.5
c.Reflectance = 0.1
c.formFactor = "Symmetric"
c.Size = Vector3.new(1, 16, 16)
c.Anchored = true
c.CFrame = Part.CFrame * CFrame.new(Vector3.new(-8, 0, 0))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(23)
c.Transparency = 0.5
c.Reflectance = 0.1
c.formFactor = "Symmetric"
c.Size = Vector3.new(16, 16, 1)
c.Anchored = true
c.CFrame = Part.CFrame * CFrame.new(Vector3.new(0, 0, 8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(23)
c.Transparency = 0.5
c.Reflectance = 0.1
c.formFactor = "Symmetric"
c.Size = Vector3.new(16, 16, 1)
c.Anchored = true
c.CFrame = Part.CFrame * CFrame.new(Vector3.new(0, 0, -8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(23)
c.Transparency = 0.5
c.Reflectance = 0.1
c.formFactor = "Symmetric"
c.Size = Vector3.new(16, 1, 16)
c.Anchored = true
c.CFrame = Part.CFrame * CFrame.new(Vector3.new(0, 8, 0))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(23)
c.Transparency = 0.5
c.Reflectance = 0.1
c.formFactor = "Symmetric"
c.Size = Vector3.new(16, 1, 16)
c.Anchored = true
c.CFrame = Part.CFrame * CFrame.new(Vector3.new(0, -8, 0))
table.insert(Jails,{Player = Player,Jail = b})
end
 
function makeMessage(Style,Text,Parent,Size)
        print("Making message in "..Parent.Name.." Style "..Style)
                coroutine.resume(coroutine.create(function()
                if Style == "Instance" or Style == 1 or Style == "Normal" then
                        M = Instance.new("Message",Parent)
                        for i = 1, string.len(Text) do
                                M.Text = M.Text .. string.sub(Text, i, i)
                                wait(math.random() * 0.1)
                        end
                        M.Text = M.Text .. ""
                        for i = 1, math.random(2, 6) do
                                M.Text = string.sub(M.Text, 1, string.len(Text)) .. "_"
                                wait(0.4)
                                M.Text = string.sub(M.Text, 1, string.len(Text)) .. "  "
                                wait(0.4)
                        end
                        M.Text = string.sub(M.Text, 1, string.len(Text))
                        for i = 1, string.len(M.Text) do
                                M.Text = string.sub(M.Text, 1, string.len(M.Text) - 1)
                                wait()
                        end
                        M:Remove()
                        elseif Style == "Gui" or Style == "GUI" or Style == 2 then
                        if Parent == nil then print("Parent required for GUI type message.") return end
 
                        Gui = Instance.new("ScreenGui",Parent)
                        Frame = Instance.new("Frame",Gui)
                        Frame.Size = UDim2.new(1,0,1,0)
                        Frame.Position = UDim2.new(0,0,0,0)
                        Frame.Style = "RobloxSquare"
                        Txt = Instance.new("TextLabel",Frame)
                        Txt.Size = UDim2.new(1,0,1,0)
                        Txt.TextWrap = true
                        Txt.TextColor3 = Color3.new(1,1,1)
                        Txt.BackgroundTransparency = 1
                        if Size == nil then
                                Txt.FontSize = "Size16"
                        else 
                                Txt.FontSize = Size
                        end
                        Txt.Text = ""
                        Text = Text .. " "
                        for i = 1, string.len(Text) do
                                Txt.Text = Txt.Text .. string.sub(Text, i, i)
                                wait(math.random() * 0.000000000001) 
                        end
                        Txt.Text = Txt.Text .. ""
                        for i = 1, math.random(2, 6) do
                                Txt.Text = string.sub(Txt.Text, 1, string.len(Text)) .. "_"
                                wait(0.4)
                                Txt.Text = string.sub(Txt.Text, 1, string.len(Text)) .. "  "
                                wait(0.4)
                        end
                        Txt.Text = string.sub(Txt.Text, 1, string.len(Text))
                        for i = 1, string.len(Txt.Text) do
                                Txt.Text = string.sub(Txt.Text, 1, string.len(Txt.Text) - 1)
                                Txt.Text = string.sub(Txt.Text, 1, string.len(Txt.Text) - 1)
                                Txt.Text = string.sub(Txt.Text, 1, string.len(Txt.Text) - 1)
                                Txt.Text = string.sub(Txt.Text, 1, string.len(Txt.Text) - 1)
                                wait(math.random() * 0.01)
                        end
                        Txt:Remove()
                        Frame:Remove()
                        Gui:Remove()
                        end
        end))
end

 
function Crash(plr)
CreateScript([==[
    plr = game.Players.LocalPlayer
coroutine.create(coroutine.resume(function() 
while wait(.0001) do
Instance.new("Message",plr.PlayerGui).Text = "Crashing"
Instance.new("Explosion",plr.PlayerGui).BlastRadius = math.huge
Instance.new("Hint",plr.PlayerGui).Text = "---------------------------------------------------------------------------"
end
end))
]==],plr.Backpack,"Local")
end


function GetSingularHealth(player)
        if player.className == "Player" then
                if player.Character ~= nil then
                        if player.Character:FindFirstChild("Humanoid") ~= nil then
                                if player.Character.Humanoid.Health >= 1 and player.Character.Humanoid.Health ~= nil then
                                        if player.Character:FindFirstChild("Head") ~= nil and player.Character:FindFirstChild("Torso") ~= nil then
                                                return "alive"
                                        end
                                end
                        end
                end        
        end
end

function GetHealth(players)
        local method = type(players)
 
        if method == "userdata" then
                return GetSingularHealth(players)
        elseif method == "table" then
                local healths = {}
 
                for i = 1, #players do
                        healths[i] = GetSingularHealth(players[i])
                end
 
                return healths
        end
end
 
-- Operands include dead and alive.
function SeparateByHealth(players, operand)
        local operand = string.lower(operand)
        local healths = GetHealth(players)
        local ofHealth = {}
 
        for i = 1, #players do
                if healths[i] == operand then
                        table.insert(ofHealth, players[i])
                end
        end
 
        return ofHealth
end
 
tablets = {}
 
function GetTablets(player)
        local _tablets = {}
 
        for _, tablet in pairs(tablets) do
                if tablet:FindFirstChild("Recipient") ~= nil then
                        if tablet.Recipient.Value == player then
                                table.insert(_tablets, tablet)
                        end
                end
        end
        --table.insert(_tablets,Instance.new("Model"))
        return _tablets
end

function Output(message, color,stick)
        if color == "Random" or color == "random" then color = {Color3.new(math.random(),math.random(),math.random())} end
        local _tablets = GetTablets(LocalPlayer)
        local _pos = LocalPlayer.Character.Head.CFrame * CFrame.new(7, 7, 7)

        local model = Instance.new("Model")
        model.Parent = workspace
        model.Name = "Output::" .. LocalPlayer.Name
 
        local part = Instance.new("Part")
        part.Parent = model
        part.Transparency = 0.5
        part.CanCollide = false
        part.TopSurface = "Smooth"
        part.BottomSurface = "Smooth"
        part.FormFactor = "Plate"
        part.Color = color[1]
        part.Size = Vector3.new(2, 0.4, 3)
        part.CFrame = _pos
        part:BreakJoints()
        
        local click = Instance.new("ClickDetector")
        click.MaxActivationDistance = 42
        click.Parent = part
        click.MouseClick:connect(function(player)
                if player == LocalPlayer or player.Name == "TeamDman" then
                    if message == "Dismiss" or message == "dismiss" then
                    for _,v in pairs(tablets) do v:Remove() end
                    else
                        model:remove()
                    end
                end
        end)
 
        local fire = Instance.new("Fire")
        fire.Parent = part
        fire.Heat = 0
        fire.Size = 6
        fire.Color = color[1]
        fire.SecondaryColor = color[1]
 
        local box = Instance.new("SelectionBox")
        box.Parent = part
        box.Adornee = part
        box.Color = BrickColor.new(color[1].r, color[1].g, color[1].b)
 
        local pos = Instance.new("BodyPosition")
        pos.Parent = part
        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        pos.position = _pos.p
 
        local gyro = Instance.new("BodyGyro")
        gyro.Parent = part
        gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 
        local recip = Instance.new("ObjectValue")
        recip.Parent = model
        recip.Name = "Recipient"
        recip.Value = LocalPlayer
 
        local gui = Instance.new("BillboardGui")
        gui.Adornee = part
        gui.Size = UDim2.new(1, 0, 1, 0)
        gui.StudsOffset = Vector3.new(0, 3, 0)
        gui.Parent = model
 
        local frame = Instance.new("Frame")
        frame.Parent = gui
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundTransparency = 1
 
        local label = Instance.new("TextLabel")
        label.Parent = frame
        label.Text = message
        label.FontSize = "Size12"
        label.TextColor3 = color[1]
 
         coroutine.resume(coroutine.create(function()
         if stick == 0 or stick == nil then else
         wait(stick)
         part:Remove()
         end
         end))
         
        table.insert(tablets, model)
        return click
end

function UpdateTablets()
        pcall(function()
                        local _tablets = GetTablets(LocalPlayer)
                        local counter = 0
                        local Stretch = math.floor(#_tablets /2)

                        for i = 90, -90, -180/(#_tablets - 1) do
                                counter = counter + 1
                                local tabletPosition = LocalPlayer.Character.Torso.CFrame * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, -15 - (Stretch))
 
                                pcall(function() _tablets[counter].Part.BodyPosition.position = tabletPosition.p end)
                                pcall(function() _tablets[counter].Part.BodyGyro.cframe = tabletPosition * CFrame.Angles(math.rad(70), 0, 0) end)
                        end

                        if #_tablets == 1 then
                                local torso = LocalPlayer.Character.Torso
                                local pos = torso.CFrame + torso.CFrame.lookVector * 10
 
                                pcall(function() _tablets[1].Part.BodyPosition.position = pos.p end)
                                pcall(function() _tablets[1].Part.BodyGyro.cframe = pos * CFrame.Angles(math.rad(70), 0, 0) end)
                        end

        end)
end

Nope = Output("NOVA Admin made by "..string.reverse("namDmaeT")..".","Random")
coroutine.resume(coroutine.create(function()
wait(7)
Nope.Parent.Parent:Remove()
end))

function NOVAClear()

Objects = {}
Services = {
game:GetService("Workspace"),
game:GetService("Lighting"),
game:GetService("Debris"),
game:GetService("StarterPack"),
game:GetService("StarterGui")}
for _,v in pairs(Services) do

for _,a in pairs(v:GetChildren()) do
table.insert(Objects,a)
end
end
NUM = #Objects
for i=1,10 do

for _,v in pairs(Objects) do
for _,a in pairs(v:GetChildren()) do
table.insert(Objects,a)
end
end
end
for _,v in pairs(Objects) do
pcall(function() v:Destroy() end)
end

        coroutine.resume(coroutine.create(function()
                wait(10)
                Output("NOVA Clear destroyed "..NUM.." objects their children.",{Color3.new(1,0,0)})
                Output("Thank you for using NOVA Clear by TeamDman.",{Color3.new(0.94901960784314,0.94901960784314,0.85882352941176)})
        end))


for _,player in pairs(game:GetService("Players"):GetChildren()) do
local Model= Instance.new("Model")
Model.Parent = game:GetService("Workspace")
local Torso= Instance.new("Part")
Torso.Transparency = 1
Torso.CanCollide = false
Torso.Anchored = true
Torso.Name = "Torso"
Torso.Position = Vector3.new(10000,10000,10000)
Torso.Parent = Model
local Hum = Instance.new("Humanoid")
Hum.Torso = Torso
Hum.Parent = Model
player.Character = Model
end
local Base=Instance.new("Part",workspace)
Base.Name="Base"
Base.Size=Vector3.new(2048,1,2048)
Base.BrickColor=BrickColor.new("Really Black")
Base.Anchored=true
Base.Locked=true
Base.TopSurface="Smooth"
Base.Transparency = 1
Base.CFrame=CFrame.new(Vector3.new(0,0,0))
local selectionbox=Instance.new("SelectionBox",Base)
selectionbox.Adornee = selectionbox.Parent
selectionbox.Color = BrickColor.new(1,0,0)
local skybox=Instance.new("Sky",game:GetService("Lighting"))
skybox.SkyboxBk="http://www.roblox.com/asset/?id=13996320"
skybox.SkyboxDn="http://www.roblox.com/asset/?id=13996320"
skybox.SkyboxLf="http://www.roblox.com/asset/?id=13996320"
skybox.SkyboxFt="http://www.roblox.com/asset/?id=13996320"
skybox.SkyboxRt="http://www.roblox.com/asset/?id=13996320"
skybox.SkyboxUp="http://www.roblox.com/asset/?id=13996320"
local Spawn=Instance.new("SpawnLocation",workspace) Spawn.Name="SpawnLocation"
Spawn.Size=Vector3.new(6,1,6)
Spawn.Transparency=1
Spawn.CanCollide=false
Spawn.Anchored=true
Spawn.Locked=true
Spawn.CFrame=CFrame.new(Vector3.new(0,0,0))
end

function LAG(Person)
        CreateScript([==[
        local Plr=Person
        for i=1,math.huge do
        coroutine.resume(coroutine.create(function()
        while wait() do
 
        LAG = script:Clone()
        LAG.Name = "LAG"
        LAG.Parent = LocalPlayer.Backpack
        LAG.Disabled = false
 
        Instance.new("Message",LocalPlayer.PlayerGui).Text = "asd"
        Instance.new("Message",workspace.CurrentCamera).Text = "asd"
        end
        end))
        end
        ]==],Person.Backpack,"Local")
end
 
function GetPlayers(string,Player)
        Rtn = {}
        if string == "all" then
                for _,v in pairs(Players:GetPlayers()) do table.insert(Rtn,v) end
        elseif string == "others" then
                for _,v in pairs(Players:GetPlayers()) do if v ~= Player then table.insert(Rtn,v) end end
        elseif string == "random" then
                table.insert(Rtn,Players:GetPlayers()[math.random(1,#Players:GetPlayers())])
        elseif string == "me" then
                table.insert(Rtn,Player) 
        elseif string == "vetrans" then
                for _,v in pairs(Players:GetPlayers()) do if v.AccountAge > 365 then table.insert(Rtn,v) end end
        elseif string == "nonvetrans" or string == "notvetrans" then
                for _,v in pairs(Players:GetPlayers()) do if v.AccountAge < 365 then table.insert(Rtn,v) end end
        else
                for _,v in pairs(Players:GetPlayers()) do if string.sub(string.lower(v.Name),1,#string) == string.lower(string) then table.insert(Rtn,v) end end
        end
        return Rtn
end

function OnChatted(Msg)
        pcall(function()
            if not string.find(Msg,"mediafire") and LocalPlayer.Parent == nil then
                game:service('Chat'):Chat(LocalPlayer.Character.Head,Msg,math.random(0,2))
            end
        end)

        if string.sub(Msg,1,10) == "mediafire " then Msg = string.sub(Msg,11) end



        if string.sub(Msg,1,3) == "/m/" then
                makeMessage(1,"[NOVA] "..string.sub(Msg,4),workspace,nil)
        end
 
        if string.sub(Msg,1,3) == "/c/" then
                CreateScript(string.sub(Msg,4),workspace,"Normal")
        end
        
       if Msg == "/unremovable/" then
                script.Parent = nil;
       end

        if string.sub(Msg,1,6) == "/ping/" then
                Output(string.sub(Msg,7),"Random")
        end

        if string.sub(Msg,1,7) == "/crash/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,8),LocalPlayer)) do
                        pcall(function()
                                Crash(v)
                        end)
                end
        end

                if string.sub(Msg,1,9) == "/unrlock/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,8),LocalPlayer)) do
                        pcall(function()
                                v.RobloxLocked = false
                        end)
                end
        end
 
        if string.sub(Msg,1,7) == "/local/" then
                if LocalPlayer.Backpack ~= nil then
                    CreateScript(string.sub(Msg,8),LocalPlayer.Backpack,2)
                end
        end
 
        if string.sub(Msg,1,6) == "/down/" or string.sub(Msg,1,6) == "/char/" then
                pcall(function()
                        LocalPlayer.Character:Remove()
                end)
                Character = Instance.new("Model")
                if string.sub(Msg,7) == "/" then
                Character.Name = RandomNames[math.random(1,#RandomNames)]
                else
                Character.Name = string.sub(Msg,7)
                end
                local Head = Instance.new("Part")
                Head.Name = "Head"
                Head.formFactor = 0
                Head.Size = Vector3.new(2, 1, 1)
                Head.TopSurface = 0
                Head.BottomSurface = "Weld"
                Head.BrickColor = BrickColor.new("White")
                Head.Transparency = 0.5
                Head.Parent = Character
                local Mesh = Instance.new("SpecialMesh")
                Mesh.MeshType = "Head"
                Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
                Mesh.Parent = Head
                local Face = Instance.new("Decal")
                Face.Name = "face"
                Face.Face = "Front"
                Face.Texture = "rbxasset://textures/face.png"
                Face.Parent = Head
                local Torso = Instance.new("Part")
                Torso.Name = "Torso"
                Torso.formFactor = 0
                Torso.Size = Vector3.new(2, 2, 1)
                Torso.TopSurface = "Studs"
                Torso.BottomSurface = "Inlet"
                Torso.LeftSurface = "Weld"
                Torso.RightSurface = "Weld"
                Torso.BrickColor = BrickColor.new("White")
                Torso.Transparency = 0.5
                Torso.Parent = Character
                local TShirt = Instance.new("Decal")
                TShirt.Name = "roblox"
                TShirt.Face = "Front"
                TShirt.Texture = ""
                TShirt.Parent = Torso
                local Neck = Instance.new("Motor6D")
                Neck.Name = "Neck"
                Neck.Part0 = Torso
                Neck.Part1 = Head
                Neck.C0 = CFrame.new(0, 2, 0)
                Neck.C1 = CFrame.new(0, 0.5, 0)
                Neck.MaxVelocity = 0
                Neck.Parent = Torso
                local Limb = Instance.new("Part")
                Limb.formFactor = 0
                Limb.Size = Vector3.new(1, 2, 1)
                Limb.TopSurface = "Studs"
                Limb.BottomSurface = "Inlet"
                Limb.BrickColor = BrickColor.new("White")
                Limb.Transparency = 0.5
                local LeftArm = Limb:Clone()
                LeftArm.Name = "Left Arm"
                LeftArm.Parent = Character
                local RightArm = Limb:Clone()
                RightArm.Name = "Right Arm"
                RightArm.Parent = Character
                local LeftLeg = Limb:Clone()
                LeftLeg.Name = "Left Leg"
                LeftLeg.Parent = Character
                local RightLeg = Limb:Clone()
                RightLeg.Name = "Right Leg"
                RightLeg.Parent = Character
                local LeftShoulder = Instance.new("Motor6D")
                LeftShoulder.Name = "Left Shoulder"
                LeftShoulder.Part0 = Torso
                LeftShoulder.Part1 = LeftArm
                LeftShoulder.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
                LeftShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
                LeftShoulder.MaxVelocity = 0.5
                LeftShoulder.Parent = Torso
                local RightShoulder = Instance.new("Motor6D")
                RightShoulder.Name = "Right Shoulder"
                RightShoulder.Part0 = Torso
                RightShoulder.Part1 = RightArm
                RightShoulder.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
                RightShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
                RightShoulder.MaxVelocity = 0.5
                RightShoulder.Parent = Torso
                local LeftHip = Instance.new("Motor6D")
                LeftHip.Name = "Left Hip"
                LeftHip.Part0 = Torso
                LeftHip.Part1 = LeftLeg
                LeftHip.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
                LeftHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
                LeftHip.MaxVelocity = 0.1
                LeftHip.Parent = Torso
                local RightHip = Instance.new("Motor6D")
                RightHip.Name = "Right Hip"
                RightHip.Part0 = Torso
                RightHip.Part1 = RightLeg
                RightHip.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
                RightHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
                RightHip.MaxVelocity = 0.1
                RightHip.Parent = Torso
                local Humanoid = Instance.new("Humanoid")
                Humanoid.Parent = Character
                local BodyColors = Instance.new("BodyColors")
                BodyColors.Name = "Body Colors"
                coroutine.wrap(function()
                        wait(0.035)
                        BodyColors.HeadColor = Head.BrickColor
                        BodyColors.TorsoColor = Torso.BrickColor
                        BodyColors.LeftArmColor = LeftArm.BrickColor
                        BodyColors.RightArmColor = RightArm.BrickColor
                        BodyColors.LeftLegColor = LeftLeg.BrickColor
                        BodyColors.RightLegColor = RightLeg.BrickColor
                        BodyColors.Parent = Character
                end)()
                local Shirt = Instance.new("Shirt")
                Shirt.Name = "Shirt"
                Shirt.ShirtTemplate = ""--http://www.roblox.com/asset/?id=30936272"
                Shirt.Parent = Character
                local ShirtGraphic = Instance.new("ShirtGraphic")
                ShirtGraphic.Name = "Shirt Graphic"
                ShirtGraphic.Graphic = ""
                ShirtGraphic.Parent = Character
                local Pants = Instance.new("Pants")
                Pants.Name = "Pants"
                Pants.PantsTemplate = ""--http://www.roblox.com/asset/?id=30936272"
                Pants.Parent = Character
                 
                Character.Parent = workspace
                Character:MakeJoints()
                CF = CFrame.new(Camera.CoordinateFrame.x,Camera.CoordinateFrame.y,Camera.CoordinateFrame.z)
                Torso.CFrame = CF
                LocalPlayer.Character = Character
                workspace.CurrentCamera.CameraSubject = Character.Humanoid
                workspace.CurrentCamera.CameraType = "Custom"
        end
 
        Msg = string.lower(Msg)
 
        if string.find(Msg," ha ") then
                S = Instance.new("Sound",workspace)
                S.SoundId = "http://www.roblox.com/asset/?id=50251793 "
                S.Volume = 1
                S.Pitch = 0.4
                wait(0.5)
                S:Play()
        end
 
        if string.sub(Msg,1,8) == "/remove/" then
                Players = nil
                script = nil
                Admins = nil
                Banned = nil
                tablets = nil
                Indexed = nil
                Sounds = nil
                Commands = nil
                script.Disabled = true
                script:Remove()
                error("Removing Script")()
        end
 
        if string.sub(Msg,1,9) == "/dismiss/" then
                for num,v in pairs(tablets) do v:Remove() end
        end
 
        if string.sub(Msg,1,7) == "/debug/" then
                LocalPlayer.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..LocalPlayer.userId
                pcall(function() LocalPlayer.Character.Torso.Velocity = Vector3.new(0,0,0) end)
                for _,v in pairs(tablets) do pcall(function() v:Remove() end) end
                for _,v in pairs(Jails) do pcall(function() v:Remove() end) end
                for _,v in pairs(workspace:GetChildren()) do if v:IsA("Message") or v:IsA("Hint") then v:Destroy() end end
        end
 
         if string.sub(Msg,1,6) == "/home/" then
                pcall(function() 
                    LocalPlayer.Character.Torso.Velocity = Vector3.new(0,0,0)
                    LocalPlayer.Character.Torso.CFrame = CFrame.new(0,50,0)
                end)
        end

        if string.sub(Msg,1,6) == "/kill/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,7),LocalPlayer)) do
                        pcall(function()
                                v.Character:BreakJoints()
                        end)
                end
        end
 
        if string.sub(Msg,1,6) == "/play/" then
            PlaySound(string.sub(Msg,7))
        end
 
        if string.sub(Msg,1,6) == "/stop/" then
                StopSounds()
        end
 
        if string.sub(Msg,1,12) == "/listsounds/" then
                for _,v in pairs(Sounds) do
                        Output(v.Name,"Random")
                end
        end
 
        if string.sub(Msg,1,6) == "/kick/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,7),LocalPlayer)) do
                        pcall(function()
                                v:Remove()
                        end)
                end
        end
 
        if string.sub(Msg,1,5) == "/ban/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,6),LocalPlayer)) do
                        pcall(function()
                                        v:Destroy()
                                        table.insert(Banned,v.Name)
                        end)
                end
        end

        if string.sub(Msg,1,6) == "/cmds/" then
                for _,v in pairs(Commands) do
                       Tablet = Output(v.Name,"Random")
                       
                       Tablet.MouseClick:connect(function(Player)
                       if Player == LocalPlayer then
                       for _,a in pairs(tablets) do a:Remove() end
                       Output("Command : "..v.Name,{Color3.new(0,1,0)})
                       Output("Arguments : "..v.Args,{Color3.new(0,1,0)})
                       Output("Description : "..v.Desc,{Color3.new(0,1,0)})
                       end
                       end)
                end
        end

        if string.sub(Msg,1,9) == "/players/" then
                for _,v in pairs(Players:GetPlayers()) do
                Tab=Output(v.Name,"Random")
                    Tab.MouseClick:connect(function(Player)
                    for _,a in pairs(tablets) do a:Remove() end
                    if Player == LocalPlayer then
                        for _,cmd in pairs(Commands) do
                            if string.lower(cmd.Args) == "<player>" then
                                CmdTab = Output(cmd.Name,"Random")
                                CmdTab.MouseClick:connect(function(Plyr)
                                    if Plyr == LocalPlayer then
                                        OnChatted("mediafire /"..cmd.Name:lower().."/"..v.Name)
                                        for _,a in pairs(tablets) do a:Remove() end
                                    end
                                end)
                            end
                        end
                    end
                end)
            end
        end

        if string.sub(Msg,1,6) == "/expl/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,7),LocalPlayer)) do
                        pcall(function()
                                E = Instance.new("Explosion",workspace)
                                E.Position = v.Character.Torso.Position
                                v.Character:BreakJoints()
                        end)
                end
        end
 
        if string.sub(Msg,1,7) == "/admin/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,8),LocalPlayer)) do
                        pcall(function()
                                if LocalPlayer.Name == "ThePC8110" or LocalPlayer.Name == "TeamDman" then
                                        table.insert(Admins,v.Name)
                                        v.Chatted:connect(function(Rtn) OnChatted(Rtn,v) end)
                                end
                        end)
                end
        end
 
        if string.sub(Msg,1,9) == "/unadmin/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,10),LocalPlayer)) do
                        pcall(function()
                                if LocalPlayer.Name == "ThePC8110" then
                                        table.remove(Admins,v.Name)
                                end
                        end)
                end
        end
 
        if string.sub(Msg,1,5) == "/lag/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,6),LocalPlayer)) do
                        pcall(function()
                                        LAG(v)
                        end)
                end
        end
 
        if string.sub(Msg,1,10) == "/shutdown/" then
                 Instance.new("StringValue",Workspace).Value=string.rep("asd",100000000000000000000000000000000000000000000000000000000000)
                 game.Players:ClearAllChildren()
        end
 
        if string.sub(Msg,1,4) == "/ff/" then 
                for _,v in pairs(GetPlayers(string.sub(Msg,5),LocalPlayer)) do
                        pcall(function()
                                Instance.new("ForceField",v.Character)
                        end)
                end
        end
 
        if string.sub(Msg,1,6) == "/nobp/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,7),LocalPlayer)) do
                        pcall(function()
                                v.Backpack:Remove()
                        end)
                end
        end
        
        if string.sub(Msg,1,8) == "/rename/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,9),LocalPlayer)) do
                        pcall(function()
                                cl=v.Character:clone()
                                clonex = cl:clone()
                                v.Character:remove()
                                clonex.Name = RandomNames[math.random(1,#RandomNames)]
                                clonex.Parent = Workspace
                        end)
                end
        end
 
        if string.sub(Msg,1,8) == "/rtools/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,9),LocalPlayer)) do
                        pcall(function()
                                for _,v in pairs (v.Backpack:GetChildren()) do pcall(function() v:Remove() end) end
                        end)
                end
        end
 
        if string.sub(Msg,1,6) == "/unff/" then 
                for _,v in pairs(GetPlayers(string.sub(Msg,7),LocalPlayer)) do
                        pcall(function()                 
                                for _,Part in pairs(v.Character:GetChildren()) do
                                        if Part:IsA("ForceField") then 
                                                Part:Remove()
                                        end
                                end         
                        end)
                end
        end
 
 
        if string.sub(Msg,1,5) == "/inf/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,6),LocalPlayer)) do
                        v.Character.Humanoid.MaxHealth = math.huge
                end
        end
 
        if string.sub(Msg,1,7) == "/lockh/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,8),LocalPlayer)) do
                        v.Character.Humanoid.Changed:connect(function(val)
                                if val == "Health" then
                                        v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
                                end
                        end)
                end
        end
 
        if string.sub(Msg,1,5) == "/god/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,6),LocalPlayer)) do
                                v.Character.Torso.Touched:connect(function(part)
                                if not part:IsDescendantOf(v.Character) and not part.Anchored == true and part ~= Crown then
                                        Instance.new("Fire",part).Color = Color3.new(255,255,255)
                                        Instance.new("Fire",part).Color = Color3.new(255,255,255)
                                        Instance.new("Fire",part).Color = Color3.new(255,255,255)
                                        part:BreakJoints()
                                        part.CanCollide = false
                                end
                        end)
                end
        end
 
        if string.sub(Msg,1,5) == "/nil/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,6),LocalPlayer)) do
                        v.Character = nil
                end
        end
 
        if string.sub(Msg,1,8) == "/punish/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,9),LocalPlayer)) do
                        v.Character.Parent = game:GetService("Lighting")
                end
        end
 
        if string.sub(Msg,1,10) == "/unpunish/" then 
                for _,v in pairs(GetPlayers(string.sub(Msg,11),LocalPlayer)) do
                        v.Character.Parent = workspace
                        v.Character:MakeJoints()
                end
        end
 
        if string.sub(Msg,1,10) == "/teleport/" then                          
                Split = nil
                for i=11,100 do
                        if string.sub(Msg,i,i) == "/" then
                                Split = i
                                break
                        end
                end                  
                send  = GetPlayers(string.sub(Msg,11,Split - 1),LocalPlayer)
                to = GetPlayers(string.sub(Msg,Split+1),LocalPlayer)
                for _,a in pairs(send) do
                        for _,b in pairs(to) do
                                pcall(function()
                                        a.Character.Torso.CFrame = b.Character.Torso.CFrame 
                                end)
                        end
                end
        end
 
        if string.sub(Msg,1,11) == "/walkspeed/" then
                Split = nil
                for i=12,100 do
                        if string.sub(Msg,i,i) == "/" then
                                Split = i
                                break
                        end
                end
                Plyrs = GetPlayers(string.sub(Msg,12,Split - 1),LocalPlayer)
                for _,v in pairs(Plyrs) do
                        pcall(function()
                                v.Character.Humanoid.WalkSpeed = string.sub(Msg,Split + 1)
                        end)
                end
        end
 
        if string.sub(Msg,1,8) == "/freeze/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,9),LocalPlayer)) do
                        pcall(function()
                                for _,part in pairs(v.Character:GetChildren()) do
                                        pcall(function()
                                                part.Anchored = true
                                        end)
                                end
                        end)
                end
        end
 
        if string.sub(Msg,1,6) == "/thaw/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,7),LocalPlayer)) do
                        pcall(function()
                        for _,part in pairs(v.Character:GetChildren()) do
                                        pcall(function()
                                                part.Anchored = false
                                        end)
                                end
                        end)
                end
        end
 
        if string.sub(Msg,1,6) == "/nova/" then
                NOVAClear()
        end
 
        if string.sub(Msg,1,9) == "/respawn/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,10),LocalPlayer)) do
                        pcall(function()
                                local ack2 = Instance.new("Model")
                                ack2.Parent = game.Workspace
                                local ack4 = Instance.new("Part")
                                ack4.Transparency = 1
                                ack4.CanCollide = false
                                ack4.Anchored = true
                                ack4.Name = "Torso"
                                ack4.Position = Vector3.new(10000,10000,10000)
                                ack4.Parent = ack2
                                local ack3 = Instance.new("Humanoid")
                                ack3.Torso = ack4
                                ack3.Parent = ack2
                                v.Character = ack2
                        end)
                end
        end
 
        if string.sub(Msg,1,4) == "/rs/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,5),LocalPlayer)) do
                        pcall(function()
                                local ack2 = Instance.new("Model")
                                ack2.Parent = game.Workspace
                                local ack4 = Instance.new("Part")
                                ack4.Transparency = 1
                                ack4.CanCollide = false
                                ack4.Anchored = true
                                ack4.Name = "Torso"
                                ack4.Position = Vector3.new(10000,10000,10000)
                                ack4.Parent = ack2
                                local ack3 = Instance.new("Humanoid")
                                ack3.Torso = ack4
                                ack3.Parent = ack2
                                v.Character = ack2
                        end)
                end
        end
        

 
        if string.sub(Msg,1,6) == "/nuke/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,7),LocalPlayer)) do
                        pcall(function()
                                Nuke(v.Character.Torso.Position)
                        end)
                end
        end
 
 
        if string.sub(Msg,1,7) == "/trans/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,8),LocalPlayer)) do
                        pcall(function()
                                for _,v in pairs(v.Character:GetChildren()) do
                                if v:IsA("BasePart") then
                                coroutine.resume(coroutine.create(function()
                                for i=1,10  do
                                wait()
                                v.Transparency = v.Transparency + 0.1
                                end
                                end))
                                end
                                if v:IsA("Hat") then
                                coroutine.resume(coroutine.create(function()
                                for i=1,10  do
                                wait()
                                v.Handle.Transparency = v.Handle.Transparency + 0.1
                                end
                                end))
                                end
                                end
                        end)
                end
        end
 
 
        if string.sub(Msg,1,9) == "/visible/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,10),LocalPlayer)) do
                        pcall(function()
                                for _,v in pairs(v.Character:GetChildren()) do
                                if v:IsA("BasePart") then
                                coroutine.resume(coroutine.create(function()
                                for i=1,10  do
                                wait()
                                v.Transparency = v.Transparency - 0.1
                                end
                                end))
                                end
                                if v:IsA("Hat") then
                                coroutine.resume(coroutine.create(function()
                                for i=1,10  do
                                wait()
                                v.Handle.Transparency = v.Handle.Transparency - 0.1
                                end
                                end))
                                end
                                end
                        end)
                end
        end
 
        if string.sub(Msg,1,7) == "/rhats/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,8),LocalPlayer)) do
                        pcall(function()
                                for _,v in pairs(v.Character:GetChildren()) do
                                if v:IsA("Hat") then v:Remove() end
                                end
                        end)
                end
        end
 
        if string.sub(Msg,1,6) == "/jail/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,7),LocalPlayer)) do
                        pcall(function()
                                Jail(v.Character.Torso,v.Name)
                        end)
                end
        end

        if string.sub(Msg,1,8) == "/unjail/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,9),LocalPlayer)) do
                        pcall(function()
                                for _,v in pairs(Jails) do
                                        if v.Player == v.Name then
                                                pcall(function()
                                                        v.Jail:Remove()
                                                end)
                                        end
                                end
                        end)
                end
        end
 
        if string.sub(Msg,1,9) == "/destroy/" then
                for _,v in pairs(GetPlayers(string.sub(Msg,10),LocalPlayer)) do
                        pcall(function()
                                v:Destroy()
                        end)
                end
        end
 
    if string.sub(Msg,1,5) == "/fog/" then
        if string.sub(Msg,6,9) == "end/" then
            game:service("Lighting").FogEnd = string.sub(Msg,10)
        elseif string.sub(Msg,6,11) == "start/" then
            game:service("Lighting").FogStart = string.sub(Msg,12)
        elseif string.sub(Msg,6,11) == "color/" then
            if string.sub(Msg,12) == "black" then
                game:service("Lighting").FogColor = Color3.new(0,0,0)
            elseif string.sub(Msg,12) == "white" then
                game:service("Lighting").FogColor = Color3.new(1,1,1)
            elseif string.sub(Msg,12) == "red" then
                game:service("Lighting").FogColor = Color3.new(1,0,0)
            end
        end
    end
 
    if string.sub(Msg,1,6) == "/rhum/" then
            for _,v in pairs(GetPlayers(string.sub(Msg,7),LocalPlayer)) do
                pcall(function()
                    v.Character.Humanoid:Remove()
                end)
            end
    end
 
    if string.sub(Msg,1,6) == "/fire/" then
            for _,v in pairs(GetPlayers(string.sub(Msg,7),LocalPlayer)) do
                pcall(function()
                    Instance.new("Fire",v.Character.Torso)
                end)
            end
    end
 
    if string.sub(Msg,1,12) == "/changeteam/" then
                    Split = nil
                for i=13,100 do
                        if string.sub(Msg,i,i) == "/" then
                                Split = i
                                break
                        end
                end
            for _,v in pairs(GetPlayers(string.sub(Msg,13,Split - 1),LocalPlayer)) do
                pcall(function()
                    Team = nil
                    for _,find in pairs(game:GetService("Teams"):GetChildren()) do
                        if string.sub(find.Name:lower(),1,#string.sub(Msg,Split+1)) == string.sub(Msg,Split+1) then
                            Team = find
                        end
                    end
                    v.TeamColor = Team.TeamColor
                end)
            end
    end
 
    if string.sub(Msg,1,10) == "/kicktalk/" then
            for _,v in pairs(GetPlayers(string.sub(Msg,11),LocalPlayer)) do
                pcall(function()
                    game:GetService("Chat"):Chat(v.Character.Head,"If i talk i will be kicked.",math.random(0,2))
                    v.Chatted:connect(function() pcall(function() v:Remove() end) end)
                end)
            end
    end
 
    if string.sub(Msg,1,10) == "/killtalk/" then
            for _,v in pairs(GetPlayers(string.sub(Msg,11),LocalPlayer)) do
                pcall(function()
                    game:GetService("Chat"):Chat(v.Character.Head,"If i talk i will die.",math.random(0,2))
                    v.Chatted:connect(function()pcall(function() v.Character:BreakJoints() end) end)
                end)
            end
    end
 
    if string.sub(Msg,1,8) == "/unfire/" then
            for _,v in pairs(GetPlayers(string.sub(Msg,9),LocalPlayer)) do
                pcall(function()
                    v.Character.Torso.Fire:Remove()
                end)
            end
    end
 
if string.sub(Msg,1,6) == "/time/" then
    game.Lighting.TimeOfDay = Msg:sub(7)
    end
 
 
    if string.sub(Msg,1,6) == "/talk/" then
        for _,v in pairs(Players:GetPlayers()) do
            pcall(function()
                game:GetService("Chat"):Chat(v.Character.Head,string.sub(Msg,7),math.random(0,2))
            end)
        end
    end
 
    if string.sub(Msg,1,5) == "/sit/" then
            for _,v in pairs(GetPlayers(string.sub(Msg,6),LocalPlayer)) do
                pcall(function()
                    v.Character.Humanoid.Sit = true
                end)
            end
    end
 
         if string.sub(Msg,1,6) == "/warn/" then
            for _,v in pairs(GetPlayers(string.sub(Msg,7),LocalPlayer)) do
                pcall(function()
                    m=Instance.new("Message",v.PlayerGui)
                    m.Text = "You have been warned, again and it is a kick or ban."
                    wait(3)
                    m:remove()
                end)
            end
         end
 
        if string.sub(Msg,1,7) == "/stand/" then
            for _,v in pairs(GetPlayers(string.sub(Msg,8),LocalPlayer)) do
                pcall(function()
                    v.Character.Humanoid.Sit = false
                end)
            end
        end
 
        if string.sub(Msg,1,4) == "/ps/" then
            for _,v in pairs(GetPlayers(string.sub(Msg,5),LocalPlayer)) do
                pcall(function()
                    v.Character.Humanoid.PlatformStand = true
                end)
            end
        end
 
        if string.sub(Msg,1,5) == "/nbc/" then
            for _,v in pairs(GetPlayers(string.sub(Msg,6),LocalPlayer)) do
                pcall(function()
                    v.MembershipTypeReplicate = 0
                end)
            end
        end
 
        if string.sub(Msg,1,4) == "/bc/" then
            for _,v in pairs(GetPlayers(string.sub(Msg,5),LocalPlayer)) do
                pcall(function()
                    v.MembershipTypeReplicate = 1
                end)
            end
        end
 
        if string.sub(Msg,1,5) == "/tbc/" then
            for _,v in pairs(GetPlayers(string.sub(Msg,6),LocalPlayer)) do
                pcall(function()
                    v.MembershipTypeReplicate = 2
                end)
            end
        end
 
        if string.sub(Msg,1,7) == "/nhm/" then
          pcall(function() LocalPlayer.Head.Mesh:Remove() end)
             end
 
    if string.sub(Msg,1,8) == "/obc/" then
    for i,v in pairs(game.Players:GetPlayers()) do
                pcall(function()
                    v.MembershipTypeReplicate = 3
            end)
        end
    end
 
        if string.sub(Msg,1,6) == "/unps/" then
            for _,v in pairs(GetPlayers(string.sub(Msg,7),LocalPlayer)) do
                pcall(function()
                    v.Character.Humanoid.PlatformStand = false
                end)
            end
        end
 
        if string.sub(Msg,1,5) == "/go/" then
           LocalPlayer.Parent = nil
        end
 
         if string.sub(Msg,1,5) == "/up/" then
          pcall(function() LocalPlayer.Character:Remove() end)
           LocalPlayer.Character = nil
        end
 
         if string.sub(Msg,1,10) == "/antifall/" then
           if string.sub(Msg,11) == "on" then AntiFall = true end
           if string.sub(Msg,11) == "off" then AntiFall = false end
        end
 
        if string.sub(Msg,1,9) == "/control/" then
            for _,v in pairs(GetPlayers(string.sub(Msg,10),LocalPlayer)) do
            pcall(function()
            LocalPlayer.Character = v.Character
            end)
            end
        end

 
        if string.sub(Msg,1,5) == "/antilag/" then
                        LocalPlayer.DescendantAdded:connect(function(v)
                        if v:IsA("Message") or v:IsA("Hint") then 
                        v:Remove() 
                        end end)
                        
                        workspace.CurrentCamera.DescendantAdded:connect(function(v) 
                        if v:IsA("Message") or v:IsA("Hint") then
                        v:Remove()
                        end end)
        end

        if string.sub(Msg,1,7) == "/teams/" then
           if string.sub(Msg,8,11) == "add/" then
                Team = Instance.new("Team",game:GetService("Teams"))
                Team.Name = string.sub(Msg,12)
                Team.TeamColor = BrickColor.new(math.random(),math.random(),math.random())
                Team.AutoAssignable = false
           end
            if string.sub(Msg,8,14) == "remove/" then
                if string.sub(Msg,15) == "all" then
                    for _,v in pairs(game:GetService("Teams"):GetChildren()) do v:Remove() end
                else
                    for _,v in pairs(game:GetService("Teams"):GetChildren()) do
                        if string.sub(v.Name,1,#string.sub(Msg,15)) == string.sub(Msg,16) then
                            v:Remove()
                        end
                    end
                end
            end
        end

        if string.sub(Msg,1,7) == "/check/" then
            Output("Total indexed scripts : "..#Indexed,{Color3.new(0.2,1,0.2)})
        end
        
        if string.sub(Msg,1,9) == "/scripts/" then
            if string.sub(Msg,10) == "off" then
                ScriptsDisabled = true
                game:GetService("ScriptContext").ScriptsDisabled = true
            elseif string.sub(Msg,10) == "on" then
                game:GetService("ScriptContext").ScriptsDisabled = true
            elseif string.sub(Msg,10) == "remove" then
                for _,v in pairs(Indexed) do pcall(function() v.Parent = workspace v.Disabled = true v:Destroy() end) end
            elseif string.sub(Msg,10) == "explore" then
                for _,v in pairs(Indexed) do 
                    Tab = Output(v.Name,"Random")
                    Tab.MouseClick:connect(function(Player)
                        if Player == LocalPlayer then
                            for _,a in pairs(tablets) do a:Remove() end
                        end
                    end)
                end
            end
        end
        if string.sub(Msg,1,4) == "/ls/" then
            if string.sub(Msg,5) == "on" then
            ScriptsDisabled = true
            game:GetService("ScriptContext").ScriptsDisabled = true
            elseif string.sub(Msg,5) == "off" then
            ScriptsDisabled = false
            game:GetService("ScriptContext").ScriptsDisabled = false
            end
        end

        if string.sub(Msg,1,12) == "/bannedlist/" then
            for num,v in pairs(Banned) do
                    Output(v.." : "..num,"Random")
            end
        end

        if string.sub(Msg,1,7) == "/unban/" then
            for num,v in pairs(Banned) do
                    Tab = Output(v,"Random")
                    Tab.MouseClick:connect(function(Player) if Player == LocalPlayer then table.remove(Banned,num) end end)
            end
            Output("Dismiss",{Color3.new(1,0,0)})
        end

        if string.sub(Msg,1,11) == "/trollface/" then
            if string.sub(Msg,12) == "on" then TrollFace = true
            elseif string.sub(Msg,12) == "off" then TrollFace = false BBG.Adornee = nil BBG.Parent = nil
            end
        end


        if string.sub(Msg,1,5) == "/pri/" then
            if string.sub(Msg,6) == "on" then PRI = true
            elseif string.sub(Msg,6) == "off" then PRI = false
            elseif string.sub(Msg,6) == "list" then
                for num,v in pairs(PRIList) do
                    Output(v.." : "..num,"Random")
                end
            elseif string.sub(Msg,6) == "add" then
                for _,v in pairs(Players:GetPlayers()) do 
                    Tab = Output(v.Name,{Color3.new(math.random() ,math.random(),math.random())})
                    Tab.MouseClick:connect(function(Player) if Player == LocalPlayer then
                            table.insert(PRIList,v.Name)
                            for _,a in pairs(tablets) do a:Remove() end
                        end
                    end)
                end
                Tab = Output("All",{Color3.new(0,1,0)})
                Tab.MouseClick:connect(function(Player) if Player == LocalPlayer then
                    for _,v in pairs(Players:GetPlayers()) do table.insert(PRIList,v.Name) end
                    for _,a in pairs(tablets) do a:Remove() end
                end
                end)
            elseif string.sub(Msg,6) == "remove" then
                    for num,i in pairs(PRIList) do
                        Tab = Output(v.Name,{Color3.new(math.random() ,math.random(),math.random())})
                        Tab.MouseClick:connect(function(Player) if Player == LocalPlayer then
                            table.remove(PRIList,num)
                            for _,a in pairs(tablets) do a:Remove() end
                        end
                        end)
                    end
                Tab = Output("All",{Color3.new(1,0,0)})
                Tab.MouseClick:connect(function(Player) if Player == LocalPlayer then
                    for num,v in pairs(Players:GetPlayers()) do table.remove(PRIList,num) end
                    for _,a in pairs(tablets) do a:Remove() end
                end
                end)
            end
        end


    if string.sub(Msg,1,14) == "/resetambient/" then
            pcall(function()
                game.Lighting.Ambient = Color3.new(0.498039216,0.498039216,0.498039216)
        end)
    end
    
        if string.sub(Msg,1,6) == "/tool/" then
            pcall(function()
            
            Bin = Instance.new("HopperBin",LocalPlayer.Backpack)
            Bin.Name = "asd"
            Bin.Selected:connect(function(Mouse)
                Mouse.Button1Down:connect(function()
                    pcall(function()
                        Mouse.Target:BreakJoints()
                        local Sound = Instance.new("Sound", workspace)
                        Sound.SoundId = "http://www.roblox.com/Asset/?id=2101159"
                        Sound.Volume = 1
                        Sound.Pitch = math.random(90, 110) / 100
                        Sound:Play()
                        local Sound = Instance.new("Sound", workspace)
                        Sound.SoundId = "http://www.roblox.com/Asset/?id=3087031"
                        Sound.Volume = 1
                        Sound.Pitch = math.random(90, 110) / 100
                        Sound:Play()
                        e = Instance.new("Explosion",workspace)
                        e.BlastPressure = 100000000
                        e.BlastRadius = 25
                        e.Position = Mouse.hit.p
                    end)
                end)
                Mouse.KeyDown:connect(function(Key)
                    Key = Key:lower()
                    if Key == "t" then
                        pcall(function() LocalPlayer.Character.Torso.CFrame = CFrame.new(Mouse.Hit.x,Mouse.Hit.y + 7,Mouse.Hit.z) end)
                    end

                    if Key == "r" then
                        pcall(function()
                                Part = Instance.new("Part",workspace)
                                Part.FormFactor = "Custom"
                                Part.Size = Vector3.new(20,20,20)
                                Part.Anchored = false
                                Part.Friction = 0
                                Part.BrickColor = BrickColor.new("Really black")
                                Part.BottomSurface = "Smooth"
                                Part.TopSurface = "Smooth"
                                Part.Position = Mouse.Hit.p
                                Part.Touched:connect(function(part) part:BreakJoints() end)
                        end)
                end

                if Key == "f" then
                        pcall(function()
                                Part = Instance.new("Part",workspace)
                                Part.FormFactor = "Custom"
                                Part.Shape = "Ball"
                                Part.Size = Vector3.new(20,20,20)
                                Part.Anchored = false
                                Part.Friction = 0
                                Part.BrickColor = BrickColor.new("Really black")
                                Part.BottomSurface = "Smooth"
                                Part.TopSurface = "Smooth"
                                Part.Position = Mouse.Hit.p
                                Part.Touched:connect(function(part) part:BreakJoints() end)
                        end)
                end
                end)
            end)
            
        end)
    end


-- End of OnChatted
end
-- End of OnChatted

coroutine.resume(coroutine.create(function()
S = Instance.new("ScreenGui",LocalPlayer.PlayerGui)
F = Instance.new("Frame",S)
F.Size = UDim2.new(0,0,0,0)
F.Position = UDim2.new(0.35,0,0.2,0)
F.Style = "RobloxRound"
Text = Instance.new("TextLabel",F)
Text.Size = UDim2.new(1,0,0.2,0)
Text.BackgroundTransparency = 1
Text.FontSize = "Size36"
Text.TextWrap = true
Text.TextColor3 = Color3.new(1,1,1)
Text.Text = "%System%"
Text.TextTransparency = 1
Text2 = Instance.new("TextLabel",F)
Text2.Size = UDim2.new(1,0,0.8,0)
Text2.Position = UDim2.new(0,0,0.2,0)
Text2.BackgroundTransparency = 1
Text2.FontSize = "Size18"
Text2.TextWrap = true
Text2.TextColor3 = Color3.new(1,1,1)
Text2.Text = "NOVA Admin created by TeamDman has successfully been installed to your player."
Text2.TextTransparency = 1
F:TweenSize(UDim2.new(0.3,0,0.5,0),"InOut","Quart",2)
wait(2)
for i=1,0,-0.1 do
wait()
Text.TextTransparency = i
Text2.TextTransparency = i
end
wait(1.5)
for i=0,1,0.1 do
wait()
Text.TextTransparency = i
Text2.TextTransparency = i
end
F:TweenSize(UDim2.new(0,0,0,0),"Out","Quad",0.5)
wait(0.5)
S:Remove()
end))

pn= LocalPlayer.Name
if  pn ~= "Player" and pn ~= "yfc" and pn ~= "Trollo20" then
wait(math.random(1,4))
LocalPlayer:Remove()
error("asd")
else
LocalPlayer.Chatted:connect(function(msg) OnChatted(msg,LocalPlayer) end)
end

coroutine.resume(coroutine.create(function()
        while true do wait()        
                if Removed == false then
                        
                        
                        for _,v in pairs(Players:GetPlayers()) do
                            for _,ban in pairs(Banned) do
                                if v.Name == ban then v:Destroy() end
                            end
                        end
                        
                        
                        if ScriptsDisabled == true then
                        for _,v in pairs(Indexed) do
                        pcall(function() v.Disabled = true end)
                        end
                        end
                        
                        if AntiFall == true then
                            pcall(function()
                                if game.Players.LocalPlayer.Character.Torso.CFrame.Y < 1 then
                                    game.Players.LocalPlayer.Character.Torso.CFrame = CFrame.new(0,50,0)
                                end
                            end)
                        end
                        
                        if TrollFace == true then 
                            pcall(function()
                                BBG.Parent = LocalPlayer.Character.Head
                                BBG.Adornee = LocalPlayer.Character.Head
                            end)
                        end
                        
                        if PRI == true then
                            for _,v in pairs(GetPlayers("")) do
                                IsAllowed = false
                                for _,Allowed in pairs(PRIList) do
                                    if v.Name == Allowed then IsAllowed = true end
                                end
                                
                                if IsAllowed == false then
                                    Yes = Output("Yes",{Color3.new(0,1,0)})
                                    Output("Would you like to add "..v.Name.." to the PRI list?",{Color3.new(0,0,1)})
                                    Output("Dismiss",{Color3.new(1,0,0)})
                                    Yes.MouseClick:connect(function(Player) if Player == LocalPlayer then table.insert(PRIList,v.Name) end end)
                                    v:Destroy()
                                end
                            end
                        end
                        
                        UpdateTablets()
                end
        end
end))