--Fixed by Canary
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
i = Instance.new("NumberValue", Player)
i.Name = "FPSCH"
Torso = Character.Torso
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
Head = Character.Head
Humanoid = Character.Humanoid
m = Instance.new("Model", Character)
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
RW = Create("Weld")({Name = "Right Shoulder", Part0 = Tor, C0 = CFrame.new(1.5, 0.5, 0), C1 = CFrame.new(0, 0.5, 0), Part1 = RA, Parent = Tor})
LW = Create("Weld")({Name = "Left Shoulder", Part0 = Tor, C0 = CFrame.new(-1.5, 0.5, 0), C1 = CFrame.new(0, 0.5, 0), Part1 = LA, Parent = Tor})
Face = Head.face
Neck = Torso.Neck
it = Instance.new
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
cloaked = false
necko = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
xenabled = true
cenabled = true
venabled = true
zenabled = true
RootCF = euler(-1.57, 0, 3.14)
attack = false
attackdebounce = false
deb = false
equipped = true
hand = false
MMouse = nil
combo = 0
mana = 100
trispeed = 0.2
attackmode = "none"
local idle = 0
local Anim = "Idle"
local Effects = {}
local gun = false
local shoot = false
player = nil
trispeed = 0.5
pathtrans = 0.7
magix = false
pathcolor = BrickColor.new("White")
shoot = false
mon = Instance.new("Model", Character)
RSH = nil
RW = Instance.new("Weld")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
NoOutline = function(Part2)
  Part2.TopSurface = 10
end

ch = Character
RSH = ch.Torso["Right Shoulder"]
LSH = ch.Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "Right Shoulder"
RW.Part0 = ch.Torso
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = ch["Right Arm"]
RW.Parent = ch.Torso
LW.Name = "Left Shoulder"
LW.Part0 = ch.Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = ch["Left Arm"]
LW.Parent = ch.Torso
local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end

it = Instance.new
nooutline = function(Part2)
  Part2.TopSurface = 10
end

part = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end

prt = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end

paart = function(formfactor, parent, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = false
  fp.BrickColor = brickcolor
  fp.Name = name
  fp.Size = size
  fp.Position = Torso.Position
  NoOutline(fp)
  fp.Material = "SmoothPlastic"
  fp:BreakJoints()
  return fp
end

mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    mesh.MeshId = meshid
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end

weld = function(parent, part0, part1, c0, c1)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end

local Color1 = Torso.BrickColor
local bodvel = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.033333333333333
if game.Players.LocalPlayer.FPSCH.Value == true then
  frame = 0.016666666666667
else
  frame = 0.033333333333333
end
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

function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

SkullEffect = function(brickcolor, cframe, x1, y1, z1, delay)
  local prt = paart(3, workspace, 0, 0, brickcolor, "Effect", vt(3, 3, 3))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=4770583", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  CF = prt.CFrame
  coroutine.resume(coroutine.create(function(Part, Mesh, TehCF)
    for i = 0, 1, 0.2 do
      wait()
      Part2.CFrame = CF * cf(0, 0, -0.4)
    end
    for i = 0, 1, delay do
      wait()
      Mesh.Scale = Mesh.Scale
    end
    for i = 0, 1, 0.1 do
      wait()
      Part2.Transparency = i
    end
    Part2.Parent = nil
    return Part
  end
), prt, msh, CF)
  return prt
end

MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = paart(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      wait()
      Part.CFrame = Part.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
    return Part
  end
), prt, msh)
  return prt
end

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
MagicBlock2 = function(brickcolor, cframe, Parent, x1, y1, z1, x3, y3, z3, delay)
  local prt = paart(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = false
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  local wld = weld(prt, prt, Parent, cframe)
  game:GetService("Debris"):AddItem(prt, 5)
  coroutine.resume(coroutine.create(function(Part, Mesh, Weld)
    for i = 0, 1, delay do
      wait()
      Weld.C0 = euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * cframe
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh, wld)
end

MagicBlock3 = function(brickcolor, cframe, Parent, x1, y1, z1, x3, y3, z3, delay)
  local prt = paart(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = false
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  local wld = weld(prt, prt, Parent, euler(0, 0, 0) * cf(0, 0, 0))
  game:GetService("Debris"):AddItem(prt, 5)
  coroutine.resume(coroutine.create(function(Part, Mesh, Weld)
    for i = 0, 1, delay do
      wait()
      Weld.C0 = euler(i * 20, 0, 0)
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh, wld)
end

MagicCircle2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = paart(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      wait()
      Part.CFrame = Part.CFrame
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
      local prt2 = paart(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
      prt.Anchored = true
      prt.CFrame = cframe * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      local msh2 = mesh("SpecialMesh", prt2, "Sphere", "", vt(0, 0, 0), vt(0.5, 0.5, 0.5))
      game:GetService("Debris"):AddItem(prt2, 2)
      coroutine.resume(coroutine.create(function(Part, Mesh)
      for i = 0, 1, 0.1 do
        wait()
        Part2.CFrame = Part2.CFrame * cf(0, 0.5, 0)
      end
      Part2.Parent = nil
    end
), prt2, msh2)
    end
    for i = 0, 1, delay * 2 do
      wait()
      Part2.CFrame = Part2.CFrame
      Mesh.Scale = vt(x1 + x3 - (x1 + x3) * i, y1 + y3 - (y1 + y3) * i, z1 + z3 - (z1 + z3) * i)
    end
    Part2.Parent = nil
  end
), prt, msh)
end

Clone = function()
  so("http://roblox.com/asset/?id=2767090", Torso, 1, 1)
  for _,v in pairs(Torso.Parent:children()) do
    if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
      n = v:clone()
      n:BreakJoints()
      n.archivable = true
      n.Anchored = true
      n.CanCollide = false
      n.Name = "TRAILER"
      n.BrickColor = BrickColor.new("Really black")
      n.Parent = workspace
      n.CFrame = v.CFrame
      coroutine.resume(coroutine.create(function(ne)
    for i = 1, 80 do
      ne:BreakJoints()
      ne.Transparency = i / 80
      swait()
    end
    ne.Parent = nil
  end
), n)
    else
      if v.className == "Hat" then
        n = v.Handle:clone()
        n:BreakJoints()
        n.archivable = true
        n.Anchored = true
        n.CanCollide = false
        n.Name = "TRAILER"
        n.BrickColor = BrickColor.new("Really black")
        n.Parent = workspace
        n.CFrame = v.Handle.CFrame
        coroutine.resume(coroutine.create(function(ne)
    for i = 1, 80 do
      ne:BreakJoints()
      ne.Transparency = i / 80
      swait()
    end
    ne.Parent = nil
  end
), n)
      end
    end
  end
end

MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = paart(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
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

MagicRing = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, x3, y3, z3)
  local prt = paart(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * euler(x2, y2, z2)
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, 0.03 do
      wait()
      Part2.CFrame = Part2.CFrame
      Part2.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part2.Parent = nil
  end
), prt, msh)
end

BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = paart(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, CF, Numbb, randnumb)
    CF = Part2.CFrame
    Numbb = 0
    randnumb = math.random() / 10
    rand1 = math.random() / 10
    for i = 0, 1, rand1 do
      wait()
      CF = CF * cf(0, math.random() / 2, 0)
      Part2.CFrame = CF * euler(Numbb, 0, 0)
      Part2.Transparency = i
      Numbb = Numbb + randnumb
    end
    Part2.Parent = nil
  end
), prt, CF, Numbb, randnumb)
end

MagicWaveThing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = paart(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=1051557", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      wait()
      Part.CFrame = Part.CFrame * euler(0, 0.7, 0)
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = paart(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      wait()
      Part.CFrame = Part.CFrame * cf(0, y3 / 2, 0)
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

Cloak = function()
  Face.Parent = nil
  cloaked = true
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    for i = 0, 0.7, 0.2 do
      swait()
      v.Transparency = i
    end
    v.Transparency = 0.5
  end
))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(derp)
    for i = 0, 0.7, 0.2 do
      swait()
      derp.Transparency = i
    end
    derp.Transparency = 0.5
    derp.Mesh.VertexColor = vt(0, 0, 0)
  end
), hatp)
          -- DECOMPILER ERROR at PC38: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC38: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end

