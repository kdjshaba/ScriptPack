if script.Parent.className ~= "HopperBin" then 
admin = game.Players.acb227 
local h = Instance.new("HopperBin") 
h.Parent = admin.Backpack 
h.Name = "Control" 
script.Parent = h 
end 

tool = script.Parent 
plyr = game.Players.LocalPlayer 
speed = 50 
mode = 1 
cluster = 5 

function ClusterBombPiece(mis, tar, misg, misv) 
while mis.Parent == Workspace and tar:IsDescendantOf(Workspace) do 
wait() 
misg.cframe = CFrame.new(tar.Position, mis.Position) 
misv.velocity = mis.CFrame.lookVector * -250 
end 
end 

function freeze(tar,ice) 
for i = 1,50 do 
wait() 
tar.Parent.Humanoid.Health = tar.Parent.Humanoid.Health - 1 
end 
tar.Parent.Torso.Anchored = false 
ice:remove() 
end 


function ghost(tar) 
for i = 1,100 do 
tar.Transparency = tar.Transparency + .01 
wait() 
end 
end 

function move(hold, tar) 
while tar:findFirstChild("BodyPosition") ~= nil do 
wait() 
hold.position = p.Position + Vector3.new(0,-6,0) 
end 
end 

function burning(burn, tar) 
for i = 1,100 do 
wait() 
burn.Transparency = burn.Transparency - .01 
end 
local ex = Instance.new("Explosion") 
ex.Parent = Workspace 
ex.Position = burn.Position 
ex.BlastPressure = 0 
ex.BlastRadius = 4 
tar:BreakJoints() 
wait(3) 
burn:remove() 
end 

function shield(burn, tar) 
for i = 1,100 do 
wait() 
burn.Transparency = burn.Transparency - .01 
end 
local ff = Instance.new("ForceField") 
ff.Parent = tar 
end 

