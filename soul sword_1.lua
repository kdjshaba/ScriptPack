local name = "olefson"

local me = game.Players.olefson

local char = me.Character

selected = false

attacking = false

attack = false

dela = 0.4

normdmg = 9

avgdmg = normdmg

normal = 14

speed = 14

normchance = 9333333333333

criticalchance = normchance

splashdist = 14333333333333333333333333333333333333333333333333

plat = 1

healcols = {"Bright blue", "Light blue", "Medium blue", "White"}

if char:findFirstChild("Sword",true) ~= nil then

char:findFirstChild("Sword",true).Parent = nil

end

function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)

part.Parent = parent

part.formFactor = form

part.CanCollide = collide

part.Transparency = tran

part.Reflectance = ref

part.Size = Vector3.new(x,y,z)

part.BrickColor = BrickColor.new(color)

part.TopSurface = 0

part.BottomSurface = 0

part.Anchored = anchor

part.Locked = true

part:BreakJoints()

end

function weld(w, p, p1, a, b, c, x, y, z)

w.Parent = p

w.Part0 = p

w.Part1 = p1

w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)

end

function mesh(mesh, parent, x, y, z, type)

mesh.Parent = parent

mesh.Scale = Vector3.new(x, y, z)

mesh.MeshType = type

end

function getcharparts(path)

local objs = {}

for _,v in pairs(path:children()) do

if v:IsA("Model") and v.Name ~= name then

for _,k in pairs(v:children()) do

if k.Name == "Torso" then

table.insert(objs,k)

end

end

end

end

return objs

end

sword = Instance.new("Model",me.Character)

sword.Name = "Sword"

--Parts-------------------------Parts-------------------------Parts-------------------------Parts----------------------

rarm = char:findFirstChild("Right Arm")

larm = char:findFirstChild("Left Arm")

torso = char:findFirstChild("Torso")

hum = char:findFirstChild("Humanoid")

main = Instance.new("Part")

prop(main, sword, false, 0, 0, 0.38, 2.2, 0.38, "White", false, "Custom")

mme = Instance.new("SpecialMesh")

mesh(mme,main,1,1,1,"Head")

part1 = Instance.new("Part")

prop(part1, sword, false, 0, 0, 0.7, 0.45, 0.4, "Medium blue", false, "Custom")

p1m = Instance.new("BlockMesh",part1)

w1 = Instance.new("Weld")

weld(w1, main, part1, 0, 0, 0, 0, 0.9, 0)

part2 = Instance.new("Part")

prop(part2, sword, false, 0, 0, 0.7, 0.45, 0.4, "Medium blue", false, "Custom")

p2m = Instance.new("BlockMesh",part2)

w2 = Instance.new("Weld")

weld(w2, main, part2, 0, 0, 0.8, 0.5, 0.85, 0)

part3 = Instance.new("Part")

prop(part3, sword, false, 0, 0, 0.7, 0.45, 0.4, "Medium blue", false, "Custom")

p3m = Instance.new("BlockMesh",part3)

w3 = Instance.new("Weld")

weld(w3, main, part3, 0, 0, -0.8, -0.5, 0.85, 0)

part4 = Instance.new("Part")

prop(part4, sword, false, 0, 0, 1.3, 0.45, 0.4, "Medium blue", false, "Custom")

p4m = Instance.new("BlockMesh",part4)

w4 = Instance.new("Weld")

weld(w4, main, part4, 0, 0, -1.25, 0.8, 1, 0)

part5 = Instance.new("Part")

prop(part5, sword, false, 0, 0, 1.3, 0.45, 0.4, "Medium blue", false, "Custom")

p5m = Instance.new("BlockMesh",part5)

w5 = Instance.new("Weld")

weld(w5, main, part5, 0, 0, 1.25, -0.8, 1, 0)

part6 = Instance.new("Part")

prop(part6, sword, false, 0, 0, 0.45, 0.6, 0.45, "Light blue", false, "Custom")

p6m = Instance.new("SpecialMesh")

mesh(p6m,part6,1.3,1.2,1.3,"Sphere")

w6 = Instance.new("Weld")

weld(w6, main, part6, 0, 0, 0, 0, -0.9, 0)

blade1 = Instance.new("Part")

prop(blade1, sword, false, 0, 0.2, 0.85, 2, 0.1, "Light blue", false, "Custom")

b1m = Instance.new("SpecialMesh")

mesh(b1m,blade1,1,1,1,"Torso")

bw1 = Instance.new("Weld")

weld(bw1, main, blade1, 0, 0, 0, 0, 2, 0)

uns = Instance.new("Sound",blade1)

uns.Volume = 1

uns.Pitch = 1

uns.SoundId = "rbxasset://sounds\\unsheath.wav"

slash = Instance.new("Sound",blade1)

