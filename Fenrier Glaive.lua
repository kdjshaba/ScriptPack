---[. . . .]------------------------[Hi Hi Hi]------[Fenrier rules!]---------------------------------------------------------------
Player = game:GetService("Players").kash5
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
attack = false 
attackdebounce = false 
combo = 0 
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 


if Character:findFirstChild("Glaive",true) ~= nil then 
Character:findFirstChild("Glaive",true).Parent = nil 
end 
if Player:findFirstChild("Team",true) ~= nil then 
Player:findFirstChild("Team",true).Parent = nil 
end 
if Player:findFirstChild("Team") then 
Player:findFirstChild("Team").Value = "Magic Knight" 
else 
local s = Instance.new("StringValue") 
s.Parent = Player 
s.Value = "Magic Knight" 
s.Name = "Team" 
end 



local glaive = Instance.new("Model") 
glaive.Parent = Character 
glaive.Name = "Glaive" 

local part1 = Instance.new("Part") 
part1.formFactor = 1 
part1.CanCollide = false 
part1.Name = "Handle1" 
part1.Locked = true 
part1.Size = Vector3.new(1,4,1) 
part1.Parent = glaive 
part1.BrickColor = BrickColor.new("Black") 
local part2 = Instance.new("Part") 
part2.formFactor = 1 
part2.CanCollide = false 
part2.Name = "Handle2" 
part2.Locked = true 
part2.Size = Vector3.new(1,1,1) 
part2.Parent = glaive 
part2.BrickColor = BrickColor.new("White") 
local part3 = Instance.new("Part") 
part3.formFactor = 1 
part3.CanCollide = false 
part3.Name = "Handle3" 
part3.Locked = true 
part3.Size = Vector3.new(1,1,1) 
part3.Parent = glaive 
part3.BrickColor = BrickColor.new("Bright blue") 
local part4 = Instance.new("Part") 
part4.formFactor = 1 
part4.CanCollide = false 
part4.Name = "Handle4" 
part4.Locked = true 
part4.Size = Vector3.new(1,1,1) 
part4.Parent = glaive 
part4.BrickColor = BrickColor.new("Bright yellow") 
local part5 = Instance.new("Part") 
part5.formFactor = 1 
part5.CanCollide = false 
part5.Name = "Handle5" 
part5.Locked = true 
part5.Size = Vector3.new(1,1,1) 
part5.Parent = glaive 
part5.BrickColor = BrickColor.new("White") 
local part6 = Instance.new("Part") 
part6.formFactor = 1 
part6.CanCollide = false 
part6.Name = "Handle6" 
part6.Locked = true 
part6.Size = Vector3.new(1,1,1) 
part6.Parent = glaive 
part6.BrickColor = BrickColor.new("White") 
local part7 = Instance.new("Part") 
part7.formFactor = 1 
part7.CanCollide = false 
part7.Name = "Handle7" 
part7.Locked = true 
part7.Size = Vector3.new(1,1,1) 
part7.Parent = glaive 
part7.BrickColor = BrickColor.new("Bright blue") 
local part8 = Instance.new("Part") 
part8.formFactor = 1 
part8.CanCollide = false 
part8.Name = "Handle8" 
part8.Locked = true 
part8.Size = Vector3.new(1,1,1) 
part8.Parent = glaive 
part8.BrickColor = BrickColor.new("Bright blue") 
local part9 = Instance.new("Part") 
part9.formFactor = 1 
part9.CanCollide = false 
part9.Name = "Handle9" 
part9.Locked = true 
part9.Size = Vector3.new(1,1,1) 
part9.Parent = glaive 
part9.BrickColor = BrickColor.new("Bright blue") 
local part10 = Instance.new("Part") 
part10.formFactor = 1 
part10.CanCollide = false 
part10.Name = "Handle10" 
part10.Locked = true 
part10.Size = Vector3.new(1,1,1) 
part10.Parent = glaive 
part10.BrickColor = BrickColor.new("Bright yellow") 
local part11 = Instance.new("Part") 
part11.formFactor = 1 
part11.CanCollide = false 
part11.Name = "Blade1" 
part11.Locked = true 
part11.Size = Vector3.new(1,1,1) 
part11.Parent = glaive 
part11.BrickColor = BrickColor.new("White") 
local part12 = Instance.new("Part") 
part12.formFactor = 1 
part12.CanCollide = false 
part12.Name = "Blade2" 
part12.Locked = true 
part12.Size = Vector3.new(1,1,1) 
part12.Parent = glaive 
part12.BrickColor = BrickColor.new("Bright blue") 
local part13 = Instance.new("Part") 
part13.formFactor = 1 
part13.CanCollide = false 
part13.Name = "Blade3" 
part13.Locked = true 
part13.Size = Vector3.new(1,1,1) 
part13.Parent = glaive 
part13.BrickColor = BrickColor.new("Bright blue") 
local part14 = Instance.new("Part") 
part14.formFactor = 1 
part14.CanCollide = false 
part14.Name = "Blade4" 
part14.Locked = true 
part14.Size = Vector3.new(1,1,1) 
part14.Parent = glaive 
part14.BrickColor = BrickColor.new("Bright blue") 
local part15 = Instance.new("Part") 
part15.formFactor = 1 
part15.CanCollide = false 
part15.Name = "Blade5" 
part15.Locked = true 
part15.Size = Vector3.new(1,1,1) 
part15.Parent = glaive 
part15.BrickColor = BrickColor.new("Black") 
local part16 = Instance.new("Part") 
part16.formFactor = 1 
part16.CanCollide = false 
part16.Name = "Blade6" 
part16.Locked = true 
part16.Size = Vector3.new(1,1,1) 
part16.Parent = glaive 
part16.BrickColor = BrickColor.new("Bright blue") 
local part17 = Instance.new("Part") 
part17.formFactor = 1 
part17.CanCollide = false 
part17.Reflectance = 0.3 
part17.Name = "Blade7" 
part17.Locked = true 
part17.Size = Vector3.new(1,2,1) 
part17.Parent = glaive 
part17.BrickColor = BrickColor.new("White") 
local part18 = Instance.new("Part") 
part18.formFactor = 1 
part18.CanCollide = false 
part18.Reflectance = 0.3 
part18.Name = "Blade8" 
part18.Locked = true 
part18.Size = Vector3.new(1,2,1) 
part18.Parent = glaive 
part18.BrickColor = BrickColor.new("White") 
local part19 = Instance.new("Part") 
part19.formFactor = 1 
part19.CanCollide = false 
part19.Reflectance = 0.1 
part19.Name = "Blade9" 
part19.Locked = true 
part19.Size = Vector3.new(1,1,1) 
part19.Parent = glaive 
part19.BrickColor = BrickColor.new("Bright yellow") 
local part20 = Instance.new("Part") 
part20.formFactor = 1 
part20.CanCollide = false 
part20.Reflectance = 0.1 
part20.Name = "Blade10" 
part20.Locked = true 
part20.Size = Vector3.new(1,1,1) 
part20.Parent = glaive 
part20.BrickColor = BrickColor.new("Bright yellow") 
local part21 = Instance.new("Part") 
part21.formFactor = 1 
part21.CanCollide = false 
part21.Reflectance = 0.1 
part21.Name = "Blade11" 
part21.Locked = true 
part21.Size = Vector3.new(1,1,1) 
part21.Parent = glaive 
part21.BrickColor = BrickColor.new("Bright yellow") 
local part22 = Instance.new("Part") 
part22.formFactor = 1 
part22.CanCollide = false 
part22.Reflectance = 0.1 
part22.Name = "Blade12" 
part22.Locked = true 
part22.Size = Vector3.new(1,1,1) 
part22.Parent = glaive 
part22.BrickColor = BrickColor.new("Bright yellow") 
local part23 = Instance.new("Part") 
part23.formFactor = 1 
part23.CanCollide = false 
part23.Reflectance = 0.1 
part23.Name = "Blade13" 
part23.Locked = true 
part23.Size = Vector3.new(1,1,1) 
part23.Parent = glaive 
part23.BrickColor = BrickColor.new("Bright yellow") 
local part24 = Instance.new("Part") 
part24.formFactor = 1 
part24.CanCollide = false 
part24.Reflectance = 0.1 
part24.Name = "Blade14" 
part24.Locked = true 
part24.Size = Vector3.new(1,1,1) 
part24.Parent = glaive 
part24.BrickColor = BrickColor.new("Bright yellow") 
local part25 = Instance.new("Part") 
part25.formFactor = 1 
part25.CanCollide = false 
part25.Reflectance = 0.1 
part25.Name = "Blade15" 
part25.Locked = true 
part25.Size = Vector3.new(1,1,1) 
part25.Parent = glaive 
part25.BrickColor = BrickColor.new("Bright yellow") 
local part26 = Instance.new("Part") 
part26.formFactor = 1 
part26.CanCollide = false 
part26.Reflectance = 0 
part26.Name = "Blade16" 
part26.Locked = true 
part26.Size = Vector3.new(1,1,1) 
part26.Parent = glaive 
part26.BrickColor = BrickColor.new("White") 
local part27 = Instance.new("Part") 
part27.formFactor = 1 
part27.CanCollide = false 
part27.Reflectance = 0 
part27.Name = "Blade17" 
part27.Locked = true 
part27.Size = Vector3.new(1,1,1) 
part27.Parent = glaive 
part27.BrickColor = BrickColor.new("White") 

