Player = game:GetService("Players").LocalPlayer
--FIXED WITH TRIGECTORY's CheatSheet
cheatsheetplr = game.Players.LocalPlayer
i = Instance.new("NumberValue", cheatsheetplr )
i.Name = "FPSCH"
Bin = Instance.new("HopperBin", cheatsheetplr .Backpack)
script.Parent = Bin
local cf = CFrame.new
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RW = Create("Weld")({Name = "Right Shoulder", Part0 = Tor, C0 = CFrame.new(1.5, 0.5, 0), C1 = CFrame.new(0, 0.5, 0), Part1 = RA, Parent = Tor})
LW = Create("Weld")({Name = "Left Shoulder", Part0 = Tor, C0 = CFrame.new(-1.5, 0.5, 0), C1 = CFrame.new(0, 0.5, 0), Part1 = LA, Parent = Tor})
Character = Player.Character
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
m = Instance.new("Model", Character)
LeftArm = Character["Left Arm"]
invising = false
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
running = false
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
face = Head.face
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
invisy = false
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false
attackdebounce = false
deb = false
equipped = true
CRITTING = false
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
venabled = false
player = nil
trispeed = 0.5
pathtrans = 0.7
magix = false
xenabled = true
cenabled = true
venabled = true
zenabled = true
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
NoOutline = function(Part)
  Part.TopSurface = 10
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
nooutline = function(part)
  part.TopSurface = 10
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
  fp.Locked = true
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
if Player.FPSCH.Value == true then
  frame = 0.016666666666667
else
  frame = 0.022222222222222
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
      Part.CFrame = CF * cf(0, 0, -0.4)
    end
    for i = 0, 1, delay do
      wait()
      Mesh.Scale = Mesh.Scale
    end
    for i = 0, 1, 0.1 do
      wait()
      Part.Transparency = i
    end
    Part.Parent = nil
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
      prt2.Anchored = true
      prt2.CFrame = cframe * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      local msh2 = mesh("SpecialMesh", prt2, "Sphere", "", vt(0, 0, 0), vt(0.5, 0.5, 0.5))
      game:GetService("Debris"):AddItem(prt2, 2)
      coroutine.resume(coroutine.create(function(Part, Mesh)
      for i = 0, 1, 0.1 do
        wait()
        Part.CFrame = Part.CFrame * cf(0, 0.5, 0)
      end
      Part.Parent = nil
    end
), prt2, msh2)
    end
    for i = 0, 1, delay * 2 do
      wait()
      Part.CFrame = Part.CFrame
      Mesh.Scale = vt(x1 + x3 - (x1 + x3) * i, y1 + y3 - (y1 + y3) * i, z1 + z3 - (z1 + z3) * i)
    end
    Part.Parent = nil
  end
), prt, msh)
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
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh)
end

MagicRing1 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
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

MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = paart(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, CF, Numbb, randnumb)
    CF = Part.CFrame
    Numbb = 0
    randnumb = math.random() / 10
    rand1 = math.random() / 10
    for i = 0, 1, rand1 do
      wait()
      CF = CF * cf(0, math.random() / 2, 0)
      Part.CFrame = CF * euler(Numbb, 0, 0)
      Part.Transparency = i
      Numbb = Numbb + randnumb
    end
    Part.Parent = nil
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

StravEffect = function(brickcolor, cframe, x, y, z, x1, y1, z1, delay)
  local prt = paart(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
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

dmgstart = function(dmg, what)
  hitcon = what.Touched:connect(function(hit)
    local hum = hit.Parent:FindFirstChild("Humanoid")
    if hum and not hum:IsDescendantOf(Character) and hit.Name ~= "Node" then
      hum:TakeDamage(dmg)
    end
  end
)
end

dmgstop = function()
  hitcon:disconnect()
end

Cloak = function()
  so("http://roblox.com/asset/?id=2767090", Torso, 1, 1.1)
  face.Parent = nil
  cloaked = true
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.2 do
      wait()
      v.Transparency = i
    end
    v.Transparency = 1
  end
))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(derp)
    for i = 0, 1, 0.2 do
      wait()
      derp.Transparency = i
    end
    derp.Transparency = 1
  end
), hatp)
          -- DECOMPILER ERROR at PC44: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC44: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  for _,v in pairs(m:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.2 do
      wait()
      v.Transparency = i
    end
    v.Transparency = 1
  end
))
    end
  end