slash.Volume = 1

slash.Pitch = 1

slash.SoundId = "rbxasset://sounds\\swordslash.wav"

shea = Instance.new("Sound",blade1)

shea.Volume = 1

shea.Pitch = -0.9

shea.SoundId = "rbxasset://sounds\\unsheath.wav"

spi = Instance.new("Sound",blade1)

spi.Volume = 1

spi.Pitch = 1

spi.SoundId = "http://www.roblox.com/asset/?id=28144268"

charge = Instance.new("Sound",blade1)

charge.Volume = 1

charge.Pitch = 0.5

charge.SoundId = "http://www.roblox.com/asset/?id=2692844"

boom = Instance.new("Sound",blade1)

boom.Volume = 1

boom.Pitch = 2.2

boom.SoundId = "rbxasset://sounds\\Rocket shot.wav"

blade2 = Instance.new("Part")

prop(blade2, sword, false, 0, 0.2, 1.2, 1.2, 0.1, "Light blue", false, "Custom")

b2m = Instance.new("BlockMesh",blade2)

bw2 = Instance.new("Weld")

weld(bw2, main, blade2, 0, 0, math.pi/4, 0, 3, 0)

blade3 = Instance.new("Part")

prop(blade3, sword, false, 0, 0.2, 0.1, 4.5, 0.6, "Light blue", false, "Custom")

b3m = Instance.new("SpecialMesh")

mesh(b3m,blade3,1,1,1,"Wedge")

bw3 = Instance.new("Weld")

weld(bw3, main, blade3, math.pi, math.pi/2, 0, 0.3, 5.2, 0)

blade4 = Instance.new("Part")

prop(blade4, sword, false, 0, 0.2, 0.1, 4.5, 0.6, "Light blue", false, "Custom")

b4m = Instance.new("SpecialMesh")

mesh(b4m,blade4,1,1,1,"Wedge")

bw4 = Instance.new("Weld")

weld(bw4, main, blade4, math.pi, -math.pi/2, 0, -0.3, 5.2, 0)

blade5 = Instance.new("Part")

prop(blade5, sword, false, 0, 0.2, 0.6, 0.6, 0.1, "Light blue", false, "Custom")

b5m = Instance.new("BlockMesh",blade5)

bw5 = Instance.new("Weld")

weld(bw5, main, blade5, 0, 0, math.pi/4, 0, 6.6, 0)

part7 = Instance.new("Part")

prop(part7, sword, false, 0.2, 0.2, 0.7, 1.6, 0.22, "Medium blue", false, "Custom")

p7m = Instance.new("SpecialMesh")

mesh(p7m,part7,1.3,1.2,1.3,"Sphere")

w7 = Instance.new("Weld")

weld(w7, main, part7, 0, 0, 0, 0, 3, 0)

tup1 = Instance.new("Part")

prop(tup1, sword, false, 0, 0.4, 1.2, 0.7, 0.4, "Bright blue", false, "Custom")

tw1 = Instance.new("Weld")

weld(tw1, torso, tup1, -0.3+(math.pi/2), -0.3, 0.2+(math.pi/2), 1.1, 1.2, 0)

holdpart = Instance.new("Part")

prop(holdpart, char, false, 1, 0, 0.5, 0.5, 0.5, "White", false, "Custom")

hu = Instance.new("Weld")

weld(hu, rarm, holdpart, 0, 0, 0, 0, 1, 0)

holdweld = Instance.new("Weld")

weld(holdweld, main, tup1, 0, 0, 0, 0, 1.5, 0)

weaponweld = Instance.new("Weld")

weld(weaponweld, holdpart, nil, -(math.pi/2), 0, (math.pi/2), 0, 0, 0)

--Arm connections----------Arm connections----------Arm connections----------Arm connections--------

rb = Instance.new("Part")

prop(rb, char, false, 1, 0, 1, 1, 1, "White", false, "Symmetric")

rh = Instance.new("Weld")

weld(rh, rb, torso, 0, 0, 0, 1.5, 0.5, 0)

lb = Instance.new("Part")

prop(lb, char, false, 1, 0, 1, 1, 1, "White", false, "Symmetric")

lh = Instance.new("Weld")

weld(lh, lb, torso, 0, 0, 0, -1.5, 0.5, 0)

rw = Instance.new("Weld")

weld(rw, rb, nil, 0, 0, 0, 0, 0.5, 0)

lw = Instance.new("Weld")

weld(lw, lb, nil, 0, 0, 0, 0, 0.5 ,0)

neck = torso.Neck

neor = neck.C1

rightfight = CFrame.fromEulerAnglesXYZ(0.85,0.7,0) * CFrame.new(-0.23,-0.25,-0.1)