local mesh1 = Instance.new("CylinderMesh") 
mesh1.Scale = Vector3.new(0.4,1,0.4) 
mesh1.Parent = part1 
local mesh2 = Instance.new("CylinderMesh") 
mesh2.Scale = Vector3.new(0.41,0.6,0.41) 
mesh2.Parent = part2 
local mesh3 = Instance.new("CylinderMesh") 
mesh3.Scale = Vector3.new(0.55,0.4,0.55) 
mesh3.Parent = part3 
local mesh4 = Instance.new("CylinderMesh") 
mesh4.Scale = Vector3.new(0.56,0.2,0.56) 
mesh4.Parent = part4 
local mesh5 = Instance.new("CylinderMesh") 
mesh5.Scale = Vector3.new(0.56,0.2,0.56) 
mesh5.Parent = part5 
local mesh6 = Instance.new("SpecialMesh") 
mesh6.Scale = Vector3.new(0.42,0.2,0.42) 
mesh6.Parent = part6 
mesh6.MeshId = "http://www.roblox.com/asset/?id=1778999" 
local mesh7 = Instance.new("SpecialMesh") 
mesh7.Scale = Vector3.new(0.4,0.3,0.7) 
mesh7.Parent = part7 
mesh7.MeshType = "Wedge" 
local mesh8 = Instance.new("CylinderMesh") 
mesh8.Scale = Vector3.new(0.56,0.335,0.56) 
mesh8.Parent = part8 
local mesh9 = Instance.new("SpecialMesh") 
mesh9.Scale = Vector3.new(0.4,0.3,0.7) 
mesh9.Parent = part9 
mesh9.MeshType = "Wedge" 
local mesh10 = Instance.new("CylinderMesh") 
mesh10.Scale = Vector3.new(0.5,0.2,0.5) 
mesh10.Parent = part10 
local mesh11 = Instance.new("SpecialMesh") 
mesh11.Scale = Vector3.new(0.6,0.4,0.7) 
mesh11.Parent = part11 
mesh11.MeshId = "http://www.roblox.com/asset/?id=1778999" 
local mesh12 = Instance.new("SpecialMesh") 
mesh12.Scale = Vector3.new(0.9,0.7,1) 
mesh12.Parent = part12 
mesh12.MeshType = "Wedge" 
local mesh13 = Instance.new("SpecialMesh") 
mesh13.Scale = Vector3.new(0.9,0.7,1) 
mesh13.Parent = part13 
mesh13.MeshType = "Wedge" 
local mesh14 = Instance.new("BlockMesh") 
mesh14.Scale = Vector3.new(0.5,0.9,0.9) 
mesh14.Parent = part14 
local mesh15 = Instance.new("BlockMesh") 
mesh15.Scale = Vector3.new(0.9,0.9,0.7) 
mesh15.Parent = part15 
local mesh16 = Instance.new("BlockMesh") 
mesh16.Scale = Vector3.new(1,1,0.5) 
mesh16.Parent = part16 
local mesh17 = Instance.new("SpecialMesh") 
mesh17.Scale = Vector3.new(0.3,1,1) 
mesh17.Parent = part17 
mesh17.MeshType = "Wedge" 
local mesh18 = Instance.new("SpecialMesh") 
mesh18.Scale = Vector3.new(0.3,1,1) 
mesh18.Parent = part18 
mesh18.MeshType = "Wedge" 
local mesh19 = Instance.new("BlockMesh") 
mesh19.Scale = Vector3.new(0.6,0.6,1) 
mesh19.Parent = part19 
local mesh20 = Instance.new("BlockMesh") 
mesh20.Scale = Vector3.new(0.3,0.6,1) 
mesh20.Parent = part20 
local mesh21 = Instance.new("BlockMesh") 
mesh21.Scale = Vector3.new(0.3,0.6,1) 
mesh21.Parent = part21 
local mesh22 = Instance.new("BlockMesh") 
mesh22.Scale = Vector3.new(0.3,0.6,1) 
mesh22.Parent = part22 
local mesh23 = Instance.new("BlockMesh") 
mesh23.Scale = Vector3.new(0.3,0.6,1) 
mesh23.Parent = part23 
local mesh24 = Instance.new("BlockMesh") 
mesh24.Scale = Vector3.new(0.5,0.6,1) 
mesh24.Parent = part24 
local mesh25 = Instance.new("BlockMesh") 
mesh25.Scale = Vector3.new(0.6,0.7,1) 
mesh25.Parent = part25 
local mesh26 = Instance.new("SpecialMesh") 
mesh26.Scale = Vector3.new(1,0.6,0.5) 
mesh26.Parent = part26 
mesh26.MeshType = "Wedge" 
local mesh27 = Instance.new("SpecialMesh") 
mesh27.Scale = Vector3.new(1,0.6,0.5) 
mesh27.Parent = part27 
mesh27.MeshType = "Wedge" 