end

UnCloak = function()
  so("http://roblox.com/asset/?id=2767090", Torso, 1, 1.1)
  face.Parent = Head
  cloaked = false
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
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
      wait()
      derp.Transparency = derp.Transparency - 0.1
    end
    derp.Transparency = 0
  end
), hatp)
          -- DECOMPILER ERROR at PC45: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC45: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  for _,v in pairs(m:children()) do
    if v.className == "Part" and v.Name ~= "hitbox" and v.Name ~= "tip" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
  end
))
      v.Transparency = 0
    end
  end
end

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
    if CRITTING == false then
      if blocked == false then
        HitHealth = h.Health
        h.Health = h.Health - Damage
        HitHealth = h.Health
        if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 and h.Parent.Name ~= "Lost Soul" then
          print("gained spree")
          game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value = game.Players.LocalPlayer.leaderstats.Spree.Value + 1
        end
        showDamage(hit.Parent, Damage, 0.5, BrickColor.new("Toothpaste"))
        if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 and h.Parent.Name ~= "Lost Soul" then
          print("gained kill")
          script.Parent.Kills.Value = script.Parent.Kills.Value + 1
        end
      else
        h.Health = h.Health - Damage * 2
        showDamage(hit.Parent, Damage / 2, 0.5, BrickColor.new("Bright blue"))
      end
    else
      MagicRing1(BrickColor.new("White"), h.Parent.Torso.CFrame * angles(math.rad(math.random(1, 360)), math.rad(math.random(1, 360)), math.rad(math.random(1, 360))), 2, 2, 1, 1, 1, 0, 0.2)
      h.Health = h.Health - Damage * 2
      HitHealth = h.Health
      showDamage(hit.Parent, Damage, 0.5, BrickColor.new("Really blue"))
      if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 and h.Parent.Name ~= "Lost Soul" then
        print("gained spree")
        game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value = game.Players.LocalPlayer.leaderstats.Spree.Value + 1
      end
      if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 and h.Parent.Name ~= "Lost Soul" then
        print("gained kill")
        script.Parent.Kills.Value = script.Parent.Kills.Value + 1
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
                  coroutine.resume(coroutine.create(function(Part)
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
  g = Instance.new("Model")
  g.Name = tostring(Dealt)
  h = Instance.new("Humanoid")
  h.Health = 0
  h.MaxHealth = 0
  h.Parent = g
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
  c.Parent = g
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
  game:GetService("Debris"):AddItem(g, 0.5 + du)
  c.CanCollide = false
  g.Parent = workspace
  c.CanCollide = false
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
  local len2 =( b - a).magnitude - len1
  local width = ((a + b - a.unit * len1) - c).magnitude
  local maincf = CFrameFromTopBack(a, b - a:Cross(c - b).unit, -b - a.unit)
  local list = {}
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart", m)
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "SmoothPlastic"
    w1.BrickColor = BrickColor.new("Toothpaste")
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
      w2.BrickColor = BrickColor.new("Toothpaste")
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

HandleA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Handle", Vector3.new(0.200000003, 0.399999917, 0.200000003))
handleweld = weld(m, Character["Right Arm"], HandleA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0100860596, 0.390179157, -0.00997161865, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1))
HitboxA = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "HitboxA", Vector3.new(1.01999998, 0.600000024, 1.01999998))
HitboxAweld = weld(m, HandleA, HitboxA, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00997924805, 0.499976158, 0.00996398926, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.800000012, 0.200000003, 1))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.90734863e-005, -0.400054932, 0, -5.96046448e-008, -0.999999642, 0, 0.999999642, -5.96046448e-008, 0, 0, 0, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Toothpaste", "Part", Vector3.new(0.400000036, 0.200000003, 1))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00998306274, -0.410003662, 0, -5.96774044e-008, -0.999998927, 1.39832199e-008, 0.999998808, -5.95318852e-008, 2.4033401e-008, 2.40333904e-008, -1.39832164e-008, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.419921875, -0.900010347, 0.00999450684, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399993896, -0.500012636, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.399999917, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399993896, -0.800000429, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.99999994, 0.220000014))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399993896, -0.100007057, 0.41003418, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.819999993, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.109970093, -0.900010347, -0.400039673, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(1.01999998, 0.200000003, 1.01999998))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00997924805, 0.499976158, 0.00996398926, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399993896, -0.900010347, -0.299987793, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Toothpaste", "Part", Vector3.new(0.800000012, 0.800000012, 0.800000012))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.43051147e-006, -0.300003052, -4.57763672e-005, -5.96046448e-008, -0.999999642, 0, 0.999999642, -5.96046448e-008, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.99999994, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399993896, -0.100007057, -0.400039673, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.819999993, 0.200000003, 0.200000003))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.109970093, -0.900010347, 0.419967651, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.420000017))
Partweld = weld(m, HandleA, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.399993896, -0.900010347, 0.310012817, 1, 0, 0, 0, 1, 0, 0, 0, 1))
HandleB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "Handle", Vector3.new(0.200000003, 0.399999917, 0.200000003))
handleweld = weld(m, Character["Left Arm"], HandleB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0100708008, 0.390179157, -0.00997161865, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1))
HitboxB = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 1, "Institutional white", "HitboxB", Vector3.new(1.01999998, 0.600000024, 1.01999998))
HitboxBweld = weld(m, HandleB, HitboxB, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00999450684, 0.499976873, -0.0100097656, -0.999999702, 0, 5.96046448e-008, 0, 1, 0, -5.96046448e-008, 0, -0.999999702))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(1.01999998, 0.200000003, 1.01999998))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00999450684, 0.499976873, -0.0100097656, -0.999999702, 0, 5.96046448e-008, 0, 1, 0, -5.96046448e-008, 0, -0.999999702))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Toothpaste", "Part", Vector3.new(0.400000036, 0.200000003, 1))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00998282433, -0.429977417, -0.0199737549, 5.96773759e-008, -0.999998927, -1.3983211e-008, -0.999998748, -5.95318852e-008, 4.47034836e-008, -5.96046448e-008, -1.39832164e-008, -0.999999702))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0.5, "Toothpaste", "Part", Vector3.new(0.800000012, 0.800000012, 0.800000012))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-7.15255737e-007, -0.319976807, -0.0200271606, 5.9604627e-008, -0.999999642, -3.55271368e-015, -0.999999404, -5.96046448e-008, 2.98023224e-008, -5.96046448e-008, 0, -0.999999702))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.600000024))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.41998291, -0.500012159, -0.0199813843, -0.999999702, 0, 5.96046448e-008, 0, 1, 0, -5.96046448e-008, 0, -0.999999702))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.419967651, -0.900009871, -0.319976807, -0.999999702, 0, 5.96046448e-008, 0, 1, 0, -5.96046448e-008, 0, -0.999999702))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.99999994, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.41998291, -0.100006819, -0.420028687, -0.999999702, 0, 5.96046448e-008, 0, 1, 0, -5.96046448e-008, 0, -0.999999702))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.620000005))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.399932861, -0.900009871, -0.00998687744, -0.999999702, 0, 5.96046448e-008, 0, 1, 0, -5.96046448e-008, 0, -0.999999702))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.200000003, 0.420000017))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.419952393, -0.900009871, 0.290039063, -0.999999702, 0, 5.96046448e-008, 0, 1, 0, -5.96046448e-008, 0, -0.999999702))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.819999993, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0899810791, -0.900009871, -0.420005798, -0.999999702, 0, 5.96046448e-008, 0, 1, 0, -5.96046448e-008, 0, -0.999999702))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.399999917, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.41998291, -0.799999952, -0.0199813843, -0.999999702, 0, 5.96046448e-008, 0, 1, 0, -5.96046448e-008, 0, -0.999999702))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.200000003, 0.99999994, 0.220000014))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.41998291, -0.100006819, 0.390068054, -0.999999702, 0, 5.96046448e-008, 0, 1, 0, -5.96046448e-008, 0, -0.999999702))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.819999993, 0.200000003, 0.200000003))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0899810791, -0.900009871, 0.399978638, -0.999999702, 0, 5.96046448e-008, 0, 1, 0, -5.96046448e-008, 0, -0.999999702))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Institutional white", "Part", Vector3.new(0.800000012, 0.200000003, 1))
Partweld = weld(m, HandleB, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.88350677e-005, -0.420028687, -0.0199966431, 5.9604627e-008, -0.999999642, -3.55271368e-015, -0.999999404, -5.96046448e-008, 2.98023224e-008, -5.96046448e-008, 0, -0.999999702))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
attackone = function()
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.4) * angles(math.rad(0), math.rad(120), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.4) * angles(math.rad(0), math.rad(-100), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(120), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
  end
  so("http://roblox.com/asset/?id=200632136", HitboxA, 1, 1)
  local con = HitboxA.Touched:connect(function(hit)
    Damagefunc(hit, 7, 13, 0, "Normal", RootPart, 0.2, 1)
  end
)
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.4) * angles(math.rad(0), math.rad(-100), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-120), math.rad(0)), 0.3)
  end
  attack = false
  con:disconnect()