UnCloak = function()
  so("http://roblox.com/asset/?id=2767090", Torso, 1, 1.1)
  Face.Parent = Head
  cloaked = false
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      swait()
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
  end
))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(derp)
    for i = 0, 1, 0.1 do
      swait()
      derp.Transparency = derp.Transparency - 0.1
    end
    derp.Transparency = 0
    derp.Mesh.VertexColor = vt(1, 1, 1)
  end
), hatp)
          -- DECOMPILER ERROR at PC45: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC45: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end

Handle = Instance.new("Part", m)
Handle:BreakJoints()
Handle.TopSurface = "Smooth"
Handle.Transparency = 0
Handle.Material = "SmoothPlastic"
Handle.Name = "Handle"
Handle.BottomSurface = "Smooth"
Handle.CanCollide = false
Handle.BrickColor = BrickColor.new("Black")
Handle.Size = Vector3.new(0.337107092, 1.12369001, 0.337107033)
Handleweld = Instance.new("ManualWeld")
Handleweld.Part0 = Character["Left Arm"]
Handleweld.Part1 = Handle
Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Handleweld.C1 = CFrame.new(-0.000732421875, -0.0344696045, -0.945665836, -0.999993205, 0, 0, 0, 0, -1, 0, -0.999993086, 0)
Handleweld.Parent = Character["Left Arm"]
HandleMesh = Instance.new("CylinderMesh", Handle)
HandleMesh.Name = "Mesh"
HandleMesh.Offset = Vector3.new(0, 0, 0)
HandleMesh.Scale = Vector3.new(1, 1, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Black")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.842823029, -0.393207669, 0.99998641, 0, 1.77634477e-015, -1.32347999e-023, 1, 0, -1.77634477e-015, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("BlockMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.337107092, 0.224738032, 0.337107033)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(-4.00543213e-005, 0.674224854, -1.33514404e-005, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("SpecialMesh", Part)
PartMesh.MeshId = ""
PartMesh.MeshType = Enum.MeshType.Sphere
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(1, 1, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Black")
Part.Size = Vector3.new(0.561845124, 0.200000003, 0.449476033)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.730434418, 7.62939453e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("CylinderMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Black")
Part.Size = Vector3.new(0.561845124, 0.200000003, 0.449476033)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.730434418, 7.62939453e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("CylinderMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.955184937, -0.179762959, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("CylinderMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Black")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.842823029, -0.393225789, 0.99998641, 0, 1.77634477e-015, -1.32347999e-023, 1, 0, -1.77634477e-015, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("BlockMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Black")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0.597281575, -0.842823029, -0.00578403473, -0.258815438, 0, 0.965912819, 0, 1, 0, -0.965912819, 0, -0.258815438)
Partweld.Parent = Part
PartMesh = Instance.new("BlockMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0.5
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.200000003, 4.62046242, 0.449476063)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(3.24249268e-005, -3.32155609, -4.76837158e-007, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("BlockMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.230356485, 1, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Black")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0.597218513, -0.842823029, 0.00602054596, 0.258815646, 0, 0.9659127, 0, 1, 0, -0.9659127, 0, 0.258815646)
Partweld.Parent = Part
PartMesh = Instance.new("BlockMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.337107092, 1.12369001, 0.200000003)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, 0, -0.123583317, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("CylinderMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(1, 1, 0.561845064)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Black")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.842823029, 0.393286943, 0.99998641, 1.07852229e-016, 0, -1.14204248e-016, 1, -2.3803019e-013, 0, 2.38031816e-013, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("BlockMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.842823029, -0.230328798, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("CylinderMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.337107092, 0.200000003, 0.337107033)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.618034363, 9.53674316e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("CylinderMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Black")
Part.Size = Vector3.new(0.200000003, 4.60922527, 0.224738017)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -3.3159256, -1.14440918e-005, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("BlockMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 1, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.337107092, 0.200000003, 0.337107033)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, 0.618049622, 9.53674316e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("CylinderMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.337107092, 1.12369001, 0.200000003)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, 0, 0.117978811, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("CylinderMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(1, 1, 0.561845064)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Black")
Part.Size = Vector3.new(0.561845124, 0.200000003, 0.561845005)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.842823029, 9.53674316e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("CylinderMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0.53044498, -0.842823029, 0.0229825974, 0.258815438, -1.97460321e-017, -0.965912819, 3.30120669e-017, 1, -1.15873321e-017, 0.965912819, -2.88872116e-017, 0.258815438)
Partweld.Parent = Part
PartMesh = Instance.new("BlockMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Black")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0.529430389, -0.842823029, 0.0128250122, 0.258815438, 1.35525272e-020, -0.965912819, -3.50722156e-021, 1, 1.35524351e-020, 0.965912819, 0, 0.258815438)
Partweld.Parent = Part
PartMesh = Instance.new("BlockMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Black")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0.529132843, -0.842823029, -0.0117540359, -0.258815706, -3.25260652e-018, -0.965912759, 3.89845789e-017, 1, -1.38099317e-017, 0.965912759, -4.1236952e-017, -0.258815706)
Partweld.Parent = Part
PartMesh = Instance.new("BlockMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Black")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.842823029, -0.393235803, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("BlockMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(-0.525370121, -0.842823029, 0.0256881714, 0.258815676, -6.64073831e-019, 0.9659127, 1.05359266e-018, 1, 4.06573049e-019, -0.9659127, 9.14795583e-019, 0.258815676)
Partweld.Parent = Part
PartMesh = Instance.new("BlockMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.730434418, 0.174170732, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("CylinderMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(-0.59340477, -0.842823029, 0.00790405273, -0.258815557, 0, -0.9659127, 0, 1, 0, 0.9659127, 0, -0.258815557)
Partweld.Parent = Part
PartMesh = Instance.new("BlockMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.382054657)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0.00023651123, -0.842823029, -0.364931583, 0.99998641, -2.62516024e-017, -1.67287184e-026, 2.62512451e-017, 1, 3.6862117e-018, 1.67287184e-026, -3.68626216e-018, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("BlockMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0.598263144, -0.842823029, 0.00432395935, -0.258815438, 0, 0.965912819, 0, 1, 0, -0.965912819, 0, -0.258815438)
Partweld.Parent = Part
PartMesh = Instance.new("BlockMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.449476063)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.842823029, 0.398794174, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("BlockMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.955184937, 0.174145699, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("CylinderMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0.5
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.200000003, 1.01132107, 0.449476063)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(-8.39233398e-005, -6.13697433, 0.00012421608, -0.99998641, 0, 5.96042398e-008, 0, 1, 0, -5.96042398e-008, 0, -0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("SpecialMesh", Part)
PartMesh.MeshId = ""
PartMesh.MeshType = Enum.MeshType.Wedge
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.221366972, 1, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Black")
Part.Size = Vector3.new(0.561845124, 0.200000003, 0.449476033)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.955184937, -2.38418579e-007, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("CylinderMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.842823029, 0.230348349, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("CylinderMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
Part = Instance.new("Part", m)
Part:BreakJoints()
Part.TopSurface = "Smooth"
Part.Material = "SmoothPlastic"
Part.Transparency = 0
Part.Name = "Part"
Part.BottomSurface = "Smooth"
Part.CanCollide = false
Part.BrickColor = BrickColor.new("Magenta")
Part.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle
Partweld.Part1 = Part
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.730434418, -0.179762959, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part
PartMesh = Instance.new("CylinderMesh", Part)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
local hitbox = Instance.new("Part", m)
hitbox:BreakJoints()
hitbox.TopSurface = "Smooth"
hitbox.Material = "SmoothPlastic"
hitbox.Transparency = 1
hitbox.Name = "hitbox"
hitbox.BottomSurface = "Smooth"
hitbox.CanCollide = false
hitbox.BrickColor = BrickColor.new("Black")
hitbox.Size = Vector3.new(0.200000003, 5.60922527, 0.624738038)
local hitboxweld = Instance.new("ManualWeld")
hitboxweld.Part0 = Handle
hitboxweld.Part1 = hitbox
hitboxweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
hitboxweld.C1 = CFrame.new(0, -3.8159256, -1.12056732e-005, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
hitboxweld.Parent = hitbox
local hitboxMesh = Instance.new("BlockMesh", hitbox)
hitboxMesh.Name = "Mesh"
hitboxMesh.Offset = Vector3.new(0, 0, 0)
hitboxMesh.Scale = Vector3.new(0.561845124, 1, 1)
local Wedge = Instance.new("WedgePart", m)
Wedge:BreakJoints()
Wedge.TopSurface = "Smooth"
Wedge.Material = "SmoothPlastic"
Wedge.Transparency = 0
Wedge.Name = "Wedge"
Wedge.BottomSurface = "Smooth"
Wedge.CanCollide = false
Wedge.BrickColor = BrickColor.new("Black")
Wedge.Size = Vector3.new(0.200000003, 0.561845124, 0.224738076)
local Wedgeweld = Instance.new("ManualWeld")
Wedgeweld.Part0 = Handle
Wedgeweld.Part1 = Wedge
Wedgeweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Wedgeweld.C1 = CFrame.new(7.62939453e-006, -5.9009819, -4.0769577e-005, -0.999992788, 1.60944605e-010, -8.94063589e-007, 1.60504526e-010, 0.999993563, -4.18958729e-010, 7.897562e-007, -4.18840851e-010, -0.999986649)
Wedgeweld.Parent = Wedge
local WedgeMesh = Instance.new("SpecialMesh", Wedge)
WedgeMesh.MeshId = ""
WedgeMesh.MeshType = Enum.MeshType.Wedge
WedgeMesh.Name = "Mesh"
WedgeMesh.Offset = Vector3.new(0, 0, 0)
WedgeMesh.Scale = Vector3.new(0.561845124, 1, 1)
Handle2 = Instance.new("Part", m)
Handle2:BreakJoints()
Handle2.TopSurface = "Smooth"
Handle2.Transparency = 0
Handle2.Material = "SmoothPlastic"
Handle2.Name = "Handle2"
Handle2.BottomSurface = "Smooth"
Handle2.CanCollide = false
Handle2.BrickColor = BrickColor.new("Black")
Handle2.Size = Vector3.new(0.337107092, 1.12369001, 0.337107033)
Handle2weld = Instance.new("ManualWeld")
Handle2weld.Part0 = Character["Right Arm"]
Handle2weld.Part1 = Handle2
Handle2weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Handle2weld.C1 = CFrame.new(-0.000732421875, -0.0344696045, -0.945665836, -0.999993205, 0, 0, 0, 0, -1, 0, -0.999993086, 0)
Handle2weld.Parent = Character["Right Arm"]
Handle2Mesh = Instance.new("CylinderMesh", Handle2)
Handle2Mesh.Name = "Mesh"
Handle2Mesh.Offset = Vector3.new(0, 0, 0)
Handle2Mesh.Scale = Vector3.new(1, 1, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Black")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.842823029, -0.393207669, 0.99998641, 0, 1.77634477e-015, -1.32347999e-023, 1, 0, -1.77634477e-015, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("BlockMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Magenta")
Part2.Size = Vector3.new(0.337107092, 0.224738032, 0.337107033)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(-4.00543213e-005, 0.674224854, -1.33514404e-005, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("SpecialMesh", Part2)
PartMesh.MeshId = ""
PartMesh.MeshType = Enum.MeshType.Sphere
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(1, 1, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Black")
Part2.Size = Vector3.new(0.561845124, 0.200000003, 0.449476033)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.730434418, 7.62939453e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("CylinderMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Black")
Part2.Size = Vector3.new(0.561845124, 0.200000003, 0.449476033)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.730434418, 7.62939453e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("CylinderMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Magenta")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.955184937, -0.179762959, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("CylinderMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Black")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.842823029, -0.393225789, 0.99998641, 0, 1.77634477e-015, -1.32347999e-023, 1, 0, -1.77634477e-015, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("BlockMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Black")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0.597281575, -0.842823029, -0.00578403473, -0.258815438, 0, 0.965912819, 0, 1, 0, -0.965912819, 0, -0.258815438)
Partweld.Parent = Part2
PartMesh = Instance.new("BlockMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0.5
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Magenta")
Part2.Size = Vector3.new(0.200000003, 4.62046242, 0.449476063)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(3.24249268e-005, -3.32155609, -4.76837158e-007, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("BlockMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.230356485, 1, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Black")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0.597218513, -0.842823029, 0.00602054596, 0.258815646, 0, 0.9659127, 0, 1, 0, -0.9659127, 0, 0.258815646)
Partweld.Parent = Part2
PartMesh = Instance.new("BlockMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Magenta")
Part2.Size = Vector3.new(0.337107092, 1.12369001, 0.200000003)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, 0, -0.123583317, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("CylinderMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(1, 1, 0.561845064)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Black")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.842823029, 0.393286943, 0.99998641, 1.07852229e-016, 0, -1.14204248e-016, 1, -2.3803019e-013, 0, 2.38031816e-013, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("BlockMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Magenta")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.842823029, -0.230328798, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("CylinderMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Magenta")
Part2.Size = Vector3.new(0.337107092, 0.200000003, 0.337107033)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.618034363, 9.53674316e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("CylinderMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Black")
Part2.Size = Vector3.new(0.200000003, 4.60922527, 0.224738017)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -3.3159256, -1.14440918e-005, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("BlockMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 1, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Magenta")
Part2.Size = Vector3.new(0.337107092, 0.200000003, 0.337107033)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, 0.618049622, 9.53674316e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("CylinderMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Magenta")
Part2.Size = Vector3.new(0.337107092, 1.12369001, 0.200000003)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, 0, 0.117978811, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("CylinderMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(1, 1, 0.561845064)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Black")
Part2.Size = Vector3.new(0.561845124, 0.200000003, 0.561845005)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.842823029, 9.53674316e-006, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("CylinderMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Magenta")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0.53044498, -0.842823029, 0.0229825974, 0.258815438, -1.97460321e-017, -0.965912819, 3.30120669e-017, 1, -1.15873321e-017, 0.965912819, -2.88872116e-017, 0.258815438)
Partweld.Parent = Part2
PartMesh = Instance.new("BlockMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Black")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0.529430389, -0.842823029, 0.0128250122, 0.258815438, 1.35525272e-020, -0.965912819, -3.50722156e-021, 1, 1.35524351e-020, 0.965912819, 0, 0.258815438)
Partweld.Parent = Part2
PartMesh = Instance.new("BlockMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Black")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0.529132843, -0.842823029, -0.0117540359, -0.258815706, -3.25260652e-018, -0.965912759, 3.89845789e-017, 1, -1.38099317e-017, 0.965912759, -4.1236952e-017, -0.258815706)
Partweld.Parent = Part2
PartMesh = Instance.new("BlockMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Black")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.337107062)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.842823029, -0.393235803, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("BlockMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.561845064, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Magenta")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(-0.525370121, -0.842823029, 0.0256881714, 0.258815676, -6.64073831e-019, 0.9659127, 1.05359266e-018, 1, 4.06573049e-019, -0.9659127, 9.14795583e-019, 0.258815676)
Partweld.Parent = Part2
PartMesh = Instance.new("BlockMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Magenta")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.730434418, 0.174170732, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("CylinderMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Magenta")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(-0.59340477, -0.842823029, 0.00790405273, -0.258815557, 0, -0.9659127, 0, 1, 0, 0.9659127, 0, -0.258815557)
Partweld.Parent = Part2
PartMesh = Instance.new("BlockMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Magenta")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.382054657)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0.00023651123, -0.842823029, -0.364931583, 0.99998641, -2.62516024e-017, -1.67287184e-026, 2.62512451e-017, 1, 3.6862117e-018, 1.67287184e-026, -3.68626216e-018, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("BlockMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Magenta")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.348343939)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0.598263144, -0.842823029, 0.00432395935, -0.258815438, 0, 0.965912819, 0, 1, 0, -0.965912819, 0, -0.258815438)
Partweld.Parent = Part2
PartMesh = Instance.new("BlockMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 0.922500014)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Magenta")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.449476063)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.842823029, 0.398794174, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("BlockMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.230356485, 0.618029416, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Magenta")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.955184937, 0.174145699, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("CylinderMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
Part3 = Instance.new("Part", m)
Part3:BreakJoints()
Part3.TopSurface = "Smooth"
Part3.Material = "SmoothPlastic"
Part3.Transparency = 0.5
Part3.Name = "Part"
Part3.BottomSurface = "Smooth"
Part3.CanCollide = false
Part3.BrickColor = BrickColor.new("Magenta")
Part3.Size = Vector3.new(0.200000003, 1.01132107, 0.449476063)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part3
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(-8.39233398e-005, -6.13697433, 0.00012421608, -0.99998641, 0, 5.96042398e-008, 0, 1, 0, -5.96042398e-008, 0, -0.99998641)
Partweld.Parent = Part3
PartMesh = Instance.new("SpecialMesh", Part3)
PartMesh.MeshId = ""
PartMesh.MeshType = Enum.MeshType.Wedge
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.221366972, 1, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Black")
Part2.Size = Vector3.new(0.561845124, 0.200000003, 0.449476033)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.955184937, -2.38418579e-007, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("CylinderMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(1, 0.561845064, 1)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Magenta")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.842823029, 0.230348349, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("CylinderMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
Part2 = Instance.new("Part", m)
Part2:BreakJoints()
Part2.TopSurface = "Smooth"
Part2.Material = "SmoothPlastic"
Part2.Transparency = 0
Part2.Name = "Part"
Part2.BottomSurface = "Smooth"
Part2.CanCollide = false
Part2.BrickColor = BrickColor.new("Magenta")
Part2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
Partweld = Instance.new("ManualWeld")
Partweld.Part0 = Handle2
Partweld.Part1 = Part2
Partweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Partweld.C1 = CFrame.new(0, -0.730434418, -0.179762959, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
Partweld.Parent = Part2
PartMesh = Instance.new("CylinderMesh", Part2)
PartMesh.Name = "Mesh"
PartMesh.Offset = Vector3.new(0, 0, 0)
PartMesh.Scale = Vector3.new(0.561845124, 0.618029416, 0.561845064)
local hitbox2 = Instance.new("Part", m)
hitbox2:BreakJoints()
hitbox2.TopSurface = "Smooth"
hitbox2.Material = "SmoothPlastic"
hitbox2.Transparency = 1
hitbox2.Name = "hitbox2"
hitbox2.BottomSurface = "Smooth"
hitbox2.CanCollide = false
hitbox2.BrickColor = BrickColor.new("Black")
hitbox2.Size = Vector3.new(0.200000003, 5.60922527, 0.624738038)
local hitbox2weld = Instance.new("ManualWeld")
hitbox2weld.Part0 = Handle2
hitbox2weld.Part1 = hitbox2
hitbox2weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
hitbox2weld.C1 = CFrame.new(0, -3.8159256, -1.12056732e-005, 0.99998641, 0, 0, 0, 1, 0, 0, 0, 0.99998641)
hitbox2weld.Parent = hitbox2
local hitbox2Mesh = Instance.new("BlockMesh", hitbox2)
hitbox2Mesh.Name = "Mesh"
hitbox2Mesh.Offset = Vector3.new(0, 0, 0)
hitbox2Mesh.Scale = Vector3.new(0.561845124, 1, 1)
local wedge2 = Instance.new("Part", m)
wedge2:BreakJoints()
wedge2.TopSurface = "Smooth"
wedge2.Material = "SmoothPlastic"
wedge2.Transparency = 0
wedge2.Name = "wedge2"
wedge2.BottomSurface = "Smooth"
wedge2.CanCollide = false
wedge2.BrickColor = BrickColor.new("Black")
wedge2.Size = Vector3.new(0.200000003, 0.561845124, 0.224738076)
local wedge2weld = Instance.new("ManualWeld")
wedge2weld.Part0 = Handle2
wedge2weld.Part1 = wedge2
wedge2weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
wedge2weld.C1 = CFrame.new(7.62939453e-006, -5.9009819, -4.0769577e-005, -0.999992788, 1.60944605e-010, -8.94063589e-007, 1.60504526e-010, 0.999993563, -4.18958729e-010, 7.897562e-007, -4.18840851e-010, -0.999986649)
wedge2weld.Parent = wedge2
local wedge2Mesh = Instance.new("SpecialMesh", wedge2)
wedge2Mesh.MeshId = ""
wedge2Mesh.MeshType = Enum.MeshType.Wedge
wedge2Mesh.Name = "Mesh"
wedge2Mesh.Offset = Vector3.new(0, 0, 0)
wedge2Mesh.Scale = Vector3.new(0.561845124, 1, 1)
Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock)
  if hit.Parent == nil then
    return 
  end
  h = hit.Parent:FindFirstChild("Humanoid")
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
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
    Damage = math.random(minim, maxim)
    blocked = false
    block = hit.Parent:findFirstChild("Block")
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
      if CRIT == false then
        HitHealth = h.Health
        h.Health = h.Health - Damage
        if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 and h.Parent.Name ~= "Lost Soul" then
          print("gained spree")
          Player:FindFirstChild("leaderstats").Spree.Value = Player.leaderstats.Spree.Value + 1
        end
        if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 and h.Parent.Name ~= "Lost Soul" then
          print("gained kill")
          script.Parent.Kills.Value = script.Parent.Kills.Value + 1
        end
        showDamage(hit.Parent, Damage, 0.5, BrickColor.new("Bright violet"))
      else
        h.Health = h.Health - Damage * 2
        if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 and h.Parent.Name ~= "Lost Soul" then
          print("gained kill")
          script.Parent.Kills.Value = script.Parent.Kills.Value + 1
        end
        showDamage(hit.Parent, Damage * 2, 0.5, BrickColor.new("Magenta"))
        coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.5 do
      swait()
      MagicCircle(BrickColor.new("Magenta"), hit.Parent.Torso.CFrame * angles(math.random(-50, 50), 0, math.random(-50, 50)), 1, 10, 1, 0, 2, 0, 0.06)
    end
  end
))
      end
    end
    if Type == "Knockdown" then
      hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
    swait(1)
    HHumanoid.PlatformStand = false
  end
), hum)
      local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Instance.new("BodyVelocity")
      bodvol.velocity = angle * knockback
      bodvol.P = 5000
      bodvol.maxForce = Vector3.new(8000, 8000, 8000)
      bodvol.Parent = hit
      rl = Instance.new("BodyAngularVelocity")
      rl.P = 3000
      rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
      rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
      rl.Parent = hit
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    else
      do
        if Type == "Normal" then
          vp = Instance.new("BodyVelocity")
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
          if Type == "Up" then
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.velocity = vt(0, 60, 0)
            bodyVelocity.P = 5000
            bodyVelocity.maxForce = Vector3.new(8000, 8000, 8000)
            bodyVelocity.Parent = hit
            game:GetService("Debris"):AddItem(bodyVelocity, 1)
            rl = Instance.new("BodyAngularVelocity")
            rl.P = 3000
            rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
            rl.angularvelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
            rl.Parent = hit
            game:GetService("Debris"):AddItem(rl, 0.5)
          else
            do
              if Type == "Snare" then
                bp = Instance.new("BodyPosition")
                bp.P = 2000
                bp.D = 100
                bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                bp.position = hit.Parent.Torso.Position
                bp.Parent = hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp, 1)
              else
                if Type == "Target" and Targetting == false then
                  ZTarget = hit.Parent.Torso
                  coroutine.resume(coroutine.create(function(Part2)
    so("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
    swait(5)
    so("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
  end
), ZTarget)
                  TargHum = ZTarget.Parent:findFirstChild("Humanoid")
                  targetgui = Instance.new("BillboardGui")
                  targetgui.Parent = ZTarget
                  targetgui.Size = UDim2.new(10, 100, 10, 100)
                  targ = Instance.new("ImageLabel")
                  targ.Parent = targetgui
                  targ.BackgroundTransparency = 1
                  targ.Image = "rbxassetid://4834067"
                  targ.Size = UDim2.new(1, 0, 1, 0)
                  cam.CameraType = "Scriptable"
                  cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                  dir = Vector3.new(cam.CoordinateFrame.lookVector.x, 0, cam.CoordinateFrame.lookVector.z)
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
              debounce = Instance.new("BoolValue")
              debounce.Name = "DebounceHit"
              debounce.Parent = hit.Parent
              debounce.Value = true
              game:GetService("Debris"):AddItem(debounce, Delay)
              c = Instance.new("ObjectValue")
              c.Name = "creator"
              c.Value = Player
              c.Parent = h
              game:GetService("Debris"):AddItem(c, 0.5)
              CRIT = false
              hitDeb = true
              AttackPos = 6
            end
          end
        end
      end
    end
  end
end

showDamage = function(Char, Dealt, du, Color)
  m = Instance.new("Model")
  m.Name = tostring(Dealt)
  h = Instance.new("Humanoid")
  h.Health = 0
  h.MaxHealth = 0
  h.Parent = m
  c = Instance.new("Part")
  c.Transparency = 0
  c.BrickColor = Color
  c.Name = "Head"
  c.TopSurface = 0
  c.BottomSurface = 0
  c.Size = Vector3.new(1, 0.4, 1)
  ms = Instance.new("CylinderMesh")
  ms.Scale = Vector3.new(0.8, 0.8, 0.8)
  if CRIT == true then
    ms.Scale = Vector3.new(1, 1.25, 1)
  end
  ms.Parent = c
  c.Reflectance = 0
  Instance.new("BodyGyro").Parent = c
  c.Parent = m
  if Char:findFirstChild("Head") ~= nil then
    c.CFrame = CFrame.new(Char.Head.CFrame.p + Vector3.new(0, 1.5, 0))
  else
    if Char.Parent:findFirstChild("Head") ~= nil then
      c.CFrame = CFrame.new(Char.Parent.Head.CFrame.p + Vector3.new(0, 1.5, 0))
    end
  end
  f = Instance.new("BodyPosition")
  f.P = 2000
  f.D = 100
  f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  f.position = c.Position + Vector3.new(0, 3, 0)
  f.Parent = c
  game:GetService("Debris"):AddItem(m, 0.5 + du)
  c.CanCollide = false
  m.Parent = workspace
  c.CanCollide = false
end

PlaySound = function(id, pitch, parent, volume)
  if volume == nil then
    volume = tonumber(1)
  end
  epicsound = Instance.new("Sound")
  epicsound.Name = "Epicosound"
  epicsound.SoundId = "rbxassetid://" .. id
  epicsound.Volume = volume
  epicsound.Pitch = pitch
  epicsound.Looped = false
  epicsound.Parent = parent
  sbu = epicsound:Clone()
  sbu.Parent = Storage
  wait()
  epicsound:Play()
  game:service("Debris"):AddItem(epicsound, 8)
end

Slashes = {200633108, 200633148, 200633196, 200633281}
Slash = function(Part2)
  local shot = math.random(1, #Slashes)
  PlaySound(Slashes[shot], 1, Part2)
end

local Shockwave = function()
  local Wave = Instance.new("Part", m)
  Wave.Name = "Shockwave"
  Wave.BrickColor = BrickColor.new("Black")
  Wave.Size = Vector3.new(1, 1, 1)
  Wave.Shape = "Ball"
  Wave.CanCollide = false
  Wave.Anchored = true
  Wave.TopSurface = 0
  Wave.BottomSurface = 0
  Wave.Touched:connect(function(hit)
    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") and hit.Parent.Name ~= Character.Name and hit.Parent.Parent ~= mon then
      hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 5
      hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * -120
    end
  end
)
  Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
  Delay(0, function()
    for i = 1, 38 do
      Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
      Wave.CFrame = Torso.CFrame
      local t = i / 38
      Wave.Transparency = t
      wait()
    end
    Wave:Destroy()
  end
)
  Delay(0, function()
    while 1 do
      while wait() and Wave ~= nil do
        Wave.CFrame = Wave.CFrame
      end
      break
    end
  end
)
end

hits = {144650218, 135436482, 183345423, 200561185}
attackone = function()
  attack = true
  con1 = hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, math.random(20, 40), "Normal", RootPart, 0.2, 1)
  end
)
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0.5), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2, 0, 1), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, -0.3) * euler(0.4, 0, 0.2) * euler(0, -0.2, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.4)
  end
  so("http://roblox.com/asset/?id=234365549", hitbox2, 1, 1)
  hitconasdf = hitbox2.Touched:connect(function(hit)
    local hum12 = hit.Parent:FindFirstChild("Humanoid")
    if hum12 and not hum12:IsDescendantOf(Character) then
      so("http://roblox.com/asset/?id=220025675", hitbox2, 1, 3)
      hitconasdf:disconnect()
    end
  end
)
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.2, 0.5, -0.3) * euler(0.2, 0, -0.2) * euler(0, -0.5, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.5, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.5, 0), 0.4)
  end
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.5) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.6, 0, -1) * euler(0, -0.7, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, -0.5, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, -0.5, 0), 0.4)
  end
  con1:disconnect()
  hitconasdf:disconnect()
  attack = false