local weld1 = Instance.new("Weld") 
weld1.Parent = part1 
weld1.Part0 = part1 
weld1.Part1 = Torso 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0.8) * CFrame.new(0,0,-0.7) 
local weld2 = Instance.new("Weld") 
weld2.Parent = part2 
weld2.Part0 = part2 
weld2.Part1 = part1 
weld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.5,0) 
local weld3 = Instance.new("Weld") 
weld3.Parent = part3 
weld3.Part0 = part3 
weld3.Part1 = part2 
weld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.2,0) 
local weld4 = Instance.new("Weld") 
weld4.Parent = part4 
weld4.Part0 = part4 
weld4.Part1 = part3 
weld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.1,0) 
local weld5 = Instance.new("Weld") 
weld5.Parent = part5 
weld5.Part0 = part5 
weld5.Part1 = part3 
weld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.35,0) 
local weld6 = Instance.new("Weld") 
weld6.Parent = part6 
weld6.Part0 = part6 
weld6.Part1 = part5 
weld6.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180),0,0) * CFrame.new(0,0.28,0) 
local weld7 = Instance.new("Weld") 
weld7.Parent = part7 
weld7.Part0 = part7 
weld7.Part1 = part6 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90),0) * CFrame.new(0.4,0,0) 
local weld8 = Instance.new("Weld") 
weld8.Parent = part8 
weld8.Part0 = part8 
weld8.Part1 = part6 
weld8.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,-0.2,0) 
local weld9 = Instance.new("Weld") 
weld9.Parent = part9 
weld9.Part0 = part9 
weld9.Part1 = part6 
weld9.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),-math.rad(90),0) * CFrame.new(-0.4,0,0) 
local weld10 = Instance.new("Weld") 
weld10.Parent = part10 
weld10.Part0 = part10 
weld10.Part1 = part1 
weld10.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1.5,0) 
local weld11 = Instance.new("Weld") 
weld11.Parent = part11 
weld11.Part0 = part11 
weld11.Part1 = part1 
weld11.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180),0,0) * CFrame.new(0,-1.6,0) 
local weld12 = Instance.new("Weld") 
weld12.Parent = part12 
weld12.Part0 = part12 
weld12.Part1 = part11 
weld12.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(90),0) * CFrame.new(-0.6,0.8,0) 
local weld13 = Instance.new("Weld") 
weld13.Parent = part13 
weld13.Part0 = part13 
weld13.Part1 = part11 
weld13.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),-math.rad(90),0) * CFrame.new(0.6,0.8,0) 
local weld14 = Instance.new("Weld") 
weld14.Parent = part14 
weld14.Part0 = part14 
weld14.Part1 = part11 
weld14.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.87,0) 
local weld15 = Instance.new("Weld") 
weld15.Parent = part15 
weld15.Part0 = part15 
weld15.Part1 = part14 
weld15.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1,0) 
local weld16 = Instance.new("Weld") 
weld16.Parent = part16 
weld16.Part0 = part16 
weld16.Part1 = part15 
weld16.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.1,0) 
local weld17 = Instance.new("Weld") 
weld17.Parent = part17 
weld17.Part0 = part17 
weld17.Part1 = part16 
weld17.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180),math.rad(90),0) * CFrame.new(0.5,1,0) 
local weld18 = Instance.new("Weld") 
weld18.Parent = part18 
weld18.Part0 = part18 
weld18.Part1 = part16 
weld18.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180),-math.rad(90),0) * CFrame.new(-0.5,1,0) 
local weld19 = Instance.new("Weld") 
weld19.Parent = part19 
weld19.Part0 = part19 
weld19.Part1 = part15 
weld19.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local weld20 = Instance.new("Weld") 
weld20.Parent = part20 
weld20.Part0 = part20 
weld20.Part1 = part19 
weld20.C0 = CFrame.fromEulerAnglesXYZ(0,0,1) * CFrame.new(0.5,0.5,0) 
local weld21 = Instance.new("Weld") 
weld21.Parent = part21 
weld21.Part0 = part21 
weld21.Part1 = part19 
weld21.C0 = CFrame.fromEulerAnglesXYZ(0,0,-1) * CFrame.new(-0.5,0.5,0) 
local weld22 = Instance.new("Weld") 
weld22.Parent = part22 
weld22.Part0 = part22 
weld22.Part1 = part19 
weld22.C0 = CFrame.fromEulerAnglesXYZ(0,0,-1) * CFrame.new(0.5,-0.4,0) 
local weld23 = Instance.new("Weld") 
weld23.Parent = part23 
weld23.Part0 = part23 
weld23.Part1 = part19 
weld23.C0 = CFrame.fromEulerAnglesXYZ(0,0,1) * CFrame.new(-0.5,-0.4,0) 
local weld24 = Instance.new("Weld") 
weld24.Parent = part24 
weld24.Part0 = part24 
weld24.Part1 = part19 
weld24.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6,0) 
local weld25 = Instance.new("Weld") 
weld25.Parent = part25 
weld25.Part0 = part25 
weld25.Part1 = part19 
weld25.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.6,0) 
local weld26 = Instance.new("Weld") 
weld26.Parent = part26 
weld26.Part0 = part26 
weld26.Part1 = part15 
weld26.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180),math.rad(90),0) * CFrame.new(0.3,1.3,0) 
local weld27 = Instance.new("Weld") 
weld27.Parent = part27 
weld27.Part0 = part27 
weld27.Part1 = part15 
weld27.C0 = CFrame.fromEulerAnglesXYZ(math.rad(180),-math.rad(90),0) * CFrame.new(-0.3,1.3,0) 

local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 

function ss(parent,pitch) --linerider64 was here :D 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.Parent = parent 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch --linerider64 was also here XD
SlashSound.PlayOnRemove = true 
--SlashSound:play() 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 

if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Glaive" 
script.Parent = Tool 
end 
Bin = script.Parent 


function unequipweld() 
weld1.Part1 = Torso 
weld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0.8) * CFrame.new(0,0,-0.7) 
end 

function equipweld() 
weld1.Part1 = LeftArm 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),2.7,math.rad(90)) * CFrame.new(0, 1, 0) 
end 

function hideanim() 
for i = 0 , 1 , 0.1 do 
wait(0)  
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),2.7*i,math.rad(90)) * CFrame.new(0, 1, 0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1.5*i,-0.5*i+0.5,1.5*i-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
unequipweld() 
wait(0.1) 
for i = 0 , 1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5*i-1.5,0,-1*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 

function equipanim() 
for i = 0 , 1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1.5*i,0,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
equipweld() 
wait(0.1) 
for i = 0 , 1 , 0.1 do 
wait(0)  
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),-2.7*i+2.7,math.rad(90)) * CFrame.new(0, 1, 0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5*i-1.5,0.5*i,-1.5*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 

function oneslash() 
attack = true 
combo = 1 
for i = 0 , 1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(2*i,-0.5*i+0.5,0.5*i-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
ss(part16,0.8) 
con1=part16.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
con2=part17.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
for i = 0 , 1 , 0.2 do 
wait(0)  
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-2*i+2,1*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1*i,0,1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),1*i,math.rad(90)) * CFrame.new(0, 1, 0.4*i) 
end 
wait(0.3) 
con1:disconnect() 
con2:disconnect() 
--Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
attack = false 
end 

function twoslash() 
attack = true 
combo = 2 
ss(part16,0.8) 
con1=part16.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
con2=part17.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
for i = 0 , 1 , 0.2 do 
wait(0)  
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,2*i-1) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,-2*i+1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2*i-1,0,0) 
RW.C0 = CFrame.new(-0.5*i+1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1,0,-2*i+1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),-2*i+1,math.rad(90)) * CFrame.new(0, 0.3*i+1, -0.9*i+0.4) 
end 
wait(0.3) 
con1:disconnect() 
con2:disconnect() 
attack = false 
end 

function threeslash() 
attack = true 
combo = 3 
for i = 0 , 1 , 0.1 do 
wait(0)  
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1*i+1) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,1*i-1,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.57*i+1,0,0) 
RW.C0 = CFrame.new(0.5*i-0.5+1.5,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-1.5*i+1,0,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),4.2*i-1,math.rad(90)) * CFrame.new(0, -0.3*i+1.3, 1.2*i-0.5) 
end 
wait() 
ss(part16,0.8) 
con1=part16.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
con2=part17.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
for i = 0 , 1.2 , 0.3 do 
wait(0)  
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.5*i+3.57,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),-0.5*i+3.2,math.rad(90)) * CFrame.new(0, 1, -0.7*i+0.7) 
end 
wait(0.2) 
con1:disconnect() 
con2:disconnect() 
for i = 0 , 1.2 , 0.2 do 
wait(0)  
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5*i+0.5+3.57,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),2.7,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
ss(part16,0.8) 
con1=part16.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
con2=part17.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
for i = 0 , 1.2 , 0.3 do 
wait(0)  
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.5*i+3.57,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),2.7,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
con1:disconnect() 
con2:disconnect() 
wait(0.3) 
attack = false 
end 

