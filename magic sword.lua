-----[[Magix Staff]] 
madeby = "acb227" 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
user = "acb227" --Put your name here 

if script.Parent.className ~= "HopperBin" then 
bin=Instance.new("HopperBin") 
bin.Name = "Sword" 
bin.Parent = game.Players[user].Backpack 
script.Parent = bin 
end 
holding = false 
bin = script.Parent 
char = bin.Parent.Parent.Character 
player = bin.Parent.Parent 
Joints = {char.Torso:findFirstChild("Left Shoulder"), char.Torso:findFirstChild("Right Shoulder")} 
Limbs = {char:findFirstChild("Left Arm"), char:findFirstChild("Right Arm")} 
LimbAngle1 = "" 
LimbAngle12 = "" 
LimbAngle2 = "" 
LimbAngle22 = "" 
l1 = "D" 
maker = "" 

function DisableLimb(Limb) 

Joint = Instance.new("Motor") 
Joint.Parent = char.Torso 
Joint.Part0 = Joint.Parent 
Joint.Part1 = Limbs[Limb] 
Joint.MaxVelocity = 0.1 
if (Limb == 1) then 
LimbAngle1 = Joints[1].C0 
LimbAngle12 = Joints[1].C1 
wait() 
Joints[Limb]:remove() 
Joint.C0 = CFrame.new(-1,0.5,0) * CFrame.Angles(0,-1.55,1.55) 
Joint.C1 = LimbAngle12 
Joint.Name = "Left Top" 
elseif(Limb == 2) then 
LimbAngle2 = Joints[2].C0 
LimbAngle22 = Joints[2].C1 
wait() 
Joints[Limb]:remove() 
Joint.C0 = CFrame.new(1,0.5,0) * CFrame.Angles(0,1.55,1.55) 
Joint.C1 = LimbAngle22 
Joint.Name = "Right Top" 
end 
Joints[Limb] = Joint 
end 
l2a3 = "oo" 
function EnableLimb(Limb) 
if (Limb == 1) then 
Joints[Limb].C0 = LimbAngle1 
Joints[Limb].C1 = LimbAngle12 
Joints[Limb].Name = "Left Shoulder" 
elseif(Limb == 2) then 
Joints[Limb].C0 = LimbAngle2 
Joints[Limb].C1 = LimbAngle22 
Joints[Limb].Name = "Right Shoulder" 
end 
anim = char.Animate:Clone() 
char.Animate:remove() 
anim.Parent = char 
end 
l4 = "g" 
function Staff() 

if holding == false then 
holding = true 

t = Instance.new("Model") 
t.Parent = char 
t.Name = "Staff" 

local handlee = Instance.new("Part") 
handlee.Name = "Handle" 
handlee.Parent = t 
handlee.formFactor = "Plate" 
handlee.BrickColor = BrickColor.new("Black") 
handlee.Size = Vector3.new(1, 1, 1) 
handlee.TopSurface = "Smooth" 
handlee.BottomSurface = "Smooth" 
handlee.Transparency = 0 
handlee.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("CylinderMesh") 
m.Parent = handlee 
m.Scale = Vector3.new(0.5, 1, 0.3) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = Workspace.acb227["Right Arm"]
w2.Part0 = handlee 
w2.Part1 = Workspace.acb227["Right Arm"]
w2.C0 = CFrame.fromEulerAnglesXYZ(2, 0, 0) + Vector3.new(0, -0.3, 0.6)
-----------------------------------------Brick2
local brick2 = Instance.new("Part") 
brick2.Name = "Part" 
brick2.Parent = t 
brick2.formFactor = "Plate" 
brick2.BrickColor = BrickColor.new("Dark stone grey") 
brick2.Size = Vector3.new(1, 1, 1) 
brick2.TopSurface = "Smooth" 
brick2.BottomSurface = "Smooth" 
brick2.Transparency = 0 
brick2.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick2 
m.Scale = Vector3.new(0.5, 0.2, 1.2) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = brick2
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.55, 0)
-----------------------------------------Brick2
local brick2 = Instance.new("Part") 
brick2.Name = "Part" 
brick2.Parent = t 
brick2.formFactor = "Plate" 
brick2.BrickColor = BrickColor.new("Mid grey") 
brick2.Size = Vector3.new(1, 3, 1) 
brick2.TopSurface = "Smooth" 
brick2.BottomSurface = "Smooth" 
brick2.Transparency = 0 
brick2.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick2 
m.Scale = Vector3.new(0.2, 1, 0.8) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = brick2
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -2, 0)
-----------------------------------------Brick2
local brick2 = Instance.new("WedgePart") 
brick2.Name = "Part" 
brick2.Parent = t 
brick2.formFactor = "Plate" 
brick2.BrickColor = BrickColor.new("Mid grey") 
brick2.Size = Vector3.new(1, 1, 1) 
brick2.TopSurface = "Smooth" 
brick2.BottomSurface = "Smooth" 
brick2.Transparency = 0 
brick2.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("SpecialMesh") 
m.MeshType = "Wedge" 
m.Parent = brick2 
m.Scale = Vector3.new(0.2, 1, 0.8) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = brick2
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -4, 0)
-----------------------------------------Brick2
local brick2 = Instance.new("Part") 
brick2.Name = "Part" 
brick2.Parent = t 
brick2.formFactor = "Plate" 
brick2.BrickColor = BrickColor.new("White") 
brick2.Size = Vector3.new(1, 1, 1) 
brick2.TopSurface = "Smooth" 
brick2.BottomSurface = "Smooth" 
brick2.Transparency = 0 
brick2.Reflectance = 0 
-----------------------------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = brick2 
m.Scale = Vector3.new(0.21, 1.2, 0.13) 
-----------------------------------------weld
w2 = Instance.new("Weld")
w2.Parent = handlee
w2.Part0 = brick2
w2.Part1 = handlee
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -1, 0)