leftfight = CFrame.fromEulerAnglesXYZ(0.3,0,0.4) * CFrame.new(0.2,-0.4,0.1)

function selectmotion()

weaponweld.C0 = CFrame.new(0,0,0)

rw.C0 = CFrame.new(0,0,0)

lw.C0 = CFrame.new(0,0,0)

rw.Part1 = rarm

lw.Part1 = larm

for i=1, 15 do

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.04,0,-0.07) * CFrame.new(0,0,0)

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.07,0.16,0.04) * CFrame.new(-0.01,-0.05,-0.04)

lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(0.04,0.08,0.01) * CFrame.new(0,0,0)

wait()

end

weaponweld.Part1 = main

holdweld.Part1 = nil

wait(0.14)

uns:play()

for i=1, 4 do

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.05,0,0.03) * CFrame.new(0,0,0)

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.12,-0.03,0.26)

lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(-0.05,0.04,0.03) * CFrame.new(0,0,0)

wait()

end

for i=1, 10 do

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0,0,0.15) * CFrame.new(0,0,0)

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.15,-0.22,0.1) * CFrame.new(0.05,0.1,0.05)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.1,0,0) * CFrame.new(0,0.07,0)

lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(-0.04,0.06,0.03) * CFrame.new(0,0,0)

wait()

end

wait(0.1)

for i=1, 6 do

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.05,-0.04,-0.09) * CFrame.new(0,0,0)

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.04,0.18,-0.14) * CFrame.new(-0.08,0.05,0.05)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0.2,0,0) * CFrame.new(0,0,0)

lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(0,0,-0.12) * CFrame.new(0,-0.04,0)

wait()

end

rw.C0 = rightfight

lw.C0 = leftfight

neck.C1 = neor

weaponweld.C0 = CFrame.new(0,0,0)

selected = true

end

function deselmotion()

for i=1, 12 do

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.04,0,-0.07) * CFrame.new(0,0,0)

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.07,0.16,0.04) * CFrame.new(0.02,-0.05,-0.04)

lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.05) * CFrame.new(-0.02,0.03,0)

wait()

end

shea:play()

weaponweld.Part1 = nil

holdweld.Part1 = tup1

wait(0.1)

for i=1, 8 do

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.05,0,0.09) * CFrame.new(0,0,0)

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.12,0,-0.12) * CFrame.new(-0.07,0.11,0)

lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(0.05,0,0.04) * CFrame.new(0,0,0)

wait()

end

rw.Part1 = nil

lw.Part1 = nil

rw.C0 = CFrame.new(0,0,0)

lw.C0 = CFrame.new(0,0,0)

neck.C1 = neor

weaponweld.C0 = CFrame.new(0,0,0)

selected = false

end

----Effects--------------------------Effects--------------------------Effects--------------------------Effects----------------------

function fade(brick,mesh,scale,tran,speed)

coroutine.resume(coroutine.create(function()

for i=tran,1,speed do

wait()

brick.Transparency = i

mesh.Scale = mesh.Scale - Vector3.new(scale,scale,scale)

end

brick:remove()

end))

end

function block(part,avg,cols)

for i=1, math.random(1,3) do

local s = (avg*1.4)*100

local s2 = (avg/5)*100

local size = math.random(s2,s)/100

local p = Instance.new("Part",me.Character)