end

attacktwo = function()
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.4) * angles(math.rad(0), math.rad(100), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.4) * angles(math.rad(0), math.rad(-120), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-120), math.rad(0)), 0.3)
  end
  so("http://roblox.com/asset/?id=200632136", HitboxB, 1, 1.2)
  local con = HitboxB.Touched:connect(function(hit)
    Damagefunc(hit, 7, 13, 0, "Normal", RootPart, 0.2, 1)
  end
)
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(100), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.4) * angles(math.rad(0), math.rad(-50 * i), math.rad(-80)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(120), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
  end
  attack = false
  con:disconnect()
end

attackthree = function()
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-50)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
  end
  so("http://roblox.com/asset/?id=200632211", RightLeg, 1, 1)
  local con = RightLeg.Touched:connect(function(hit)
    Damagefunc(hit, 7, 13, math.random(5, 10), "Normal", RootPart, 0.2, 1)
  end
)
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(40)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(120)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(20)), 0.3)
  end
  attack = false
  con:disconnect()
end

attackfour = function()
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(40)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-80), math.rad(20)), 0.3)
  end
  so("http://roblox.com/asset/?id=200632211", Head, 1, 0.9)
  local con = Head.Touched:connect(function(hit)
    Damagefunc(hit, 7, 13, 0, "Normal", RootPart, 0.2, 1)
  end
)
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(40), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(40), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.4, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(40)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.4, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(80), math.rad(40)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-80), math.rad(-40)), 0.3)
  end
  attack = false
  con:disconnect()