end

attackthree = function()
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(-100)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(40)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
  end
  con1 = hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, math.random(20, 40), "Normal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=243711427", Handle2, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * angles(math.rad(20), math.rad(0), math.rad(-90)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-70), math.rad(0), math.rad(30)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(-150), math.rad(-100)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.6, 0) * angles(math.rad(0), math.rad(-50), math.rad(-30)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.4)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.4)
  end
  attack = false
  con1:disconnect()
end

slam = function()
  attack = true
  Clone()
  MagicBlock(BrickColor.new("Black"), RootPart.CFrame, 5, 5, 5, 2, 2, 2, 0.05)
  for i = 0, 1, 0.05 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.3)
    Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.3, 0, 0.2), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.3, 0, -0.2), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
  end
  MagicBlock(BrickColor.new("Black"), RootPart.CFrame, 5, 5, 5, 2, 2, 2, 0.05)
  RootPart.CFrame = RootPart.CFrame * cf(0, 100, 0)
  hit = nil
  for i = 1, 20 do
    if hit == nil then
      swait()
    end
    hit = rayCast(RootPart.Position, RootPart.CFrame.lookVector, 6, Character)
  end
  local hit = nil
  while hit == nil do
    swait()
    hit = rayCast(LeftLeg.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 10, Character)
  end
  hit = rayCast(LeftLeg.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 10, Character)
  do
    if hit ~= nil then
      local ref = part(1, workspace, "SmoothPlastic", 0, 0, BrickColor.new("Black"), "Effect", vt())
      ref.Anchored = true
      ref.CFrame = cf(RootPart.Position)
      game:GetService("Debris"):AddItem(ref, 3)
      for i = 1, 10 do
        Col = hit.BrickColor
        local groundpart = part(3, workspace, hit.Material, 0, 0, Col, "Ground", vt(math.random(50, 200) / 100, math.random(50, 200) / 100, math.random(50, 200) / 100))
        groundpart.Anchored = true
        groundpart.CanCollide = true
        groundpart.CFrame = cf(RootPart.Position) * cf((math.random(-500, 500) / 100), 0, (math.random(-500, 500) / 100)) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        game:GetService("Debris"):AddItem(groundpart, 5)
      end
      so("http://roblox.com/asset/?id=157878578", ref, 0.6, 1.2)
      MagicWaveThing(hit.BrickColor, cf(RootPart.Position), 1, 1, 1, 0.7, 0.7, 0.7, 0.05)
      MagniDamage(ref, 9, 9, 13, math.random(10, 20), "Knockdown")
    end
    attack = false
  end