function fourslash() 
attack = true 
combo = 4 
for i = 0 , 1 , 0.1 do 
wait(0)  
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5*i+4.07,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),1*i+2.7,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
ss(part16,0.8) 
con1=part16.Touched:connect(function(hit) Damagefunc2(hit,20,30) end)
con2=part17.Touched:connect(function(hit) Damagefunc2(hit,20,30) end)
for i = 0 , 1 , 0.1 do 
wait(0)  
MMMAGIC(part16,2,2,2,0,0,0,BrickColor.new("White")) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-3*i+2.5+4.07,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),-2*i+1+2.7,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
con1:disconnect() 
con2:disconnect() 
wait(0.5) 
attack = false 
end 

function sparklesparkle() 
attack = true 
imfloatinglulz = true 
coroutine.resume(coroutine.create(function()
while imfloatinglulz == true do 
wait() 
local bawleffecty = Instance.new("Part") 
bawleffecty.formFactor = 1 
bawleffecty.CanCollide = false 
bawleffecty.Name = "Effect" 
bawleffecty.Locked = true 
bawleffecty.Size = Vector3.new(1,1,1) 
bawleffecty.Parent = glaive 
bawleffecty.Anchored = true 
bawleffecty.BrickColor = BrickColor.new("White") 
bawleffecty.CFrame = Torso.CFrame * CFrame.new(math.random(-1,1)+math.random()-math.random(),math.random(-1,1)+math.random()-math.random(),math.random(-1,1)+math.random()-math.random()) 
local bawlmesh = Instance.new("SpecialMesh") 
bawlmesh.Parent = bawleffecty 
bawlmesh.Scale = Vector3.new(0.1,0.1,0.1) 
bawlmesh.MeshType = "Sphere" 
coroutine.resume(coroutine.create(function()
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
bawleffecty.Transparency = i
end 
bawleffecty.Parent = nil 
end)) 
end 
end)) 
local bov = Instance.new("BodyPosition") 
bov.position = Torso.Position 
bov.Parent = Torso 
bov.maxForce = Vector3.new(50000000,50000000,50000000) 
Character.Humanoid.WalkSpeed = 0 
for i = 0,1,0.05 do 
wait() 
bov.position = Torso.Position + Vector3.new(0,i*2,0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(-0.5*i+1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1*i,-0.5*i+0.5,-0.5*i-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1*i,0,1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
wait(2) 
local bawleffecty = Instance.new("Part") 
bawleffecty.formFactor = 1 
bawleffecty.CanCollide = false 
bawleffecty.Name = "Effect" 
bawleffecty.Locked = true 
bawleffecty.Size = Vector3.new(1,1,1) 
bawleffecty.Parent = glaive 
bawleffecty.Anchored = true 
bawleffecty.BrickColor = BrickColor.new("White") 
bawleffecty.CFrame = Torso.CFrame 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - bawleffecty.Position;
		local mag = targ.magnitude;
		if mag <= 25 and c[i].Name ~= Player.Name then 
		coroutine.resume(coroutine.create(function() 
		BALLFUNC(head,20,0)
		end)) 
		end 
		end 
		end 
	end 
local bawlmesh = Instance.new("SpecialMesh") 
bawlmesh.Parent = bawleffecty 
bawlmesh.Scale = Vector3.new(1,1,1) 
bawlmesh.MeshType = "Sphere" 
coroutine.resume(coroutine.create(function()
wait(0) 
for i = 0,1,0.05 do 
wait() 
bawlmesh.Scale = bawlmesh.Scale + Vector3.new(3,3,3) 
bawleffecty.Transparency = i 
end 
bawleffecty.Parent = nil 
end)) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0.5,-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
bov.Parent = nil 
Character.Humanoid.WalkSpeed = 16 
imfloatinglulz = false 
attack = false 
end 

function HolyWave() 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(0.3*i-1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57*i,-2.07*i+0.5,0.5*i-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0.5*i,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
CeEff = Head.CFrame 
ss(part16,0.8) 
con1=part16.Touched:connect(function(hit) Damagefunc1(hit,20,10) end)
con2=part17.Touched:connect(function(hit) Damagefunc1(hit,20,10) end)
for i = 0,1,0.1 do 
wait() 
gairo.cframe = Head.CFrame * CFrame.fromEulerAnglesXYZ(0,0.5,0)
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-0.3*i+0.3-1.5,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(1.57,-2.07+0.5,0.5-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.5*i-0.5,0,0) 
RW.C0 = CFrame.new(-0.5*i+1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,-2*i+1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0.2*i+0.5,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
ss(part16,0.8) 
for i = 0,1,0.1 do 
wait() 
gairo.cframe = gairo.cframe * CFrame.fromEulerAnglesXYZ(0,0.5,0)
end 
ss(part16,0.8) 
for i = 0,1,0.1 do 
wait() 
gairo.cframe = gairo.cframe * CFrame.fromEulerAnglesXYZ(0,0.5,0)
end 
gairo.cframe = CeEff 
con1:disconnect() 
con2:disconnect() 
for i = 0,1,0.1 do 
wait() 
MMMAGIC(part16,3,3,3,0,0,0,BrickColor.new("Institutional white")) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(0.5*i-1.5,0.5,-0.7*i) * CFrame.fromEulerAnglesXYZ(0.93*i+1.57,-1.57*i-1.57,-0.8*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2*i+2,0,0) 
RW.C0 = CFrame.new(-0.5+1.5,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(0.93*i+1.57,math.rad(180)*i,1.8*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),-0.7*i+0.7,math.rad(90)) * CFrame.new(0, 1, -1*i) 
end 
wait(0.2) 
ss(part16,0.8) 
for i = 0,1,0.2 do 
wait() 
MMMAGIC(part16,3,3,3,0,0,0,BrickColor.new("Institutional white")) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(-0.93*i+0.93+1.57,-3.14,-0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(-0.93*i+0.93+1.57,math.rad(180),0.8) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, -1) 
end 
	local msh1 = Instance.new("SpecialMesh") --Messy Script incoming >_> 
	msh1.Scale = Vector3.new(0.01,0.01,0.01) 
	msh1.MeshType = "Sphere" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	S.BrickColor=BrickColor.new("White")
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part16.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S 
	r=Instance.new("Part")
	r.Anchored=true
	r.Name="Ring"
	r.CanCollide=false
	r.TopSurface=0
	r.BottomSurface=0
	r.CFrame=part16.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
	r.Parent=workspace
	local ring = Instance.new("SpecialMesh") 
	ring.Parent = r 
	ring.MeshId = "http://www.roblox.com/asset/?id=3270017" 
	ring.Name = "RingMesh" 
	r.RingMesh.Scale=Vector3.new(0.1,0.1,0.1)
	r.BrickColor=BrickColor.new("White")
	coroutine.resume(coroutine.create(function(par) for i=1, 14 do par.Transparency=i/14 par.RingMesh.Scale=par.RingMesh.Scale+Vector3.new(3,3,3) wait() end par.Parent=nil end),r)
	p=Instance.new("Part")
	p.Name="BlastRing"
	p.TopSurface=0
	p.BottomSurface=0
	p.CanCollide=false
	p.Anchored=true
	p.BrickColor=BrickColor.new("Institutional white")
	p.Size=Vector3.new(1,1,1)
	p.CFrame=part16.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 
	p.CFrame=p.CFrame
	p.Parent=workspace
	local mesheh = Instance.new("SpecialMesh") 
	mesheh.Parent = p 
	mesheh.Name = "BlastMesh" 
	mesheh.MeshId = "http://www.roblox.com/asset/?id=20329976" 
	p.BlastMesh.Scale=Vector3.new(0.3,0.3,0.1)
	coroutine.resume(coroutine.create(function(par) for lol=1, 17 do if Corrupt==false then par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(0.1,0.1,0.1) else par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(1,1.5,1) end par.Transparency=lol/17 par.CFrame=par.CFrame*CFrame.new(0,.1,0) wait() end par.Parent=nil end),p)
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 19 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.4,0.4,0.4) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=Part.Transparency+0.05 wait() end Part.Parent=nil end),S,S.CFrame)

	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(0.01,0.01,0.01) 
	msh1.MeshType = "Sphere" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	S.BrickColor=BrickColor.new("White")
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part16.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 19 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.3,0.3,0.3) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=Part.Transparency+0.05 wait() end Part.Parent=nil end),S,S.CFrame)
	Vel=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)
	v=Instance.new("BodyVelocity")
	v.P=3000
	v.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	v.velocity=Vel
	v.Parent=S
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - S.Position;
		local mag = targ.magnitude;
		if mag <= 10 and c[i].Name ~= Player.Name then 
		coroutine.resume(coroutine.create(function() 
		for i = 0,1,0.1 do 
		wait() 
		DBHit(head,S) 
		end 
		end)) 
		end 
		end 
		end 
	end 