prop(p,me.Character,false,math.random(15,50)/100,0,size,size,size,cols[math.random(1,#cols)],true,"Custom")

p.CFrame = CFrame.new(part.Position) * CFrame.Angles(math.random(-320,320)/100,math.random(-320,320)/100,math.random(-320,320)/100)

coroutine.resume(coroutine.create(function()

for i=p.Transparency, 1, 0.2 do

wait(0.15)

p.Transparency = i

local cf = p.CFrame

p.Size = Vector3.new(size,size,size)

p.CFrame = cf * CFrame.Angles(math.random(-320,320)/100,math.random(-320,320)/100,math.random(-320,320)/100)

size = size - 0.2

end

p:remove()

end))

end

end

function blocks(part,avg,cols)

for i=1, math.random(1,3) do

local s = (avg*1.4)*100

local s2 = (avg/5)*100

local size = math.random(s2,s)/100

local p = Instance.new("Part",me.Character)

local pos = p.CFrame

local pos2 = pos * CFrame.new(0,12,-15)

local pos3 = pos2 * CFrame.new(0,-12,-12)

local bv = Instance.new("BodyPosition",p)

bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)

bv.position = pos2.p

local bg = Instance.new("BodyGyro",p)

bg.cframe = CFrame.new(pos.p,pos3.p)

bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

bg.P = 30000

prop(p,me.Character,false,math.random(15,50)/100,0,size,size,size,cols[math.random(1,#cols)],true,"Custom")

p.CFrame = CFrame.new(part.Position) * CFrame.Angles(math.random(-320,320)/100,math.random(-320,320)/100,math.random(-320,320)/100)

coroutine.resume(coroutine.create(function()

for i=p.Transparency, 1, 0.2 do

wait(0.15)

p.Transparency = i

local cf = p.CFrame

p.Size = Vector3.new(size,size,size)

p.CFrame = cf * CFrame.Angles(math.random(-320,320)/100,math.random(-320,320)/100,math.random(-320,320)/100)

size = size - 0.2

end

p:remove()

end))

end

end

function blading(part,color)

local p = Instance.new("Part",me.Character)

prop(p,me.Character,false,0.4,0,0.2,1.4,3.8,color,true,"Custom")

p.CFrame = part.CFrame

coroutine.resume(coroutine.create(function()

for i=p.Transparency, 1, 0.04 do

wait()

p.Transparency = i

end

p:remove()

end))

end

function spikes(part,color)

local p = Instance.new("Part",me.Character)

prop(p,me.Character,false,0.4,0,0.2,0.2,0.2,color,true,"Custom")

p.CFrame = part.CFrame * CFrame.new(0,-3,0)

local mww = Instance.new("SpecialMesh")

mesh(mww,p,6,5,6,"FileMesh")

mww.MeshId = "http://www.roblox.com/asset/?id=20329976"

fade(p,mww,0.55,p.Transparency,0.08)

end

function spikes2(part,color)

local p = Instance.new("Part",me.Character)

prop(p,me.Character,false,0.4,0,0.2,0.2,0.2,color,true,"Custom")

p.CFrame = part.CFrame * CFrame.new(0,0,6) * CFrame.Angles(math.pi/2,0,0)

local mww = Instance.new("SpecialMesh")

mesh(mww,p,8,7,8,"FileMesh")

mww.MeshId = "http://www.roblox.com/asset/?id=20329976"

fade(p,mww,0.55,p.Transparency,0.06)

end

function bal(part,color,dist)

local p = Instance.new("Part",me.Character)

prop(p,me.Character,false,0.4,0,1,1,1,color,true,"Custom")

p.CFrame = part.CFrame

local mww = Instance.new("SpecialMesh")

mesh(mww,p,dist,dist,dist,"Sphere")

fade(p,mww,3,p.Transparency,0.06)

end

--Kill function----------------------Kill function----------------------Kill function--------------------

function blast(dmg,part,crit)

local randomposx = math.random(-30,30)

local randomposy = math.random(-50,-10)

local bil = Instance.new("BillboardGui",part)

bil.Adornee = bil.Parent

bil.Size = UDim2.new(0,110,0,70)

local img = Instance.new("ImageLabel",bil)

img.Size = UDim2.new(1,0,1,0)

img.Image = "http://www.roblox.com/asset/?id=42621332"

img.Position = UDim2.new(0,randomposx,0,randomposy)

img.BackgroundTransparency = 1

local txt = Instance.new("TextLabel",img)

txt.Size = UDim2.new(1,0,1,0)

txt.BackgroundTransparency = 1

txt.Text = dmg

txt.TextColor3 = Color3.new(0,0,0)

txt.FontSize = "Size18"

if crit then

img.Image = "http://www.roblox.com/asset/?id=42621315"

txt.FontSize = "Size24"

txt.TextColor3 = Color3.new(0.6,0,0)

end

coroutine.resume(coroutine.create(function()

wait(0.2)

for i=1, math.random(30,50) do

img.Position = UDim2.new(0,randomposx,0,randomposy)

randomposy = randomposy - 4

wait()

end

bil:remove()

end))

end

deb = true

function kill(hit,mod)

if deb and attack and hit.Parent.Name ~= name then

local ch = hit.Parent

if ch:findFirstChild("Humanoid") and ch:findFirstChild("Head") and ch:findFirstChild("Torso") then

deb = false

local dm = math.random(0,avgdmg*2)

local cri = false

local cripro = math.random(1,criticalchance)

if cripro == 1 then

cri = true

dm = math.random(avgdmg*1.5,avgdmg*4.5)

end

ch["Humanoid"].Health = ch["Humanoid"].Health - dm

blast(dm,ch.Head,cri)

if cri then

coroutine.resume(coroutine.create(function()

local lol = math.random(1,plat)

if lol == 1 then

ch["Humanoid"].PlatformStand = true

ch.Torso.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))

wait(0.9)

ch["Humanoid"].PlatformStand = false

if mod == true then

ch.Torso.RotVelocity = Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))

ch.Torso.Velocity = Vector3.new(math.random(-30,30),math.random(15,70),math.random(-30,30))

end

end

end))

end

wait(dela)

deb = true

end

end

end

function ris(hit,mod)

if deb and attack and hit.Parent.Name ~= name then

local ch = hit.Parent

if ch:findFirstChild("Humanoid") and ch:findFirstChild("Head") and ch:findFirstChild("Torso") then

deb = false

local dm = math.random(0,avgdmg*2)

local cri = false

local cripro = math.random(1,criticalchance)

if cripro == 1 then

cri = true

dm = math.random(avgdmg*1.5,avgdmg*4.5)

end

ch["Humanoid"].Health = ch["Humanoid"].Health - dm

blast(dm,ch.Head,cri)

if cri then

coroutine.resume(coroutine.create(function()

local lol = math.random(1,plat)

if lol == 1 then

ch["Humanoid"].PlatformStand = true

ch.Torso.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))

wait(0.9)

ch["Humanoid"].PlatformStand = false

if mod == true then

ch.Torso.RotVelocity = Vector3.new(math.random(-100,100),math.random(-100,100),math.random(-100,100))

ch.Torso.Velocity = Vector3.new(math.random(-100,100),math.random(105,170),math.random(-100,100))

end

end

end))

