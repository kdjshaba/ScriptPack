-- Gaster <3
-- This Was Alot Easier Then I It Would Be

wait(0.016666666666667)
Effects = {}
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
invisy = false
vt = Vector3.new
xenabled = true
cenabled = true
venabled = true
zenabled = true
cf = CFrame.new
interupt = false
mana = 100
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
stance = false
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
local Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local grabbed = false
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local NeckCF = cn(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
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
RW.C0 = cn(1.5, 0.5, 0)
RW.C1 = cn(0, 0.5, 0)
RW.Part1 = RightArm
RW.Parent = Torso
LW.Name = "LW"
LW.Part0 = Torso
LW.C0 = cn(-1.5, 0.5, 0)
LW.C1 = cn(0, 0.5, 0)
LW.Part1 = LeftArm
LW.Parent = Torso
clerp = function(a, b, t)
  return a:lerp(b, t)
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")

  frame = 0.016666666666667

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

pwait = function(num)
  if num == 0 or num == nil then
    game:service("RunService").Heartbeat:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Heartbeat:wait(0)
    end
  end
end

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RemoveOutlines = function(part)
  part.TopSurface = 10
end

CreatePart = function(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
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

CreateWeld = function(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
  return Weld
end

rayCast = function(Position, Direction, Range, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
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
local fengui = it("GuiMain")
fengui.Parent = Player.PlayerGui
fengui.Name = "WeaponGUI"
local fenframe = it("Frame")
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255, 255, 255)
fenframe.BackgroundTransparency = 1
fenframe.BorderColor3 = Color3.new(17, 17, 17)
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframe.Position = UDim2.new(0.4, 0, 0.1, 0)
local fenbarmana1 = it("TextLabel")
fenbarmana1.Parent = fenframe
fenbarmana1.Text = " "
fenbarmana1.BackgroundTransparency = 0
fenbarmana1.BackgroundColor3 = Color3.new(0, 0, 0)
fenbarmana1.SizeConstraint = "RelativeXY"
fenbarmana1.TextXAlignment = "Center"
fenbarmana1.TextYAlignment = "Center"
fenbarmana1.Position = UDim2.new(0, 0, 0, 0)
fenbarmana1.Size = UDim2.new(4, 0, 0.2, 0)
local fenbarmana2 = it("TextLabel")
fenbarmana2.Parent = fenframe
fenbarmana2.Text = " "
fenbarmana2.BackgroundTransparency = 0
fenbarmana2.BackgroundColor3 = Torso.Color
fenbarmana2.SizeConstraint = "RelativeXY"
fenbarmana2.TextXAlignment = "Center"
fenbarmana2.TextYAlignment = "Center"
fenbarmana2.Position = UDim2.new(0, 0, 0, 0)
fenbarmana2.Size = UDim2.new(4 * mana / 100, 0, 0.2, 0)
local fenbarmana3 = it("TextLabel")
fenbarmana3.Parent = fenframe
fenbarmana3.Text = " "
fenbarmana3.BackgroundTransparency = 0
fenbarmana3.BackgroundColor3 = Color3.new(Col1, Col2, Col3)
fenbarmana3.SizeConstraint = "RelativeXY"
fenbarmana3.TextXAlignment = "Center"
fenbarmana3.TextYAlignment = "Center"
fenbarmana3.Position = UDim2.new(0, 0, 0, 0)
fenbarmana3.Size = UDim2.new(0, 0, 0.2, 0)
local fenbarmana4 = it("TextLabel")
fenbarmana4.Parent = fenframe
fenbarmana4.Text = "Energy(" .. mana .. ")"
fenbarmana4.BackgroundTransparency = 1
fenbarmana4.BackgroundColor3 = Color3.new(0, 0, 0)
fenbarmana4.SizeConstraint = "RelativeXY"
fenbarmana4.TextXAlignment = "Center"
fenbarmana4.TextYAlignment = "Center"
fenbarmana4.Position = UDim2.new(0, 0, -0.3, 0)
fenbarmana4.Size = UDim2.new(4, 0, 0.2, 0)
fenbarmana4.FontSize = "Size9"
fenbarmana4.TextStrokeTransparency = 0
fenbarmana4.TextColor = BrickColor.new("White")
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

so = function(id, par, vol, pit)
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

Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock)
  if hit.Parent == nil then
    return 
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
    h = hit.Parent.Parent:FindFirstChild("Humanoid")
  end
  if hit.Parent.className == "Hat" then
    hit = hit.Parent.Parent:findFirstChild("Head")
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    local c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil then
      print(block.className)
      if block.className == "NumberValue" and block.Value > 0 then
        blocked = true
        if decreaseblock == nil then
          block.Value = block.Value - 1
        end
      end
      if block.className == "IntValue" and block.Value > 0 then
        blocked = true
        if decreaseblock ~= nil then
          block.Value = block.Value - 1
        end
      end
    end
    if blocked == false then
      HitHealth = h.Health
      h.Health = h.Health - Damage
      if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 and h.Parent.Name ~= "Lost Soul" then
        print("gained spree")
        Player:FindFirstChild("leaderstats").Spree.Value = Player.leaderstats.Spree.Value + 1
      end
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    else
      HitHealth = h.Health
      if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 and h.Parent.Name ~= "Lost Soul" then
        print("gained spree")
        Player:FindFirstChild("leaderstats").Spree.Value = Player.leaderstats.Spree.Value + 1
      end
      h.Health = h.Health - Damage / 2
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, BrickColor.new("Bright blue").Color)
    end
    if Type == "Knockdown" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
    swait()
    HHumanoid.PlatformStand = false
  end
), hum)
      local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Instance.new("BodyVelocity")
      bodvol.velocity = angle * knockback
      bodvol.P = 5000
      bodvol.maxForce = Vector3.new(8000, 8000, 8000)
      bodvol.Parent = hit
      local rl = Instance.new("BodyAngularVelocity")
      rl.P = 3000
      rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
      rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
      rl.Parent = hit
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    else
      do
        if Type == "Normal" then
          local vp = Instance.new("BodyVelocity")
          vp.P = 500
          vp.maxForce = Vector3.new(math.huge, 0, math.huge)
          if KnockbackType == 1 then
            vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
          else
            if KnockbackType == 2 then
              vp.velocity = Property.CFrame.lookVector * knockback
            end
          end
          if knockback > 0 then
            vp.Parent = hit.Parent.Torso
          end
          game:GetService("Debris"):AddItem(vp, 0.5)
        else
          do
            if Type == "Up" then
              local bodyVelocity = Instance.new("BodyVelocity")
              bodyVelocity.velocity = vt(0, 60, 0)
              bodyVelocity.P = 5000
              bodyVelocity.maxForce = Vector3.new(8000, 8000, 8000)
              bodyVelocity.Parent = hit
              game:GetService("Debris"):AddItem(bodyVelocity, 1)
              local rl = Instance.new("BodyAngularVelocity")
              rl.P = 3000
              rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
              rl.angularvelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
              rl.Parent = hit
              game:GetService("Debris"):AddItem(rl, 0.5)
            else
              do
                if Type == "Snare" then
                  local bp = Instance.new("BodyPosition")
                  bp.P = 2000
                  bp.D = 100
                  bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                  bp.position = hit.Parent.Torso.Position
                  bp.Parent = hit.Parent.Torso
                  game:GetService("Debris"):AddItem(bp, 1)
                else
                  do
                    if Type == "Target" then
                      local Targetting = false
                      if Targetting == false then
                        ZTarget = hit.Parent.Torso
                        coroutine.resume(coroutine.create(function(Part)
    so("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
    swait(5)
    so("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
  end
), ZTarget)
                        local TargHum = ZTarget.Parent:findFirstChild("Humanoid")
                        local targetgui = Instance.new("BillboardGui")
                        targetgui.Parent = ZTarget
                        targetgui.Size = UDim2.new(10, 100, 10, 100)
                        local targ = Instance.new("ImageLabel")
                        targ.Parent = targetgui
                        targ.BackgroundTransparency = 1
                        targ.Image = "rbxassetid://4834067"
                        targ.Size = UDim2.new(1, 0, 1, 0)
                        cam.CameraType = "Scriptable"
                        cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                        local dir = Vector3.new(cam.CoordinateFrame.lookVector.x, 0, cam.CoordinateFrame.lookVector.z)
                        workspace.CurrentCamera.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                        Targetting = true
                        RocketTarget = ZTarget
                        for i = 1, Property do
                          if Humanoid.Health > 0 and Character.Parent ~= nil and TargHum.Health > 0 and TargHum.Parent ~= nil and Targetting == true then
                            swait()
                          end
                          cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                          dir = Vector3.new(cam.CoordinateFrame.lookVector.x, 0, cam.CoordinateFrame.lookVector.z)
                          cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position) * cf(0, 5, 10) * euler(-0.3, 0, 0)
                        end
                        Targetting = false
                        RocketTarget = nil
                        targetgui.Parent = nil
                        cam.CameraType = "Custom"
                      end
                    end
                    do
                      local debounce = Instance.new("BoolValue")
                      debounce.Name = "DebounceHit"
                      debounce.Parent = hit.Parent
                      debounce.Value = true
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

ShowDamage = function(Pos, Text, Time, Color)
  local Rate = 0.033333333333333
  if not Pos then
    local Pos = Vector3.new(0, 0, 0)
  end
  local Text = Text or ""
  local Time = Time or 2
  if not Color then
    local Color = Color3.new(1, 0, 0)
  end
  local EffectPart = CreatePart("Custom", workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Instance.new("BillboardGui")
  BillboardGui.Size = UDim2.new(3, 0, 3, 0)
  BillboardGui.Adornee = EffectPart
  local TextLabel = Instance.new("TextLabel")
  TextLabel.BackgroundTransparency = 1
  TextLabel.Size = UDim2.new(1, 0, 1, 0)
  TextLabel.Text = Text
  TextLabel.TextColor3 = Color
  TextLabel.TextScaled = true
  TextLabel.Font = Enum.Font.ArialBold
  TextLabel.Parent = BillboardGui
  BillboardGui.Parent = EffectPart
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  Delay(0, function()
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

Handle = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Black", "Handle", Vector3.new(0.200000003, 1.30544651, 0.200000003))
HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.966161489, -0.0223293304, 0.0359463692, 3.04086843e-005, 0.999994397, -1.83880347e-005, 3.04118639e-005, 1.8387007e-005, 1, 1, -3.04090718e-005, -3.04113055e-005))
CreateMesh("BlockMesh", Handle, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
FakeHandle = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "FakeHandle", Vector3.new(0.200000003, 0.90544647, 0.200000003))
FakeHandleWeld = CreateWeld(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 7.7438056e-013, 0, 1, 0, 7.7438056e-013, 0, 1))
CreateMesh("BlockMesh", FakeHandle, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.393446416, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.48091125e-005, -0.855041504, 3.36170197e-005, 1, 0, 7.7438056e-013, 0, 1, 0, 7.7438056e-013, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.204800054, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.90734863e-005, -0.555118561, -2.07424164e-005, 1, 0, 7.7438056e-013, 0, 1, 0, 7.7438056e-013, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
Hitbox = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Black", "Hitbox", Vector3.new(6.74273205, 1.69507062, 0.200000003))
Hitboxweld = CreateWeld(m, FakeHandle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.19318676, 0.0118615627, -0.000235080719, -3.71221176e-007, 1, 1.2640412e-005, -1, -3.71608621e-007, 3.05176509e-005, 3.05176582e-005, -1.26404047e-005, 1))
CreateMesh("BlockMesh", Hitbox, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.602070391))
Wedge = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Wedge", Vector3.new(0.200000003, 1.10074127, 0.898273468))
Wedgeweld = CreateWeld(m, FakeHandle, Wedge, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000415325165, -8.91092682, -0.00648617744, 6.31802177e-005, 3.05184003e-005, 1, -1.0117883e-005, -1, 3.05190406e-005, 1, -1.01198111e-005, -6.31799048e-005))
CreateMesh("SpecialMesh", Wedge, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.64019537, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.409600019, 0.409600019))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00519776344, -7.82012272, 0.168467999, 6.31802177e-005, 3.05184003e-005, 1, -1.0117883e-005, -1, 3.05190406e-005, 1, -1.01198111e-005, -6.31799048e-005))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.768000126, 1, 1))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 1.0646472, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.968665481, -2.68713665, -4.50611115e-005, -1, -8.7551598e-008, 6.10345669e-005, 8.7551598e-008, -1, 1.08593667e-009, 6.10345669e-005, 1.09139364e-009, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(5.54273176, 0.895070672, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.59318638, 0.0118615627, -0.000235080719, -3.71221176e-007, 1, 1.2640412e-005, -1, -3.71608621e-007, 3.05176509e-005, 3.05176582e-005, -1.26404047e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.379427761, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.77454853, -2.12260818, -3.29017639e-005, -0.866025925, -0.499999106, 6.32663214e-005, 0.499999106, -0.866025925, -2.62042831e-005, 6.78923898e-005, 8.93951619e-006, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.612357497, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.230634332, -7.3764267, 0.0025472641, -1, -8.7551598e-008, 6.10345669e-005, 8.7551598e-008, -1, 1.08593667e-009, 6.10345669e-005, 1.09139364e-009, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.722070336))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 1.0646472, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.990588903, -2.68707657, -0.000106334686, -1, -8.7551598e-008, 6.10345669e-005, 8.7551598e-008, -1, 1.08593667e-009, 6.10345669e-005, 1.09139364e-009, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.171409607, 1.27086926, 3.81469727e-005, -1, -6.10631105e-005, 6.10354909e-005, -6.10631105e-005, 1, 1.71530701e-009, -6.10354909e-005, -2.01180228e-009, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.606120169, 0.636152089, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.15703392, 1.16754436, -2.07424164e-005, 0.965928912, -0.258807957, 4.69273527e-006, 0.258807957, 0.965928912, -3.13735836e-006, -3.7208747e-006, 4.24498103e-006, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.606120169, 0.636152089, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.34307003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.441213608, 0.899503708, 1.00135803e-005, -0.865985632, -0.500068903, 6.3266998e-005, -0.500068903, 0.865985632, 2.62073536e-005, -6.7893794e-005, -8.94267032e-006, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.606120169, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.379427761, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.79647493, -2.10991192, -0.000105857849, -0.866023719, 0.500003099, 4.85453529e-005, -0.500003099, -0.866023719, 2.01096063e-005, 5.20962858e-005, -6.85742998e-006, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.675367296, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.85714722, -4.86962605, 0.00248336792, -0.707091928, 0.70712167, 3.9871491e-005, -0.70712167, -0.707091928, 2.66434672e-005, 4.70329796e-005, -9.35461321e-006, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.722070336))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.202705264, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0558862686, 1.91222, -3.64780426e-005, 0.866031766, 0.499989033, -4.31282842e-006, -0.499989033, 0.866031766, 1.04075698e-005, 8.93871857e-006, -6.85692066e-006, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.36840865, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.441297531, 0.886784554, -9.77516174e-006, 0.866037428, -0.499979258, 1.04068522e-005, 0.499979258, 0.866037428, -4.3132859e-006, -6.8561676e-006, 8.93867582e-006, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.606120169, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.171272278, 1.27086926, -3.79085541e-005, 1, 0, 7.7438056e-013, 0, 1, 0, 7.7438056e-013, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.606120169, 0.636152089, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.156906128, 1.16757965, 2.0980835e-005, -0.965909779, -0.258879215, 6.36497134e-005, -0.258879215, 0.965909779, 1.26615487e-005, -6.47576817e-005, -4.24767131e-006, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.606120169, 0.636152089, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.49584648, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.74588776e-005, 1.92513084, -5.29289246e-005, 1, 0, 7.7438056e-013, 0, 1, 0, 7.7438056e-013, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.595887125, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.507580757, 1.50198078, -4.31537628e-005, 0.965928018, 0.258810908, -3.13713645e-006, -0.258810908, 0.965928018, 4.69303086e-006, 4.24485552e-006, -3.72120667e-006, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.606120169, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.595887125, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.507737875, 1.50194073, 4.22000885e-005, -0.965941787, 0.258759528, 5.58199463e-005, 0.258759528, 0.965941787, -1.1102371e-005, -5.6791665e-005, 3.71969873e-006, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.606120169, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.441860676, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.949181557, 1.95209885, -2.47955322e-005, 1, 0, 7.7438056e-013, 0, 1, 0, 7.7438056e-013, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.36840865, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.441245079, 0.886816025, -8.86917114e-005, 5.52567617e-005, -0.500030518, -0.866007805, 9.16381032e-006, 0.866007864, -0.500030518, 1, 1.96941364e-005, 5.24349744e-005))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.606120169, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.942919374, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.545132995, 2.07941628, -6.53266907e-005, 1, 0, 7.7438056e-013, 0, 1, 0, 7.7438056e-013, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.936567724, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.317608029, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.968647957, 1.39530754, 4.24385071e-005, -0.500046909, 0.865998387, 3.0518735e-005, 0.865998387, 0.500046909, -3.05167214e-005, -4.16882322e-005, 1.11693826e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.171328068, 1.27087498, 7.77244568e-005, 6.31802322e-005, -1.26385567e-005, 1, -3.3004766e-005, 1, 1.26406412e-005, -1, -3.30055627e-005, 6.31798102e-005))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.606120169, 0.636152089, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.34307003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.441244602, 0.899483681, 3.31401825e-005, 0.000130553468, -0.500004053, 0.866023183, -1.3429616e-005, 0.866023123, 0.500003994, -1, -7.69075996e-005, 0.000106347441))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.606120169, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.595887125, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.507612228, 1.50198174, 9.32216644e-005, 6.34923999e-005, 0.258776486, 0.965937316, -3.98158954e-005, 0.965937316, -0.258776486, -1, -2.20293186e-005, 7.16330833e-005))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.606120169, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.595887125, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.507658243, 1.50196075, -0.000154256821, 1.57576451e-005, 0.258764327, -0.965940595, 1.31600773e-005, 0.965940595, 0.258764327, 1, -1.6789365e-005, 1.18155876e-005))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.606120169, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.942919374, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.554474354, 2.07938099, -3.24249268e-005, 1, 0, 7.7438056e-013, 0, 1, 0, 7.7438056e-013, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.936567724, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.441860676, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.932858467, 1.95215416, -8.05854797e-005, 1, 0, 7.7438056e-013, 0, 1, 0, 7.7438056e-013, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.156924725, 1.16756725, -0.000123977661, 2.16317239e-005, -0.258823246, -0.965924799, 8.64148933e-006, 0.965924799, -0.258823246, 1, -2.74823651e-006, 2.31312315e-005))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.606120169, 0.636152089, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.156952381, 1.16757011, 6.41345978e-005, 9.17993239e-005, -0.258800238, 0.965930939, -2.40170612e-005, 0.965930879, 0.258800209, -1, -4.69565057e-005, 8.24561648e-005))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.606120169, 0.636152089, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.171375275, 1.27086926, -0.000132322311, 2.14780471e-006, -3.05182621e-005, -1, 1.0117883e-005, 1, -3.05182402e-005, 1, -1.01178175e-005, 2.14811485e-006))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.606120169, 0.636152089, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.317608029, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.958737373, 1.41248894, -4.26769257e-005, 0.49998033, 0.866036773, 2.71029421e-010, -0.866036773, 0.49998033, 2.23408915e-005, 1.93478991e-005, -1.11702411e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.913246155, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.9911356, -0.00743842125, 0.00275635719, -2.05039923e-005, -1, 3.05185968e-005, 1, -2.05062388e-005, -7.36752918e-005, 7.36759248e-005, 3.05170834e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.722070336))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.317608029, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.51852703, -0.0179100037, 0.00013589859, 0.50010246, -0.86596632, -8.33751619e-005, -0.86596632, -0.50010246, 6.10257703e-005, -9.45423744e-005, 4.16809344e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.625433862, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.81490231, -4.77565193, 0.00265431404, -0.707098544, -0.707115054, 5.96736099e-005, 0.707115054, -0.707098544, -3.98721531e-005, 7.03893165e-005, 1.40025659e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.722070336))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.441860676, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.949100971, -0.908418655, 5.00679016e-005, 1, 6.10631105e-005, -6.10354909e-005, 6.10631105e-005, -1, -1.71530701e-009, -6.10354909e-005, -2.01180228e-009, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.202705264, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.37422752, -0.565196991, 5.03063202e-005, 0.86608845, -0.499890924, -4.85490564e-005, -0.499890924, -0.86608845, 2.01050789e-005, -5.20981157e-005, 6.85645136e-006, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 1.0646472, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.990505695, 0.173439026, -2.86102295e-005, -1, -6.10649658e-005, 4.55968596e-012, -6.10649658e-005, 1, 6.10357747e-005, -3.73335229e-009, 6.10357747e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.322373062, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(7.78453445, 0.063832283, 0.00242161751, -3.71221176e-007, 1, 1.2640412e-005, -1, -3.71608621e-007, 3.05176509e-005, 3.05176582e-005, -1.26404047e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.722070336))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.675367296, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.212718487, -6.33270836, 0.00255680084, -1, -8.7551598e-008, 6.10345669e-005, 8.7551598e-008, -1, 1.08593667e-009, 6.10345669e-005, 1.09139364e-009, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.722070336))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 1.5413053, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.558735609, -1.81670856, -3.95774841e-005, -1, -8.7551598e-008, 6.10345669e-005, 8.7551598e-008, -1, 1.08593667e-009, 6.10345669e-005, 1.09139364e-009, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.597839952, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.236372828, -6.29396057, 0.00257277489, -1, -8.7551598e-008, 6.10345669e-005, 8.7551598e-008, -1, 1.08593667e-009, 6.10345669e-005, 1.09139364e-009, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.722070336))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 1.5413053, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.592877388, -1.81667423, -7.48634338e-005, -1, -8.7551598e-008, 6.10345669e-005, 8.7551598e-008, -1, 1.08593667e-009, 6.10345669e-005, 1.09139364e-009, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.202705264, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.073132515, 1.90228939, 3.86238098e-005, -0.866050303, 0.499956906, 4.85473465e-005, 0.499956906, 0.866050303, -2.0109157e-005, -5.20981557e-005, 6.85603663e-006, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.793923318, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.172916412, -7.36026955, 0.00253367424, -1, -8.7551598e-008, 6.10345669e-005, 8.7551598e-008, -1, 1.08593667e-009, 6.10345669e-005, 1.09139364e-009, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.722070336))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.679368436, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00772190094, -5.1607008, 0.00229144096, -1, 6.09625058e-005, 6.10364223e-005, -6.09662311e-005, -1, -6.10309653e-005, 6.10327043e-005, -6.10346906e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.722070336))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.511920691, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.35372257, -0.00668311119, 0.00278067589, 8.60095024e-005, 1, -3.05177928e-005, -1, 8.60091095e-005, -1.26439691e-005, -1.26413433e-005, 3.05188805e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.722070336))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 1.0646472, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.968749404, 0.173379898, 3.81469727e-005, -1, -6.10649658e-005, 4.55968596e-012, -6.10649658e-005, 1, 6.10357747e-005, -3.73335229e-009, 6.10357747e-005, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.317608029, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.50859165, -0.0351295471, -0.000111341476, -0.500059485, -0.865991175, -3.0514364e-005, 0.865991175, -0.500059485, -7.519668e-005, 4.98606496e-005, -6.40279686e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.22240162, 0.0770190954, -4.529953e-005, -0.00010715425, -1, 3.05231079e-005, 1, -0.000107156491, -7.36726433e-005, 7.36759248e-005, 3.05152098e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 0.574884057, 0.750312567))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.202705264, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.35707092, -0.575028419, -0.000104904175, -0.866025925, -0.499999106, -1.1484397e-005, 0.499999106, -0.866025925, -6.93626862e-005, 2.47354965e-005, -6.58120698e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.317113042, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.73049736, 2.83197927, 0.00313162804, 0.499947399, -0.866055787, 3.05245412e-005, 0.866055787, 0.499947399, -0.00013623391, 0.000102725506, 9.45457432e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.722070336))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.497833401, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.28034544, -3.16568089, -9.94205475e-005, -1, -8.7551598e-008, 6.10345669e-005, 8.7551598e-008, -1, 1.08593667e-009, 6.10345669e-005, 1.09139364e-009, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.537184536, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.497833401, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.24258947, -3.16575623, -2.07424164e-005, -1, -8.7551598e-008, 6.10345669e-005, 8.7551598e-008, -1, 1.08593667e-009, 6.10345669e-005, 1.09139364e-009, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.537184536, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.329355866, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.16463375, 0.190085649, 0.00278043747, 8.60095024e-005, 1, -3.05177928e-005, -1, 8.60091095e-005, -1.26439691e-005, -1.26413433e-005, 3.05188805e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.591751814, 0.722070336))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.441860676, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.932941794, -0.908361435, -8.10623169e-006, 1, 6.10631105e-005, -6.10354909e-005, 6.10631105e-005, -1, -1.71530701e-009, -6.10354909e-005, -2.01180228e-009, -1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.510753989, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-5.58538151, -0.00639224052, 0.00277018547, -2.05039923e-005, -1, 3.05195317e-005, 1, -2.05062388e-005, -7.36743605e-005, 7.36749935e-005, 3.05180183e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.722070336))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.389725953, 0.388253987, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.44199991, 2.43855286, 0.0029027462, 0.70711726, -0.707096279, 3.98715383e-005, 0.707096279, 0.70711726, -5.9672544e-005, 1.40003813e-005, 7.03885016e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.722070336))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.98382854, 0.00819444656, -4.67300415e-005, 8.60095024e-005, 1, -3.05177928e-005, -1, 8.60091095e-005, -1.26439691e-005, -1.26413433e-005, 3.05188805e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 0.954173565, 0.750312567))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.1529398, 0.008207798, -4.76837158e-005, 8.60095024e-005, 1, -3.05177928e-005, -1, 8.60091095e-005, -1.26439691e-005, -1.26413433e-005, 3.05188805e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 0.954173565, 0.750312567))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.516155064, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.54650116, 0.0280649662, -4.74452972e-005, 8.60095024e-005, 1, -3.05177928e-005, -1, 8.60091095e-005, -1.26439691e-005, -1.26413433e-005, 3.05188805e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.750312567))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.16198111, -3.14979267, -0.00047659874, -0.707091928, 0.70712167, 6.3230269e-005, -0.70712167, -0.707091928, -2.97443803e-005, 2.36767191e-005, -6.57435012e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 0.55597049, 0.750312567))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.25346756, -0.934860229, -0.000445365906, -0.258784294, 0.965935171, 5.83653018e-005, -0.965935171, -0.258784294, -1.66779828e-005, -1.00582849e-006, -6.06930917e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 0.611777604, 0.750312567))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.329355866, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.16467762, -0.199926138, 0.00276470184, 8.60095024e-005, 1, -3.05177928e-005, -1, 8.60091095e-005, -1.26439691e-005, -1.26413433e-005, 3.05188805e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.591751814, 0.722070336))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.22690582, -3.95595741, -0.000492334366, -0.865990281, 0.500061035, 6.43433959e-005, -0.500061035, -0.865990281, -3.88429944e-005, 3.62968822e-005, -6.58132703e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 0.55597049, 0.750312567))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.349789321, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.17634356, -4.33805466, -0.000434398651, -1, 6.09625058e-005, 6.10364223e-005, -6.09662311e-005, -1, -6.10309653e-005, 6.10327043e-005, -6.10346906e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.750312567))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.913246155, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.947999, -0.00732707977, 0.00275611877, -2.05039923e-005, -1, 3.05195317e-005, 1, -2.05062388e-005, -7.36743605e-005, 7.36749935e-005, 3.05180183e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.722070336))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.33442211, 0.307745695, -3.38554382e-005, 8.60095024e-005, 1, -3.05177928e-005, -1, 8.60091095e-005, -1.26439691e-005, -1.26413433e-005, 3.05188805e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 0.55597049, 0.750312567))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.85499382, -2.11038494, -0.000467777252, -0.499922812, 0.866070032, 6.10341049e-005, -0.866070032, -0.499922812, -2.23373499e-005, 1.11666295e-005, -6.40267535e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 0.647667408, 0.750312567))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.11419904, -4.50204468, -0.000485897064, -0.965911508, 0.258872867, 6.37859121e-005, -0.258872867, -0.965911508, -4.94049418e-005, 4.88219412e-005, -6.42332307e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 0.55597049, 0.750312567))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.913246155, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-3.45150852, -0.00730109215, 0.00275707245, -2.05039923e-005, -1, 3.05195317e-005, 1, -2.05062388e-005, -7.36743605e-005, 7.36749935e-005, 3.05180183e-005, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.722070336))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.94535017, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.45689201, -0.182693481, 4.60147858e-005, -1, -8.7551598e-008, 6.10345669e-005, 8.7551598e-008, -1, 1.08593667e-009, 6.10345669e-005, 1.09139364e-009, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0, 0, "Dark indigo", "Part", Vector3.new(0.200000003, 0.20480001, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.97887421e-005, 0.550806999, -2.02655792e-005, 1, 0, 7.7438056e-013, 0, 1, 0, 7.7438056e-013, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.393446475, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.05039978e-005, 0.849928856, -1.97887421e-005, 1, 0, 7.7438056e-013, 0, 1, 0, 7.7438056e-013, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.874049783, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.94535017, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.47072291, -0.182605743, -4.31537628e-005, -1, -8.7551598e-008, 6.10345669e-005, 8.7551598e-008, -1, 1.08593667e-009, 6.10345669e-005, 1.09139364e-009, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.497833401, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.28023505, 0.303470612, -1.1920929e-006, -1, -8.7551598e-008, 6.10345669e-005, 8.7551598e-008, -1, 1.08593667e-009, 6.10345669e-005, 1.09139364e-009, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.537184536, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.94535017, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.45681739, -2.74680042, -3.33786011e-005, -1, -8.7551598e-008, 6.10345669e-005, 8.7551598e-008, -1, 1.08593667e-009, 6.10345669e-005, 1.09139364e-009, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.497833401, 0.200000003, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.2426939, 0.303394318, 7.74860382e-005, -1, -8.7551598e-008, 6.10345669e-005, 8.7551598e-008, -1, 1.08593667e-009, 6.10345669e-005, 1.09139364e-009, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.537184536, 0.602070391))
Part = CreatePart(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Black", "Part", Vector3.new(0.200000003, 0.94535017, 0.200000003))
Partweld = CreateWeld(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.47080112, -2.74671173, -0.000123023987, -1, -8.7551598e-008, 6.10345669e-005, 8.7551598e-008, -1, 1.08593667e-009, 6.10345669e-005, 1.09139364e-009, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.532409191, 1, 0.602070391))
BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

RingEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.new(x1, y1, z1)
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

CylinderEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

SpecialEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "nil", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end

RoyalTrip = function()
  attack = true
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, 0, "Knockdown", RootPart, 0.1, "Hit2", 1)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -0.4) * angles(math.rad(0), math.rad(70), math.rad(70)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-20)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  so("http://roblox.com/asset/?id=206083107", Torso, 1, 0.7)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(360)), 0.35)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-5), math.rad(-5), math.rad(-70)), 0.35)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.4, 0) * angles(math.rad(0), math.rad(30), math.rad(80)), 0.35)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.35)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.35)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.35)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.35)
  end
  con1:disconnect()
  attack = false
  stance = false
end

attackone = function()
  attack = true
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, 0, "Normal", RootPart, 0.1, "Hit2", 1)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -0.4) * angles(math.rad(0), math.rad(70), math.rad(110)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-20)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  so("http://roblox.com/asset/?id=206083107", Torso, 1, 0.7)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.35)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(5), math.rad(70)), 0.35)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.4, 0) * angles(math.rad(0), math.rad(30), math.rad(70)), 0.35)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.35)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.35)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.35)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.35)
  end
  con1:disconnect()
  attack = false
end

Stance = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(3), math.rad(3), math.rad(-20)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -0.3) * angles(math.rad(-20), math.rad(70), math.rad(250)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.3) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-100), math.rad(100), math.rad(70)), 0.3)
  end
  stance = true
  attack = false