wait(0.3) 
gairo.Parent = nil 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-0.5*i-1,0.5,0.7*i-0.7) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,3.64*i-3.14,0.3*i-0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0.5*i+1,0.5,0.7*i-0.7) * CFrame.fromEulerAnglesXYZ(-1.57*i+1.57,-math.rad(180)*i+math.rad(180),-0.8*i+0.8) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, -1) 
end 
attack = false 
end 

function MagicBlast() 
attack = true 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
for i = 0,1,0.1 do 
wait() 
MMMAGIC(RightArm,3,3,3,0,-1,0,BrickColor.new("White")) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1.57*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0.5,-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
for i = 0,1,0.05 do 
wait() 
MMMAGIC(RightArm,3,3,3,0,-1,0,BrickColor.new("White")) 
end 
Shot=Instance.new("Part")
Shot.Name="Effect"
Shot.formFactor=0
Shot.Size=Vector3.new(1,1,1)
Shot.BrickColor=BrickColor.new("White")
Shot.Reflectance = 0
Shot.TopSurface=0
Shot.BottomSurface=0
Shot.Transparency=0
Shot.Anchored=false 
Shot.CanCollide=false
Shot.CFrame=RightArm.CFrame*CFrame.new(0,-1,0)
Shot.Parent=workspace 
--Shot.Velocity = Head.CFrame.lookVector * 100 
coroutine.resume(coroutine.create(function()
while Shot.Parent ~= nil do 
wait() 
MMMAGIC(Shot,1,1,1,0,0,0,BrickColor.new("White")) 
end 
end)) 
coroutine.resume(coroutine.create(function() 
while Shot.Parent ~= nil do --I use this function instead of the touch function :3
wait() 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - Shot.Position;
		local mag = targ.magnitude;
		if mag <= 4 and c[i].Name ~= Player.Name then
		Damagefunc2(head.Parent.Torso,10,30)
		v=Instance.new("BodyVelocity")
		v.P=1000
		v.maxForce=Vector3.new(math.huge,0,math.huge)
		v.velocity=Torso.CFrame.lookVector*25+Torso.Velocity/1.05
		v.Parent=hum.Parent.Torso
		coroutine.resume(coroutine.create(function() 
		wait(0.3) 
		v.Parent = nil 
		end)) 
		game:GetService("Debris"):AddItem(v,.1)
		Shot.Parent = nil 
		end
		end
                end
	end
end 
end)) 
coroutine.resume(coroutine.create(function() 
wait(3) 
for i = 0,1,0.05 do 
wait() 
Shot.Transparency = i 
end 
Shot.Parent = nil 
end)) 
local v = Instance.new("BodyVelocity") 
v.Parent = Shot 
v.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
v.velocity = Head.CFrame.lookVector * 100 
local force = Instance.new("BodyForce") 
force.Parent = Shot 
force.force = Vector3.new(0,190,0) 
local meh = Instance.new("SpecialMesh") 
meh.Parent = Shot 
meh.Scale = Vector3.new(1,2,1) 
meh.MeshType = "Sphere" 
MMMAGIC(RightArm,4,4,4,0,-1,0,BrickColor.new("White")) 
MMMAGIC(RightArm,5,5,5,0,-1,0,BrickColor.new("Institutional white")) 
MOREMAGIX(RightArm,-1,4,4,4,BrickColor.new("White")) 
MOREMAGIX(RightArm,-1,4,4,4,BrickColor.new("Institutional white")) 
wait(0.3) 
for i = 0,1,0.05 do 
wait() 
MMMAGIC(RightArm,3,3,3,0,-1,0,BrickColor.new("White")) 
end 
Shot2=Instance.new("Part")
Shot2.Name="Effect"
Shot2.formFactor=0
Shot2.Size=Vector3.new(1,1,1)
Shot2.BrickColor=BrickColor.new("White")
Shot2.Reflectance = 0
Shot2.TopSurface=0
Shot2.BottomSurface=0
Shot2.Transparency=0
Shot2.Anchored=false 
Shot2.CanCollide=false
Shot2.CFrame=RightArm.CFrame*CFrame.new(0,-1,0)
Shot2.Parent=workspace 
--Shot2.Velocity = Head.CFrame.lookVector * 100 
coroutine.resume(coroutine.create(function()
while Shot2.Parent ~= nil do 
wait() 
MMMAGIC(Shot2,1,1,1,0,0,0,BrickColor.new("White")) 
end 
end)) 
coroutine.resume(coroutine.create(function() 
while Shot2.Parent ~= nil do --I use this function instead of the touch function :3
wait() 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - Shot2.Position;
		local mag = targ.magnitude;
		if mag <= 4 and c[i].Name ~= Player.Name then
		Damagefunc2(head.Parent.Torso,10,30)
		v=Instance.new("BodyVelocity")
		v.P=1000
		v.maxForce=Vector3.new(math.huge,0,math.huge)
		v.velocity=Torso.CFrame.lookVector*25+Torso.Velocity/1.05
		v.Parent=hum.Parent.Torso
		coroutine.resume(coroutine.create(function() 
		wait(0.3) 
		v.Parent = nil 
		end)) 
		game:GetService("Debris"):AddItem(v,.1)
		Shot2.Parent = nil 
		end
		end
                end
	end
end 
end)) 
coroutine.resume(coroutine.create(function() 
wait(3) 
for i = 0,1,0.05 do 
wait() 
Shot2.Transparency = i 
end 
Shot2.Parent = nil 
end)) 
local v = Instance.new("BodyVelocity") 
v.Parent = Shot2 
v.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
v.velocity = Head.CFrame.lookVector * 100 
local force = Instance.new("BodyForce") 
force.Parent = Shot2 
force.force = Vector3.new(0,190,0) 
local meh = Instance.new("SpecialMesh") 
meh.Parent = Shot2 
meh.Scale = Vector3.new(1,2,1) 
meh.MeshType = "Sphere" 
MMMAGIC(RightArm,4,4,4,0,-1,0,BrickColor.new("White")) 
MMMAGIC(RightArm,5,5,5,0,-1,0,BrickColor.new("Institutional white")) 
MOREMAGIX(RightArm,-1,4,4,4,BrickColor.new("White")) 
MOREMAGIX(RightArm,-1,4,4,4,BrickColor.new("Institutional white")) 
wait(0.3) 
for i = 0,1,0.05 do 
wait() 
MMMAGIC(RightArm,3,3,3,0,-1,0,BrickColor.new("White")) 
end 
Shot3=Instance.new("Part")
Shot3.Name="Effect"
Shot3.formFactor=0
Shot3.Size=Vector3.new(1,1,1)
Shot3.BrickColor=BrickColor.new("White")
Shot3.Reflectance = 0
Shot3.TopSurface=0
Shot3.BottomSurface=0
Shot3.Transparency=0
Shot3.Anchored=false 
Shot3.CanCollide=false
Shot3.CFrame=RightArm.CFrame*CFrame.new(0,-1,0)
Shot3.Parent=workspace 
--Shot3.Velocity = Head.CFrame.lookVector * 100 
coroutine.resume(coroutine.create(function()
while Shot3.Parent ~= nil do 
wait() 
MMMAGIC(Shot3,1,1,1,0,0,0,BrickColor.new("White")) 
end 
end)) 
coroutine.resume(coroutine.create(function() 
while Shot3.Parent ~= nil do --I use this function instead of the touch function :3
wait() 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - Shot3.Position;
		local mag = targ.magnitude;
		if mag <= 4 and c[i].Name ~= Player.Name then
		Damagefunc2(head.Parent.Torso,10,30)
		v=Instance.new("BodyVelocity")
		v.P=1000
		v.maxForce=Vector3.new(math.huge,0,math.huge)
		v.velocity=Torso.CFrame.lookVector*25+Torso.Velocity/1.05
		v.Parent=hum.Parent.Torso
		coroutine.resume(coroutine.create(function() 
		wait(0.3) 
		v.Parent = nil 
		end)) 
		game:GetService("Debris"):AddItem(v,.1)
		Shot3.Parent = nil 
		end
		end
                end
	end
end 
end)) 
coroutine.resume(coroutine.create(function() 
wait(3) 
for i = 0,1,0.05 do 
wait() 
Shot3.Transparency = i 
end 
Shot3.Parent = nil 
end)) 
local v = Instance.new("BodyVelocity") 
v.Parent = Shot3 
v.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
v.velocity = Head.CFrame.lookVector * 100 
local force = Instance.new("BodyForce") 
force.Parent = Shot3 
force.force = Vector3.new(0,190,0) 
local meh = Instance.new("SpecialMesh") 
meh.Parent = Shot3 
meh.Scale = Vector3.new(1,2,1) 
meh.MeshType = "Sphere" 
MMMAGIC(RightArm,4,4,4,0,-1,0,BrickColor.new("White")) 
MMMAGIC(RightArm,5,5,5,0,-1,0,BrickColor.new("Institutional white")) 
MOREMAGIX(RightArm,-1,4,4,4,BrickColor.new("White")) 
MOREMAGIX(RightArm,-1,4,4,4,BrickColor.new("Institutional white")) 
wait(0.3) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57*i+1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0.5,-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)*i+math.rad(90)) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
gairo.Parent = nil 
attack = false 
end 