end

wait(dela)

deb = true

end

end

end

blade3.Touched:connect(kill)

blade4.Touched:connect(kill)

blade2.Touched:connect(kill)

blade1.Touched:connect(kill)

blade5.Touched:connect(kill)

blade5.Touched:connect(ris)

----Attacks----------------------Attacks----------------------Attacks----------------------Attacks------------------

-- block(blade5,2,{"Medium blue", "Light blue", "White", "Tr. Blue"})

-- blading(blade2,"Bright red")

function att()

attacking = true

for i=1,8 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.32,-0.06,0) * CFrame.new(0,0,0)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.1,0,0) * CFrame.new(0,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.05,0,0.03)

wait()

end

slash:play()

wait(0.13)

attack = true

for i=1,6 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.44,0.08,0) * CFrame.new(0,0,0)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.04,0,0) * CFrame.new(0,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.14,0,0)

block(blade5,2,{"Medium blue", "Light blue", "White", "Tr. Blue"})

wait()

end

attack = false

wait(0.08)

for i=1,3 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0,0,0.08)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0.23,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1,0,-0.05)

wait()

end

rw.C0 = rightfight

lw.C0 = leftfight

neck.C1 = neor

weaponweld.C0 = CFrame.new(0,0,0)

attacking = false

end

function stab()

attacking = true

for i=1,8 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.32,-0.06,0) * CFrame.new(0,0,0)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.1,0,0) * CFrame.new(0,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.05,0,0.03)

wait()

end

slash:play()

avgdmg = 15

criticalchance = 95

wait(0.13)

attack = true

for i=1,6 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0,-0.44,-0.8) * CFrame.new(0,0,0)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.04,0,0) * CFrame.new(0,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.14,0,0)

block(blade5,2,{"Medium blue", "Light blue", "White", "Tr. Blue"})

bal(blade5,"Tr. Blue",25)

wait()

end

attack = false

wait(0.08)

for i=1,3 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0,0,0.08)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0.23,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1,0,-0.05)

blocks(blade5,2,{"Medium blue", "Light blue", "White", "Tr. Blue"})

bal(blade5,"Tr. Blue",25)

wait()

end

rw.C0 = rightfight

lw.C0 = leftfight

neck.C1 = neor

weaponweld.C0 = CFrame.new(0,0,0)

attacking = false

end

function attas()

attacking = true

local pos = torso.CFrame

local pos2 = pos * CFrame.new(0,12,-15)

local pos3 = pos2 * CFrame.new(0,-12,-12)

for i=1,6 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.32,-0.06,0) * CFrame.new(0,0,0)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.1,0,0) * CFrame.new(0,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.05,0,0.03)

spikes(torso,"Light blue") 

spikes2(torso,"Bright blue") 

bal(torso,"Tr. Blue",25)

wait()

end

slash:play()

avgdmg = 15

criticalchance = 65

wait(0.13)

attack = true

local bv = Instance.new("BodyPosition",torso)

bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)

bv.position = pos2.p

local bg = Instance.new("BodyGyro",torso)

bg.cframe = CFrame.new(pos.p,pos3.p)

bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

bg.P = 30000

for i=1,6 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.54,0.08,0) * CFrame.new(0,0,0)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.05,0,0) * CFrame.new(0,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.24,0,0)

block(blade5,2,{"Medium blue", "Light blue", "White", "Tr. Blue"})

wait()

end

attack = false

wait(0.08)

for i=1,3 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0,0,0.08)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0.23,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1,0,-0.05)

wait()

end

rw.C0 = rightfight

lw.C0 = leftfight

bv:remove()

bg:remove()

neck.C1 = neor

weaponweld.C0 = CFrame.new(0,0,0)

attacking = false

end

function spin()

attacking = true

