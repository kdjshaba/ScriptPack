-- Gaster <3
-- I Think I Got The Hang Of This.

wait(0.016666666666667)
Effects = {}
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
local effect = Instance.new("Model", Character)
effect.Name = "Effect"
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local attacktype = 1
local mananum = 0
xenabled = true
cenabled = true
venabled = true
zenabled = true
local Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
vt = Vector3.new
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local mana = 0
local it = Instance.new
local grabbed = false
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local NeckCF = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
Humanoid.Animator:Destroy()
Character.Animate:Destroy()
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = (CFrame.fromEulerAnglesXYZ(0, -1.6, 0))
RSH = nil
RW = Instance.new("Weld")
LW = Instance.new("Weld")
RH = Torso["Right Hip"]
LH = Torso["Left Hip"]
RSH = Torso["Right Shoulder"]
LSH = Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "RW"
RW.Part0 = Torso
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = RightArm
RW.Parent = Torso
LW.Name = "LW"
LW.Part0 = Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = LeftArm
LW.Parent = Torso
clerp = function(a, b, t)
  return a:lerp(b, t)
end

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RemoveOutlines = function(part)
  part.TopSurface = 10
end

CreatePart = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
  RemoveOutlines(Part)
  return Part
end

CreateMesh = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.033333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  tf = tf + s
  if frame <= tf then
    if allowframeloss then
      script.Heartbeat:Fire()
      lastframe = tick()
    else
      for i = 1, math.floor(tf / frame) do
        script.Heartbeat:Fire()
      end
      lastframe = tick()
    end
    if tossremainder then
      tf = 0
    else
      tf = tf - frame * math.floor(tf / frame)
    end
  end
end
)
swait = function(num)
  if num == 0 or num == nil then
    ArtificialHB.Event:wait()
  else
    for i = 0, num do
      ArtificialHB.Event:wait()
    end
  end
end