function LightOrb() 
attack = true 
gairo.Parent = Head
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
gairo.cframe = Head.CFrame 
for i = 0,1,0.1 do 
wait() 
MMMAGIC(RightArm,3,3,3,0,-1,0,BrickColor.new("White")) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1.57*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0.5,-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
for i = 0,1,0.02 do 
wait() 
MMMAGIC(RightArm,3,3,3,0,-1,0,BrickColor.new("White")) 
end 
Shoty=Instance.new("Part")
Shoty.Name="Effect"
Shoty.formFactor=0
Shoty.Size=Vector3.new(1,1,1)
Shoty.BrickColor=BrickColor.new("White")
Shoty.Reflectance = 0
Shoty.TopSurface=0
Shoty.BottomSurface=0
Shoty.Transparency=0
Shoty.Anchored=false 
Shoty.CanCollide=false
Shoty.CFrame=RightArm.CFrame*CFrame.new(0,-1,0)
Shoty.Parent=workspace 
--Shot.Velocity = Head.CFrame.lookVector * 100 
coroutine.resume(coroutine.create(function()
while Shoty.Parent ~= nil do 
wait(0.2) 
p=Instance.new("Part")
p.Name="BlastRing"
p.TopSurface=0
p.BottomSurface=0
p.CanCollide=false
p.Anchored=true
p.BrickColor=BrickColor.new("Institutional white")
p.Size=Vector3.new(1,1,1)
p.CFrame=Shoty.CFrame*CFrame.new(-3,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) 
p.CFrame=p.CFrame
p.Parent=workspace
local mesheh = Instance.new("SpecialMesh") 
mesheh.Parent = p 
mesheh.Name = "BlastMesh" 
mesheh.MeshId = "http://www.roblox.com/asset/?id=20329976" 
p.BlastMesh.Scale=Vector3.new(0.3,0.3,0.1)
coroutine.resume(coroutine.create(function(par) for lol=1, 17 do if Corrupt==false then par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(0.1,0.1,0.1) else par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(0.2,0.2,0.2) end par.Transparency=lol/17 par.CFrame=par.CFrame*CFrame.new(0,.1,0) wait() end par.Parent=nil end),p)
end 
end)) 
local v = Instance.new("BodyVelocity") 
v.Parent = Shoty 
v.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
v.velocity = Head.CFrame.lookVector * 20 
local force = Instance.new("BodyForce") 
force.Parent = Shoty 
force.force = Vector3.new(0,190,0) 
local meh = Instance.new("SpecialMesh") 
meh.Parent = Shoty 
meh.Scale = Vector3.new(3,3,3) 
meh.MeshType = "Sphere" 
MMMAGIC(RightArm,5,5,5,0,-1,0,BrickColor.new("White")) 
MMMAGIC(RightArm,6,6,6,0,-1,0,BrickColor.new("Institutional white")) 
MOREMAGIX(RightArm,-1,4,4,4,BrickColor.new("White")) 
MOREMAGIX(RightArm,-1,4,4,4,BrickColor.new("Institutional white")) 
MOREMAGIX(RightArm,-1,4,4,4,BrickColor.new("White")) 
MOREMAGIX(RightArm,-1,4,4,4,BrickColor.new("Institutional white")) 
coroutine.resume(coroutine.create(function() 
wait(5) 
Shoty.Parent = nil 
	local msh1 = Instance.new("SpecialMesh") --Messy Script incoming >_> 
	msh1.Scale = Vector3.new(0.01,0.01,0.01) 
	msh1.MeshType = "Sphere" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	S.BrickColor=BrickColor.new("White")
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=Shoty.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S 
	r=Instance.new("Part")
	r.Anchored=true
	r.Name="Ring"
	r.CanCollide=false
	r.TopSurface=0
	r.BottomSurface=0
	r.CFrame=Shoty.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
	r.Parent=workspace
	local ring = Instance.new("SpecialMesh") 
	ring.Parent = r 
	ring.MeshId = "http://www.roblox.com/asset/?id=3270017" 
	ring.Name = "RingMesh" 
	r.RingMesh.Scale=Vector3.new(0.1,0.1,0.1)
	r.BrickColor=BrickColor.new("White")
	coroutine.resume(coroutine.create(function(par) for i=1, 14 do par.Transparency=i/14 par.RingMesh.Scale=par.RingMesh.Scale+Vector3.new(3,3,3) wait() end par.Parent=nil end),r)
	p=Instance.new("Part")
	p.Name="BlastRing"
	p.TopSurface=0
	p.BottomSurface=0
	p.CanCollide=false
	p.Anchored=true
	p.BrickColor=BrickColor.new("Institutional white")
	p.Size=Vector3.new(1,1,1)
	p.CFrame=Shoty.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)) 
	p.CFrame=p.CFrame
	p.Parent=workspace
	local mesheh = Instance.new("SpecialMesh") 
	mesheh.Parent = p 
	mesheh.Name = "BlastMesh" 
	mesheh.MeshId = "http://www.roblox.com/asset/?id=20329976" 
	p.BlastMesh.Scale=Vector3.new(0.3,0.3,0.1)
	coroutine.resume(coroutine.create(function(par) for lol=1, 17 do if Corrupt==false then par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(0.1,0.1,0.1) else par.BlastMesh.Scale=par.BlastMesh.Scale+Vector3.new(1,1.5,1) end par.Transparency=lol/17 par.CFrame=par.CFrame*CFrame.new(0,.1,0) wait() end par.Parent=nil end),p)
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 19 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.4,0.4,0.4) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=Part.Transparency+0.05 wait() end Part.Parent=nil end),S,S.CFrame)

	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(0.01,0.01,0.01) 
	msh1.MeshType = "Sphere" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(3,3,3)
	S.BrickColor=BrickColor.new("White")
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=Shoty.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 19 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.3,0.3,0.3) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=Part.Transparency+0.05 wait() end Part.Parent=nil end),S,S.CFrame)
	Vel=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)
	v=Instance.new("BodyVelocity")
	v.P=3000
	v.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	v.velocity=Vel
	v.Parent=S
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - S.Position;
		local mag = targ.magnitude;
		if mag <= 10 and c[i].Name ~= Player.Name then 
		coroutine.resume(coroutine.create(function() 
		for i = 0,1,0.1 do 
		wait() 
		DBHit(head,S) 
		end 
		end)) 
		end 
		end 
		end 
	end 