b = Instance.new("Part") 
b.Name = "Ball" 
b.Parent = t 
b.Size = Vector3.new(1,1,1) 
b.BrickColor = BrickColor.new("Really black") 
b.Shape = ("Ball") 
b.BottomSurface = ("Smooth") 
b.TopSurface = ("Smooth") 
b.Locked = true 
b.Reflectance = 0 
b.Transparency = 1
b.CanCollide = false 
w = Instance.new("Weld") 
w.Parent = handlee 
w.Name = "BallWeld" 
w.Part0 = w.Parent 
w.Part1 = b 
w.C0 = CFrame.new(0,2,0) 
bm = Instance.new("SpecialMesh") 
bm.Parent = b 
bm.Name = "BallMesh" 
bm.Scale = Vector3.new(1,0.8,1) 
bm.MeshType = ("Sphere") 
f = Instance.new("Fire") 
f.Parent = b 
f.Name = "Fire" 
f.Color = Color3.new(255,255,1) 
f.SecondaryColor = Color3.new(255,255,1) 
f.Heat = 3 
f.Size = 3.2 

else 
char:findFirstChild("Staff"):remove() 
holding = false 
end 
end 
l5a6 = "le" 
function Del(E, S) 
wait(S) 
E:remove() 
end 
l7 = "F" 

function AnimO(T) 
Joints[T].MaxVelocity = 0.32 
Joints[T].DesiredAngle = 1 
b.BrickColor = BrickColor.new("Bright orange") 
f.Color = Color3.new(0.8,0.4,0) 
f.SecondaryColor = Color3.new(1,0,0) 
wait(0.2) 
b.BrickColor = BrickColor.new("Bright orange") 
f.Color = Color3.new(0.8,0.4,0) 
f.SecondaryColor = Color3.new(1,0,0) 
Joints[T].DesiredAngle = -0.5 
wait(0.4) 
Joints[T].DesiredAngle = 0 
Joints[T].MaxVelocity = 0.1 
b.BrickColor = BrickColor.new("Really black") 
f.Color = Color3.new(255,255,1) 
f.SecondaryColor = Color3.new(255,255,1) 
end 

function AnimP(T) 
Joints[T].MaxVelocity = 0.32 
Joints[T].DesiredAngle = 1 
b.BrickColor = BrickColor.new("Bright violet") 
f.Color = Color3.new(0.8,0,0.7) 
f.SecondaryColor = Color3.new(0.3,0,0.9) 
wait(0.2) 
b.BrickColor = BrickColor.new("Bright violet") 
f.Color = Color3.new(0.8,0,0.7) 
f.SecondaryColor = Color3.new(0.3,0,0.9) 
Joints[T].DesiredAngle = -0.5 
wait(0.4) 
Joints[T].DesiredAngle = 0 
Joints[T].MaxVelocity = 0.1 
b.BrickColor = BrickColor.new("Really black") 
f.Color = Color3.new(255,255,1) 
f.SecondaryColor = Color3.new(255,255,1) 
end 
l8 = "o" 