CreateWeld = function(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
  return Weld
end

it = Instance.new
local fengui = it("GuiMain")
fengui.Parent = Player.PlayerGui
fengui.Name = "WeaponGUI"
local fenframe1 = it("TextLabel")
fenframe1.Parent = fengui
fenframe1.BackgroundColor3 = Color3.new(0.19607843137255, 0.19607843137255, 0.19607843137255)
fenframe1.BackgroundTransparency = 0.3
fenframe1.BorderSizePixel = 5
fenframe1.BorderColor3 = Color3.new(1, 1, 1)
fenframe1.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe1.Position = UDim2.new(0.325, 0, 0.7, 0)
fenframe1.Text = "Z"
fenframe1.TextWrapped = true
fenframe1.FontSize = 7
fenframe1.TextColor3 = Color3.new(1, 1, 1)
local fenframe1a = it("TextLabel")
fenframe1a.Parent = fengui
fenframe1a.BackgroundColor3 = Color3.new(0.7843137254902, 0.7843137254902, 0.7843137254902)
fenframe1a.BackgroundTransparency = 0.3
fenframe1a.BorderSizePixel = 5
fenframe1a.BorderColor3 = Color3.new(1, 1, 1)
fenframe1a.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe1a.Position = UDim2.new(0.325, 0, 0.7, 0)
fenframe1a.Text = ""
local fenframe2 = it("TextLabel")
fenframe2.Parent = fengui
fenframe2.BackgroundColor3 = Color3.new(0.19607843137255, 0.19607843137255, 0.19607843137255)
fenframe2.BackgroundTransparency = 0.3
fenframe2.BorderSizePixel = 5
fenframe2.BorderColor3 = Color3.new(1, 1, 1)
fenframe2.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe2.Position = UDim2.new(0.425, 0, 0.7, 0)
fenframe2.Text = "X"
fenframe2.TextWrapped = true
fenframe2.FontSize = 7
fenframe2.TextColor3 = Color3.new(1, 1, 1)
local fenframe2a = it("TextLabel")
fenframe2a.Parent = fengui
fenframe2a.BackgroundColor3 = Color3.new(0.7843137254902, 0.7843137254902, 0.7843137254902)
fenframe2a.BackgroundTransparency = 0.3
fenframe2a.BorderSizePixel = 5
fenframe2a.BorderColor3 = Color3.new(1, 1, 1)
fenframe2a.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe2a.Position = UDim2.new(0.425, 0, 0.7, 0)
fenframe2a.Text = ""
local fenframe3 = it("TextLabel")
fenframe3.Parent = fengui
fenframe3.BackgroundColor3 = Color3.new(0.19607843137255, 0.19607843137255, 0.19607843137255)
fenframe3.BackgroundTransparency = 0.3
fenframe3.BorderSizePixel = 5
fenframe3.BorderColor3 = Color3.new(1, 1, 1)
fenframe3.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe3.Position = UDim2.new(0.525, 0, 0.7, 0)
fenframe3.Text = "C"
fenframe3.TextWrapped = true
fenframe3.FontSize = 7
fenframe3.TextColor3 = Color3.new(1, 1, 1)
local fenframe3a = it("TextLabel")
fenframe3a.Parent = fengui
fenframe3a.BackgroundColor3 = Color3.new(0.7843137254902, 0.7843137254902, 0.7843137254902)
fenframe3a.BackgroundTransparency = 0.3
fenframe3a.BorderSizePixel = 5
fenframe3a.BorderColor3 = Color3.new(1, 1, 1)
fenframe3a.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe3a.Position = UDim2.new(0.525, 0, 0.7, 0)
fenframe3a.Text = ""
local fenframe4 = it("TextLabel")
fenframe4.Parent = fengui
fenframe4.BackgroundColor3 = Color3.new(0.19607843137255, 0.19607843137255, 0.19607843137255)
fenframe4.BackgroundTransparency = 0.3
fenframe4.BorderSizePixel = 5
fenframe4.BorderColor3 = Color3.new(1, 1, 1)
fenframe4.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe4.Position = UDim2.new(0.625, 0, 0.7, 0)
fenframe4.Text = "V"
fenframe4.TextWrapped = true
fenframe4.FontSize = 7
fenframe4.TextColor3 = Color3.new(1, 1, 1)
local fenframe4a = it("TextLabel")
fenframe4a.Parent = fengui
fenframe4a.BackgroundColor3 = Color3.new(0.7843137254902, 0.7843137254902, 0.7843137254902)
fenframe4a.BackgroundTransparency = 0.3
fenframe4a.BorderSizePixel = 5
fenframe4a.BorderColor3 = Color3.new(1, 1, 1)
fenframe4a.Size = UDim2.new(0.05, 0, 0.1, 0)
fenframe4a.Position = UDim2.new(0.625, 0, 0.7, 0)
fenframe4a.Text = ""
fenframe1a.Size = UDim2.new(0, 0, 0.1, 0)
fenframe2a.Size = UDim2.new(0, 0, 0.1, 0)
fenframe3a.Size = UDim2.new(0, 0, 0.1, 0)
fenframe4a.Size = UDim2.new(0, 0, 0.1, 0)
rayCast = function(Position, Direction, Range, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end

CreateSound = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    swait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
end

local getclosest = function(obj, distance)
  local last, lastx = distance + 1, nil
  for i,v in pairs(workspace:GetChildren()) do
    if v:IsA("Model") and v ~= Character and v:findFirstChild("Humanoid") and v:findFirstChild("Torso") and v:findFirstChild("Humanoid").Health > 0 then
      local t = v.Torso
      local dist = t.Position - obj.Position.magnitude
      if dist <= distance and dist < last then
        last = dist
        lastx = v
      end
    end
  end
  return lastx
end

Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
  if hit.Parent == nil then
    return 
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    local c = Create("ObjectValue")({Name = "creator", Value = game:service("Players").LocalPlayer, Parent = h})
    game:GetService("Debris"):AddItem(c, 0.5)
    if HitSound ~= nil and HitPitch ~= nil then
      CreateSound(HitSound, hit, 1, HitPitch)
    end
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil and block.className == "IntValue" and block.Value > 0 then
      blocked = true
      block.Value = block.Value - 1
      print(block.Value)
    end
    if blocked == false then
      HitHealth = h.Health
      h.Health = h.Health - Damage
      if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 and h.Parent.Name ~= "Lost Soul" then
        print("gained spree")
        game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value = game.Players.LocalPlayer.leaderstats.Spree.Value + 1
      end
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    else
      h.Health = h.Health - Damage / 2
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    end
    if Type == "Knockdown" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
    swait(1)
    HHumanoid.PlatformStand = false
  end
), hum)
      local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Create("BodyVelocity")({velocity = angle * knockback, P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
      local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000, angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), Parent = hit})
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    else
      do
        if Type == "Normal" then
          local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05})
          if knockback > 0 then
            vp.Parent = hit.Parent.Torso
          end
          game:GetService("Debris"):AddItem(vp, 0.5)
        else
          do
            if Type == "Up" then
              local bodyVelocity = Create("BodyVelocity")({velocity = vt(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
              game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
            else
              do
                if Type == "DarkUp" then
                  coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      swait()
      BlockEffect(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, 0.08, 1)
    end
  end
))
                  local bodyVelocity = Create("BodyVelocity")({velocity = vt(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
                  game:GetService("Debris"):AddItem(bodyVelocity, 1)
                else
                  do
                    if Type == "Snare" then
                      local bp = Create("BodyPosition")({P = 2000, D = 100, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
                      game:GetService("Debris"):AddItem(bp, 1)
                    else
                      do
                        if Type == "Freeze" then
                          local BodPos = Create("BodyPosition")({P = 50000, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
                          local BodGy = Create("BodyGyro")({maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, Parent = hit.Parent.Torso, cframe = hit.Parent.Torso.CFrame})
                          hit.Parent.Torso.Anchored = true
                          coroutine.resume(coroutine.create(function(Part)
    swait(1.5)
    Part.Anchored = false
  end
), hit.Parent.Torso)
                          game:GetService("Debris"):AddItem(BodPos, 3)
                          game:GetService("Debris"):AddItem(BodGy, 3)
                        end
                        do
                          local debounce = Create("BoolValue")({Name = "DebounceHit", Parent = hit.Parent, Value = true})
                          game:GetService("Debris"):AddItem(debounce, Delay)
                          c = Instance.new("ObjectValue")
                          c.Name = "creator"
                          c.Value = Player
                          c.Parent = h
                          game:GetService("Debris"):AddItem(c, 0.5)
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

ShowDamage = function(Pos, Text, Time, Color)
  local Rate = 0.033333333333333
  if not Pos then
    local Pos = Vector3.new(0, 0, 0)
  end
  local Text = Text or ""
  local Time = Time or 2
  if not Color then
    local Color = Color3.new(1, 0, 1)
  end
  local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Create("BillboardGui")({Size = UDim2.new(3, 0, 3, 0), Adornee = EffectPart, Parent = EffectPart})
  local TextLabel = Create("TextLabel")({BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = Text, TextColor3 = Color, TextScaled = true, Font = Enum.Font.ArialBold, Parent = BillboardGui})
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  delay(0, function()
    local Frames = Time / Rate
    for Frame = 1, Frames do
      wait(Rate)
      local Percent = Frame / Frames
      EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
      TextLabel.TextTransparency = Percent
    end
    if EffectPart and EffectPart.Parent then
      EffectPart:Destroy()
    end
  end
)
end

MagniDamage = function(Part, magni, mindam, maxdam, knock, Type)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "http://www.roblox.com/asset/?id=231917784", 1)
        end
      end
    end
  end
end

BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    end
  end
end

SphereEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

RingEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh, num)
    for i = 0, 1, delay do
      swait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh, (math.random(0, 1) + math.random()) / 5)
end

CylinderEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

SlashEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=448386996", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh, num)
    for i = 0, 1, delay do
      swait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh, (math.random(0, 1) + math.random()) / 5)
end

SpecialEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end

Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "FakeHandle", Vector3.new(0.209999964, 2.47000051, 0.210000098))
HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.954962969, 0.124997139, 0.0483036041, 3.26636873e-005, -1, -9.29513355e-010, -4.31581502e-005, -4.80190998e-010, -1, 1, 3.26636873e-005, -4.31581502e-005))
FakeHandle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "FakeHandle", Vector3.new(0.209999964, 2.47000051, 0.210000098))
FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel blue-green", "Part", Vector3.new(0.209999964, 0.210000575, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.07000017, -1.51000023, -0.000101089478, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1.10000002, 1, 1.10000002))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.269999892, 0.250000685, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.69141531, -0.351466775, 0.00504875183, -6.73336942e-011, 1, 1.26396408e-005, 1, 4.80150808e-010, -3.2662756e-005, -3.2662756e-005, 1.26396408e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(6.36999989, 0.350000679, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.94141245, 0.298535109, 0.00514984131, -6.73336942e-011, 1, 1.26396408e-005, 1, 4.80150808e-010, -3.2662756e-005, -3.2662756e-005, 1.26396408e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.680000305, 0.350000679, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.73901224, 5.92544556, 0.00482368469, 0.707070887, 0.70714277, 3.77016768e-005, 0.70714277, -0.707070827, -5.3613112e-005, -1.12543603e-005, 6.45687396e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.209999964, 0.240000725, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.873248935, 1.15607548, 0.0299739838, 0.707070887, 0.70714277, 3.77016768e-005, 0.70714277, -0.707070827, -5.3613112e-005, -1.12543603e-005, 6.45687396e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(6.36999989, 0.350000679, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.94141197, 0.296805978, -0.00483131409, 1.92629956e-009, 1, 7.3674797e-005, -1, 4.0164414e-009, -2.8368675e-005, -2.8368675e-005, -7.3674797e-005, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Part", Vector3.new(0.680000305, 0.200000003, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.73998213, 4.31269073, 4.30618477, -0.707100451, 0.707113087, 8.41308211e-005, -0.500024736, -0.499931633, -0.707137764, -0.499984294, -0.500059485, 0.707075953))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.349999994, 0.349999994))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel blue-green", "Part", Vector3.new(0.209999964, 0.210000575, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.00999749, -1.51000023, -3.24249268e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1.10000002, 1, 1.10000002))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel blue-green", "Part", Vector3.new(0.209999964, 0.820000708, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.51000023, 0.635001779, 8.39233398e-005, 1.92629956e-009, 1, 7.3674797e-005, -1, 4.0164414e-009, -2.8368675e-005, -2.8368675e-005, -7.3674797e-005, 1))
Part = CreatePart(m, Enum.Material.Plastic, 0, 0, "Pastel blue-green", "Part", Vector3.new(0.339999974, 0.310000002, 0.230000019))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.46499395, 0.00499796867, -0.00513267517, 3.91968946e-009, 1, 0.00013470251, 1, 4.79829343e-010, -3.26553054e-005, -3.26553054e-005, 0.00013470251, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 3))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.209999964, 2.47000051, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel blue-green", "Part", Vector3.new(0.209999964, 0.810000658, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.51000023, -0.640000105, 5.7220459e-006, 1.92629956e-009, 1, 7.3674797e-005, -1, 4.0164414e-009, -2.8368675e-005, -2.8368675e-005, -7.3674797e-005, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Part", Vector3.new(6.67000008, 0.200000003, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.79141092, 0.327487946, 0.335111618, -1.75938719e-009, 1, -3.91626454e-005, 0.707132816, 2.76923965e-005, 0.707080722, 0.707080781, -2.76919527e-005, -0.707132816))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.349999994, 0.349999994))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel blue-green", "Part", Vector3.new(0.209999964, 0.640000582, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.914999723, 0, -2.86102295e-005, 1.92629956e-009, 1, 7.3674797e-005, -1, 4.0164414e-009, -2.8368675e-005, -2.8368675e-005, -7.3674797e-005, 1))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0, 0, "Pastel blue-green", "Part", Vector3.new(0.209999964, 0.290000588, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.914999962, -0.00496864319, -2.38418579e-007, 1.99638395e-009, 1, 7.5820426e-005, 1.04939791e-005, 7.5820426e-005, -1, -1, 2.79204171e-009, -1.04939791e-005))
CreateMesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.37641573, 0.00353312492, 0.00506973267, -6.73336942e-011, 1, 1.26396408e-005, 1, 4.80150808e-010, -3.2662756e-005, -3.2662756e-005, 1.26396408e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.36640215, 0.00353312492, 0.00522232056, -6.73336942e-011, 1, 1.26396408e-005, 1, 4.80150808e-010, -3.2662756e-005, -3.2662756e-005, 1.26396408e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Part", Vector3.new(0.680000305, 0.200000003, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.73857307, 4.30648804, 4.31436348, 0.707122087, 0.70709157, -4.6048066e-005, 0.500017762, -0.499993294, 0.707098961, 0.499960661, -0.500028312, -0.707114577))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.349999994, 0.349999994))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.269999892, 0.250000685, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.69141531, 0.348534107, 0.00504875183, -6.73336942e-011, 1, 1.26396408e-005, 1, 4.80150808e-010, -3.2662756e-005, -3.2662756e-005, 1.26396408e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.229999989, 0.359999806, 0.230000019))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00505638123, 1.69396782, -0.185147405, 6.31807998e-005, -1.26401064e-005, 1, 3.05181093e-005, -1, -1.26420346e-005, 1, 3.05189096e-005, -6.31804141e-005))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.449999988, 0.400000006, 0.550000012))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.88641405, 0.00353312492, 0.00508499146, -6.73336942e-011, 1, 1.26396408e-005, 1, 4.80150808e-010, -3.2662756e-005, -3.2662756e-005, 1.26396408e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.85640955, 0.00353312492, 0.00520706177, -6.73336942e-011, 1, 1.26396408e-005, 1, 4.80150808e-010, -3.2662756e-005, -3.2662756e-005, 1.26396408e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.680000305, 0.350000679, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.74009323, 5.92436028, -0.00534820557, -0.707087398, 0.70712626, 5.08724588e-005, -0.7071262, -0.707087338, 4.88799087e-005, 7.05355342e-005, -1.4108773e-006, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.83641577, 0.00353312492, 0.00511360168, -6.73336942e-011, 1, 1.26396408e-005, 1, 4.80150808e-010, -3.2662756e-005, -3.2662756e-005, 1.26396408e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.86641836, 0.00353312492, 0.00505447388, -6.73336942e-011, 1, 1.26396408e-005, 1, 4.80150808e-010, -3.2662756e-005, -3.2662756e-005, 1.26396408e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Cool yellow", "Part", Vector3.new(6.67000008, 0.200000003, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.79139757, 0.333590508, 0.326548576, 8.39953052e-010, 0.999997258, 4.04162165e-005, -0.707107663, 3.32596901e-005, -0.70710218, -0.707099378, -3.05167996e-005, 0.707107663))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.349999994, 0.349999994))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.34641123, 0.00353312492, 0.00513076782, -6.73336942e-011, 1, 1.26396408e-005, 1, 4.80150808e-010, -3.2662756e-005, -3.2662756e-005, 1.26396408e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.78640413, 0.00353312492, 0.005235672, -6.73336942e-011, 1, 1.26396408e-005, 1, 4.80150808e-010, -3.2662756e-005, -3.2662756e-005, 1.26396408e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.229999989, 0.359999806, 0.230000019))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0049533844, 1.69397926, -0.18485117, -2.14657484e-006, 7.3676194e-005, -1, 3.05161175e-005, -1, -7.36762595e-005, -1, -3.05162757e-005, 2.14432657e-006))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.449999988, 0.400000006, 0.550000012))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-6.34641123, 0.00353312492, 0.00519180298, -6.73336942e-011, 1, 1.26396408e-005, 1, 4.80150808e-010, -3.2662756e-005, -3.2662756e-005, 1.26396408e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.39641333, 0.00353312492, 0.00510025024, -6.73336942e-011, 1, 1.26396408e-005, 1, 4.80150808e-010, -3.2662756e-005, -3.2662756e-005, 1.26396408e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.83641291, 0.00353312492, 0.00517463684, -6.73336942e-011, 1, 1.26396408e-005, 1, 4.80150808e-010, -3.2662756e-005, -3.2662756e-005, 1.26396408e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.209999964, 0.240000725, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.21970224, -0.965162754, -0.0300598145, 0.707087398, 0.70712626, 4.68029612e-006, -0.70712626, 0.707087398, -2.68303847e-006, -5.20662797e-006, -1.41241617e-006, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.209999964, 0.240000725, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.23390102, -0.950969219, 0.0301017761, -0.707103848, 0.707109749, -2.87066287e-005, 0.707109749, 0.707103908, 7.42527664e-006, 2.55490522e-005, -1.50483029e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.33641291, 0.00353312492, 0.00515937805, -6.73336942e-011, 1, 1.26396408e-005, 1, 4.80150808e-010, -3.2662756e-005, -3.2662756e-005, 1.26396408e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 0, "Institutional white", "Part", Vector3.new(0.21999979, 0.340000689, 0.200000092))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.82641077, 0.00353312492, 0.00514411926, -6.73336942e-011, 1, 1.26396408e-005, 1, 4.80150808e-010, -3.2662756e-005, -3.2662756e-005, 1.26396408e-005, -1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.209999964, 0.240000725, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.887447834, 1.14186776, -0.0300674438, -0.707087398, 0.70712626, 5.08724588e-005, -0.7071262, -0.707087338, 4.88799087e-005, 7.05355342e-005, -1.4108773e-006, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 1, 0.5))
Part = CreatePart(m, Enum.Material.Neon, 0, 0, "Teal", "Part", Vector3.new(0.209999964, 0.200000733, 0.210000098))
PartWeld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.04292846, -1.0653758, -0.0300636292, 0.707087398, 0.70712626, 4.68029612e-006, -0.70712626, 0.707087398, -2.68303847e-006, -5.20662797e-006, -1.41241617e-006, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5))
Hitbox = CreatePart(m, Enum.Material.SmoothPlastic, 0.10000000149012, 1, "Institutional white", "Hitbox", Vector3.new(6.97999954, 0.960000634, 0.200000092))
HitboxWeld = CreateWeld(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.05641317, 0.0435330868, 0.0051612854, -6.73336942e-011, 1, 1.26396408e-005, 1, 4.80150808e-010, -3.2662756e-005, -3.2662756e-005, 1.26396408e-005, -1))
IceMortar = function()
  local dacf = Handle.CFrame * angles(-1.57 + math.random(40, 80) / 100, 0, math.random(-80, 80) / 100)
  local icepart1 = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Cyan"), "Ice", vt())
  icepart1.Anchored = true
  i1msh = CreateMesh("SpecialMesh", icepart1, "Sphere", "", vt(0, 0, 0), vt(5, 5, 5))
  icepart1.CFrame = dacf
  for i = 0, 1, 0.1 do
    swait()
    icepart1.CFrame = dacf
  end
  local cfinc = 99999
  icepart1.Transparency = 1
  CreateSound("rbxassetid://334325056", icepart1, 1, 1)
  game:GetService("Debris"):AddItem(icepart1, 1)
  local spread = vt(0, 0, 0) * (Part.Position - (Part.Position + vt(0, -1, 0))).magnitude / 100
  local TheHit = mouse.Hit.p
  local MouseLook = cf((icepart1.Position + TheHit) / 2, TheHit + spread)
  local hit, pos = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
  local target1, distance1 = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
  local test1, dist1 = mouse.Hit.p, nil
  if target1 ~= nil then
    cfda = target1.Position + vt(math.random(-3000, 3000) / 100, 20, math.random(-3000, 3000) / 100)
    local hit2, pos2 = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
    local d1 = CreatePart(effect, "SmoothPlastic", 0, 0.5, BrickColor.new("White"), "Effect", vt())
    d1.Anchored = true
    d1.CFrame = cf(pos2)
    MagniDamage(d1, 10, 2, 5, -10, "Normal")
    SphereEffect(BrickColor.new("White"), cf(pos2), 100, 100, 100, 10, 10, 10, 0.07)
    msh = CreateMesh("SpecialMesh", d1, "Sphere", "", vt(0, 0, 0), vt(80, 80, 80))
    d2 = d1:Clone()
    d2.Parent = d1
    d2.CFrame = cf(d1.Position)
    d2.BrickColor = BrickColor.new("Toothpaste")
    d2.Mesh.Scale = vt(0, 5, 0)
    table.insert(Effects, {d1, "SatelliteStrike", d2, d2.Mesh, 0})
  end