end)) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1.57*i+1.57) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0.5,-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90)*i+math.rad(90)) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
gairo.Parent = nil 
attack = false 
end 

function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(x1,y1,z1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function MOREMAGIX(part,cframe,x,y,z,color) 
		p2=Instance.new("Part")
		p2.Name="Blast"
		p2.TopSurface=0
		p2.BottomSurface=0
		p2.CanCollide=false
		p2.Anchored=true
		p2.BrickColor=color
		p2.Size=Vector3.new(x,y,z)
		p2.formFactor="Symmetric"
		p2.CFrame=part.CFrame*CFrame.new(0,cframe,0)
		p2.Parent=workspace
		m=Instance.new("BlockMesh")
		m.Parent=p2
		m.Name="BlastMesh"
		coroutine.resume(coroutine.create(function(part,dir) for loll=1, 15 do part.BlastMesh.Scale=part.BlastMesh.Scale-Vector3.new(.09,.09,.09) part.Transparency=loll/20 part.CFrame=part.CFrame*CFrame.new(dir)*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end part.Parent=nil end),p2,Vector3.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10))
end 

Damagefunc1=function(hit,Damage,Knockback)
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
	if hit.Parent==nil then
		return
	end
	CPlayer=Bin 
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil and hit.Parent.Name~="yfc" and hit.Parent:FindFirstChild("Torso")~=nil then
		Damage=Damage
--[[		if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
			return
		end]]
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
--			print(c.Value)
		if math.random(1,5)==1 then
			CRIT=true
			Damage=Damage*2
			coroutine.resume(coroutine.create(function()
			for i = 0,5 do 
			wait() 
			MMMAGIC(hit.Parent.Torso,3,3,3,0,0,0,BrickColor.new("White")) 
			end 
			wait(1) 
			for i = 0,8 do 
			wait(0.1) 
			MOREMAGIX(hit.Parent.Torso,0,2,2,2,BrickColor.new("White")) 
			end 
			end)) 
			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso
			s=Instance.new("Sound")
			s.SoundId="http://www.roblox.com/asset/?id=2801263"
			s.Volume=1
			s.Pitch=2
			s.Parent=hit
			s.PlayOnRemove=true
			s.Parent=nil
	
		end
		Damage=Damage+math.random(0,10)
--		Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
		h:TakeDamage(Damage)
		showDamage(hit.Parent,Damage,.5)
		vp=Instance.new("BodyVelocity")
		vp.P=500
		vp.maxForce=Vector3.new(math.huge,0,math.huge)
--		vp.velocity=Character.Torso.CFrame.lookVector*Knockback
		vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
		if Knockback>0 then
			vp.Parent=hit.Parent.Torso
		end
		game:GetService("Debris"):AddItem(vp,.25)
--[[		r=Instance.new("BodyAngularVelocity")
		r.P=3000
		r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
		r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		r.Parent=hit.Parent.Torso]]
		game:GetService("Debris"):AddItem(r,.5)
				c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=Player
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
		CRIT=false
		hitDeb=true
		AttackPos=6
	end
	end 
end

Damagefunc2=function(hit,Damage,Knockback)
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
	if hit.Parent==nil then
		return
	end
	CPlayer=Bin 
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil and hit.Parent.Name~="yfc" and hit.Parent:FindFirstChild("Torso")~=nil then
		Damage=Damage
--[[		if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
			return
		end]]
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
--			print(c.Value)
		if math.random(1,1)==1 then
			CRIT=true
			Damage=Damage*2
			coroutine.resume(coroutine.create(function()
			for i = 0,5 do 
			wait() 
			MMMAGIC(hit.Parent.Torso,3,3,3,0,0,0,BrickColor.new("White")) 
			end 
			wait(1) 
			for i = 0,8 do 
			wait(0.1) 
			MOREMAGIX(hit.Parent.Torso,0,2,2,2,BrickColor.new("White")) 
			end 
			end)) 
			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso
			s=Instance.new("Sound")
			s.SoundId="http://www.roblox.com/asset/?id=2801263"
			s.Volume=1
			s.Pitch=2
			s.Parent=hit
			s.PlayOnRemove=true
			s.Parent=nil
	
		end
		Damage=Damage+math.random(0,10)
--		Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
		h:TakeDamage(Damage)
		showDamage(hit.Parent,Damage,.5)
		vp=Instance.new("BodyVelocity")
		vp.P=500
		vp.maxForce=Vector3.new(math.huge,0,math.huge)
--		vp.velocity=Character.Torso.CFrame.lookVector*Knockback
		vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
		if Knockback>0 then
			vp.Parent=hit.Parent.Torso
		end
		game:GetService("Debris"):AddItem(vp,.25)
--[[		r=Instance.new("BodyAngularVelocity")
		r.P=3000
		r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
		r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		r.Parent=hit.Parent.Torso]]
		game:GetService("Debris"):AddItem(r,.5)
				c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=Player
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
		CRIT=false
		hitDeb=true
		AttackPos=6
	end
	end 
end

BALLFUNC=function(hit,Damage,Knockback)
	if hit.Parent==nil then
		return
	end
	CPlayer=Bin 
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil and hit.Parent.Name~="yfc" and hit.Parent:FindFirstChild("Torso")~=nil then
		Damage=Damage
--[[		if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
			return
		end]]
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
--			print(c.Value)
		if math.random(1,1)==1 then
			CRIT=true
			Damage=Damage*2
			coroutine.resume(coroutine.create(function()
			for i = 0,5 do 
			wait() 
			MMMAGIC(hit.Parent.Torso,3,3,3,0,0,0,BrickColor.new("White")) 
			end 
			wait(1) 
			for i = 0,8 do 
			wait(0.1) 
			MOREMAGIX(hit.Parent.Torso,0,2,2,2,BrickColor.new("White")) 
			end 
			end)) 
			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso
			s=Instance.new("Sound")
			s.SoundId="http://www.roblox.com/asset/?id=2801263"
			s.Volume=1
			s.Pitch=2
			s.Parent=hit
			s.PlayOnRemove=true
			s.Parent=nil
	
		end
		Damage=Damage+math.random(0,10)
--		Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
		h:TakeDamage(Damage)
		showDamage(hit.Parent,Damage,.5)
		vp=Instance.new("BodyVelocity")
		vp.P=500
		vp.maxForce=Vector3.new(math.huge,0,math.huge)
--		vp.velocity=Character.Torso.CFrame.lookVector*Knockback
		vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
		if Knockback>0 then
			vp.Parent=hit.Parent.Torso
		end
		game:GetService("Debris"):AddItem(vp,.25)
--[[		r=Instance.new("BodyAngularVelocity")
		r.P=3000
		r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
		r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		r.Parent=hit.Parent.Torso]]
		game:GetService("Debris"):AddItem(r,.5)
				c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=Player
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
		CRIT=false
		hitDeb=true
		AttackPos=6
	end
end