end

StravEffect = function(brickcolor, cframe, x, y, z, x1, y1, z1, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * cf(x, y, z)
  msh = mesh("SpecialMesh", prt, "FileMesh", "rbxassetid://168892363", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  coroutine.resume(coroutine.create(function(Part, Mesh, ex, why, zee)
    local num = math.random()
    local num2 = math.random(-3, 2) + math.random()
    local numm = 0
    for i = 0, 1, delay * 2 do
      swait()
      Part.CFrame = cframe * euler(0, numm * num * 10, 0) * cf(ex, why, zee) * cf(-i * 10, num2, 0)
      Part.Transparency = i
      numm = numm + 0.01
    end
    Part.Parent = nil
    Mesh.Parent = nil
  end
), prt, msh, x, y, z)
end

wave = function()
  attack = true
  ef = part(1, workspace, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "Ef", vt())
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * angles(math.rad(20), math.rad(0), math.rad(-90)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-70), math.rad(150), math.rad(100)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(-150), math.rad(-100)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.6, 0) * angles(math.rad(0), math.rad(-50), math.rad(-30)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.4)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.4)
  end
  coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.2 do
      swait()
      MagicCircle(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, math.random(-20, -10)) * angles(math.random(-50, 50), 0, math.random(-50, 50)), 1, 10, 1, 0, 2, 0, 0.06)
    end
  end
))
  ef.CFrame = RootPart.CFrame * cf(0, 0, -15)
  MagniDamage(ef, 5, 10, 10, 0, "Normal")
  so("http://roblox.com/asset/?id=243711427", Handle2, 1, 0.7)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50), math.rad(-10), math.rad(100)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(-100)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(40)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * angles(math.rad(20), math.rad(0), math.rad(90)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-70), math.rad(-150), math.rad(-100)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(150), math.rad(100)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.6, 0) * angles(math.rad(0), math.rad(-50), math.rad(-30)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.4)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.4)
  end
  coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.2 do
      swait()
      MagicCircle(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, math.random(-20, -10)) * angles(math.random(-50, 50), 0, math.random(-50, 50)), 1, 10, 1, 0, 2, 0, 0.06)
    end
  end
))
  ef.CFrame = RootPart.CFrame * cf(0, 0, -15)
  MagniDamage(ef, 5, 10, 10, 0, "Normal")
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50), math.rad(10), math.rad(-100)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(100)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(40)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
  end
  ef.Parent = nil
  attack = false