end

attackone = function()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 8, 14, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.2, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(100), math.rad(-80)), 0.3)
  end
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.2, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(100), math.rad(-80)), 0.3)
  end
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(120)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.2, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(-80)), 0.3)
  end
  CreateSound("rbxassetid://231917950", Torso, 1, 2)
  SlashEffect(BrickColor.new("White"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), 1.2, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.7)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.2, -0.5) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(0, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(-80)), 0.3)
  end
  con:disconnect()
  attack = false
end

local huphup = false
Counter = function()
  attack = true
  Humanoid.WalkSpeed = 5
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(-10), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(80), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(60), math.rad(70), math.rad(20)), 0.3)
  end
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(-10), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(60), math.rad(80), math.rad(-150)), 0.3)
  end
  ripostestance = true
  con1 = Torso.Touched:connect(function(hit)
    if hit.Parent.Parent:findFirstChild("Torso") ~= nil then
      hit = hit.Parent.Parent.Torso
    end
    if hit.Parent:findFirstChild("Torso") ~= nil and hit ~= Character and ripostestance == true then
      RiposteAttack(hit)
    end
  end
)
  coroutine.resume(coroutine.create(function()
    while 1 do
      while 1 do
        if ripostestance == true then
          swait()
          if Humanoid:findFirstChild("creator") ~= nil then
            Targ = Humanoid.creator.Value
            if Targ.Character ~= nil then
              RiposteAttack(Targ.Character.Torso)
              ripostestance = false
              attack = false
              -- DECOMPILER ERROR at PC28: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC28: LeaveBlock: unexpected jumping out IF_STMT

              -- DECOMPILER ERROR at PC28: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC28: LeaveBlock: unexpected jumping out IF_STMT

              -- DECOMPILER ERROR at PC28: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC28: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
      if Targ:findFirstChild("Torso") ~= nil then
        RiposteAttack(Targ.Torso)
        ripostestance = false
        attack = false
      end
    end
  end
))
  huphup = true