hum.WalkSpeed = 0

for i=1,7 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.08,0.1,0.03) * CFrame.new(0,0,0)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.2,0,0) * CFrame.new(0,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)

wait()

end

spi:play()

wait(0.3)

spi:play()

dela = 0.1

avgdmg = 6

criticalchance = 12

local bv = Instance.new("BodyVelocity",torso)

bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)

bv.velocity = torso.CFrame.lookVector * 22

local bav = Instance.new("BodyAngularVelocity",torso)

bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

bav.angularvelocity = Vector3.new(0,36,0)

bav.P = 15000

attack = true

for i=1, 30 do

wait()

spikes(torso,"Medium blue")

end

bv:remove()

bav:remove()

hum.WalkSpeed = normal

attack = false

avgdmg = normdmg

for i=1,5 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.1,-0.12,-0.04) * CFrame.new(0,0,0)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0.25,0,0) * CFrame.new(0,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)

wait()

end

dela = 0.4

rw.C0 = rightfight

lw.C0 = leftfight

neck.C1 = neor

weaponweld.C0 = CFrame.new(0,0,0)

attacking = false

criticalchance = normchance

end

function spins()

attacking = true

hum.WalkSpeed = 0

for i=1,7 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.08,0.1,0.03) * CFrame.new(0,0,0)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.2,0,0) * CFrame.new(0,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)

bal(torso,"Tr. Blue",25)

wait()

end

spi:play()

wait(0.3)

spi:play()

dela = 0.1

avgdmg = 6

criticalchance = 12

local bv = Instance.new("BodyVelocity",torso)

bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)

bv.velocity = torso.CFrame.lookVector * 22

local bav = Instance.new("BodyAngularVelocity",torso)

bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

bav.angularvelocity = Vector3.new(0,36,0)

bav.P = 15000

attack = true

for i=1, 30 do

wait()

spikes(torso,"Medium blue")

end

bv:remove()

bav:remove()

hum.WalkSpeed = normal

attack = false

avgdmg = normdmg

for i=1,5 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.1,-0.12,-0.04) * CFrame.new(0,0,0)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0.25,0,0) * CFrame.new(0,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)

wait()

end

dela = 0.4

rw.C0 = rightfight

lw.C0 = leftfight

neck.C1 = neor

weaponweld.C0 = CFrame.new(0,0,0)

attacking = false

criticalchance = normchance

end

function rise()

attacking = true

local pos = torso.CFrame

local pos2 = pos * CFrame.new(0,5,-15)

local pos3 = pos2 * CFrame.new(0,-3,-12)

hum.WalkSpeed = 0

for i=1,7 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.08,0.1,0.03) * CFrame.new(0,0,0)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.2,0,0) * CFrame.new(0,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)

bal(torso,"Tr. Blue",25)

wait()

end

spi:play()

wait(0.3)

spi:play()

dela = 0.1

avgdmg = 6

criticalchance = 12

local bv = Instance.new("BodyPosition",torso)

bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)

bv.position = pos2.p

local bg = Instance.new("BodyGyro",torso)

bg.cframe = CFrame.new(pos.p,pos3.p)

bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

bg.P = 30000

attack = true

for i=1, 30 do

wait()

spikes2(torso,"Medium blue")

end

bv:remove()

bg:remove()

hum.WalkSpeed = normal

attack = false

avgdmg = normdmg

for i=1,5 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.1,-0.12,-0.04) * CFrame.new(0,0,0)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0.25,0,0) * CFrame.new(0,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)

wait()

end

dela = 0.4

rw.C0 = rightfight

lw.C0 = leftfight

neck.C1 = neor

weaponweld.C0 = CFrame.new(0,0,0)

attacking = false

criticalchance = normchance

end

function sprint()

attacking = true

hum.WalkSpeed = 0

local pos = torso.CFrame

local pos2 = pos * CFrame.new(0,12,-15)

local pos3 = pos2 * CFrame.new(0,-12,-12)

for i=1,6 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.2,0,0)

lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(-0.2,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1,0,0) * CFrame.new(0,0,0)

wait()

end

avgdmg = 14

local bv = Instance.new("BodyPosition",torso)

bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)

bv.position = pos2.p

local bg = Instance.new("BodyGyro",torso)

bg.cframe = CFrame.new(pos.p,pos3.p)

bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

bg.P = 30000

for i=1, 7 do

wait()

spikes2(torso,"Medium blue")

end

wait(0.1)

coroutine.resume(coroutine.create(function()

for i=1, 17 do

wait()

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.15,0,-0.04)

lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(0.16,0,0.05)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.02,0,0) * CFrame.new(0,0,0)

end

end))

coroutine.resume(coroutine.create(function()

for i=0.4, 5.3,0.07 do

wait(0.04)

block(blade5,i,{"Medium blue", "Light blue", "White", "Tr. Blue"})

end

end))