end

RoyalCharge = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(3), math.rad(3), math.rad(-20)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -0.3) * angles(math.rad(-20), math.rad(0), math.rad(100)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.3) * angles(math.rad(0), math.rad(-100), math.rad(-100)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-100), math.rad(100), math.rad(300)), 0.3)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(Torso, hit, 20, 25, 10, "Knockdown", RootPart, 0.1, "Hit2", 1)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(12), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(3), math.rad(3), math.rad(-20)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -0.3) * angles(math.rad(-20), math.rad(100), math.rad(100)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.3) * angles(math.rad(0), math.rad(-100), math.rad(-100)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-100), math.rad(100), math.rad(130)), 0.3)
  end
  Torso.Velocity = RootPart.CFrame.lookVector * 200
  so("http://roblox.com/asset/?id=191395766", Torso, 1, 0.7)
  MagicRing(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 2, 2, 0, 2, 2, 0, 0.06)
  MagicRing(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5, 0.5, 0, 1.5, 1.5, 0, 0.05)
  MagicRing(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 2.5, 2.5, 0, 3, 3, 0, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(3), math.rad(3), math.rad(-20)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -0.3) * angles(math.rad(-20), math.rad(100), math.rad(100)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.3) * angles(math.rad(0), math.rad(-100), math.rad(-100)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-100), math.rad(100), math.rad(130)), 0.3)
  end
  stance = false
  con1:disconnect()
  attack = false