DBHit=function(hit,DB) --credits to turdulator for making this function :D
	if hit.Parent==nil then
		return
	end
	h=hit.Parent:FindFirstChild("Humanoid")
	t=hit.Parent:FindFirstChild("Torso")
	if h~=nil and t~=nil then
		if h.Parent==Character then
			return
		end
		h:TakeDamage(5) 
		showDamage(hit.Parent,5,.5) 
		coroutine.resume(coroutine.create(function()
		MMMAGIC(hit.Parent.Torso,3,3,3,0,0,0,BrickColor.new("White")) 
		wait(1) 
		wait(0.1) 
		MOREMAGIX(hit.Parent.Torso,0,2,2,2,BrickColor.new("White")) 
		end)) 
		vl=Instance.new("BodyVelocity")
		vl.P=4500
		vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
		vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
		vl.Parent=t
		game:GetService("Debris"):AddItem(vl,.2)
		rl=Instance.new("BodyAngularVelocity")
		rl.P=3000
		rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
		rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		rl.Parent=t
		game:GetService("Debris"):AddItem(rl,.2)
	else
		if hit.CanCollide==false then
			return
		end
		MagicCom:disconnect()
--		DBExplode(DB)
	end
end

showDamage=function(Char,Dealt,du)
	m=Instance.new("Model")
	m.Name=tostring(Dealt)
	h=Instance.new("Humanoid")
	h.Health=0
	h.MaxHealth=0
	h.Parent=m
	c=Instance.new("Part")
	c.Transparency=0
	c.BrickColor=BrickColor:Red()
	if CRIT==true then
		c.BrickColor=BrickColor.new("White")
	end
	c.Name="Head"
	c.TopSurface=0
	c.BottomSurface=0
	c.formFactor="Plate"
	c.Size=Vector3.new(1,.4,1)
	ms=Instance.new("CylinderMesh")
	ms.Bevel=.1
	ms.Scale=Vector3.new(.8,.8,.8)
	if CRIT==true then
		ms.Scale=Vector3.new(1.25,1.5,1.25)
		ms.Bevel=.2
	end
	ms.Parent=c
	c.Reflectance=0
	Instance.new("BodyGyro").Parent=c
	c.Parent=m
	c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
	f=Instance.new("BodyPosition")
	f.P=2000
	f.D=100
	f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	f.position=c.Position+Vector3.new(0,3,0)
	f.Parent=c
	game:GetService("Debris"):AddItem(m,.5+du)
	c.CanCollide=false
	m.Parent=workspace
	c.CanCollide=false
end


function ob1d(mouse) 
if attack == true then return end 
hold = true 
if combo == 0 then 
oneslash() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1*i-1) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-2+2,-0.5*i+1,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i-1,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1*i+1,0,-1*i+1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),-1*i+1,math.rad(90)) * CFrame.new(0, 1, -0.4*i+0.4) 
end 
wait(0.1) 
gairo.Parent = nil 
end 
end)) 
elseif combo == 1 then 
twoslash() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,-1*i+1) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,1.5*i-1,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i+1,0,0) 
RW.C0 = CFrame.new(0.5*i-0.5+1.5,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-1*i+1,0,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),1*i-1,math.rad(90)) * CFrame.new(0, -0.3*i+0.3+1, 0.5*i-0.5) 
end 
wait(0.1) 
gairo.Parent = nil 
end 
end)) 
elseif combo == 2 then 
threeslash() 
coroutine.resume(coroutine.create(function()
wait(0.2) 
if attack == false then 
combo = 0 
for i = 0,1,0.1 do 
wait(0)  
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0.5*i,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2*i+4.07,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5*i-0.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),-2.7*i+2.7,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
wait(0.1) 
gairo.Parent = nil 
end 
end)) 
elseif combo == 3 then 
fourslash() 
coroutine.resume(coroutine.create(function()
wait(0.2) 
if attack == false then 
combo = 0 
for i = 0 , 1 , 0.1 do 
wait(0)  
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0.5*i,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i+3.57,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5*i-0.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),-1.7*i+1.7,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
gairo.Parent = nil 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0.5,-0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
end)) 
end 
end 

function ob1u(mouse) 
hold = false 
end 

buttonhold = false 

function key(key) 
if attack == true then return end 
if key == "q" then 
HolyWave() 
end 
if key == "z" then 
MagicBlast() 
end 
if key == "c" then 
LightOrb() 
end 
if key == "x" then 
sparklesparkle() 
end 
end 

function key2(key) 
end 

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
unsheathed = true 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
-- 
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
--
equipanim() 
end 

function ds(mouse) 
unsheathed = false 
hideanim() 
wait(0) 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 


coroutine.resume(coroutine.create(function()
while true do 
wait(0.2) 
if unsheathed == true then 
local bawleffect = Instance.new("Part") 
bawleffect.formFactor = 1 
bawleffect.CanCollide = false 
bawleffect.Name = "Effect" 
bawleffect.Locked = true 
bawleffect.Size = Vector3.new(1,1,1) 
bawleffect.Parent = glaive 
bawleffect.Anchored = true 
bawleffect.BrickColor = BrickColor.new("White") 
bawleffect.CFrame = part17.CFrame * CFrame.new(math.random(),math.random(),math.random()) 
local bawlmesh = Instance.new("SpecialMesh") 
bawlmesh.Parent = bawleffect 
bawlmesh.Scale = Vector3.new(0.1,0.1,0.1) 
bawlmesh.MeshType = "Sphere" 
coroutine.resume(coroutine.create(function()
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
bawleffect.Transparency = i
end 
bawleffect.Parent = nil 
end)) 
local bawleffect = Instance.new("Part") 
bawleffect.formFactor = 1 
bawleffect.CanCollide = false 
bawleffect.Name = "Effect" 
bawleffect.Locked = true 
bawleffect.Size = Vector3.new(1,1,1) 
bawleffect.Parent = glaive 
bawleffect.Anchored = true 
bawleffect.BrickColor = BrickColor.new("White") 
bawleffect.CFrame = part18.CFrame * CFrame.new(math.random(),math.random(),math.random()) 
local bawlmesh = Instance.new("SpecialMesh") 
bawlmesh.Parent = bawleffect 
bawlmesh.Scale = Vector3.new(0.1,0.1,0.1) 
bawlmesh.MeshType = "Sphere" 
coroutine.resume(coroutine.create(function()
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
bawleffect.Transparency = i
end 
bawleffect.Parent = nil 
end)) 
local bawleffect = Instance.new("Part") 
bawleffect.formFactor = 1 
bawleffect.CanCollide = false 
bawleffect.Name = "Effect" 
bawleffect.Locked = true 
bawleffect.Size = Vector3.new(1,1,1) 
bawleffect.Parent = glaive 
bawleffect.Anchored = true 
bawleffect.BrickColor = BrickColor.new("White") 
bawleffect.CFrame = part17.CFrame * CFrame.new(-math.random(),math.random(),math.random()) 
local bawlmesh = Instance.new("SpecialMesh") 
bawlmesh.Parent = bawleffect 
bawlmesh.Scale = Vector3.new(0.1,0.1,0.1) 
bawlmesh.MeshType = "Sphere" 
coroutine.resume(coroutine.create(function()
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
bawleffect.Transparency = i
end 
bawleffect.Parent = nil 
end)) 
local bawleffect = Instance.new("Part") 
bawleffect.formFactor = 1 
bawleffect.CanCollide = false 
bawleffect.Name = "Effect" 
bawleffect.Locked = true 
bawleffect.Size = Vector3.new(1,1,1) 
bawleffect.Parent = glaive 
bawleffect.Anchored = true 
bawleffect.BrickColor = BrickColor.new("White") 
bawleffect.CFrame = part18.CFrame * CFrame.new(-math.random(),math.random(),math.random()) 
local bawlmesh = Instance.new("SpecialMesh") 
bawlmesh.Parent = bawleffect 
bawlmesh.Scale = Vector3.new(0.1,0.1,0.1) 
bawlmesh.MeshType = "Sphere" 
coroutine.resume(coroutine.create(function()
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
bawleffect.Transparency = i
end 
bawleffect.Parent = nil 
end)) 
end 
end 
end))