end

DoublePunch = function()
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.3) * angles(math.rad(0), math.rad(90), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0.3) * angles(math.rad(0), math.rad(-90), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.4) * angles(math.rad(0), math.rad(90), math.rad(10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(10)), 0.3)
  end
  so("http://roblox.com/asset/?id=200632370", Torso, 1, 1)
  local con1 = HitboxA.Touched:connect(function(hit)
    Damagefunc(hit, 7, 13, 0, "Normal", RootPart, 0.2, 1)
  end
)
  local con2 = HitboxB.Touched:connect(function(hit)
    Damagefunc(hit, 7, 13, 0, "Normal", RootPart, 0.2, 1)
  end
)
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.7, -1) * angles(math.rad(0), math.rad(120), math.rad(110)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.7, -1) * angles(math.rad(0), math.rad(-120), math.rad(-110)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(80), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
  end
  attack = false
  con1:disconnect()
  con2:disconnect()
end

DashRun = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.3) * angles(math.rad(0), math.rad(120), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0.3) * angles(math.rad(0), math.rad(-120), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.4) * angles(math.rad(0), math.rad(90), math.rad(10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(10)), 0.3)
  end
  so("http://roblox.com/asset/?id=200632370", Torso, 1, 1)
  MagicRing1(BrickColor.new("White"), RootPart.CFrame * angles(math.rad(0), math.rad(0), math.rad(0)), 5, 5, 1, 5, 5, 0, 0.2)
  Torso.Velocity = RootPart.CFrame.lookVector * 200
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.7, -1) * angles(math.rad(0), math.rad(10), math.rad(110)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.7, -1) * angles(math.rad(0), math.rad(-10), math.rad(-110)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(80), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
  end
  running = true
  attack = false
end

Invisa = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.3) * angles(math.rad(0), math.rad(120), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0.3) * angles(math.rad(0), math.rad(-120), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.4) * angles(math.rad(0), math.rad(90), math.rad(10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(10)), 0.3)
  end
  so("http://roblox.com/asset/?id=200632370", Torso, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.7, -1) * angles(math.rad(0), math.rad(10), math.rad(110)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.7, -1) * angles(math.rad(0), math.rad(-10), math.rad(-110)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(80), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
  end
  MagicBlock(BrickColor.new("Toothpaste"), RootPart.CFrame, 5, 5, 5, 0.7, 0.7, 0.7, 0.1)
  MagicBlock(BrickColor.new("White"), RootPart.CFrame, 3, 3, 3, 1, 1, 1, 0.1)
  coroutine.resume(coroutine.create(function()
    invisle()
  end
))
  attack = false
end

invisle = function()
  invisy = true
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
  for i = 1, 300 do
    wait()
  end
  MagicBlock(BrickColor.new("Toothpaste"), RootPart.CFrame, 5, 5, 5, 0.7, 0.7, 0.7, 0.1)
  MagicBlock(BrickColor.new("White"), RootPart.CFrame, 3, 3, 3, 1, 1, 1, 0.1)
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
  end
))
  invisy = false