end

RiposteAttack = function(hit)
  ripostestance = false
  attack = true
  Humanoid.WalkSpeed = 0
  Tors = hit.Parent.Torso
  coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.0005 do
      swait()
      fenframe4a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    venabled = true
    fenframe4a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
  print("boop")
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -1) * angles(math.rad(170), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(170), math.rad(0), math.rad(30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(-80)), 0.3)
  end
  BlockEffect(BrickColor.new("Toothpaste"), Torso.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 3, 3, 3, 1, 1, 1, 0.02, 1)
  local LastPoint = Torso.CFrame
  local Point = Torso.CFrame
  Torso.CFrame = Tors.CFrame * cf(0, 0, 5)
  BlockEffect(BrickColor.new("White"), Torso.CFrame * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 3, 3, 3, 1, 1, 1, 0.02, 1)
  CreateSound("http://roblox.com/asset/?id=2767090", Torso, 1, 1.5)
  swait(10)
  SlashEffect(BrickColor.new("White"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), 0, 0), 0.001, 0.1, 0.1, 0, 0.002, 0.002, 0.07)
  if Character.Humanoid == nil then
    MagniDamage(Tors, 10, 30, 50, "Knockdown")
  else
    MagniDamage(Tors, 10, 30, 50, "Knockdown")
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.7)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.7)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -1) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.7)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, -1) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.7)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.7)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.7)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(-80)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=161006195", Torso, 1, 1)
  CreateSound("rbxasset://sounds\\unsheath.wav", Torso, 1, 1.5)
  CreateSound("http://www.roblox.com/asset/?id=28144425", Tors, 1, 1)
  CreateSound("http://www.roblox.com/asset/?id=28144425", Tors, 1, 0.7)
  swait(10)
  attack = false
  huphup = false
  Humanoid.WalkSpeed = 16