tool.Selected:connect(function(mouse) 
if plyr.Character:findFirstChild("Model") == nil then 
m = Instance.new("Model") 
m.Parent = plyr.Character 
p1 = Instance.new("Part") 
p1.Parent = m 
p1.CanCollide = false 
p1.Size = Vector3.new(4,1,6) 
p1.Position = game.Workspace.acb227.Torso.Position 
p1.formFactor = "Symmetric" 
p1.BrickColor = BrickColor.new("Really black") 
p1.TopSurface = 0 
p1.BottomSurface = 0 
p = Instance.new("Seat") 
p.Parent = m 
p.Name = "NiteSeat" 
p.formFactor = "Plate" 
p.CanCollide = true 
p.size = Vector3.new(2,.4,2) 
p.Position = p1.Position 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = "Weld" 
p.BottomSurface = "Weld" 
p2 = Instance.new("WedgePart") 
p2.Parent = m 
p2.Size = Vector3.new(1,1,6) 
p2.formFactor = "Symmetric" 
p2.BrickColor = BrickColor.new("Really black") 
p2.TopSurface = 0 
p2.BottomSurface = 0 
p2.Position = p1.Position +Vector3.new(1.5,0,0) 
p3 = Instance.new("WedgePart") 
p3.Parent = m 
p3.Size = Vector3.new(1,1,6) 
p3.formFactor = "Symmetric" 
p3.BrickColor = BrickColor.new("Really black") 
p3.TopSurface = 0 
p3.BottomSurface = 0 
p3.Position = p1.Position +Vector3.new(-1.5,0,0) 
p4 = Instance.new("WedgePart") 
p4.Parent = m 
p4.Size = Vector3.new(4,1,2) 
p4.formFactor = "Symmetric" 
p4.BrickColor = BrickColor.new("Really black") 
p4.TopSurface = 0 
p4.BottomSurface = 0 
p4.Position = p1.Position +Vector3.new(0,0,-4) 
p5 = Instance.new("WedgePart") 
p5.Parent = m 
p5.Size = Vector3.new(1,2,4) 
p5.formFactor = "Symmetric" 
p5.BrickColor = BrickColor.new("Really black") 
p5.TopSurface = 0 
p5.BottomSurface = 0 
p5.Position = p1.Position +Vector3.new(4,-2,-1) 
p5.CFrame = p5.CFrame *CFrame.new(0,-.05,0)* CFrame.Angles(math.pi*0,math.pi*0,math.pi*1.5) 
p6 = Instance.new("WedgePart") 
p6.Parent = m 
p6.Size = Vector3.new(1,2,4) 
p6.formFactor = "Symmetric" 
p6.BrickColor = BrickColor.new("Really black") 
p6.TopSurface = 0 
p6.BottomSurface = 0 
p6.Position = p1.Position +Vector3.new(-4,2,-1) 
p6.CFrame = p6.CFrame *CFrame.new(0,-.05,0)* CFrame.Angles(math.pi*0,math.pi*0,math.pi*-1.5) 

v = Instance.new("BodyVelocity") 
v.Parent = p 
v.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
v.velocity = Vector3.new(0, 0, 0) 

g = Instance.new("BodyGyro") 
g.Parent = p 
g.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
end 

----welds---- 
p1w = Instance.new("Weld") 
p1w.Parent = p1 
p1w.Part0 = p1w.Parent 
p1w.Part1 = p 
p1w.C1 = CFrame.new(0,0,0) 

p2w = Instance.new("Weld") 
p2w.Parent = p1 
p2w.Part0 = p1w.Parent 
p2w.Part1 = p2 
p2w.C1 = CFrame.new(1.5,-1,0) 

p3w = Instance.new("Weld") 
p3w.Parent = p1 
p3w.Part0 = p1w.Parent 
p3w.Part1 = p3 
p3w.C1 = CFrame.new(-1.5,-1,0) 

p4w = Instance.new("Weld") 
p4w.Parent = p1 
p4w.Part0 = p1w.Parent 
p4w.Part1 = p4 
p4w.C1 = CFrame.new(0,0,4) 

p5w = Instance.new("Weld") 
p5w.Parent = p1 
p5w.Part0 = p1w.Parent 
p5w.Part1 = p5 
p5w.C1 = CFrame.new(0,-3,1)* CFrame.Angles(math.pi*0,math.pi*0,math.pi*1.5) 

p6w = Instance.new("Weld") 
p6w.Parent = p1 
p6w.Part0 = p1w.Parent 
p6w.Part1 = p6 
p6w.C1 = CFrame.new(0,-3,1)* CFrame.Angles(math.pi*0,math.pi*0,math.pi*-1.5) 

mouse.Button1Down:connect(function() 
click = true 
while click == true do 
g.cframe = CFrame.new(p.Position, mouse.Hit.p) 
v.velocity = p.CFrame.lookVector*speed 
wait() 
end 
end) 
mouse.Button1Up:connect(function() 
click = false 
v.velocity = Vector3.new(0, .2, 0) 
end) 

mouse.KeyDown:connect(function(key) 
if key == "z" then 
speed = speed + 50 
end 
if key == "x" then 
speed = speed - 50 
end 
if key == "c" then 
local m = Instance.new("Message") 
m.Parent = plyr 
m.Text = speed 
wait(2) 
m:Remove() 
end 

if key == "b" then 
mode = mode - 1 
end 
if key == "n" then 
mode = mode + 1 
end 
if key == "m" then 
local m = Instance.new("Message") 
m.Parent = plyr 
m.Text = mode 
wait(2) 
m:Remove() 
end 

if key == "j" then 
cluster = cluster - 1 
end 
if key == "k" then 
cluster = cluster + 1 
end 
if key == "l" then 
local m = Instance.new("Message") 
m.Parent = plyr 
m.Text = cluster 
wait(2) 
m:Remove() 
end 
-------------weapons(guns)------ 
if mode == 1 then 
if key == "f" then 
local bul = Instance.new("Part") 
bul.formFactor = "Plate" 
bul.Size = Vector3.new(1,.8,2) 
bul.BrickColor = BrickColor.new("Bright yellow") 
bul.Transparency = .5 
bul.CanCollide = true 
bul.CFrame = p.CFrame * CFrame.new(0,-2,-6) 
bul.Parent = Workspace 

local trail = Instance.new("Smoke") 
trail.Size = 3 
trail.Opacity = 1 
trail.Parent = bul 
trail.Color = Color3.new(0,0,0) 

local bulv = Instance.new("BodyVelocity") 
bulv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bulv.velocity = p.CFrame.lookVector * (speed + 100) 
bulv.Parent = bul 

bul.Touched:connect(function(hit) 
local ex = Instance.new("Explosion") 
ex.Parent = Workspace 
ex.Position = bul.Position 
bul:remove() 
end) 
game:GetService("Debris"):AddItem(bul, 10) 
end 

if key == "y" then 
local bul = Instance.new("Part") 
bul.formFactor = "Plate" 
bul.Size = Vector3.new(1,.8,2) 
bul.BrickColor = BrickColor.new("White") 
bul.Transparency = .5 
bul.CanCollide = true 
bul.CFrame = p.CFrame * CFrame.new(0,-2,-6) 
bul.Parent = Workspace 

local trail = Instance.new("Smoke") 
trail.Size = 3 
trail.Opacity = 1 
trail.Parent = bul 
trail.Color = Color3.new(0,0,0) 

local bulv = Instance.new("BodyVelocity") 
bulv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bulv.velocity = p.CFrame.lookVector * (speed + 100) 
bulv.Parent = bul 

bul.Touched:connect(function(hit) 
hit:remove() 
bul:remove() 
end) 
game:GetService("Debris"):AddItem(bul, 10) 
end 

if key == "q" then 
local bul = Instance.new("Part") 
bul.formFactor = "Plate" 
bul.Size = Vector3.new(1,.8,2) 
bul.BrickColor = BrickColor.new("Bright green") 
bul.Transparency = .5 
bul.CanCollide = true 
bul.CFrame = p.CFrame * CFrame.new(0,-2,-6) 
bul.Parent = Workspace 

local trail = Instance.new("Smoke") 
trail.Size = 3 
trail.Opacity = 1 
trail.Parent = bul 
trail.Color = Color3.new(0,0,0) 

local bulv = Instance.new("BodyVelocity") 
bulv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bulv.velocity = p.CFrame.lookVector * (speed + 100) 
bulv.Parent = bul 

bul.Touched:connect(function(hit) 
bul:remove() 
local chk = hit.Parent:findFirstChild("Humanoid") 
if chk ~= nil then 
hit.Parent.Humanoid.PlatformStand = true 
hit.Parent.Torso.CFrame = hit.Parent.Torso.CFrame * CFrame.Angles(3,3,3) 
end 
end) 
game:GetService("Debris"):AddItem(bul, 10) 
end 
if key == "e" then 
local bul = Instance.new("Part") 
bul.formFactor = "Plate" 
bul.Size = Vector3.new(1,.8,2) 
bul.BrickColor = BrickColor.new("Bright blue") 
bul.Transparency = .5 
bul.CanCollide = true 
bul.CFrame = p.CFrame * CFrame.new(0,-2,-6) 
bul.Parent = Workspace 

local trail = Instance.new("Smoke") 
trail.Size = 3 
trail.Opacity = 1 
trail.Parent = bul 
trail.Color = Color3.new(0,0,0) 

local bulv = Instance.new("BodyVelocity") 
bulv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bulv.velocity = p.CFrame.lookVector * (speed + 100) 
bulv.Parent = bul 

bul.Touched:connect(function(hit) 
local weld = Instance.new("Weld") 
weld.Parent = hit 
weld.Part0 = hit 
weld.Part1 = bul 
wait(5) 
weld:remove() 
wait() 
bul:remove() 
end) 
game:GetService("Debris"):AddItem(bul, 10) 
end 
if key == "r" then 
local bul = Instance.new("Part") 
bul.formFactor = "Plate" 
bul.Size = Vector3.new(1,.8,2) 
bul.BrickColor = BrickColor.new("Black") 
bul.Transparency = .5 
bul.CanCollide = true 
bul.CFrame = p.CFrame * CFrame.new(0,-2,-6) 
bul.Parent = Workspace 

local trail = Instance.new("Smoke") 
trail.Size = 3 
trail.Opacity = 1 
trail.Parent = bul 
trail.Color = Color3.new(0,0,0) 

local bulv = Instance.new("BodyVelocity") 
bulv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bulv.velocity = p.CFrame.lookVector * (speed + 100) 
bulv.Parent = bul 

bul.Touched:connect(function(hit) 
hit:BreakJoints() 
bul:remove() 
end) 
game:GetService("Debris"):AddItem(bul, 10) 
end 
if key == "t" then 
local bul = Instance.new("Part") 
bul.formFactor = "Plate" 
bul.Size = Vector3.new(1,.8,2) 
bul.BrickColor = BrickColor.new("Really black") 
bul.Transparency = .5 
bul.CanCollide = true 
bul.CFrame = p.CFrame * CFrame.new(0,-2,-6) 
bul.Parent = Workspace 

local bulv = Instance.new("BodyVelocity") 
bulv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bulv.velocity = p.CFrame.lookVector * (speed + 100) 
bulv.Parent = bul 

bul.Touched:connect(function(hit) 
hit.Parent:BreakJoints() 
bul:remove() 
end) 
game:GetService("Debris"):AddItem(bul, 10) 
end 
if key == "g" then 
local bul = Instance.new("Part") 
bul.formFactor = "Plate" 
bul.Size = Vector3.new(2,.4,2) 
bul.BrickColor = BrickColor.new("Neon orange") 
bul.Transparency = .5 
bul.CanCollide = true 
bul.CFrame = p.CFrame * CFrame.new(0,-2,-6) 
bul.Parent = Workspace 

local bulv = Instance.new("BodyVelocity") 
bulv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bulv.velocity = p.CFrame.lookVector * (speed + 150) 
bulv.Parent = bul 

bul.Touched:connect(function(hit) 
bulv:remove() 
local weld = Instance.new("Weld") 
weld.Parent = hit 
weld.Part0 = hit 
weld.Part1 = bul 
local sm = Instance.new("Smoke") 
sm.Parent = bul 
sm.RiseVelocity = 15 
sm.Size = 5 
wait(5) 
local ex = Instance.new("Explosion") 
ex.Parent = Workspace 
ex.Position = bul.Position 
ex.BlastRadius = 10 
weld:remove() 
wait() 
bul:remove() 
end) 
end 

if key == "v" then 
local bul1 = Instance.new("Part") 
bul1.formFactor = "Plate" 
bul1.Size = Vector3.new(1,.8,3) 
bul1.BrickColor = BrickColor.new("Bright yellow") 
bul1.Transparency = .5 
bul1.CanCollide = true 
bul1.CFrame = p.CFrame * CFrame.new(2,-2,-6) 
bul1.Parent = Workspace 

local trail = Instance.new("Smoke") 
trail.Size = 3 
trail.Opacity = 1 
trail.Parent = bul1 
trail.Color = Color3.new(0,0,0) 

local bul2 = Instance.new("Part") 
bul2.formFactor = "Plate" 
bul2.Size = Vector3.new(1,.8,3) 
bul2.BrickColor = BrickColor.new("Bright yellow") 
bul2.Transparency = .5 
bul2.CanCollide = true 
bul2.CFrame = p.CFrame * CFrame.new(-2,-2,-6) 
bul2.Parent = Workspace 

local trail = Instance.new("Smoke") 
trail.Size = 3 
trail.Opacity = 1 
trail.Parent = bul2 
trail.Color = Color3.new(0,0,0) 

local bulv1 = Instance.new("BodyVelocity") 
bulv1.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bulv1.velocity = p.CFrame.lookVector * (speed + 100) 
bulv1.Parent = bul1 

local bulv2 = Instance.new("BodyVelocity") 
bulv2.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bulv2.velocity = p.CFrame.lookVector * (speed + 100) 
bulv2.Parent = bul2 

bul1.Touched:connect(function(hit) 
local ex = Instance.new("Explosion") 
ex.Parent = Workspace 
ex.Position = bul1.Position 
bul1:remove() 
end) 

bul2.Touched:connect(function(hit) 
local ex = Instance.new("Explosion") 
ex.Parent = Workspace 
ex.Position = bul2.Position 
bul2:remove() 
end) 
game:GetService("Debris"):AddItem(bul, 10) 
end 
end 
----------------------------weapons, bombs(in con)-------------- 
if mode == 2 then 
if key == "f" then 
local b = Instance.new("Part") 
b.Parent = workspace 
b.CFrame = p.CFrame * CFrame.new(0,-4,0) 
b.Shape = "Ball" 
b.BrickColor = BrickColor.new("Bright yellow") 
b.formFactor = "Symmetric" 
b.Size = Vector3.new(1,1,1) 

b.Touched:connect(function(hit) 
local blast = Instance.new("Part") 
blast.BrickColor = b.BrickColor 
blast.CanCollide = false 
blast.Anchored = true 
blast.Transparency = .5 
blast.Parent = Workspace 
blast.CFrame = b.CFrame 
blast.formFactor = "Symmetric" 
blast.Shape = "Ball" 
blast.Size = Vector3.new(10,10,10) 
blast.Parent = Workspace 
b:remove() 

local ex = Instance.new("Explosion") 
ex.BlastRadius = 5 
ex.Parent = Workspace 
ex.Position = blast.Position 
wait(.5) 
blast:remove() 
end) 
end 

if key == "e" then 
local mod = Instance.new("Model") 
mod.Parent = Workspace 
local b = Instance.new("Part") 
b.Parent = mod 
b.CFrame = p.CFrame * CFrame.new(0,-4,0) 
b.Shape = "Ball" 
b.BrickColor = BrickColor.new("Bright blue") 
b.formFactor = "Symmetric" 
b.Size = Vector3.new(1,1,1) 

b.Touched:connect(function(hit) 
local blast = Instance.new("Part") 
blast.BrickColor = b.BrickColor 
blast.CanCollide = false 
blast.Anchored = true 
blast.Transparency = .5 
blast.CFrame = b.CFrame 
blast.formFactor = "Symmetric" 
blast.Shape = "Ball" 
blast.Size = Vector3.new(20,20,20) 
blast.Parent = mod 
b:remove() 
blast.Touched:connect(function(hit) 
local weld = Instance.new("Weld") 
weld.Parent = blast 
weld.Part0 = blast 
weld.Part1 = hit 
end) 
wait(1) 
blast:remove() 
end) 
end 

if key == "q" then 
local mod = Instance.new("Model") 
mod.Parent = Workspace 
local b = Instance.new("Part") 
b.Parent = mod 
b.CFrame = p.CFrame * CFrame.new(0,-4,0) 
b.Shape = "Ball" 
b.BrickColor = BrickColor.new("Bright green") 
b.formFactor = "Symmetric" 
b.Size = Vector3.new(1,1,1) 

b.Touched:connect(function(hit) 
local blast = Instance.new("Part") 
blast.BrickColor = b.BrickColor 
blast.CanCollide = false 
blast.Anchored = true 
blast.Transparency = .5 
blast.CFrame = b.CFrame 
blast.formFactor = "Symmetric" 
blast.Shape = "Ball" 
blast.Size = Vector3.new(20,20,20) 
blast.Parent = mod 
b:remove() 
blast.Touched:connect(function(hit) 
local chk = hit.Parent:FindFirstChild("Humanoid") 
if chk ~= nil then 
hit.Parent.Humanoid.PlatformStand = true 
end 
end) 
wait(1) 
blast:remove() 
end) 
end 

if key == "g" then 
local mod = Instance.new("Model") 
mod.Parent = Workspace 
local b = Instance.new("Part") 
b.Parent = mod 
b.CFrame = p.CFrame * CFrame.new(0,-4,0) 
b.Shape = "Ball" 
b.BrickColor = BrickColor.new("Neon orange") 
b.formFactor = "Symmetric" 
b.Size = Vector3.new(1,1,1) 

b.Touched:connect(function(hit) 
local mine = Instance.new("Part") 
mine.formFactor = "Plate" 
mine.Size = Vector3.new(2,.4,2) 
mine.BrickColor = BrickColor.new("Neon orange") 
mine.Transparency = .8 
mine.CanCollide = true 
mine.CFrame = b.CFrame 
mine.Parent = mod 
b:remove() 
mine.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
local blast = Instance.new("Part") 
blast.BrickColor = b.BrickColor 
blast.CanCollide = false 
blast.Anchored = true 
blast.Transparency = .5 
blast.CFrame = mine.CFrame 
blast.formFactor = "Symmetric" 
blast.Shape = "Ball" 
blast.Size = Vector3.new(20,20,20) 
blast.Parent = mod 
local ex = Instance.new("Explosion") 
ex.Parent = Workspace 
ex.Position = blast.Position 
ex.BlastRadius = 10 
mine :remove() 
wait(1) 
blast:remove() 
end 
end) 
end) 
end 
end 
-----(HEAVY TESTING)----------- 
if mode == 3 then 
if key == "g" then 
if mouse.Target then 
local tar = mouse.Target 
local ptar = tar.Parent 
local mis = Instance.new("Part") 
mis.formFactor = "Symmetric" 
mis.Shape = "Ball" 
mis.BrickColor = BrickColor.new("Bright yellow") 
mis.Size = Vector3.new(1,1,1) 
mis.Parent = Workspace 
mis.CFrame = p.CFrame * CFrame.new(0,-4,0) 
local misv = Instance.new("BodyVelocity") 
misv.Parent = mis 
misv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
misv.velocity = mis.CFrame.lookVector * 50 
local misg = Instance.new("BodyGyro") 
misg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
misg.Parent = mis 
misg.P = 50000 
misg.cframe = CFrame.new(tar.Position, mis.Position) 
mis.Touched:connect(function(hit) 
if hit.Name == tar.Name then 
local ex = Instance.new("Explosion") 
ex.Parent = Workspace 
ex.Position = mis.Position 
mis:remove() 
end 
end) 
while mis.Parent == Workspace and tar:IsDescendantOf(Workspace) do 
wait() 
misg.cframe = CFrame.new(tar.Position, mis.Position) 
misv.velocity = mis.CFrame.lookVector * -250 
end 
end 
end 
--------cluster---------- 
if key == "h" then 
if mouse.Target then 
local tar = mouse.Target 
local ptar = tar.Parent 
local misa = Instance.new("Part") 
misa.formFactor = "Symmetric" 
misa.Shape = "Ball" 
misa.BrickColor = BrickColor.new("Bright yellow") 
misa.Size = Vector3.new(1,1,1) 
misa.Parent = Workspace 
misa.CFrame = p.CFrame * CFrame.new(0,-4,0) 
local misav = Instance.new("BodyVelocity") 
misav.Parent = misa 
misav.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
misav.velocity = misa.CFrame.lookVector * 50 
game:GetService("Debris"):AddItem(misa, 10) 

---------part 2 
wait(2) 
for i = 1,cluster do 
local mis = Instance.new("Part") 
mis.formFactor = "Symmetric" 
mis.Shape = "Ball" 
mis.BrickColor = BrickColor.new("Bright red") 
mis.Size = Vector3.new(1,1,1) 
mis.Parent = Workspace 
mis.CFrame = misa.CFrame * CFrame.new(math.random(-15,15),math.random(-15,15),math.random(-15,15)) 
local mismesh = Instance.new("SpecialMesh") 
mismesh.MeshType = "Sphere" 
mismesh.Scale = Vector3.new(.25,.25,.25) 
mismesh.Parent = mis 
local miss = Instance.new("Sparkles") 
miss.Color = Color3.new(1,0,0) 
miss.Parent = mis 
local misv = Instance.new("BodyVelocity") 
misv.Parent = mis 
misv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
misv.velocity = mis.CFrame.lookVector * 50 
local misg = Instance.new("BodyGyro") 
misg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
misg.Parent = mis 
misg.P = 50000 
misg.cframe = CFrame.new(tar.Position, mis.Position) 
mis.Touched:connect(function(hit) 
if hit.Name == tar.Name then 
local ex = Instance.new("Explosion") 
ex.Parent = Workspace 
ex.Position = mis.Position 
mis:remove() 
end 
end) 
coroutine.resume(coroutine.create(function() ClusterBombPiece(mis, tar, misg, misv) end)) 
end 
end 
misa:remove() 
end 
-----------machine gun---- 
if key == "f" then 
local tar = mouse.Target 
if tar ~= nil then 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Bright yellow") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(p5.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((p5.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
local shot2 = Instance.new("Part") 
shot2.Parent = Workspace 
shot2.BrickColor = BrickColor.new("Bright yellow") 
shot2.formFactor = "Symmetric" 
shot2.Size = Vector3.new(1,1,1) 
shot2.Anchored = true 
local shot2m = Instance.new("BlockMesh") 
shot2m.Scale = Vector3.new(.2,.2,(p6.Position - mouse.Hit.p).magnitude) 
shot2.CFrame = CFrame.new(((p6.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shot2m.Parent = shot2 
if tar.Parent:findFirstChild("Humanoid") ~= nil then 
tar.Parent.Humanoid.Health = tar.Parent.Humanoid.Health - 20 
end 
wait(.1) 
shot:remove() 
shot2:remove() 
end 
end 
--gone-- 
if key == "e" then 
local tar = mouse.Target 
if tar ~= nil then 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("White") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(p5.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((p5.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
local shot2 = Instance.new("Part") 
shot2.Parent = Workspace 
shot2.BrickColor = BrickColor.new("White") 
shot2.formFactor = "Symmetric" 
shot2.Size = Vector3.new(1,1,1) 
shot2.Anchored = true 
local shot2m = Instance.new("BlockMesh") 
shot2m.Scale = Vector3.new(.2,.2,(p6.Position - mouse.Hit.p).magnitude) 
shot2.CFrame = CFrame.new(((p6.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shot2m.Parent = shot2 
tar:remove() 
wait(.1) 
shot:remove() 
shot2:remove() 
end 
end 
--stun-- 
if key == "q" then 
local tar = mouse.Target 
if tar ~= nil then 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Bright green") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(p5.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((p5.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
local shot2 = Instance.new("Part") 
shot2.Parent = Workspace 
shot2.BrickColor = BrickColor.new("Bright green") 
shot2.formFactor = "Symmetric" 
shot2.Size = Vector3.new(1,1,1) 
shot2.Anchored = true 
local shot2m = Instance.new("BlockMesh") 
shot2m.Scale = Vector3.new(.2,.2,(p6.Position - mouse.Hit.p).magnitude) 
shot2.CFrame = CFrame.new(((p6.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shot2m.Parent = shot2 
if tar.Parent:findFirstChild("Humanoid") ~= nil then 
tar.Parent.Humanoid.Sit = true 
tar.Parent.Torso.CFrame = tar.Parent.Torso.CFrame*CFrame.Angles(3,3,3) 
end 
wait(.1) 
shot:remove() 
shot2:remove() 
end 
end 
--break-- 
if key == "r" then 
local tar = mouse.Target 
if tar ~= nil then 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Black") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(p5.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((p5.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
local shot2 = Instance.new("Part") 
shot2.Parent = Workspace 
shot2.BrickColor = BrickColor.new("Black") 
shot2.formFactor = "Symmetric" 
shot2.Size = Vector3.new(1,1,1) 
shot2.Anchored = true 
local shot2m = Instance.new("BlockMesh") 
shot2m.Scale = Vector3.new(.2,.2,(p6.Position - mouse.Hit.p).magnitude) 
shot2.CFrame = CFrame.new(((p6.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shot2m.Parent = shot2 
tar:BreakJoints() 
wait(.1) 
shot:remove() 
shot2:remove() 
end 
end 
--zero point energy 
if key == "t" then 
local tar = mouse.Target 
if tar ~= nil then 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Bright blue") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(p5.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((p5.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
local shot2 = Instance.new("Part") 
shot2.Parent = Workspace 
shot2.BrickColor = BrickColor.new("Bright blue") 
shot2.formFactor = "Symmetric" 
shot2.Size = Vector3.new(1,1,1) 
shot2.Anchored = true 
local shot2m = Instance.new("BlockMesh") 
shot2m.Scale = Vector3.new(.2,.2,(p6.Position - mouse.Hit.p).magnitude) 
shot2.CFrame = CFrame.new(((p6.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shot2m.Parent = shot2 
local hold = Instance.new("BodyPosition") 
if tar.Anchored == false then 
hold.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
hold.position = p.Position + Vector3.new(0,-6,0) 
hold.Parent = tar 
end 
coroutine.resume(coroutine.create(function() move(hold, tar) end)) 
wait(.1) 
shot:remove() 
shot2:remove() 
end 
end 
--drop-- 
if key == "y" then 
local tar = mouse.Target 
if tar ~= nil then 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Deep blue") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(p5.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((p5.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
local shot2 = Instance.new("Part") 
shot2.Parent = Workspace 
shot2.BrickColor = BrickColor.new("Deep blue") 
shot2.formFactor = "Symmetric" 
shot2.Size = Vector3.new(1,1,1) 
shot2.Anchored = true 
local shot2m = Instance.new("BlockMesh") 
shot2m.Scale = Vector3.new(.2,.2,(p6.Position - mouse.Hit.p).magnitude) 
shot2.CFrame = CFrame.new(((p6.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shot2m.Parent = shot2 
if tar:findFirstChild("BodyPosition") ~= nil then 
tar.BodyPosition:remove() 
end 
wait(.1) 
shot:remove() 
shot2:remove() 
end 
end 
--burn laser-- 
if key == "u" then 
local tar = mouse.Target 
if tar ~= nil then 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Deep blue") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(p5.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((p5.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
local shot2 = Instance.new("Part") 
shot2.Parent = Workspace 
shot2.BrickColor = BrickColor.new("Deep blue") 
shot2.formFactor = "Symmetric" 
shot2.Size = Vector3.new(1,1,1) 
shot2.Anchored = true 
local shot2m = Instance.new("BlockMesh") 
shot2m.Scale = Vector3.new(.2,.2,(p6.Position - mouse.Hit.p).magnitude) 
shot2.CFrame = CFrame.new(((p6.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shot2m.Parent = shot2 
local burn = Instance.new("Part") 
burn.CFrame = tar.CFrame 
burn.BrickColor = BrickColor.new("Black") 
burn.formFactor = tar.formFactor 
burn.CanCollide = false 
burn.Transparency = 1 
burn.Size = tar.Size 
local burnw = Instance.new("Weld") 
burnw.Parent = burn 
burnw.Part0 = burn 
burnw.Part1 = tar 
burn.Parent = Workspace 
local burnmes = Instance.new("BlockMesh") 
burnmes.Parent = burn 
burnmes.Scale = Vector3.new(1.002,1.002,1.002) 
coroutine.resume(coroutine.create(function() burning(burn, tar) end)) 
wait(.1) 
shot:remove() 
shot2:remove() 
end 
end 
--shield-- 
if key == "p" then 
local tar = mouse.Target 
if tar ~= nil then 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Deep blue") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(p5.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((p5.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
local shot2 = Instance.new("Part") 
shot2.Parent = Workspace 
shot2.BrickColor = BrickColor.new("Deep blue") 
shot2.formFactor = "Symmetric" 
shot2.Size = Vector3.new(1,1,1) 
shot2.Anchored = true 
local shot2m = Instance.new("BlockMesh") 
shot2m.Scale = Vector3.new(.2,.2,(p6.Position - mouse.Hit.p).magnitude) 
shot2.CFrame = CFrame.new(((p6.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shot2m.Parent = shot2 
local burn = Instance.new("Part") 
burn.CFrame = tar.CFrame 
burn.BrickColor = BrickColor.new("White") 
burn.formFactor = tar.formFactor 
burn.CanCollide = false 
burn.Transparency = 1 
burn.Size = tar.Size 
local burnw = Instance.new("Weld") 
burnw.Parent = burn 
burnw.Part0 = burn 
burnw.Part1 = tar 
burn.Parent = Workspace 
local burnmes = Instance.new("BlockMesh") 
burnmes.Parent = burn 
burnmes.Scale = Vector3.new(1.002,1.002,1.002) 
coroutine.resume(coroutine.create(function() shield(burn, tar) end)) 
wait(.1) 
shot:remove() 
shot2:remove() 
end 
end 
--invisible-- 
if key == "v" then 
local tar = mouse.Target 
if tar ~= nil then 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Deep blue") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(p5.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((p5.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
local shot2 = Instance.new("Part") 
shot2.Parent = Workspace 
shot2.BrickColor = BrickColor.new("Deep blue") 
shot2.formFactor = "Symmetric" 
shot2.Size = Vector3.new(1,1,1) 
shot2.Anchored = true 
local shot2m = Instance.new("BlockMesh") 
shot2m.Scale = Vector3.new(.2,.2,(p6.Position - mouse.Hit.p).magnitude) 
shot2.CFrame = CFrame.new(((p6.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shot2m.Parent = shot2 
coroutine.resume(coroutine.create(function() ghost(tar) end)) 
wait(.1) 
shot:remove() 
shot2:remove() 
end 
end 
--end of 3-- 
end 
--mode 4-- TRAPS! 
if mode == 4 then 
if key == "q" then 
local tar = mouse.Target 
if tar ~= nil then 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Bright yellow") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(p5.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((p5.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
local shot2 = Instance.new("Part") 
shot2.Parent = Workspace 
shot2.BrickColor = BrickColor.new("Bright yellow") 
shot2.formFactor = "Symmetric" 
shot2.Size = Vector3.new(1,1,1) 
shot2.Anchored = true 
local shot2m = Instance.new("BlockMesh") 
shot2m.Scale = Vector3.new(.2,.2,(p6.Position - mouse.Hit.p).magnitude) 
shot2.CFrame = CFrame.new(((p6.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shot2m.Parent = shot2 
tar.Velocity = tar.Velocity + Vector3.new(0,50,0) 
wait(.1) 
shot:remove() 
shot2:remove() 
end 
end 

if key == "e" then 
local tar = mouse.Target 
if tar ~= nil then 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Bright yellow") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(p5.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((p5.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
local shot2 = Instance.new("Part") 
shot2.Parent = Workspace 
shot2.BrickColor = BrickColor.new("Bright yellow") 
shot2.formFactor = "Symmetric" 
shot2.Size = Vector3.new(1,1,1) 
shot2.Anchored = true 
local shot2m = Instance.new("BlockMesh") 
shot2m.Scale = Vector3.new(.2,.2,(p6.Position - mouse.Hit.p).magnitude) 
shot2.CFrame = CFrame.new(((p6.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shot2m.Parent = shot2 
tar.Velocity = Vector3.new(0,0,0) 
wait(.1) 
shot:remove() 
shot2:remove() 
end 
end 

if key == "f" then 
local tar = mouse.Target 
if tar ~= nil then 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Cyan") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(p5.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((p5.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
local shot2 = Instance.new("Part") 
shot2.Parent = Workspace 
shot2.BrickColor = BrickColor.new("Cyan") 
shot2.formFactor = "Symmetric" 
shot2.Size = Vector3.new(1,1,1) 
shot2.Anchored = true 
local shot2m = Instance.new("BlockMesh") 
shot2m.Scale = Vector3.new(.2,.2,(p6.Position - mouse.Hit.p).magnitude) 
shot2.CFrame = CFrame.new(((p6.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shot2m.Parent = shot2 
if tar.Parent:findFirstChild("Humanoid") ~= nil then 
local ice = Instance.new("Part") 
ice.Position = tar.Parent.Torso.Position 
ice.Anchored = true 
tar.Parent.Torso.Anchored = true 
ice.BrickColor = BrickColor.new("Cyan") 
ice.Size = Vector3.new(4,6,4) 
ice.Reflectance = .2 
ice.TopSurface = 0 
ice.BottomSurface = 0 
ice.Transparency = .5 
ice.Parent = Workspace 
coroutine.resume(coroutine.create(function() freeze(tar,ice) end)) 
end 
wait(.1) 
shot:remove() 
shot2:remove() 
end 
end 


if key == "r" then 
local tar = mouse.Target 
if tar ~= nil then 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Neon orange") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(p5.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((p5.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
local shot2 = Instance.new("Part") 
shot2.Parent = Workspace 
shot2.BrickColor = BrickColor.new("Neon orange") 
shot2.formFactor = "Symmetric" 
shot2.Size = Vector3.new(1,1,1) 
shot2.Anchored = true 
local shot2m = Instance.new("BlockMesh") 
shot2m.Scale = Vector3.new(.2,.2,(p6.Position - mouse.Hit.p).magnitude) 
shot2.CFrame = CFrame.new(((p6.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shot2m.Parent = shot2 
local ex = Instance.new("Explosion") 
ex.Parent = Workspace 
ex.Position = mouse.Hit.p 
wait(.1) 
shot:remove() 
shot2:remove() 
end 
end 

if key == "t" then 
local tar = mouse.Target 
if tar ~= nil then 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Neon orange") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(p5.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((p5.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
local shot2 = Instance.new("Part") 
shot2.Parent = Workspace 
shot2.BrickColor = BrickColor.new("Neon orange") 
shot2.formFactor = "Symmetric" 
shot2.Size = Vector3.new(1,1,1) 
shot2.Anchored = true 
local shot2m = Instance.new("BlockMesh") 
shot2m.Scale = Vector3.new(.2,.2,(p6.Position - mouse.Hit.p).magnitude) 
shot2.CFrame = CFrame.new(((p6.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shot2m.Parent = shot2 
for i = 1,25 do 
wait() 
local ex1 = Instance.new("Explosion") 
ex1.Parent = Workspace 
ex1.Position = mouse.Hit.p + Vector3.new(i,0,i) 
ex1.BlastRadius = 1 
local ex2 = Instance.new("Explosion") 
ex2.Parent = Workspace 
ex2.Position = mouse.Hit.p + Vector3.new(-i,0,i) 
ex2.BlastRadius = 1 
local ex3 = Instance.new("Explosion") 
ex3.Parent = Workspace 
ex3.Position = mouse.Hit.p + Vector3.new(-i,0,-i) 
ex3.BlastRadius = 1 
local ex4 = Instance.new("Explosion") 
ex4.Parent = Workspace 
ex4.Position = mouse.Hit.p + Vector3.new(i,0,-i) 
ex4.BlastRadius = 1 
end 
wait(.1) 
shot:remove() 
shot2:remove() 
end 
end 

if key == "y" then 
local tar = mouse.Target 
if tar ~= nil then 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Neon orange") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(p5.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((p5.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
local shot2 = Instance.new("Part") 
shot2.Parent = Workspace 
shot2.BrickColor = BrickColor.new("Neon orange") 
shot2.formFactor = "Symmetric" 
shot2.Size = Vector3.new(1,1,1) 
shot2.Anchored = true 
local shot2m = Instance.new("BlockMesh") 
shot2m.Scale = Vector3.new(.2,.2,(p6.Position - mouse.Hit.p).magnitude) 
shot2.CFrame = CFrame.new(((p6.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shot2m.Parent = shot2 
for i = 1,25 do 
wait() 
local ex1 = Instance.new("Explosion") 
ex1.Parent = Workspace 
ex1.Position = mouse.Hit.p + Vector3.new(i,0,0) 
ex1.BlastRadius = 1 
local ex2 = Instance.new("Explosion") 
ex2.Parent = Workspace 
ex2.Position = mouse.Hit.p + Vector3.new(-i,0,0) 
ex2.BlastRadius = 1 
local ex3 = Instance.new("Explosion") 
ex3.Parent = Workspace 
ex3.Position = mouse.Hit.p + Vector3.new(0,0,-i) 
ex3.BlastRadius = 1 
local ex4 = Instance.new("Explosion") 
ex4.Parent = Workspace 
ex4.Position = mouse.Hit.p + Vector3.new(0,0,i) 
ex4.BlastRadius = 1 
end 
wait(.1) 
shot:remove() 
shot2:remove() 
end 
end 

--[[if key == "g" then 
local tar = mouse.Target 
if tar ~= nil then 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Neon orange") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(p5.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((p5.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
local shot2 = Instance.new("Part") 
shot2.Parent = Workspace 
shot2.BrickColor = BrickColor.new("Neon orange") 
shot2.formFactor = "Symmetric" 
shot2.Size = Vector3.new(1,1,1) 
shot2.Anchored = true 
local shot2m = Instance.new("BlockMesh") 
shot2m.Scale = Vector3.new(.2,.2,(p6.Position - mouse.Hit.p).magnitude) 
shot2.CFrame = CFrame.new(((p6.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shot2m.Parent = shot2 
local spin = Instance.new("Part") 
spin.Anchored = true 
spin.Tranparency = 1 
spin.Position = mouse.Hit.p 
for i = 1,25 do 
wait() 
spin.CFrame = spin.CFrame*CFrame.Angles(0,(math.pi*(.1*i)),0) 
local ex1 = Instance.new("Explosion") 
ex1.Parent = Workspace 
ex1.CFrame = spin.CFrame * CFrame.new(i,0,i) 
ex1.BlastRadius = 1 
local ex2 = Instance.new("Explosion") 
ex2.Parent = Workspace 
ex2.CFrame = spin.CFrame * CFrame.new(-i,0,i) 
ex2.BlastRadius = 1 
local ex3 = Instance.new("Explosion") 
ex3.Parent = Workspace 
ex3.CFrame = spin.CFrame * CFrame.new(-i,0,-i) 
ex3.BlastRadius = 1 
local ex4 = Instance.new("Explosion") 
ex4.Parent = Workspace 
ex4.CFrame = spin.CFrame * CFrame.new(i,0,-i) 
ex4.BlastRadius = 1 
end 
spin:remove() 
wait(.1) 
shot:remove() 
shot2:remove() 
end 
end]] 

--end of 4-- 
end 
---------end of script------ 
end) 
end)  