end

anger = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-70), math.rad(150), math.rad(100)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(-150), math.rad(-100)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.6, 0) * angles(math.rad(0), math.rad(-50), math.rad(-30)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.4)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.4)
  end
  so("http://roblox.com/asset/?id=243711427", Handle2, 1, 0.7)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50), math.rad(-10), math.rad(100)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(-100)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(40)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
  end
  coroutine.resume(coroutine.create(function()
    swarm()
  end
))
  attack = false
end

swarm = function()
  CRIT = true
  Cloak()
  randnum = math.random(2, 3) + math.random()
  tehr = math.random(200, 300) / 10000
  coroutine.resume(coroutine.create(function()
    while CRIT do
      wait(0.1)
      StravEffect(BrickColor.new("Really black"), RootPart.CFrame * euler(0, math.random(-50, 50), 0), -math.random(1, 10), 0, 0, randnum, randnum, randnum, tehr)
    end
  end
))
  for i = 0, 300 do
    swait()
  end
  UnCloak()
  CRIT = false
end

shoottrail2 = function(pos1)
  coroutine.resume(coroutine.create(function()
    spread2 = 0
    range2 = 500
    rangepower = 10
    local spreadvector = Vector3.new(math.random(-spread2, spread2), math.random(-spread2, spread2), math.random(-spread2, spread2)) / 100 * pos1.Position.magnitude / 100
    local dir = Head.CFrame.lookVector + spreadvector
    local hit2, pos = rayCast(pos1.Position, dir, 10, Character)
    local rangepos = range2
    local drawtrail = function(From, To)
      local effectsmsh = Instance.new("CylinderMesh")
      effectsmsh.Scale = Vector3.new(1, 1, 1)
      effectsmsh.Name = "Mesh"
      local effectsg = Instance.new("Part")
      effectsg.formFactor = 3
      effectsg.CanCollide = false
      effectsg.Name = "Eff"
      effectsg.Locked = true
      effectsg.Anchored = true
      effectsg.Size = Vector3.new(0.2, 0.2, 0.2)
      effectsg.Parent = m
      effectsmsh.Parent = effectsg
      effectsg.BrickColor = BrickColor.new("Really black")
      effectsg.Reflectance = 0.25
      local LP = From
      local point1 = To
      local mg = (P - point1).magnitude
      effectsmsh.Scale = Vector3.new(1, mg * 5, 1)
      effectsg.CFrame = CFrame.new((LP + point1) / 2, point1) * CFrame.Angles(math.rad(90), 0, 0)
      coroutine.resume(coroutine.create(function()
        for i = 0, 1, 0.5 do
          swait()
          effectsg.Transparency = 1 * i
          effectsmsh.Scale = Vector3.new(1 - 1 * i, mg * 5, 1 - 1 * i)
        end
        effectsg.Parent = nil
      end
))
    end

    local newpos = pos1.Position
    local inc = rangepower
    repeat
      swait()
      rangepos = rangepos - 10
      hit2 = rayCast(newpos, dir, inc, Character)
      drawtrail(newpos, pos)
      newpos = newpos + dir * inc
      if alt == 1 then
        inc = 10
        if inc >= 20 then
          inc = inc - 10
        end
      end
      if hit2 ~= nil then
        rangepos = 0
      end
    until rangepos <= 0
    if hit2 ~= nil then
      local effectsmsh = Instance.new("SpecialMesh")
      do
        effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
        effectsmsh.Scale = Vector3.new(3, 3, 3)
        local effectsg = Instance.new("Part")
        effectsg.formFactor = 3
        effectsg.CanCollide = false
        effectsg.Name = "Arrow"
        effectsg.Locked = true
        effectsg.Transparency = 1
        effectsg.Size = Vector3.new(0.2, 0.2, 0.2)
        effectsg.Parent = m
        effectsg.BrickColor = BrickColor.new("Really black")
        effectsmsh.Parent = effectsg
        effectsg.CFrame = CFrame.new(newpos, pos) + CFrame.new(newpos, pos).lookVector * 2.5 * 2
        local efwel = Instance.new("Weld")
        efwel.Parent = effectsg
        efwel.Part0 = effectsg
        efwel.Part1 = hit2
        efwel.Parent = nil
        effectsg.Anchored = true
        local HitPos = effectsg.Position + CFrame.new(newpos, pos).lookVector * 0.75
        local CJ = CFrame.new(HitPos)
        local C0 = effectsg.CFrame:inverse() * CJ
        local C1 = hit2.CFrame:inverse() * CJ
        Damg = 1
        coroutine.resume(coroutine.create(function()
      wait(3)
      effectsg.Parent = nil
    end
))
        if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
          hum = hit2.Parent.Humanoid
          attackdebounce = false
          Damagefunc(hit2, 10, 10, 0, "Normal", RootPart, 0.2, 1)
        else
          if hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
            do
              hum = hit2.Parent.Parent.Humanoid
              attackdebounce = false
              Damagefunc(hit2, 10, 10, 0, "Normal", RootPart, 0.2, 1)
              -- DECOMPILER ERROR at PC220: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC220: LeaveBlock: unexpected jumping out IF_STMT

              -- DECOMPILER ERROR at PC220: LeaveBlock: unexpected jumping out IF_ELSE_STMT

              -- DECOMPILER ERROR at PC220: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
    end
  end
))
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
          Damagefunc(head, mindam, maxdam, knock, Type, Part, 0.2, 1, nil, 1)
        end
      end
    end
  end