end

Slam = function()
  attack = true
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 20, 35, 0, "Normal", RootPart, 0.1, "Hit2", 1)
  end
)
  so("http://roblox.com/asset/?id=206083107", Torso, 1, 0.6)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.9, -0.5) * angles(math.rad(120), math.rad(0), math.rad(-50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.9, -0.5) * angles(math.rad(120), math.rad(0), math.rad(50)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-30)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(30)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0.3) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
  end
  RingEffect(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, -2.5, -3) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 1, 1, 0, 3, 3, 0, 0.05)
  MagniDamage(Torso, 15, 15, 25, 0, "Normal")
  so("http://roblox.com/asset/?id=231917970", Torso, 1, 1)
  for i = 0, 1, 0.12 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.4, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-50)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.4, -0.5) * angles(math.rad(30), math.rad(0), math.rad(50)), 0.5)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(30)), 0.4)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(-30)), 0.4)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0.3) * angles(math.rad(0), math.rad(50), math.rad(-45)), 0.4)
  end
  con1:disconnect()
  attack = false
end

attacktwo = function()
  attack = true
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, 0, "Normal", RootPart, 0.1, "Hit2", 1)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.9, -0.5) * angles(math.rad(120), math.rad(0), math.rad(-50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.9, -0.5) * angles(math.rad(120), math.rad(0), math.rad(50)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(10)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0.3) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
  end
  so("http://roblox.com/asset/?id=206083107", Torso, 1, 0.6)
  for i = 0, 1, 0.12 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.4, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-50)), 0.5)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.4, -0.5) * angles(math.rad(30), math.rad(0), math.rad(50)), 0.5)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(10)), 0.4)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(-10)), 0.4)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0.3) * angles(math.rad(0), math.rad(50), math.rad(-35)), 0.4)
  end
  con1:disconnect()
  attack = false