end

attacktwo = function()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 8, 13, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.2, -0.5) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(0, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(-80)), 0.3)
  end
  CreateSound("rbxassetid://231917950", Torso, 1, 2.3)
  SlashEffect(BrickColor.new("White"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), 1.47, 0), 0.001, 0.1, 0.1, 0, 0.002, 0.002, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.7)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-100)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.2, -0.5) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(0, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(-80)), 0.3)
  end
  con:disconnect()
  attack = false
end

PurityStorm = function()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 8, 13, math.random(10, 15), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.5)
  end
)
  for i = 1, 5 do
    swait()
    CreateSound("rbxassetid://231917950", Torso, 1, 2.5)
    SlashEffect(BrickColor.new("White"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), 1.47, 0), 0.001, 0.1, 0.1, 0, 0.002, 0.002, 0.07)
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.7)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-100)), 0.7)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.2, -0.5) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(0, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(-80)), 0.3)
    end
    CreateSound("rbxassetid://231917950", Torso, 1, 2.7)
    SlashEffect(BrickColor.new("White"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), 1.2, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.7)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(30)), 0.7)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.2, -0.5) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(0, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(90), math.rad(0), math.rad(-80)), 0.3)
    end
  end
  con:disconnect()
  attack = false
end

TakeDown = function()
  attack = true
  for i = 0, 1, 0.05 do
    swait()
    if i <= 0.5 then
      WaveEffect(BrickColor.new("White"), RootPart.CFrame, 20, 5, 20, -1, 0, -1, 0.07)
    end
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(0.8, 0.5, -1) * angles(math.rad(170), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.6, -1) * angles(math.rad(170), math.rad(0), math.rad(70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
  end
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 30, 30, math.random(1, 5), "Knockdown", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  CreateSound("rbxassetid://231917950", Torso, 1, 1.3)
  SlashEffect(BrickColor.new("White"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), -0.5, 0), 0.002, 0.15, 0.15, 0, 0.002, 0.002, 0.07)
  SlashEffect(BrickColor.new("Toothpaste"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), -0.5, 0), 0.002, 0.15, 0.15, 0, 0.005, 0.002, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.4, -0.5) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-0.8, 0.4, -0.5) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(-80)), 0.3)
  end
  con:disconnect()
  attack = false