end

dash = function()
  attack = true
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * angles(math.rad(20), math.rad(0), math.rad(-90)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-70), math.rad(0), math.rad(30)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(-150), math.rad(-100)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.6, 0) * angles(math.rad(0), math.rad(-50), math.rad(-30)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.4)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.4)
  end
  Clone()
  so("http://roblox.com/asset/?id=243711427", Handle2, 1, 0.7)
  coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.2 do
      swait()
      MagicCircle(BrickColor.new("Magenta"), RootPart.CFrame, 5, 5, 1, 2, 2, 0, 0.07)
      MagniDamage(Torso, 5, 1, 10, 0, "Normal")
    end
  end
))
  Torso.Velocity = RootPart.CFrame.lookVector * 200
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(-100)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(40)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

attackfour = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * angles(math.rad(20), math.rad(0), math.rad(-90)), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(70)), 0.4)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-70), math.rad(0), math.rad(30)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(-150), math.rad(-100)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.6, 0) * angles(math.rad(0), math.rad(-50), math.rad(-30)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.4)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.4)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.4)
  end
  con1 = hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, math.random(20, 40), "Normal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=243711427", Handle2, 1, 0.7)
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(-100)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(40)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Handle2weld.C0 = clerp(Handle2weld.C0, cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
  con1:disconnect()
end

attacktwo = function()
  attack = true
  con1 = hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, math.random(20, 40), "Normal", RootPart, 0.2, 1)
  end
)
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.7) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.7), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, 0, -1) * euler(0, 1.2, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.8, 0, -0.4), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.8, -1, 0.2) * euler(0, 1.57, 0) * euler(0, -0.7, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.8, -1, 0.2) * euler(0, -1.57, 0) * euler(0, -0.7, 0), 0.4)
  end
  so("http://roblox.com/asset/?id=234365573", hitbox2, 1, 1)
  hitconasdf = hitbox2.Touched:connect(function(hit)
    local hum12 = hit.Parent:FindFirstChild("Humanoid")
    if hum12 and not hum12:IsDescendantOf(Character) then
      so("http://roblox.com/asset/?id=220025675", hitbox2, 1, 3)
      hitconasdf:disconnect()
    end
  end
)
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.3, 0, 1) * euler(0, 1.6, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.4)
  end
  for i = 0, 1, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0.1, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1, 0, 0.8) * euler(0, 1.3, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(0, 0.5, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.5, 0), 0.4)
  end
  attack = false
  con1:disconnect()
  hitconasdf:disconnect()