function AnimG(T) 
Joints[T].MaxVelocity = 0.32 
Joints[T].DesiredAngle = 1 
b.BrickColor = BrickColor.new("Bright green") 
f.Color = Color3.new(0.1,0.8,0.3) 
f.SecondaryColor = Color3.new(0,0.3,0.6) 
wait(0.2) 
b.BrickColor = BrickColor.new("Bright green") 
f.Color = Color3.new(0.1,0.8,0.3) 
f.SecondaryColor = Color3.new(0,0.3,0.6) 
Joints[T].DesiredAngle = -0.5 
wait(0.4) 
Joints[T].DesiredAngle = 0 
Joints[T].MaxVelocity = 0.1 
b.BrickColor = BrickColor.new("Really black") 
f.Color = Color3.new(255,255,1) 
f.SecondaryColor = Color3.new(255,255,1) 
end 

function AnimW(T) 
Joints[T].MaxVelocity = 0.2 
Joints[T].DesiredAngle = 1 
b.BrickColor = BrickColor.new("Light stone grey") 
f.Color = Color3.new(0.5,0.5,0.5) 
f.SecondaryColor = Color3.new(0.5,0.5,0.3) 
wait(0.4) 
b.BrickColor = BrickColor.new("Light stone grey") 
f.Color = Color3.new(0.5,0.5,0.5) 
f.SecondaryColor = Color3.new(0.5,0.5,0.3) 
Joints[T].DesiredAngle = -0.5 
wait(0.8) 
Joints[T].DesiredAngle = 0 
Joints[T].MaxVelocity = 0.1 
b.BrickColor = BrickColor.new("Really black") 
f.Color = Color3.new(255,255,1) 
f.SecondaryColor = Color3.new(255,255,1) 
end 
l9 = "x" 

function KD(key, mouse) 

if key ~= nil then 
key:lower() 
-- 
if key == "p" then 
if holding == false then 
DisableLimb(2) 
Staff() 
else 
EnableLimb(2) 
Staff() 
end 
elseif key == "e" then 
if holding == true then 
c = bin.Parent.Parent.Character.Staff:findFirstChild("Ball"):Clone() 
c.Parent = workspace 
c.Transparency = 1 
c.Name = "AreaKillFire" 
c.Anchored = true 
c.CFrame = CFrame.new(mouse.Hit.x,mouse.Hit.y + 2,mouse.Hit.z) 
c.Fire.Size = 19 
c.Fire.Heat = 6.5 
c.Fire.Color = Color3.new(0.8,0,0) 
c.Fire.SecondaryColor = Color3.new(0.1,1,0.2) 
coroutine.resume(coroutine.create(Del), c, 1.3) 
coroutine.resume(coroutine.create(AnimO), 2) 
mods = workspace:GetChildren() 
for e = 1, #mods do 
if mods[e].className == "Model" then 
if mods[e].Name == bin.Parent.Parent.Name then 
wait() 
else 
if mods[e]:findFirstChild("Torso") ~= nil then 
if (mods[e].Torso.Position - c.Position).magnitude < 10 then 
mods[e]:BreakJoints() 
end 
end 
end 
end 
end 

