local player = game:GetService("Players").LocalPlayer
repeat
  wait()
until player.Character
local char = player.Character
local torso = char:WaitForChild("Torso")
local mouse = player:GetMouse()
local color = BrickColor.new("Really black")
local material = "Neon"
local trans = 0.5
local debounce = false
for u,c in pairs(player.Character:GetChildren()) do
  if c.className == "Hat" and c.Name ~= "Hybrid Goggles" then
    c.Handle.BrickColor = BrickColor.new("Really black")
    c.Handle.Mesh.TextureId = "http://www.roblox.com/asset/?id=0"
  end
end
blast = function()
  
  local b = Instance.new("Part", workspace)
  game.Debris:AddItem(b, 2)
  b.Size = Vector3.new(5, 5, 5)
  b.CFrame = torso.CFrame * CFrame.new(0, 0, -5)
  b.TopSurface = "Smooth"
  b.BottomSurface = "Smooth"
  b.CanCollide = false
  b.BrickColor = color
  b.Transparency = trans
  b.Material = material
  local v = Instance.new("BodyVelocity", b)
  v.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  v.Velocity = torso.CFrame.lookVector * 50
  r = Instance.new("BodyAngularVelocity", b)
  r.AngularVelocity = Vector3.new(25, 25, 25)
  b.Touched:connect(function(hit)
    
    p = hit.Parent
    if p and p:FindFirstChild("Humanoid") and p.Name ~= player.Name then
      b:Remove()
      p.Humanoid:TakeDamage(35)
    end
  end
)
end

death = function()
  
  local b = Instance.new("Part", workspace)
  game.Debris:AddItem(b, 2)
  b.Size = Vector3.new(5, 5, 5)
  b.CFrame = torso.CFrame * CFrame.new(0, 0, -5)
  b.TopSurface = "Smooth"
  b.BottomSurface = "Smooth"
  b.CanCollide = false
  b.BrickColor = color
  b.Transparency = trans
  b.Material = material
  local v = Instance.new("BodyVelocity", b)
  v.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  v.Velocity = torso.CFrame.lookVector * 50
  r = Instance.new("BodyAngularVelocity", b)
  r.AngularVelocity = Vector3.new(25, 25, 25)
  b.Touched:connect(function(hit)
    
    p = hit
    if p and p.Name ~= "Base" and p.Name ~= player.Name then
      p:Remove()
    end
  end
)
end

wall = function()
  
  local b = Instance.new("Part", workspace)
  game.Debris:AddItem(b, 5)
  b.Size = Vector3.new(1, 1, 1)
  b.CFrame = torso.CFrame * CFrame.new(0, 0, -5)
  b.TopSurface = "Smooth"
  b.BottomSurface = "Smooth"
  b.CanCollide = false
  b.Anchored = true
  b.BrickColor = color
  b.Transparency = trans
  b.Material = material
  for i = 1, 50 do
    wait()
    b.CFrame = torso.CFrame * CFrame.new(0, 0, -5)
    b.Size = b.Size + Vector3.new(0.5, 0.5, 0)
  end
  b.CanCollide = true
  b.Touched:connect(function(hit)
    
    p = hit.Parent
    if p and p:FindFirstChild("Humanoid") and p.Name ~= player.Name then
      p.Humanoid:TakeDamage(5)
    end
  end
)
end