charge:play()

coroutine.resume(coroutine.create(function()

wait(2.5)

for i=1, 11 do

wait()

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.05,0,0)

lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(0.08,0,0)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0,-(math.pi/11),0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.03,0,0) * CFrame.new(0,0,0)

end

end))

criticalchance = 1

plat = 1

dela = 0

wait(3.8)

boom:play()

attack = true

coroutine.resume(coroutine.create(function()

for i=1, 5 do

wait()

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.34,0,0)

lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(-0.34,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.1,0,0) * CFrame.new(0,0,0)

end

end))

bv.position = pos3.p

for i=1, 7 do

wait()

spikes2(torso,"Medium blue")

end

coroutine.resume(coroutine.create(function()

for i=1, 12 do

wait()

bal(blade5,"Medium blue",splashdist*2)

end

end))

local parts = getcharparts(workspace)

for _,v in pairs(parts) do

if (v.Position - blade5.Position).magnitude < 14 then

kill(v,true)

end

end

wait(0.3)

attack = false

bv:remove()

bg:remove()

hum.WalkSpeed = normal

avgdmg = normdmg

rw.C0 = rightfight

lw.C0 = leftfight

neck.C1 = neor

weaponweld.C0 = CFrame.new(0,0,0)

attacking = false

criticalchance = normchance

plat = 2

end

function sprint2()

attacking = true

hum.WalkSpeed = 0

local pos = torso.CFrame

local pos2 = pos * CFrame.new(0,15,-15)

local pos3 = pos2 * CFrame.new(0,-13,-12)

for i=1,6 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.2,0,0)

lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(-0.2,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1,0,0) * CFrame.new(0,0,0)

wait()

end

avgdmg = 14

local bv = Instance.new("BodyPosition",torso)

bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)

bv.position = pos2.p

local bg = Instance.new("BodyGyro",torso)

bg.cframe = CFrame.new(pos.p,pos3.p)

bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

bg.P = 30000

for i=1, 4 do

wait()

spikes2(torso,"Medium blue")

spikes2(torso,"Light blue")

spikes2(torso,"Bright blue")

end

wait(0.1)

coroutine.resume(coroutine.create(function()

for i=1, 34 do

wait()

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.15,0,-0.04)

lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(0.16,0,0.05)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.02,0,0) * CFrame.new(0,0,0)

end

end))

coroutine.resume(coroutine.create(function()

for i=0.4, 5.3,0.07 do

wait(0.04)

block(blade5,i,{"Medium blue", "Light blue", "White", "Tr. Blue"})

end

end))

charge:play()

coroutine.resume(coroutine.create(function()

wait(2.5)

for i=1, 11 do

wait()

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.05,0,0)

lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(0.08,0,0)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0,-(math.pi/11),0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.03,0,0) * CFrame.new(0,0,0)

end

end))

criticalchance = 1

plat = 1

dela = 0

wait(3.8)

boom:play()

attack = true

coroutine.resume(coroutine.create(function()

for i=1, 5 do

wait()

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.34,0,0)

lw.C0 = lw.C0 * CFrame.fromEulerAnglesXYZ(-0.34,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.1,0,0) * CFrame.new(0,0,0)

end

end))

bv.position = pos3.p

for i=1, 7 do

wait()

spikes2(torso,"Medium blue")

end

coroutine.resume(coroutine.create(function()

for i=1, 12 do

wait()

bal(blade5,"Medium blue",splashdist*2)

end

end))

local parts = getcharparts(workspace)

for _,v in pairs(parts) do

if (v.Position - blade5.Position).magnitude < 14 then

kill(v,true)

end

end

wait(0.3)

attack = false

bv:remove()

bg:remove()

hum.WalkSpeed = normal

avgdmg = normdmg

rw.C0 = rightfight

lw.C0 = leftfight

neck.C1 = neor

weaponweld.C0 = CFrame.new(0,0,0)

attacking = false

criticalchance = normchance

plat = 2

end

function combo() 

att() 

attas() 

sprint() 

spin() 

end 

function run() 

spin() 

spin() 

spin() 

end 

function rush()

attacking = true

for i=1,8 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.03,0.1,0) * CFrame.new(0,0,0)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-(math.pi/2)/12,0.03,0.07) * CFrame.new(0,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.05,0,0.03)

wait(0.1)

end

slash:play()

wait(0.13)

attack = true

local bv = Instance.new("BodyVelocity",torso)

bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)

bv.velocity = torso.CFrame.lookVector * 220

local bav = Instance.new("BodyAngularVelocity",torso)

bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

bav.angularvelocity = Vector3.new(0,36,0)

bav.P = 15000