else 
wait() 
end 
elseif key == "r" then 
if holding == true then 
c = bin.Parent.Parent.Character.Staff:findFirstChild("Ball"):Clone() 
c.Parent = workspace 
c.Transparency = 1 
c.Name = "AreaConfuse" 
c.Anchored = true 
c.CFrame = CFrame.new(mouse.Hit.x,mouse.Hit.y + 2,mouse.Hit.z) 
c.Fire.Size = 19 
c.Fire.Heat = 6.5 
c.Fire.Color = Color3.new(0.8,0,0.7) 
c.Fire.SecondaryColor = Color3.new(0.3,0,0.9) 
coroutine.resume(coroutine.create(Del), c, 1.3) 
coroutine.resume(coroutine.create(AnimP), 2) 
mods = workspace:GetChildren() 
for e = 1, #mods do 
if mods[e].className == "Model" then 
if mods[e].Name == bin.Parent.Parent.Name then 
wait() 
else 
if mods[e]:findFirstChild("Torso") ~= nil then 
if (mods[e].Torso.Position - c.Position).magnitude < 10 then 
if mods[e]:findFirstChild("Humanoid") ~= nil then 
mods[e].Humanoid.WalkSpeed = - mods[e].Humanoid.WalkSpeed 
end 
end 
end 
end 
end 
end 
else 
wait() 
end 
elseif key == "q" then 
if holding == true then 
c = bin.Parent.Parent.Character.Staff:findFirstChild("Ball"):Clone() 
c.Parent = workspace 
c.Transparency = 1 
c.Name = "AreaPush" 
c.Anchored = true 
c.CFrame = CFrame.new(mouse.Hit.x,mouse.Hit.y + 2,mouse.Hit.z) 
c.Fire.Size = 18 
c.Fire.Heat = 6.5 
c.Fire.Color = Color3.new(0.1,0.8,0.3) 
c.Fire.SecondaryColor = Color3.new(0,0.3,0.6) 
coroutine.resume(coroutine.create(Del), c, 1.3) 
coroutine.resume(coroutine.create(AnimG), 2) 
player = c 
speed = 55 
players = game.Players:GetChildren() 
for i = 1, #players do 
if players[i].Name == bin.Parent.Parent.Name then 
wait() 
else 
if (players[i].Character.Torso.Position - player.Position).magnitude < 10 then 
parts = players[i].Character:children() 
players[i].Character.Humanoid.Sit = true 
for a = 1, #parts do 
if parts[a].className == "Part" then 
parts[a].Velocity = CFrame.new(player.Position, players[i].Character.Torso.Position).lookVector * speed 
end 
end 
end 
end 
end 
else 
wait() 
end 
elseif key == "t" then 
if holding == true then 
c = bin.Parent.Parent.Character.Staff:findFirstChild("Ball"):Clone() 
c.Parent = workspace 
c.Transparency = 1 
c.Name = "TeleTo" 
c.Anchored = true 
c.CFrame = CFrame.new(mouse.Hit.x,mouse.Hit.y+2,mouse.Hit.z) 
c.Fire:remove() 
c2 = bin.Parent.Parent.Character.Staff:findFirstChild("Ball"):Clone() 
c2.Parent = workspace 
c2.Transparency = 1 
c2.Name = "TeleFrom" 
c2.Anchored = false 
c2.CFrame = bin.Parent.Parent.Character.Torso.CFrame 
c2.Fire.Size = 1 
c2.Fire.Heat = 6.5 
c2.Fire.Color = Color3.new(0.5,0.5,0.5) 
c2.Fire.SecondaryColor = Color3.new(0.5,0.5,0.3) 
cw = Instance.new("Weld") 
cw.Parent = c2 
cw.Part0 = cw.Parent 
cw.Part1 = bin.Parent.Parent.Character.Torso 
coroutine.resume(coroutine.create(Del), c, 2) 
coroutine.resume(coroutine.create(Del), c2, 3) 
coroutine.resume(coroutine.create(AnimW), 2) 
for i = 1, 18 do 
c2.Fire.Size = c2.Fire.Size + 1 
wait(0.05) 
end 
bin.Parent.Parent.Character.Torso.CFrame = c.CFrame + Vector3.new(0,5,0) 
wait(0.05) 
for ii = 1, 18 do 
c2.Fire.Size = c2.Fire.Size - 1 
wait(0.05) 
end 
else 
wait() 
end 
elseif key == "h" then 
if holding == true then 
c = bin.Parent.Parent.Character.Staff:findFirstChild("Ball"):Clone() 
c.Parent = workspace 
c.Transparency = 1 
c.Name = "AreaConfuse" 
c.Anchored = true 
c.CFrame = CFrame.new(mouse.Hit.x,mouse.Hit.y + 2,mouse.Hit.z) 
c.Fire.Size = 19 
c.Fire.Heat = 6.5 
c.Fire.Color = Color3.new(0.8,0,0.7) 
c.Fire.SecondaryColor = Color3.new(0.3,0,0.9) 
coroutine.resume(coroutine.create(Del), c, 1.3) 
coroutine.resume(coroutine.create(AnimP), 2) 
mods = workspace:GetChildren() 
for e = 1, #mods do 
if mods[e].className == "Model" then 
if mods[e].Name == bin.Parent.Parent.Name then 
wait() 
else 
if mods[e]:findFirstChild("Torso") ~= nil then 
if (mods[e].Torso.Position - c.Position).magnitude < 10 then 
if mods[e]:findFirstChild("Humanoid") ~= nil then 
mods[e].Humanoid.WalkSpeed = mods[e].Humanoid.WalkSpeed 
end 
end 
end 
end 
end 
end 
else 
wait() 
end 
-- 
end 
end 
end 



bin.Selected:connect(function(mouse) 
mouse.KeyDown:connect(function(key) KD(key, mouse) end) 
end) 


while true do 
wait(2) 
handlee.Reflectance = 0.2 
wait(2) 
handlee.Reflectance = 0.4 
wait(2) 
handlee.Reflectance = 0.6 
wait(2) 
handlee.Reflectance = 0.8 
wait(2) 
handlee.Reflectance = 1 
wait(2) 
handlee.Reflectance = 0.8 
wait(2) 
handlee.Reflectance = 0.6 
wait(2) 
handlee.Reflectance = 0.4 
wait(2) 
handlee.Reflectance = 0.2 
wait(2) 
handlee.Reflectance = 0 
wait(2)
end 