end

attackthree = function()
  attack = true
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 8, 13, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -1) * angles(math.rad(170), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(170), math.rad(0), math.rad(30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(-80)), 0.3)
  end
  CreateSound("rbxassetid://231917950", Torso, 1, 1.5)
  SlashEffect(BrickColor.new("White"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), 0, 0), 0.001, 0.1, 0.1, 0, 0.002, 0.002, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.7)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.7)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -1) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.7)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, -1) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.7)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.7)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.7)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-30), math.rad(-80)), 0.3)
  end
  con:disconnect()
  attack = false
end

ob1u = function()
end

ob1d = function()
  if attack == false and attacktype == 1 then
    attacktype = 2
    attackone()
  else
    if attack == false and attacktype == 2 then
      attacktype = 3
      attacktwo()
    else
      if attack == false and attacktype == 3 then
        attacktype = 1
        attackthree()
      end
    end
  end
end

key = function(k)
  k = k:lower()
  if attack == false and k == "z" and zenabled == true then
    zenabled = false
    IceMortar()
  else
    if attack == false and k == "x" and xenabled == true then
      xenabled = false
      coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.0055 do
      swait()
      fenframe2a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    xenabled = true
    fenframe2a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
      PurityStorm()
    else
      if attack == false and k == "c" and cenabled == true then
        cenabled = false
        coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.0025 do
      swait()
      fenframe3a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    cenabled = true
    fenframe3a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
        TakeDown()
      else
        if attack == false and k == "v" and huphup == false and venabled == true then
          venabled = false
          Counter()
        else
          if attack == true and k == "v" and huphup == true and venabled == false then
            huphup = false
            attack = false
            ripostestance = false
            venabled = true
            Humanoid.WalkSpeed = 16
          end
        end
      end
    end
  end