end

invisattack = function()
  invising = true
  MagicBlock(BrickColor.new("Toothpaste"), RootPart.CFrame, 5, 5, 5, 0.7, 0.7, 0.7, 0.1)
  MagicBlock(BrickColor.new("White"), RootPart.CFrame, 3, 3, 3, 1, 1, 1, 0.1)
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
  end
))
  for i = 1, 20 do
    wait()
  end
  MagicBlock(BrickColor.new("Toothpaste"), RootPart.CFrame, 5, 5, 5, 0.7, 0.7, 0.7, 0.1)
  MagicBlock(BrickColor.new("White"), RootPart.CFrame, 3, 3, 3, 1, 1, 1, 0.1)
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
  invising = false
end

crittle = function()
  CRITTING = true
  coroutine.resume(coroutine.create(function()
    while CRITTING do
      wait(0.75)
      MagicBlock(BrickColor.new("Toothpaste"), HitboxA.CFrame, 1, 1, 1, 0.7, 0.7, 0.7, 0.2)
      MagicBlock(BrickColor.new("White"), HitboxA.CFrame, 1, 1, 1, 1, 1, 1, 0.2)
      MagicBlock(BrickColor.new("Toothpaste"), HitboxB.CFrame, 1, 1, 1, 0.7, 0.7, 0.7, 0.2)
      MagicBlock(BrickColor.new("White"), HitboxB.CFrame, 1, 1, 1, 1, 1, 1, 0.2)
    end
  end
))
  for i = 1, 500 do
    wait()
  end
  CRITTING = false
end