end

attackthree = function()
  attack = true
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(Hitbox, hit, 10, 15, 0, "Normal", RootPart, 0.1, "Hit2", 1)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -0.4) * angles(math.rad(0), math.rad(80), math.rad(80)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-20)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-30), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  so("http://roblox.com/asset/?id=206083107", Torso, 1, 0.4)
  for i = 1, 2 do
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), -6 * i), 0.5)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(0), math.rad(-80)), 0.5)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.5)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-50)), 0.5)
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.5)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.5)
      FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.5)
    end
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.35)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(5), math.rad(5), math.rad(70)), 0.35)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.4, 0) * angles(math.rad(0), math.rad(30), math.rad(70)), 0.35)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-30)), 0.35)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.35)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.35)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.35)
  end
  con1:disconnect()
  attack = false
end

explode = function(part)
  swait()
  BreakEffect(BrickColor.new("Dark indigo"), part.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 5, 1, 30, 30, 30, 0.05)
  BreakEffect(BrickColor.new("Black"), part.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 5, 1, 30, 30, 30, 0.05)
  RingEffect(BrickColor.new("Black"), part.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 3, 3, 3, 0.05)
  RingEffect(BrickColor.new("Dark indigo"), part.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 3, 3, 3, 0.05)
  SphereEffect(BrickColor.new("Dark indigo"), part.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 3, 3, 3, 3, 3, 3, 0.05)