fade = function()
  
  for i,v in pairs(char:GetChildren()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
      v.Transparency = 0.5
    end
  end
  for i,v in pairs(char:GetChildren()) do
    if v.className == "Hat" then
      v.Handle.Transparency = 0.5
    end
  end
end

unfade = function()
  
  for i,v in pairs(char:GetChildren()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
      v.Transparency = 0
    end
  end
  for i,v in pairs(char:GetChildren()) do
    if v.className == "Hat" then
      v.Handle.Transparency = 0
    end
  end
end

dash = function(x)
  
  b = Instance.new("Part", workspace)
  game.Debris:AddItem(b, 0.7)
  b.Size = Vector3.new(3, 3, 3)
  b.BrickColor = color
  b.Material = material
  b.CanCollide = false
  b.CFrame = torso.CFrame * x
  t = Instance.new("BodyVelocity", b)
  r = Instance.new("BodyAngularVelocity", b)
  r.AngularVelocity = Vector3.new(15, 15, 15)
  for i = 1, 5 do
    wait()
    b.Transparency = b.Transparency + 0.1
    torso.CFrame = torso.CFrame * CFrame.new(0, 0, -1)
  end
end

mouse.KeyDown:connect(function(key)
  
  if key == "v" then
    holding = true
    fade()
    while holding and wait(0.01) do
      dash(CFrame.new(2, 1, 0))
      dash(CFrame.new(-2, -1, 1))
      dash(CFrame.new(0, 1, 3))
    end
  end
end
)
mouse.KeyUp:connect(function(key)
  
  if key == "v" then
    unfade()
    holding = false
  end
end
)
mouse.KeyDown:connect(function(key)
  
  if key == "e" and debounce == false then
    debounce = true
    blast()
    wait(0.5)
    debounce = false
  end
end
)
mouse.KeyDown:connect(function(key)
  
  if key == "q" and debounce == false then
    debounce = true
    wall()
    wait(0.5)
    debounce = false
  end
end
)
mouse.KeyDown:connect(function(key)
  
  if key == "t" and debounce == false then
    debounce = true
    death()
    wait(0.5)
    debounce = false
  end
end
)

local player = game.Players.LocalPlayer 
repeat wait() until player.Character; 
local rs = game:GetService("RunService").RenderStepped 
local char = player.Character 
local HRP = char.HumanoidRootPart 
local Head = char.Head 
local tents = {} 
function getValue(p, x) 
        return p[2] + 0.5 * x*(p[3] - p[1] + x*(2.0*p[1] - 5.0*p[2] + 4.0*p[3] - p[4] + x*(3.0*(p[2] - p[3]) + p[4] - p[1]))) 
end 
function getV3Cubic(tabl,perc) 
        local x,y,z = {},{},{} 
        if perc >= 2 then 
                perc = perc %1 
                for i = 3, 6 do 
                        table.insert(x,tabl[i].x) 
                        table.insert(y,tabl[i].y) 
                        table.insert(z,tabl[i].z) 
                end 
        elseif perc >= 1 then 
                perc = perc %1 
                for i = 2, 5 do 
                        table.insert(x,tabl[i].x) 
                        table.insert(y,tabl[i].y) 
                        table.insert(z,tabl[i].z) 
                end 
        else 
                for i = 1, 4 do 
                        table.insert(x,tabl[i].x) 
                        table.insert(y,tabl[i].y) 
                        table.insert(z,tabl[i].z) 
                end 
        end 
        local X,Y,Z = getValue(x,perc),getValue(y,perc),getValue(z,perc) 
        return Vector3.new(X,Y,Z) 
end 
local rainbow = {"Institutional white","Institutional white","Institutional white","Institutional white","Institutional white","Institutional white","Institutional white","Institutional white","Institutional white"}
local rainbowCount = 1 
local isRainbow = true 
for i = 0, 4 do 
        local m = Instance.new("Model",char) 
        m.Name = "Tentac00l" 
        local parts = {} 
        local lastpart = Head 
        local defC0 
        rainbowCount = 1 
        for j = 0, 8 do 
                local sizex = 0.25 - 0.2 * (j/8) 
                local sizey = (15/8) - (9/8) * (j/8) 
                local p = Instance.new("Part") 
                p.Size = Vector3.new(0.2,0.2,0.2) 
                p.BrickColor = BrickColor.new("Really black") 
                p.TopSurface = 0 
                p.BottomSurface = 0 
                p.CanCollide = false 
                p.Material = "SmoothPlastic" 
                p.TopSurface = 0 
                p.BottomSurface = 0 
                local mesh = Instance.new("CylinderMesh",p) 
                mesh.Name = "CyMesh" 
                mesh.Scale = Vector3.new(sizex,sizey,sizex) *5
                p.Parent = m 
                local p2 = p:Clone() 
                p2.Parent = m 
                p2.CyMesh.Scale = p2.CyMesh.Scale + Vector3.new(0.075,0.001,0.075) * 5 
                p2.Material = "Neon" 
                if isRainbow then 
                        p2.BrickColor = BrickColor.new(tostring(rainbow[rainbowCount])) 
                else 
                        p2.BrickColor = BrickColor.new(j%2 == 1 and "Toothpaste" or "Electric blue") 
                end 
                rainbowCount = rainbowCount + 1 
                p2.Transparency = 0.35 
                local w2 = Instance.new("Weld",p) 
                w2.Parent = p2 
                w2.Part0 = p 
                w2.Part1 = p2 
                local w = Instance.new("Weld",p) 
                w.Parent = p 
                w.Part0 = lastpart 
                w.Part1 = p 
                if j == 0 then 
                        w.C0 = CFrame.Angles(0,math.rad(-10 + 200 * i/4),math.rad(-30 + (i%2==0 and 96 or 70))) * CFrame.new(0,0.6,0) 
                        w.C1 = CFrame.new(0,-0.125,0) 
                        defC0 = w.C0 
                else 
                        w.C0 = CFrame.new(0,lastpart.CyMesh.Scale.y/10,0) 
                        w.C1 = CFrame.new(0,-sizey/2,0) 
                end 
                table.insert(parts,{p,w,p2}) 
                lastpart = p 
                rs:wait() 
        end 
        local randoms = {Vector3.new(0,0,0),
                Vector3.new(math.random(-28,28)/100,math.random(-42,42)/100,math.random(-28,28)/100),
                Vector3.new(math.random(-28,28)/100,math.random(-42,42)/100,math.random(-28,28)/100),
                Vector3.new(math.random(-28,28)/100,math.random(-42,42)/100,math.random(-28,28)/100);
                Vector3.new(math.random(-28,28)/100,math.random(-42,42)/100,math.random(-28,28)/100);
                Vector3.new(math.random(-28,28)/100,math.random(-42,42)/100,math.random(-28,28)/100);
        }
        table.insert(tents,{0,randoms,parts,defC0}) 
end 
player.Chatted:connect(function(msg) 
        if string.sub(msg:lower(),1,4) == "col/" then 
                for i, v in pairs(tents) do 
                        for j, o in pairs(v[3]) do 
                                o[3].BrickColor = BrickColor.new(string.sub(msg,5)) 
                        end 
                end 
        elseif string.sub(msg:lower(),1,7) == "/e col/" then 
                for i, v in pairs(tents) do 
                        for j, o in pairs(v[3]) do 
                                o[3].BrickColor = BrickColor.new(string.sub(msg,8)) 
                        end 
                end 
        end 
end) 
rs:connect(function() 
        for i, v in pairs(tents) do 
                v[1] = v[1] %200 + 1 
                if v[1] == 1 then 
                        v[2][1] = v[2][2] 
                        v[2][2] = v[2][3] 
                        v[2][3] = v[2][4] 
                        v[2][4] = v[2][5] 
                        v[2][5] = v[2][6] 
                        v[2][6] = Vector3.new(math.random(-28,28)/100,math.random(-42,42)/100,math.random(-28,28)/100) 
                end 
                local p0 = v[2][1] 
                local p1 = v[2][2] 
                local p2 = v[2][3] 
                local p3 = v[2][4] 
                local p4 = v[2][5] 
                local p5 = v[2][6] 
                local arr = {p0,p1,p2,p3,p4,p5} 
                local dir = i%2 == 0 and 1 or -1 
                for j, V in pairs(v[3]) do 
                        local val = math.sin(math.pi/2 * 2 * (((v[1] + (100 * j/#v[3])*dir) % 100)/100)) 
                        local off = getV3Cubic(arr,(v[1] + 340*(j/#v[3]))/200) 
                        V[3].Transparency = 0.12 + val * 0.65 
                        if j == 1 then 
                                V[2].C0 = v[4] * CFrame.Angles(off.x*2,off.y*2,off.z*2) 
                        else 
                                V[2].C0 = CFrame.new(0,V[2].C0.y,0) * CFrame.Angles(off.x*2 * (1 + 0.75 * (j/#v[3])),off.y*2 * (1 + 0.75 * (j/#v[3])),off.z*2 * (1 + 0.75 * (j/#v[3]))) 
                        end 
                end 
        end 
end) 

-- params : ...

Model = Instance.new("Model", game.Workspace)
Model.Name = "ShadowFigs"
Model.ChildAdded:connect(function(Child)
  
  wait(0.2)
  if Child.Name == "ShadowClone" and Child.Name ~= "HoverBlocks" then
    local Light = Instance.new("PointLight", Child.Torso)
    Light.Color = Color3.new(1, 1, 1)
    Light.Range = 10
    Light.Brightness = 2
    Light.Shadows = true
    for t = 1, 5 do
      wait(0.1)
      for i = 1, #Child:GetChildren() do
        Child:GetChildren()[i].Transparency = t / 10 + 0.5
      end
    end
    Child:remove()
  end
end
)
Parts = {"Head", "Torso", "Left Arm", "Left Leg", "Right Arm", "Right Leg"}
repeat
  wait()
until game.Players.LocalPlayer
Plr = game.Players.LocalPlayer
PlrChildren = Plr:GetChildren()
Plr.Character.Humanoid.WalkSpeed = 32
for i = 1, #PlrChildren do
  print(PlrChildren[i])
end
do
  while 1 do
    Posit = Plr.Character.HumanoidRootPart.Position
    wait(0.1)
    if Plr.Character.HumanoidRootPart.Position == Posit or Plr.Character.Humanoid.WalkSpeed == 32 then
      Set = Instance.new("Model", game.Workspace.ShadowFigs)
      Set.Name = "ShadowClone"
      for i = 1, #Parts do
        PartClone = Plr.Character[Parts[i]]:Clone()
        RotationX = math.rad(Plr.Character[Parts[i]].Rotation.X)
        RotationY = math.rad(Plr.Character[Parts[i]].Rotation.Y)
        RotationZ = math.rad(Plr.Character[Parts[i]].Rotation.Z)
        PartClone.CFrame = CFrame.new(Plr.Character[Parts[i]].Position) * CFrame.Angles(RotationX, RotationY, RotationZ)
        PartClone.Parent = Set
        PartClone.Anchored = true
        PartClone.CanCollide = false
        PartClone.Transparency = 0.7
        PartClone.Material = "Neon"
        PartClone.BrickColor = BrickColor.new("White")
        if PartClone.Name == "Head" or PartClone.Name == "Torso" then
          Children = PartClone:GetChildren()
          for i = 1, #Children do
            if Children[i].ClassName ~= "Mesh" and Children[i].ClassName ~= "SpecialMesh" then
              Children[i]:remove()
            end
          end
        end
      end
    end
  end
end