critt = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.3) * angles(math.rad(0), math.rad(150), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0.3) * angles(math.rad(0), math.rad(-150), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.4) * angles(math.rad(0), math.rad(90), math.rad(10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(10)), 0.3)
  end
  so("http://roblox.com/asset/?id=200632370", Torso, 1, 1)
  MagicRing1(BrickColor.new("White"), HitboxA.CFrame * angles(math.rad(math.random(1, 360)), math.rad(math.random(1, 360)), math.rad(math.random(1, 360))), 1, 1, 1, 1, 1, 0, 0.2)
  MagicRing1(BrickColor.new("Toothpaste"), HitboxA.CFrame * angles(math.rad(math.random(1, 360)), math.rad(math.random(1, 360)), math.rad(math.random(1, 360))), 1, 1, 1, 1, 1, 0, 0.2)
  MagicRing1(BrickColor.new("White"), HitboxB.CFrame * angles(math.rad(math.random(1, 360)), math.rad(math.random(1, 360)), math.rad(math.random(1, 360))), 1, 1, 1, 1, 1, 0, 0.2)
  MagicRing1(BrickColor.new("Toothpaste"), HitboxB.CFrame * angles(math.rad(math.random(1, 360)), math.rad(math.random(1, 360)), math.rad(math.random(1, 360))), 1, 1, 1, 1, 1, 0, 0.2)
  coroutine.resume(coroutine.create(function()
    crittle()
  end
))
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.7, -1) * angles(math.rad(0), math.rad(10), math.rad(110)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.7, -1) * angles(math.rad(0), math.rad(-10), math.rad(-110)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(80), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
  end
  attack = false
end

FlipKick = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.3) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0.3) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-50)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-10)), 0.3)
  end
  so("http://roblox.com/asset/?id=200632370", Torso, 1, 0.9)
  local con = RightLeg.Touched:connect(function(hit)
    Damagefunc(hit, 7, 13, 0, "Knockdown", RootPart, 0.2, 1)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1.5) * angles(-5 * i, 0, 0), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * angles(math.rad(0), math.rad(90), math.rad(120)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(20)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.3) * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0.3) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(120)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(20)), 0.3)
  end
  attack = false
  con:disconnect()
end

UpperCutKick = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.3) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0.3) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-50)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-10)), 0.3)
  end
  so("http://roblox.com/asset/?id=200632370", Torso, 1, 0.9)
  local con = RightLeg.Touched:connect(function(hit)
    Damagefunc(hit, 15, 20, math.random(5, 10), "Knockdown", RootPart, 0.2, 1)
  end
)
  MagicRing1(BrickColor.new("White"), RootPart.CFrame * angles(math.rad(90), math.rad(0), math.rad(0)) + vt(0, -3, 0), 5, 5, 1, 5, 5, 0, 0.2)
  for i = 0, 1, 0.05 do
    swait()
    MagicBlock(BrickColor.new("Toothpaste"), RightLeg.CFrame, 2, 2, 2, 0.7, 0.7, 0.7, 0.1)
    MagicBlock(BrickColor.new("White"), RightLeg.CFrame, 3, 3, 3, 1, 1, 1, 0.1)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 13) * angles(-5 * i, 0, 0), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * angles(math.rad(0), math.rad(90), math.rad(120)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(20)), 0.3)
  end
  MagicRing1(BrickColor.new("White"), RootPart.CFrame * angles(math.rad(90), math.rad(0), math.rad(0)) + vt(0, -3, 0), 2, 2, 1, 5, 5, 0, 0.2)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0.3) * angles(math.rad(0), math.rad(0), math.rad(40)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0.3) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(120)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(20)), 0.3)
  end
  attack = false
  con:disconnect()
end

mouse = Player:GetMouse()
ob1u = function()
end

ob1d = function()
  coroutine.resume(coroutine.create(function()
    if invisy == true and attack == false and invising == false then
      invisattack()
    end
  end
))
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
          attacktype = 5
          attackfour()
        else
          if attack == false and attacktype == 5 then
            attacktype = 6
            DoublePunch()
          else
            if attack == false and attacktype == 6 then
              attacktype = 1
              FlipKick()
            end
          end
        end
      end
    end
  end