end

MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

MagicRing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
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

MagicExplode = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=9756362", vt(0, 0, 0), vt(x1, y1, z1))
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

Blast = function()
  attack = true
  Humanoid.WalkSpeed = 0
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(30), math.rad(-55)), 0.37)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(50)), 0.37)
    RW.C0 = clerp(RW.C0, cn(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(35)), 0.37)
    LW.C0 = clerp(LW.C0, cn(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.37)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-30)), 0.35)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(30)), 0.35)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.37)
  end
  MagicRing(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 2, 2, 0, 2, 2, 0, 0.05)
  MagicRing(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 1, 1, 130, 0.5, 0.5, 130, 0.05)
  so("http://roblox.com/asset/?id=231917970", RootPart, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 100) * angles(math.rad(0), math.rad(0), math.rad(-55)), 0.37)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.37)
    RW.C0 = clerp(RW.C0, cn(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(15)), 0.37)
    LW.C0 = clerp(LW.C0, cn(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.37)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.35)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(0)), 0.35)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.37)
  end
  coroutine.resume(coroutine.create(function()
    invisle()
  end
))
end

invisle = function()
  invisy = true
  Humanoid.WalkSpeed = 30
  coroutine.resume(coroutine.create(function()
    for i,v in pairs(Character:children()) do
      if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
        v.Transparency = 1
      end
      if v:IsA("Hat") then
        v.Handle.Transparency = 1
      end
      Head.face.Transparency = 1
    end
    for i,v in pairs(m:children()) do
      if v:IsA("BasePart") then
        v.Transparency = 1
      end
    end
  end
))
  coroutine.resume(coroutine.create(function()
    while invisy == true do
      wait(0.1)
      MagicRing(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 2, 2, 0, 2, 2, 0, 0.05)
    end
  end
))
  for i = 1, 100 do
    wait()
  end
  MagicRing(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 2, 2, 0, 2, 2, 0, 0.05)
  MagicRing(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 1, 1, 130, 0.5, 0.5, 130, 0.05)
  MagicExplode(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 1, 1, 1, 1, 1, 1, 0.05)
  so("http://roblox.com/asset/?id=231917806", Torso, 1, 1)
  MagniDamage(Hitbox, 10, 15, 25, 10, "Normal")
  coroutine.resume(coroutine.create(function()
    for i,v in pairs(Character:children()) do
      if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
        v.Transparency = 0
      end
      if v:IsA("Hat") then
        v.Handle.Transparency = 0
      end
      Head.face.Transparency = 0
    end
    for i,v in pairs(m:children()) do
      if v:IsA("BasePart") then
        v.Transparency = 0
      end
    end
    Hitbox.Transparency = 1
  end
))
  Humanoid.WalkSpeed = 16
  attack = false
  invisy = false
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
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "Hit2", 1)
        end
      end
    end
  end