end

Bin = Instance.new("HopperBin", Player.Backpack)
ds = function(mouse)
end

s = function(mouse)
  print("Selected")
  mouse.Button1Down:connect(function()
    ob1d(mouse)
  end
)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end
)
  mouse.KeyDown:connect(key)
end

Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
while 1 do
  swait()
  Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if 1 < RootPart.Velocity.y and hit == nil then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(10), math.rad(-5), math.rad(-30)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.2, 0) * angles(math.rad(50), math.rad(0), math.rad(-10)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
        FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(60), math.rad(50), math.rad(120)), 0.3)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil then
        Anim = "Fall"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(10), math.rad(-5), math.rad(-30)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(-10)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.2, 0) * angles(math.rad(50), math.rad(0), math.rad(-10)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
          FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(60), math.rad(50), math.rad(120)), 0.3)
        end
      else
        if Torsovelocity.x < 1 or Torsovelocity.z <1 and hit ~= nil then
          Anim = "Idle"
          if attack == false then
            change = 1
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 - 0.1 * math.cos((sine) / 9)) * angles(math.rad(20), math.rad(-20), math.rad(-80)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10 + 1 * math.cos((sine) / 9)), math.rad(-10 + 1 * math.cos((sine) / 9)), math.rad(80)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.2, -0.5) * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1.2 + 0.1 * math.cos((sine) / 9), 0) * RHCF * angles(math.rad(0), math.rad(-30), math.rad(20)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1.3, -1 + 0.1 * math.cos((sine) / 9), 0) * LHCF * angles(math.rad(0), math.rad(30), math.rad(-20)), 0.3)
            FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(60), math.rad(70 - 1 * math.cos((sine) / 9)), math.rad(70)), 0.3)
          end
        else
          if 2 < Torsovelocity and hit ~= nil then
            Anim = "Walk"
            if attack == false then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2 - 0.1 * math.cos((sine) / 9)) * angles(math.rad(10), math.rad(-5), math.rad(-30)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-5 + 1 * math.cos((sine) / 9)), math.rad(-10 + 1 * math.cos((sine) / 9)), math.rad(30)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.2, 0) * angles(math.rad(50), math.rad(0), math.rad(-10)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-0.5, 0.5, -1) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0 + 0.5 * math.cos((sine) / 5)) * RHCF * angles(math.rad(0), math.rad(0), math.rad(10 - 50 * math.cos((sine) / 5))), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, -0.5 - 0.5 * math.cos((sine) / 5)) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-10 - 50 * math.cos((sine) / 5))), 0.3)
              FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(60), math.rad(50 - 1 * math.cos((sine) / 9)), math.rad(120)), 0.3)
            end
          end
        end
      end
    end
  end
  if 0 < #Effects then
    for e = 1, #Effects do
      if Effects[e] ~= nil then
        local Thing = Effects[e]
        if Thing ~= nil then
          local Part = Thing[1]
          local Mode = Thing[2]
          local Delay = Thing[3]
          local IncX = Thing[4]
          local IncY = Thing[5]
          local IncZ = Thing[6]
          if Thing[1].Transparency <= 1 then
            if Thing[2] == "SatelliteStrike" then
              if Thing[5] < 80 then
                Thing[5] = Thing[5] + 1
                Thing[4].Scale = vt(Thing[5], Thing[5], Thing[5])
              else
                refda = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Reference", vt())
                refda.Anchored = true
                refda.CFrame = cf(Thing[1].Position)
                game:GetService("Debris"):AddItem(refda, 1)
                CreateSound("rbxassetid://334325056", refda, 1, 1)
                MagniDamage(refda, 20, 8, 10, 0, "Knockdown")
                Torso.CFrame = cf(refda.Position)
                BlockEffect(BrickColor.new("Toothpaste"), cf(refda.Position), 120, 120, 120, -5, -5, -5, 0.07, 1)
                RingEffect(BrickColor.new("Teal"), cf(refda.Position) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 10, 10, 0, 3, 3, 0, 0.07)
                RingEffect(BrickColor.new("Teal"), cf(refda.Position) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 10, 10, 0, 3, 3, 0, 0.07)
                RingEffect(BrickColor.new("Teal"), cf(refda.Position) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 10, 10, 0, 3, 3, 0, 0.07)
                coroutine.resume(coroutine.create(function()
  for i = 1, 0, -0.001 do
    swait()
    fenframe1a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
  end
  zenabled = true
  fenframe1a.Size = UDim2.new(0, 0, 0.1, 0)
end
))
                Thing[1].Parent = nil
                table.remove(Effects, e)
              end
            end
            if Thing[2] == "Block1" then
              Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            else
              if Thing[2] == "Block2" then
                Thing[1].CFrame = Thing[1].CFrame
                Mesh = Thing[7]
                Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              else
                if Thing[2] == "Cylinder" then
                  Mesh = Thing[1].Mesh
                  Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  if Thing[2] == "Blood" then
                    Mesh = Thing[7]
                    Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
                    Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  else
                    if Thing[2] == "Elec" then
                      Mesh = Thing[1].Mesh
                      Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      if Thing[2] == "Disappear" then
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      else
                        if Thing[2] == "Shatter" then
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                          Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
                          Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                          Thing[6] = Thing[6] + Thing[5]
                        end
                      end
                    end
                  end
                end
              end
            end
          else
            Part.Parent = nil
            table.remove(Effects, e)
          end
        end
      end
    end
  end
end