end

key = function(k)
  k = k:lower()
  if k == "x" and xenabled == true and mana >= 25 and attack == false then
    xenabled = false
    mana = 100
    coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.01 do
      swait()
      fenframe2a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    xenabled = true
    fenframe2a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
    coroutine.resume(coroutine.create(function()
    if invisy == true and attack == false and invising == false then
      invisattack()
    end
  end
))
    UpperCutKick()
  else
    if k == "c" and cenabled == true and mana >= 45 and attack == false and CRITTING == false then
      cenabled = false
      mana = 100
      coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.001 do
      swait()
      fenframe3a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    cenabled = true
    fenframe3a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
      coroutine.resume(coroutine.create(function()
    if invisy == true and attack == false and invising == false then
      invisattack()
    end
  end
))
      critt()
    else
      if k == "z" and mana >= 15 and zenabled == true and attack == false then
        zenabled = false
        mana = 100
        coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.01 do
      swait()
      fenframe1a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    zenabled = true
    fenframe1a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
        coroutine.resume(coroutine.create(function()
    if invisy == true and attack == false and invising == false then
      invisattack()
    end
  end
))
        DashRun()
      else
        if k == "v" and invisy == false and mana >= 55 and venabled == true and attack == false then
          venabled = false
          mana = 100
          coroutine.resume(coroutine.create(function()
    for i = 1, 0, -0.001 do
      swait()
      fenframe4a.Size = UDim2.new(0.05 * i, 0, 0.1, 0)
    end
    venabled = true
    fenframe4a.Size = UDim2.new(0, 0, 0.1, 0)
  end
))
          coroutine.resume(coroutine.create(function()
    if invisy == true and attack == false and invising == false then
      invisattack()
    end
  end
))
          Invisa()
        end
      end
    end
  end
end

Bin = script.Parent
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
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(50)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(10)), 0.3)
          end
        else
          if RootPart.Velocity.y < -1 and hitfloor == nil then
            Anim = "Fall"
            if attack == false then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(30)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * angles(math.rad(0), math.rad(90), math.rad(10)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(10)), 0.3)
            end
          else
            if torvel.x < 1 or torvel.z < 1 and hitfloor ~= nil then
              Anim = "Idle"
              if attack == false then
                Humanoid.WalkSpeed = 16
                running = false
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, -0.4) * angles(math.rad(80), math.rad(80), math.rad(0)), 0.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.4) * angles(math.rad(80), math.rad(-80), math.rad(0)), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -1, -0.4) * angles(math.rad(0), math.rad(90), math.rad(10)), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(10)), 0.3)
              end
            else
              if 2 < torvel.x or 2 < torvel.z and hitfloor ~= nil then
                Anim = "Walk"
                if attack == false then
                  if running == true then
                    Humanoid.WalkSpeed = 30
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
                    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
                    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.3)
                    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.3)
                    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
                    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(10)), 0.3)
                  else
                    change = 3
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
                    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
                    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.3)
                    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.3)
                    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
                    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(10)), 0.3)
                  end
                end
              end
            end
          end
        end
      end
      if invisy == false and Torso.Transparency == 1 then
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
end
))
      end
      fenbarmana2:TweenSize((UDim2.new(4 * mana / 100, 0, 0.2, 0)), nil, 1, 0.4, true)
      fenbarmana4.Text = "[Purity]  <{[  " .. mana .. "  ]}> [Purity]"
      if 100 <= mana then
        mana = 100
        -- DECOMPILER ERROR at PC3984: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC3984: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
    if mananum <= 8 then
      mananum = mananum + 1
      -- DECOMPILER ERROR at PC3990: LeaveBlock: unexpected jumping out IF_THEN_STMT

      -- DECOMPILER ERROR at PC3990: LeaveBlock: unexpected jumping out IF_STMT

    end
  end
  mananum = 0
  mana = 100
end