end

local grabbing = false
chargeded = function()
  attack = true
  local ef = CreatePart(3, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "ef", vt(0.5, 0.5, 0.5))
  if grabbing == false then
    con1 = Hitbox.Touched:connect(function(hit)
    grabbing = true
    local ht = hit.Parent
    coroutine.resume(coroutine.create(function()
      while grabbing do
        swait()
        ef.CFrame = Hitbox.CFrame
      end
    end
))
    local hum1 = ht:FindFirstChild("Humanoid")
    if hum1 ~= nil then
      coroutine.resume(coroutine.create(function()
      hum1.PlatformStand = true
      wait(3)
      hum1.PlatformStand = false
    end
))
      local asd = CreateWeld(ef, ef, ht:FindFirstChild("Torso"), CFrame.new(0, 0, 0), CFrame.new(0, 0, 0))
      asd.Parent = ef
      asd.Name = "asd"
      asd.C0 = asd.C0 * CFrame.Angles(math.rad(-90), 0, 0)
    else
      do
        if hum1 == nil then
          con1:disconnect()
          wait()
          return 
        end
      end
    end
  end
)
  end
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-85)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(3), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -0.7) * angles(math.rad(-20), math.rad(100), math.rad(60)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.3) * angles(math.rad(0), math.rad(-45), math.rad(-80)), 0.3)
    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.3)
    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  so("http://roblox.com/asset/?id=191395766", Torso, 1, 1)
  MagicRing(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 2, 2, 0, 2, 2, 0, 0.05)
  Torso.Velocity = RootPart.CFrame.lookVector * 125
  if grabbing == false then
    for i = 0, 1, 0.05 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-85)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(3), math.rad(50)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -0.7) * angles(math.rad(-20), math.rad(100), math.rad(60)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.3) * angles(math.rad(0), math.rad(-45), math.rad(-80)), 0.3)
      RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.3)
      FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
  end
  do
    if grabbing == true then
      for i = 0, 1, 0.05 do
        swait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1, 0.9, -0.5) * angles(math.rad(120), math.rad(0), math.rad(-50)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.9, -0.5) * angles(math.rad(120), math.rad(0), math.rad(50)), 0.3)
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-10)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(10)), 0.3)
        FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0.3) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
      end
      for i = 0, 1, 0.05 do
        swait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1, 0.9, -0.5) * angles(math.rad(120), math.rad(0), math.rad(-50)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.9, -0.5) * angles(math.rad(120), math.rad(0), math.rad(50)), 0.3)
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-10)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(10)), 0.3)
        FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0.3) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
      end
      for i = 0, 1, 0.05 do
        swait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1, 0.9, -0.5) * angles(math.rad(120), math.rad(0), math.rad(-50)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.9, -0.5) * angles(math.rad(120), math.rad(0), math.rad(50)), 0.3)
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(-10)), 0.3)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(10)), 0.3)
        FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0.3) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
      end
      so("http://roblox.com/asset/?id=206083107", Torso, 1, 0.7)
      MagicRing(BrickColor.new("Black"), RootPart.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)), 2, 2, 0, 2, 2, 0, 0.05)
      MagniDamage(Hitbox, 10, 15, 25, 20, "Knockdown")
      for i = 0, 1, 0.1 do
        swait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)
        RW.C0 = clerp(RW.C0, CFrame.new(1, 0.4, -0.5) * angles(math.rad(30), math.rad(0), math.rad(-50)), 0.5)
        LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.4, -0.5) * angles(math.rad(30), math.rad(0), math.rad(50)), 0.5)
        RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(0), math.rad(10)), 0.4)
        LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(0), math.rad(-10)), 0.4)
        FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0.3) * angles(math.rad(0), math.rad(50), math.rad(-35)), 0.4)
      end
    end
    do
      con1:disconnect()
      attack = false
      ef.Parent = nil
    end
  end
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
  if attack == false and k == "z" and zenabled == true and stance == false and mana >= 15 then
    mana = mana
    zenabled = false
    coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.01 do
      swait()
      fenframe1a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    zenabled = true
    fenframe1a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
    Slam()
  else
    if attack == false and k == "x" and xenabled == true and stance == false and mana >= 25 then
      mana = mana
      xenabled = false
      coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.001 do
      swait()
      fenframe2a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    xenabled = true
    fenframe2a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
      Blast()
    else
      if attack == false and k == "c" and cenabled == true and stance == false and mana >= 30 then
        mana = mana
        cenabled = false
        coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.001 do
      swait()
      fenframe3a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    cenabled = true
    fenframe3a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
        chargeded()
      else
        if attack == false and k == "v" and stance == false then
          Stance()
        else
          if attack == false and k == "v" and stance == true then
            stance = false
          else
            if attack == false and k == "z" and zenabled == true and stance == true and mana >= 20 then
              zenabled = false
              coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.005 do
      swait()
      fenframe1a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    zenabled = true
    fenframe1a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
              mana = mana
              RoyalCharge()
            else
              if attack == false and k == "x" and xenabled == true and stance == true and mana >= 15 then
                xenabled = false
                coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.01 do
      swait()
      fenframe2a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    xenabled = true
    fenframe2a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
                mana = mana
                RoyalTrip()
              end
            end
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
local mananum = 0
while 1 do
  while 1 do
    while 1 do
      pwait()
      for i,v in pairs(Character:GetChildren()) do
        if v:IsA("Part") then
          v.Material = "SmoothPlastic"
        else
          if v:IsA("Hat") then
            v:WaitForChild("Handle").Material = "SmoothPlastic"
          end
        end
      end
      Torsovelocity = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
      velocity = RootPart.Velocity.y
      sine = sine + change
      local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
      if equipped == true or equipped == false then
        if 1 < RootPart.Velocity.y and hit == nil then
          Anim = "Jump"
          if attack == false then
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-20)), 0.3)
            RH.C0 = clerp(RH.C0, cn(1, -0.8, -0.3) * RHCF * angles(math.rad(3), math.rad(0), math.rad(-10)), 0.3)
            LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(2), math.rad(0), math.rad(30)), 0.3)
            FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          end
        else
          if RootPart.Velocity.y < -1 and hit == nil then
            Anim = "Fall"
            if attack == false then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(30)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.3)
              RH.C0 = clerp(RH.C0, cn(1, -0.9, -0.3) * RHCF * angles(math.rad(3), math.rad(0), math.rad(-10)), 0.3)
              LH.C0 = clerp(LH.C0, cn(-1, -0.9, -0.2) * LHCF * angles(math.rad(2), math.rad(0), math.rad(30)), 0.3)
              FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            end
          else
            if Torsovelocity.x < 1 and Torsovelocity.z < 1 and hit ~= nil then
              Anim = "Idle"
              if attack == false then
                if stance == true then
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(3), math.rad(3), math.rad(-20)), 0.3)
                  RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -0.3) * angles(math.rad(-20), math.rad(70), math.rad(250)), 0.3)
                  LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.3) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
                  RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.3)
                  LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.3)
                  FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-100), math.rad(100), math.rad(70)), 0.3)
                else
                  change = 1
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(3), math.rad(3), math.rad(-20)), 0.3)
                  RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -0.7) * angles(math.rad(-20), math.rad(120), math.rad(90)), 0.3)
                  LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.3) * angles(math.rad(0), math.rad(-80), math.rad(-120)), 0.3)
                  RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.3)
                  LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-5), math.rad(-20), math.rad(0)), 0.3)
                  FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(30), math.rad(-20)), 0.3)
                end
              end
            else
              if 2 < Torsovelocity.x and 2 < Torsovelocity.z and hit ~= nil then
                Anim = "Walk"
                if attack == false then
                  if stance == true then
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(5 * math.cos((sine) / 10))), 0.3)
                    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-5 * math.cos((sine) / 10))), 0.3)
                    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -0.7) * angles(math.rad(-20), math.rad(70), math.rad(270)), 0.3)
                    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.3) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
                    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(80 * math.cos((sine) / 10))), 0.3)
                    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(80 * math.cos((sine) / 10))), 0.3)
                    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-100), math.rad(100), math.rad(50)), 0.3)
                  else
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cn(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(5 * math.cos((sine) / 10))), 0.3)
                    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-5 * math.cos((sine) / 10))), 0.3)
                    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -0.7) * angles(math.rad(-20), math.rad(110), math.rad(90)), 0.3)
                    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.3) * angles(math.rad(0), math.rad(-70), math.rad(-120)), 0.3)
                    RH.C0 = clerp(RH.C0, cn(1, -1, 0) * RHCF * angles(math.rad(-3), math.rad(0), math.rad(80 * math.cos((sine) / 10))), 0.3)
                    LH.C0 = clerp(LH.C0, cn(-1, -1, 0) * LHCF * angles(math.rad(-3), math.rad(0), math.rad(80 * math.cos((sine) / 10))), 0.3)
                    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(30), math.rad(-20)), 0.3)
                  end
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
      do
        fenbarmana2:TweenSize((UDim2.new(4 * mana / 100, 0, 0.2, 0)), nil, 1, 0.4, true)
        fenbarmana4.Text = "[Corruption]  <{[  " .. mana .. "  ]}> [Corruption]"
        if 100 <= mana then
          mana = 100
        end
      end
    end
    if mananum <= 8 then
      mananum = mananum + 1
 end
  end
  mananum = 0
  mana = mana + 1
end