end

boom = function()
  attack = true
  for i = 0, 3, 0.2 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.2), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(math.rad(0), math.rad(0), math.rad(0)), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 1, -0.5) * euler(math.rad(145), math.rad(180), math.rad(45)), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(math.rad(0), math.rad(0), math.rad(0)), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1, 1, -0.5) * euler(math.rad(145), math.rad(0), math.rad(45)), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(math.rad(0), math.rad(0), math.rad(0)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-15), math.rad(0), math.rad(0)), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-15), math.rad(0), math.rad(0)), 0.4)
  end
  so("http://roblox.com/asset/?id=231917813", hitbox2, 1, 1)
  for i = 0, 1, 0.07 do
    swait()
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.12, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0.1, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 1, -0.5) * euler(math.rad(90), math.rad(180), math.rad(45)), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1, 1, -0.5) * euler(math.rad(90), math.rad(0), math.rad(45)), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(-1.2, 1.57, 0), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1.1, 0.4, -0.8) * euler(-0.05, -1.57, 0), 0.4)
  end
  MagicCircle(BrickColor.new("Magenta"), RootPart.CFrame + vt(0, -3.5, 0), 50, 0, 50, 0.5, 0, 0.5, 0.06)
  attack = false
end

local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

Triangle = function(a, b, c)
  local edg1 = c - a:Dot(b - a.unit)
  local edg2 = a - b:Dot(c - b.unit)
  local edg3 = b - c:Dot(a - c.unit)
  if edg1 <= (b - a).magnitude and edg1 >= 0 then
    a = a
  else
    -- DECOMPILER ERROR at PC35: Overwrote pending register: R1 in 'AssignReg'

    if edg2 <= (c - b).magnitude and edg2 >= 0 then
      a = b
    else
      -- DECOMPILER ERROR at PC46: Overwrote pending register: R2 in 'AssignReg'

      -- DECOMPILER ERROR at PC47: Overwrote pending register: R1 in 'AssignReg'

      if edg3 <= (a - c).magnitude and edg3 >= 0 then
        a = c
      else
        assert(false, "unreachable")
      end
    end
  end
  local len1 = c - a:Dot(b - a.unit)
  local len2 = (b - a).magnitude - len1
  local width = (a + b - a.unit * len1) - c.magnitude
  local maincf = CFrameFromTopBack(a, b - a:Cross(c - b).unit, -b - a.unit)
  local list = {}
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart", m)
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "SmoothPlastic"
    w1.BrickColor = BrickColor.new("Magenta")
    w1.Transparency = 0
    w1.Reflectance = 0
    w1.Material = "SmoothPlastic"
    w1.CanCollide = false
    NoOutline(w1)
    local sz = Vector3.new(0.2, width, len1)
    w1.Size = sz
    local sp = Instance.new("SpecialMesh", w1)
    sp.MeshType = "Wedge"
    sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
    w1:BreakJoints()
    w1.Anchored = true
    w1.Parent = workspace
    w1.Transparency = 0.7
    table.insert(Effects, {w1, "Disappear", 0.01})
    w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    table.insert(list, w1)
  end
  do
    if len2 > 0.01 then
      local w2 = Instance.new("WedgePart", m)
      game:GetService("Debris"):AddItem(w2, 5)
      w2.Material = "SmoothPlastic"
      w2.BrickColor = BrickColor.new("Magenta")
      w2.Transparency = 0
      w2.Reflectance = 0
      w2.Material = "SmoothPlastic"
      w2.CanCollide = false
      NoOutline(w2)
      local sz = Vector3.new(0.2, width, len2)
      w2.Size = sz
      local sp = Instance.new("SpecialMesh", w2)
      sp.MeshType = "Wedge"
      sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
      w2:BreakJoints()
      w2.Anchored = true
      w2.Parent = workspace
      w2.Transparency = 0.7
      table.insert(Effects, {w2, "Disappear", 0.01})
      w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
      table.insert(list, w2)
    end
    do
      return unpack(list)
    end
  end