for i=1,6 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.44,0.08,0) * CFrame.new(0,0,0)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.04,0,0) * CFrame.new(0,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.14,0,0)

block(blade5,2,{"Medium blue", "Light blue", "White", "Tr. Blue"})

wait()

end

attack = false

wait(0.08)

for i=1,3 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0,0,0.08)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0.23,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1,0,-0.05)

block(blade5,2,{"Medium blue", "Light blue", "White", "Tr. Blue"})

wait()

end

rw.C0 = rightfight

lw.C0 = leftfight

bv:remove() 

bav:remove() 

neck.C1 = neor

weaponweld.C0 = CFrame.new(0,0,0)

attacking = false

end

function masta()

attacking = true

for i=1,8 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.03,0.1,0) * CFrame.new(0,0,0)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-(math.pi/2)/12,0.03,0.07) * CFrame.new(0,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.05,0,0.03)

bal(torso,"Tr. Blue",25)

spikes2(torso,"Medium blue")

block(blade5,i,{"Medium blue", "Light blue", "White", "Tr. Blue"})

wait(0.1)

end

slash:play()

avgdmg = 37

criticalchance = 125

wait(0.13)

attack = true

local bv = Instance.new("BodyVelocity",torso)

bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)

bv.velocity = torso.CFrame.lookVector * 220

local bav = Instance.new("BodyAngularVelocity",torso)

bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

bav.angularvelocity = Vector3.new(0,36,0)

bav.P = 15000

for i=1,6 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.44,0.08,0) * CFrame.new(0,0,0)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(-0.04,0,0) * CFrame.new(0,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(-0.14,0,0)

bal(torso,"Tr. Blue",25)

spikes2(torso,"Medium blue")

block(blade5,i,{"Medium blue", "Light blue", "White", "Tr. Blue"})

wait()

end

attack = false

wait(0.08)

for i=1,3 do

rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0,0,0.08)

weaponweld.C0 = weaponweld.C0 * CFrame.fromEulerAnglesXYZ(0.23,0,0)

neck.C1 = neck.C1 * CFrame.fromEulerAnglesXYZ(0.1,0,-0.05)

bal(torso,"Tr. Blue",25)

spikes2(torso,"Medium blue")

block(blade5,i,{"Medium blue", "Light blue", "White", "Tr. Blue"})

wait()

end

rw.C0 = rightfight

lw.C0 = leftfight

bv:remove() 

bav:remove() 

neck.C1 = neor

weaponweld.C0 = CFrame.new(0,0,0)

attacking = false

end

if script.Parent.className ~= "HopperBin" then

local h = Instance.new("HopperBin",me.Backpack)

h.Name = "SoulSword"

script.Parent = h

end

local bin = script.Parent

function sel(mouse)

neck.C1 = neor

if (selected == false) then

selectmotion()

end

mouse.Button1Down:connect(function()

if (attacking == false) then

att()

end

end)

mouse.KeyDown:connect(function(kuu)

local kai = kuu:lower()

if attacking == false then

if (kai == "q") then

spin()

elseif (kai == "e") then

att()

elseif (kai == "r") then

sprint()

elseif (kai == "l") then

stab()

elseif (kai == "t") then

attas() 

elseif (kai == "z") then

masta() 

elseif (kai == "y") then

spins() 

elseif (kai == "g") then

combo() 

elseif (kai == "p") then

rise() 

elseif (kai == "j") then

sprint2() 

elseif (kai == "h") then

run() 

elseif (kai == "f") then

rush()

end

end

end)

while selected do

wait(0.8)

local k = math.random(1,5)

if k == 1 then

if hum.Health < 50 then

for i=1, math.random(4,24) do

wait(0.1)

local col = healcols[math.random(1,#healcols)]

local sa = math.random(30,90)/100

local p = Instance.new("Part")

prop(p,me.Character,false,0.1,0.05,1,1,1,col,false,"Symmetric")

p.CFrame = CFrame.new(torso.Position) * CFrame.Angles(math.random(-320,320)/100,math.random(-320,320)/100,math.random(-320,320)/100) * CFrame.new(0,0,math.random(4,12))

local mes = Instance.new("SpecialMesh")

mesh(mes,p,sa,sa,sa,"Sphere")

local bg = Instance.new("BodyPosition",p)

bg.maxForce = Vector3.new(1000000,1000000,1000000)

bg.P = 100000

bg.position = torso.Position

coroutine.resume(coroutine.create(function()

repeat

bg.position = torso.Position

wait()

until (p.Position - torso.Position).magnitude < 1.8

hum.Health = hum.Health + 1.2

p:remove()

end))

end

end

end

end

end

function desel()

neck.C1 = neor

if selected then

deselmotion()

end

end

bin.Selected:connect(sel)

bin.Deselected:connect(desel)

--LEGO