end

NoOutline = function(Part)
  Part.TopSurface = 10
end

mouse = Player:GetMouse()
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
        attacktype = 4
        attackthree()
      else
        if attack == false and attacktype == 4 then
          attacktype = 1
          attackfour()
        end
      end
    end
  end
end

key = function(k)
  k = k:lower()
  if k == "z" and attack == false and zenabled == true and mana >= 10 then
    zenabled = false
    mana = 100-1
    coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.01 do
      swait()
      fenframe1a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    zenabled = true
    fenframe1a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
    dash()
  else
    if k == "x" and attack == false and xenabled == true and mana >= 15 then
      xenabled = false
      mana = mana - 15
      coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.005 do
      swait()
      fenframe2a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    xenabled = true
    fenframe2a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
      wave()
    else
      if k == "c" and attack == false and cenabled == true and mana >= 25 then
        cenabled = false
        mana = 100 - 1
        coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.005 do
      swait()
      fenframe3a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    cenabled = true
    fenframe3a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
        slam()
      else
        if k == "v" and attack == false and venabled == true and mana >= 45 then
          venabled = false
          mana = 100 - 1
          coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.001 do
      swait()
      fenframe4a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    venabled = true
    fenframe4a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
          anger()
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
local sine = 0
local change = 1
local val = 0
local mananum = 0
while 1 do
  while 1 do
    while 1 do
      pwait()
      sine = sine + change
      local torvel = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
      local velderp = RootPart.Velocity.y
      hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
      if equipped == true or equipped == false then
        if attack == false then
          idle = idle + 1
        else
          idle = 0
        end
        if ((500 <= idle and attack ~= false) or 1 < RootPart.Velocity.y) and hitfloor == nil then
          Anim = "Jump"
          if attack == false then
            Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, 0), 0.3)
            Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.3)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.5, 0, 0.5), 0.3)
            RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.5, 0, -0.5), 0.3)
            LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.2)
          end
        else
          if RootPart.Velocity.y < -1 and hitfloor == nil then
            Anim = "Fall"
            if attack == false then
              Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.3)
              Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.3)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.3, 0, 0.2), 0.3)
              RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.3, 0, -0.2), 0.3)
              LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
            end
          else
            if torvel.x < 1 or 1 > torvel.z and hitfloor ~= nil then
              Anim = "Idle"
              if attack == false then
                idleanim = 0.4
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5 - idleanim) * euler(0.4 + idleanim / 2, 0, -0.4), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-idleanim / 2, 0, 0.4), 0.3)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(math.rad(-25), math.rad(-35), math.rad(45)), 0.3)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(math.rad(30), math.rad(-35), math.rad(-45)), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -1, -idleanim) * euler(-0.2 - idleanim / 2, 1.57, 0), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -0.5 + idleanim, 0) * euler(0.5 + idleanim / 2, -1.2, 0) * euler(-0.2, 0, 0), 0.3)
              end
            else
              if 2 < torvel.x or 2 < torvel.z and torvel.x < 22 or torvel.z < 22 and hitfloor ~= nil then
                Anim = "Walk"
                if attack == false then
                  idleanim = -1
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0.4, 0, 0), 0.3)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.2, 0, 0), 0.3)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(math.rad(0), math.rad(-35), math.rad(45)), 0.3)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(math.rad(0), math.rad(35), math.rad(-45)), 0.3)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.2, 1.57, 0), 0.3)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0.5, -1.57, 0) * euler(0, 0, 0), 0.3)
                end
              else
                if 22 <= torvel.x or 22<= torvel.z and hitfloor ~= nil then
                  Anim = "Run"
                  if attack == false then
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.4, 0, 0), 0.3)
                    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.2, 0, 0), 0.3)
                    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(math.rad(-35), math.rad(-35), math.rad(45)), 0.3)
                    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(math.rad(-35), math.rad(35), math.rad(-45)), 0.3)
                    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.2, 1.57, 0), 0.3)
                    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0.5, -1.57, 0) * euler(0, 0, 0), 0.3)
                  end
                end
              end
            end
          end
        end
      end
      fenbarmana2:TweenSize((UDim2.new(4 * mana / 100, 0, 0.2, 0)), nil, 1, 0.4, true)
      fenbarmana4.Text = "[Corruption]  <{[  " .. mana .. "  ]}> [Corruption]"
      if 100 <= mana then
        mana = 100
        -- DECOMPILER ERROR at PC9624: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC9624: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
    if mananum <= 8 then
      mananum = mananum + 1
      -- DECOMPILER ERROR at PC9630: LeaveBlock: unexpected jumping out IF_THEN_STMT

      -- DECOMPILER ERROR at PC9630: LeaveBlock: unexpected jumping out IF_STMT

    end
  end
  mananum = 100
  mana = 100
end

