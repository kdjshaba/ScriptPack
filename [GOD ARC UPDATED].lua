Player = game:GetService("Players").LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Face=Head.face
oldFace=Face.Texture
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
mana = 400 
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
mode = "Sword" 
spread2 = 0 
range2 = 500 
rangepower = 10 
Item = {"Normal", "Explode", "Bomb", "Dark"}
Number = 1
shot = Item[Number]
alt=0
mana2="Normal"
Stance="Normal"
t = nil 
local T = Torso:Clone() 
local H = Instance.new("Humanoid") 
local M = Instance.new("Model") 
--local S = Character.Shirt:Clone() 
point = false 
local neckcf0 = Torso.Neck.C0
bg = Instance.new("BodyGyro") 
MMouse = nil 
radv = 90 
offset = 0 
aiming = false 
lol = false 
DemMags=0
skillcombo=0
blackhole=false
--player 
player = nil 
--other var
player = Player
ch = Character
--save shoulders 
RSH, LSH , RHL, LHL = ch.Torso["Right Shoulder"], ch.Torso["Left Shoulder"] , ch.Torso["Right Hip"] , ch.Torso["Left Hip"]
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 
EtheralMode=false

Look=function(object)
	for _,obj in pairs(object:GetChildren()) do
		Look(obj)
	end
	if object:IsA("Part") then
		object.Transparency=1
	end
	if object==Face then
		Face.Texture=""
	end
end

unLook=function(object)
	for _,obj in pairs(object:GetChildren()) do
		unLook(obj)
	end
	if object:IsA("Part") then
		object.Transparency=0
	end
	if object==Face then
		Face.Texture=oldFace
	end
end

if Character:findFirstChild("God Arc",true) ~= nil then 
Character:findFirstChild("God Arc",true).Parent = nil 
end 
if Character:findFirstChild("Weapon",true) ~= nil then 
Character:findFirstChild("Weapon",true).Parent = nil 
end 
if Character:findFirstChild("ArmataeModel",true) ~= nil then 
Character:findFirstChild("ArmataeModel",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end 

if Player.userId ~= Player.userId then 
print'Hay!'
Character:BreakJoints() 
local m = Instance.new("Explosion") 
m.Parent = workspace 
m.Position = Torso.Position 
wait(3) 
h.Parent = nil 
--script.Parent = nil 
wait(9001) 
while true do 
wait() 
end 
end 
 

local modelzorz = Instance.new("Model") 
modelzorz.Name = "God Arc" 
modelzorz.Parent = Character 

local prt1 = Instance.new("Part") 
prt1.formFactor = 1 
prt1.Parent = modelzorz 
prt1.CanCollide = false 
prt1.BrickColor = BrickColor.new("Black") 
prt1.Name = "Part1" 
prt1.Size = Vector3.new(1,3,1) 
prt1.Position = Torso.Position 
local prt2 = Instance.new("Part") 
prt2.formFactor = 1 
prt2.Parent = modelzorz 
prt2.CanCollide = false 
prt2.BrickColor = BrickColor.new("Medium stone grey") 
prt2.Name = "Part2" 
prt2.Size = Vector3.new(1,1,1) 
prt2.Position = Torso.Position 
local prt3 = Instance.new("Part") 
prt3.formFactor = 1 
prt3.Parent = modelzorz 
prt3.CanCollide = false 
prt3.BrickColor = BrickColor.new("Medium stone grey") 
prt3.Name = "Part3" 
prt3.Size = Vector3.new(1,1,1) 
prt3.Position = Torso.Position 
local prt4 = Instance.new("Part") 
prt4.formFactor = 1 
prt4.Parent = modelzorz 
prt4.CanCollide = false 
prt4.BrickColor = BrickColor.new("Medium stone grey") 
prt4.Name = "Part4" 
prt4.Size = Vector3.new(1,1,1) 
prt4.Position = Torso.Position 
local prt5 = Instance.new("Part") 
prt5.formFactor = 1 
prt5.Parent = modelzorz 
prt5.CanCollide = false 
prt5.BrickColor = BrickColor.new("Dark stone grey") 
prt5.Name = "Part5" 
prt5.Size = Vector3.new(1,1,1) 
prt5.Position = Torso.Position 
local prt6 = Instance.new("Part") 
prt6.formFactor = 1 
prt6.Parent = modelzorz 
prt6.CanCollide = false 
prt6.BrickColor = BrickColor.new("Black") 
prt6.Name = "Part6" 
prt6.Size = Vector3.new(1,1,1) 
prt6.Position = Torso.Position 
local prt7 = Instance.new("Part") 
prt7.formFactor = 1 
prt7.Parent = modelzorz 
prt7.CanCollide = false 
prt7.BrickColor = BrickColor.new("Black") 
prt7.Name = "Part7" 
prt7.Size = Vector3.new(1,2,1) 
prt7.Position = Torso.Position 
local prt8 = Instance.new("Part") 
prt8.formFactor = 1 
prt8.Parent = modelzorz 
prt8.CanCollide = false 
prt8.BrickColor = BrickColor.new("Dark stone grey") 
prt8.Name = "Part8" 
prt8.Size = Vector3.new(1,1,1) 
prt8.Position = Torso.Position 
local prt9 = Instance.new("Part") 
prt9.formFactor = 1 
prt9.Parent = modelzorz 
prt9.CanCollide = false 
prt9.BrickColor = BrickColor.new("White") 
prt9.Name = "Part9" 
prt9.Size = Vector3.new(1,1,1) 
prt9.Position = Torso.Position 
local prt10 = Instance.new("Part") 
prt10.formFactor = 1 
prt10.Parent = modelzorz 
prt10.CanCollide = false 
prt10.BrickColor = BrickColor.new("Medium stone grey") 
prt10.Name = "Part10" 
prt10.Size = Vector3.new(1,1,1) 
prt10.Position = Torso.Position 
local prt11 = Instance.new("Part") 
prt11.formFactor = 1 
prt11.Parent = modelzorz 
prt11.CanCollide = false 
prt11.BrickColor = BrickColor.new("Dark stone grey") 
prt11.Name = "Part11" 
prt11.Size = Vector3.new(1,1,1) 
prt11.Position = Torso.Position 
local prt12 = Instance.new("Part") 
prt12.formFactor = 1 
prt12.Parent = modelzorz 
prt12.CanCollide = false 
prt12.BrickColor = BrickColor.new("White") 
prt12.Reflectance = 0.2 
prt12.Name = "Part12" 
prt12.Size = Vector3.new(1,4,1) 
prt12.Position = Torso.Position 
local prt13 = Instance.new("Part") 
prt13.formFactor = 1 
prt13.Parent = modelzorz 
prt13.CanCollide = false 
prt13.BrickColor = BrickColor.new("Medium stone grey") 
prt13.Reflectance = 0.5 
prt13.Name = "Part13" 
prt13.Size = Vector3.new(1,4,1) 
prt13.Position = Torso.Position 
local prt14 = Instance.new("Part") 
prt14.formFactor = 1 
prt14.Parent = modelzorz 
prt14.CanCollide = false 
prt14.BrickColor = BrickColor.new("White") 
prt14.Reflectance = 0.3 
prt14.Name = "Part14" 
prt14.Size = Vector3.new(1,1,1) 
prt14.Position = Torso.Position 
local prt15 = Instance.new("Part") 
prt15.formFactor = 1 
prt15.Parent = modelzorz 
prt15.CanCollide = false 
prt15.BrickColor = BrickColor.new("Black") 
prt15.Reflectance = 0.3 
prt15.Name = "Part15" 
prt15.Size = Vector3.new(1,4,1) 
prt15.Position = Torso.Position 
local prt16 = Instance.new("Part") 
prt16.formFactor = 1 
prt16.Parent = modelzorz 
prt16.CanCollide = false 
prt16.BrickColor = BrickColor.new("White") 
prt16.Name = "Part16" 
prt16.Size = Vector3.new(1,1,1) 
prt16.Position = Torso.Position 
local prt17 = Instance.new("Part") 
prt17.formFactor = 1 
prt17.Parent = modelzorz 
prt17.CanCollide = false 
prt17.BrickColor = BrickColor.new("Medium stone grey") 
prt17.Name = "Part17" 
prt17.Size = Vector3.new(1,1,1) 
prt17.Position = Torso.Position 
local prt18 = Instance.new("Part") 
prt18.formFactor = 1 
prt18.Parent = modelzorz 
prt18.CanCollide = false 
prt18.BrickColor = BrickColor.new("Black") 
prt18.Name = "Part18" 
prt18.Size = Vector3.new(1,1,1) 
prt18.Position = Torso.Position 
local prt19 = Instance.new("Part") 
prt19.formFactor = 1 
prt19.Parent = modelzorz 
prt19.CanCollide = false 
prt19.BrickColor = BrickColor.new("Really black") 
prt19.Name = "Part19" 
prt19.Size = Vector3.new(1,1,1) 
prt19.Position = Torso.Position 
local prt20 = Instance.new("Part") 
prt20.formFactor = 1 
prt20.Parent = modelzorz 
prt20.CanCollide = false 
prt20.BrickColor = BrickColor.new("Medium stone grey") 
prt20.Name = "Part20" 
prt20.Size = Vector3.new(1,1,1) 
prt20.Position = Torso.Position 
local prt21 = Instance.new("Part") 
prt21.formFactor = 1 
prt21.Parent = modelzorz 
prt21.CanCollide = false 
prt21.BrickColor = BrickColor.new("Medium stone grey") 
prt21.Name = "Part21" 
prt21.Size = Vector3.new(1,1,1) 
prt21.Position = Torso.Position 
local prt22 = Instance.new("Part") 
prt22.formFactor = 1 
prt22.Parent = modelzorz 
prt22.CanCollide = false 
prt22.BrickColor = BrickColor.new("Medium stone grey") 
prt22.Name = "Part22" 
prt22.Size = Vector3.new(1,1,1) 
prt22.Position = Torso.Position 
local prt23 = Instance.new("Part") 
prt23.formFactor = 1 
prt23.Parent = modelzorz 
prt23.CanCollide = false 
prt23.BrickColor = BrickColor.new("Medium stone grey") 
prt23.Name = "Part23" 
prt23.Size = Vector3.new(1,1,1) 
prt23.Position = Torso.Position 
--[[local prt24 = Instance.new("Part") 
prt24.formFactor = 1 
prt24.Parent = modelzorz 
prt24.CanCollide = false 
prt24.BrickColor = BrickColor.new("Bright red") 
prt24.Name = "Part24" 
prt24.Size = Vector3.new(1,1,1) 
prt24.Position = Torso.Position ]]
modelzorz:BreakJoints() 

local msh1 = Instance.new("CylinderMesh") 
msh1.Parent = prt1 
msh1.Scale = Vector3.new(0.4,1,0.4) 
local msh2 = Instance.new("CylinderMesh") 
msh2.Parent = prt2 
msh2.Scale = Vector3.new(0.5,0.6,0.5) 
local msh3 = Instance.new("CylinderMesh") 
msh3.Parent = prt3 
msh3.Scale = Vector3.new(0.5,0.6,0.5) 
local msh4 = Instance.new("SpecialMesh") 
msh4.Parent = prt4 
msh4.Scale = Vector3.new(0.7,0.5,0.7) 
local msh5 = Instance.new("SpecialMesh") 
msh5.Parent = prt5 
msh5.MeshId = "http://www.roblox.com/Asset/?id=9756362" 
msh5.Scale = Vector3.new(0.5,0.7,0.5) 
local msh6 = Instance.new("SpecialMesh") 
msh6.Parent = prt6 
msh6.MeshId = "http://www.roblox.com/asset/?id=1778999" 
msh6.Scale = Vector3.new(0.5,0.5,0.5) 
local msh7 = Instance.new("BlockMesh") 
msh7.Parent = prt7 
msh7.Scale = Vector3.new(1.2,1,0.7) 
local msh8 = Instance.new("SpecialMesh") 
msh8.Parent = prt8 
msh8.MeshId = "http://www.roblox.com/Asset/?id=9756362" 
msh8.Scale = Vector3.new(0.5,0.7,0.5) 
local msh9 = Instance.new("SpecialMesh") 
msh9.Parent = prt9 
msh9.MeshType = "Sphere" 
msh9.Scale = Vector3.new(0.4,0.4,0.4) 
local msh10 = Instance.new("BlockMesh") 
msh10.Parent = prt10 
msh10.Scale = Vector3.new(1.5,1,0.8) 
local msh11 = Instance.new("CylinderMesh") 
msh11.Parent = prt11 
msh11.Scale = Vector3.new(1.5,0.9,1.5) 
local msh12 = Instance.new("BlockMesh") 
msh12.Parent = prt12 
msh12.Scale = Vector3.new(0.8,1,0.3) 
local msh13 = Instance.new("BlockMesh") 
msh13.Parent = prt13 
msh13.Scale = Vector3.new(1,1,0.1) 
local msh14 = Instance.new("SpecialMesh") 
msh14.Parent = prt14 
msh14.MeshType = "Wedge" 
msh14.Scale = Vector3.new(0.3,0.5,0.5) 
local msh15 = Instance.new("CylinderMesh") 
msh15.Parent = prt15 
msh15.Scale = Vector3.new(0.5,0.8,0.5) 
local msh16 = Instance.new("CylinderMesh") 
msh16.Parent = prt16 
msh16.Scale = Vector3.new(0.9,0.9,0.9) 
local msh17 = Instance.new("CylinderMesh") 
msh17.Parent = prt17 
msh17.Scale = Vector3.new(0.6,0.6,0.6) 
local msh18 = Instance.new("CylinderMesh") 
msh18.Parent = prt18 
msh18.Scale = Vector3.new(0.5,0.9,0.5) 
local msh19 = Instance.new("CylinderMesh") 
msh19.Parent = prt19 
msh19.Scale = Vector3.new(0.3,0.91,0.3) 
local msh20 = Instance.new("BlockMesh") 
msh20.Parent = prt20 
msh20.Scale = Vector3.new(0.1,0.7,0.1) 
local msh21 = Instance.new("BlockMesh") 
msh21.Parent = prt21 
msh21.Scale = Vector3.new(0.1,0.7,0.1) 
local msh22 = Instance.new("BlockMesh") 
msh22.Parent = prt22 
msh22.Scale = Vector3.new(0.1,0.7,0.1) 
local msh23 = Instance.new("BlockMesh") 
msh23.Parent = prt23 
msh23.Scale = Vector3.new(0.1,0.7,0.1) 
--[[local msh24 = Instance.new("BlockMesh") 
msh24.Parent = prt24 
msh24.Scale = Vector3.new(0.1,50,0.1) ]]

local wld1 = Instance.new("Weld") 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,3.14,2.2) * CFrame.new(1.5,-1.7,-0.8) 
local wld2 = Instance.new("Weld") 
wld2.Parent = prt2 
wld2.Part0 = prt2 
wld2.Part1 = prt1 
wld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.5,0) 
local wld3 = Instance.new("Weld") 
wld3.Parent = prt3 
wld3.Part0 = prt3 
wld3.Part1 = prt1 
wld3.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.5,0) 
local wld4 = Instance.new("Weld") 
wld4.Parent = prt4 
wld4.Part0 = prt4 
wld4.Part1 = prt1 
wld4.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.1,0) 
local wld5 = Instance.new("Weld") 
wld5.Parent = prt5 
wld5.Part0 = prt5 
wld5.Part1 = prt4 
wld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.3,0) 
local wld6 = Instance.new("Weld") 
wld6.Parent = prt6 
wld6.Part0 = prt6 
wld6.Part1 = prt1 
wld6.C0 = CFrame.fromEulerAnglesXYZ(3.14,0,0) * CFrame.new(0,-1,0) 
local wld7 = Instance.new("Weld") 
wld7.Parent = prt7 
wld7.Part0 = prt7 
wld7.Part1 = prt6 
wld7.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.2,1.5,0) 
local wld8 = Instance.new("Weld") 
wld8.Parent = prt8 
wld8.Part0 = prt8 
wld8.Part1 = prt7 
wld8.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.5,-0.7,0) 
local wld9 = Instance.new("Weld") 
wld9.Parent = prt9 
wld9.Part0 = prt9 
wld9.Part1 = prt8 
wld9.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.15,0,0) 
local wld10 = Instance.new("Weld") 
wld10.Parent = prt10 
wld10.Part0 = prt10 
wld10.Part1 = prt7 
wld10.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.3,0.5,0) 
local wld11 = Instance.new("Weld") 
wld11.Parent = prt11 
wld11.Part0 = prt11 
wld11.Part1 = prt10 
wld11.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld12 = Instance.new("Weld") 
wld12.Parent = prt12 
wld12.Part0 = prt12 
wld12.Part1 = prt7 
wld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,3,0) 
local wld13 = Instance.new("Weld") 
wld13.Parent = prt13 
wld13.Part0 = prt13 
wld13.Part1 = prt7 
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,3,0) 
local wld14 = Instance.new("Weld") 
wld14.Parent = prt14 
wld14.Part0 = prt14 
wld14.Part1 = prt12 
wld14.C0 = CFrame.fromEulerAnglesXYZ(-0.86,1.57,0) * CFrame.new(0,1.8,0) 
local wld15 = Instance.new("Weld") 
wld15.Parent = prt15 
wld15.Part0 = prt15 
wld15.Part1 = prt12 
wld15.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1,0) 
local wld16 = Instance.new("Weld") 
wld16.Parent = prt16 
wld16.Part0 = prt16 
wld16.Part1 = prt7 
wld16.C0 = CFrame.fromEulerAnglesXYZ(0,0,-0.3) * CFrame.new(-0.6,0,0) 
local wld17 = Instance.new("Weld") 
wld17.Parent = prt17 
wld17.Part0 = prt17 
wld17.Part1 = prt16 
wld17.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6,0) 
local wld18 = Instance.new("Weld") 
wld18.Parent = prt18 
wld18.Part0 = prt18 
wld18.Part1 = prt17 
wld18.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.5,0) 
local wld19 = Instance.new("Weld") 
wld19.Parent = prt19 
wld19.Part0 = prt19 
wld19.Part1 = prt18 
wld19.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local wld20 = Instance.new("Weld") 
wld20.Parent = prt20 
wld20.Part0 = prt20 
wld20.Part1 = prt16 
wld20.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.3,1,0) 
local wld21 = Instance.new("Weld") 
wld21.Parent = prt21 
wld21.Part0 = prt21 
wld21.Part1 = prt16 
wld21.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.3,1,0) 
local wld22 = Instance.new("Weld") 
wld22.Parent = prt22 
wld22.Part0 = prt22 
wld22.Part1 = prt16 
wld22.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1,-0.3) 
local wld23 = Instance.new("Weld") 
wld23.Parent = prt23 
wld23.Part0 = prt23 
wld23.Part1 = prt16 
wld23.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1,0.3) 
--[[local wld24 = Instance.new("Weld") 
wld24.Parent = prt24 
wld24.Part0 = prt24 
wld24.Part1 = prt16 
wld24.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,20,0) ]]

local SlashSound = Instance.new("Sound") -- PRELOADING SOUNDS TROLOLOL 
--SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209645" 
SlashSound.Parent = modelzorz 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = modelzorz 
SlashSound.Volume = .5 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = modelzorz 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=3264793" 
SlashSound.Parent = modelzorz 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 

local fengui = Instance.new("GuiMain") 
fengui.Parent = Player.PlayerGui 
fengui.Name = "manaGUI" 
local fenframe = Instance.new("Frame") 
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255,255,255) 
fenframe.BackgroundTransparency = 1 
fenframe.BorderColor3 = Color3.new(17,17,17) 
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
local fentext = Instance.new("TextLabel") 
fentext.Parent = fenframe 
fentext.Text = "Energy("..mana..")" 
fentext.BackgroundTransparency = 1 
fentext.SizeConstraint = "RelativeXY" 
fentext.TextXAlignment = "Center" 
fentext.TextYAlignment = "Center" 
fentext.Position = UDim2.new(0,80,1,200) 
local fentext2 = Instance.new("TextLabel") 
fentext2.Parent = fenframe 
fentext2.Text = " " 
fentext2.BackgroundTransparency = 0 
fentext2.BackgroundColor3 = Color3.new(0,0,0) 
fentext2.SizeConstraint = "RelativeXY" 
fentext2.TextXAlignment = "Center" 
fentext2.TextYAlignment = "Center" 
fentext2.Position = UDim2.new(0,10,1,170)
fentext2.Size = UDim2.new(2.79999995,0,0.210000306,0)
local fentext3 = Instance.new("TextLabel") 
fentext3.Parent = fenframe 
fentext3.Text = " " 
fentext3.BackgroundTransparency = 0 
fentext3.BackgroundColor3 = Color3.new(1,1,0) 
fentext3.SizeConstraint = "RelativeXY" 
fentext3.TextXAlignment = "Center" 
fentext3.TextYAlignment = "Center" 
fentext3.Position = UDim2.new(0,10,1,170)
fentext3.Size = UDim2.new(mana*0.007,0,0.400000006,0)
local fentext4 = Instance.new("TextLabel") 
fentext4.Parent = fenframe 
fentext4.Text = "Shot Equipped: "..shot.."" 
fentext4.BackgroundTransparency = 1 
fentext4.SizeConstraint = "RelativeXY" 
fentext4.TextXAlignment = "Center" 
fentext4.TextYAlignment = "Center" 
fentext4.Position = UDim2.new(0,80,1,150) 
local fentext5 = Instance.new("TextLabel") 
fentext5.Parent = fenframe 
fentext5.Text = "Alternate Shot: "..alt.."" 
fentext5.BackgroundTransparency = 1 
fentext5.SizeConstraint = "RelativeXY" 
fentext5.TextXAlignment = "Center" 
fentext5.TextYAlignment = "Center" 
fentext5.Position = UDim2.new(0,80,1,140) 

--[[local GUIMain = Instance.new("GuiMain") 
GUIMain.Parent = PlayerGui 
GUIMain.Name = "Shot" 
local MainTray = Instance.new("Frame") 
MainTray.Parent = GUIMain 
MainTray.Name = "Arc Tray" 
MainTray.BackgroundTransparency = 1 
MainTray.Position = UDim2.new(0, 0, 0.180000022, 0) 
MainTray.Size = UDim2.new(0.0450000018, 0, 0.340000004, 0) 
local ItemFrame = Instance.new("Frame") 
ItemFrame.Parent = MainTray 
ItemFrame.Name = "Item Ammo Frame" 
ItemFrame.Position = UDim2.new(0.420000017, 800, 0, 0) 
ItemFrame.Size = UDim2.new(0, 180, 0.300000012, 0) 
ItemFrame.BorderColor3 = Color3.new(0,0,0) 
local ItemText1 = Instance.new("TextBox") 
ItemText1.Parent = ItemFrame 
ItemText1.Name = "Item Equipped" 
ItemText1.FontSize = "Size10" 
ItemText1.Position = UDim2.new(0.499999988, 0, 0.300000012, 0) 
ItemText1.Text = "Shot Equipped:" 
local ItemText2 = Instance.new("TextBox") 
ItemText2.Parent = ItemFrame 
ItemText2.Name = "Dah Item" 
ItemText2.FontSize = "Size10" 
ItemText2.Position = UDim2.new(0.499999988, 0, 0.700000012, 0) 
ItemText2.Text = "Normal" ]]

--2.9000001, 0}, {0.450000018, 0}
local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 

--if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "GodArc" 
--script.Parent = Tool 
--end 
--Bin = script.Parent 
Bin=Tool;

function hideanim() 
if mode == "Gun" then 
bg.Parent = nil 
point = false 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2-1,1.57) * CFrame.new(0,1,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0.7*i,-1*i,0) * CFrame.new(0,0,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-2.57+3*i,-0.9+0.9*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+1.5-1*i,0,-0.5+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--wt.C0 = CFrame.Angles(0, math.rad(-50)+math.rad(50*i), 0) 
end 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,3.14,2.2) * CFrame.new(1.5,-1.7,-0.8) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5-3+1-1+3-3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
elseif mode == "Sword" then 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+1*i,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5-3+1-1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,1,0.1 do 
wait() 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0.7*i,-1*i,0) * CFrame.new(0,0,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5-3+1-1+3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wld1.Part1 = Torso 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,3.14,2.2) * CFrame.new(1.5,-1.7,-0.8) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5-3+1-1+3-3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 

function equipanim() 
if mode == "Sword" then 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wld1.Part1 = LeftArm 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0.7,-1,0) * CFrame.new(0,0,0) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
wld1.C1 = CFrame.fromEulerAnglesXYZ(0.7-0.7*i,-1+1*i,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5-3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
wld1.C1 = CFrame.fromEulerAnglesXYZ(0.7-0.7,-1+1,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5-3-0.2*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1*i,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5-3-0.2+1.2*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
elseif mode == "Gun" then 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wld1.Part1 = LeftArm 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0.7,-1,0) * CFrame.new(0,0,0) 
point = true 
coroutine.resume(coroutine.create(function()
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bg.P = bg.P + 10000
bg.Parent = Head
while point == true do
wait()
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Head.Position,pos4) * CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) --CFrame.new(Torso.Position,MMouse.Hit.p) * 

CFrame.fromEulerAnglesXYZ(0,math.rad(90),0)
offset=((Head.Position.y-MMouse.Hit.p.y)/60 )+0.02
mag=(Head.Position-MMouse.Hit.p).magnitude/80 
offset=offset/mag 
--Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(offset,0,0) 

end
wait(0.25)
bg.Parent = nil 
end))
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,math.rad(-51.5*i))
wld1.C1 = CFrame.fromEulerAnglesXYZ(0.7-0.7*i,-1+1*i,0) * CFrame.new(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.5-3.5*i,-0.9*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1*i,0,-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 

function StanceMode()
attack=true
Stance="NotFighting"
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+(1+3.14)*i,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1*i,0,-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5*i,1.57) * CFrame.new(0,1+0.3*i,0.5*i) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-0.5*i,0*i,-1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
attack=false
end

function EndStance()
attack=true
Stance="Normal"
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.54-4.60*i,1.57) * CFrame.new(0,1+0.3-0.3*i,0.5-0.5*i) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-0.5-0.5*i,0,-1+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
attack=false
end

function SpinAround()
attack=true
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5-0.5*i,1.57) * CFrame.new(0,1+0.3-0.3*i,0.5+0.5*i) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-0.5-0.5*i,0,-1+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
local b = Instance.new("BodyGyro") 
b.P=18000
b.D=600
b.maxTorque=Vector3.new(80000,80000000,80000)*50000000000000000000000000 
b.Parent = prt12
b.cframe=prt12.CFrame
bodypos=Instance.new("BodyPosition")
bodypos.P=3000
bodypos.D=100
bodypos.maxForce=Vector3.new(math.huge,math.huge,math.huge)
bodypos.position=prt12.Position
bodypos.Parent=prt12
for i=0,1,0.15 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5-0.5,1.57) * CFrame.new(0,1,0.2*i) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1+0.57*i,-1.57*i,-1+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
con1=LeftLeg.Touched:connect(function(hit) Damagefunc2(hit,20,20) end) 
con2=RightLeg.Touched:connect(function(hit) Damagefunc2(hit,20,20) end) 
con3=Torso.Touched:connect(function(hit) Damagefunc2(hit,20,20) end) 
lightning = true 
Stun3(LeftLeg,0,-10,0,BrickColor.new("White")) 
while keyZ==true do
wait()
ss(0.8) 
for i=0,1,0.05 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5-0.5,1.57-math.rad(360)*i) * CFrame.new(0,1,0.2) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1+0.57,-1.57,-1+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end 
lightning=false
con1:disconnect()
con2:disconnect()
con3:disconnect()
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5-0.5+0.5*i,1.57) * CFrame.new(0,1,0.2) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1+0.57-1*i,-1.57+1.57*i,-1+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,1-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
wait(2)
b:Remove()
bodypos:Remove()
attack=false
end

function JumpStab()
attack=true
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5,1.57) * CFrame.new(0,1+0.3,0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-0.5-1*i,0,-1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5,1.57) * CFrame.new(0,1+0.3,0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-0.5-1-0.1*i,0,-1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
local b = Instance.new("BodyGyro") 
b.P=18000
b.D=600
b.maxTorque=Vector3.new(80000,80000000,80000)*50000000000000000000000000 
b.Parent = Head
b.cframe=Head.CFrame
bodypos=Instance.new("BodyPosition")
bodypos.P=500
bodypos.D=100
bodypos.maxForce=Vector3.new(math.huge,math.huge,math.huge)
bodypos.position=Head.Position
bodypos.Parent=Head
d=Instance.new("Part")
d.Parent=workspace
d.Anchored=true
d.CFrame=Torso.CFrame*CFrame.new(0,50,-50)
d.CanCollide=false
bodypos.position=d.Position
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5-0.5*i,1.57) * CFrame.new(0,1+0.3-0.3*i,0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-0.5-1.1+2*i,0,-1+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5-0.5,1.57) * CFrame.new(0,1,0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-0.5-1.1+2+0.1*i,0,-1+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1,0,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
d.CFrame=Torso.CFrame*CFrame.new(0,-48,0)
bodypos.position=d.Position
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5-0.5+0.3*i,1.57) * CFrame.new(0,1+0.3*i,0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-0.5-1.1+2.1-1.1*i,0,-1+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1,0,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
wait(1)
d.Parent=nil
bodypos.Parent=nil
b.Parent=nil
attack=false
end

function EatMuffin() --  "Muffins" ~Derpy Hooves 
if mode == "Sword" then 
print("Muffins") 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0.3*i) * CFrame.new(0,0,-0.5) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,0.5*i) * CFrame.fromEulerAnglesXYZ(-0.3*i,0,-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
local Muffin = Instance.new("Part") 
Muffin.formFactor = 1 
Muffin.CanCollide = false 
Muffin.Name = "Muffin" 
Muffin.Locked = true 
Muffin.Size = Vector3.new(1,1,1) 
Muffin.Parent = modelzorz 
local Muffinmesh = Instance.new("SpecialMesh") 
Muffinmesh.Parent = Muffin 
Muffinmesh.MeshId = "http://www.roblox.com/asset/?id=23261119" 
Muffinmesh.TextureId = "http://www.roblox.com/asset/?id=23261110" 
Muffinmesh.Scale = Vector3.new(0.5,0.5,0.5) 
local Muffinweld = Instance.new("Weld") 
Muffinweld.Parent = Muffin 
Muffinweld.Part0 = Muffin 
Muffinweld.Part1 = RightArm 
Muffinweld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(180)) * CFrame.new(0, 1, 0.5) 
for i = 0,1,0.1 do 
wait() 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.3+0.3*i,0,-0.5+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0.3-0.3*i) * CFrame.new(0,0,-0.5) 
RW.C0 = CFrame.new(1.5+0.1*i,0.5+0.2*i,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.9*i,0,-1.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-0.5*i,0) 
end 
omnomnom(0.7)
for i = 0,1,0.1 do 
wait(0.1) 
Character.Humanoid.Health = Character.Humanoid.Health + 2 
if mana < 400 then 
mana = mana + 1 
end 
end 
Muffin.Parent = nil 
wait() 
for i = 0,1,0.1 do 
wait() 
RW.C0 = CFrame.new(1.5+0.1-0.1*i,0.5+0.2-0.2*i,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.9-1.9*i,0,-1.3+1.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-0.5+0.5*i,0) 
end 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57,3.14,0) * CFrame.new(0,0,-0.5) 
end 
end 

function onehit() 
attack = true 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(1) 
con1=prt12.Touched:connect(function(hit) Damagefunc1(hit,10,15) end) 
con2=prt13.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con3=prt7.Touched:connect(function(hit) Damagefunc1(hit,10,5) end) 
for i = 0,1,0.2 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2*i,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-2*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-2-0.2*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
attack = false 
end 

function twohit() 
attack = true 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2-1*i,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-2,0,-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-3*i,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-1+2.57*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(1.1) 
con1=prt12.Touched:connect(function(hit) Damagefunc1(hit,10,15) end) 
con2=prt13.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con3=prt7.Touched:connect(function(hit) Damagefunc1(hit,10,5) end) 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2-1+2*i,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57+1-2+1*i,0,-1+2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-3+1.57*i,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-1+2.57,0,-1+2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.2 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2-1+2,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5+0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57+1-2+1,0,-1+2+0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-3+1.57,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(-1+2.57,0,-1+2+0.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
attack = false 
end 

function threehit() 
attack = true 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2-1+2-1*i,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5+0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57+1-2+1,0,-1+2) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-3+1.57+3.14*i,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1+2.57,0,-1+2) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(0.9) 
con1=prt12.Touched:connect(function(hit) Damagefunc1(hit,10,15) end) 
con2=prt13.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con3=prt7.Touched:connect(function(hit) Damagefunc1(hit,10,5) end) 
for i = 0,1,0.2 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2-1+2-1,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57+1-2+1,0,-1+2-2.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-3+1.57+3.14,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-1+2.57,0,-1+2-2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2-1+2-1,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5+0.5-0.5,0.5,-0.5+0.5) * CFrame.fromEulerAnglesXYZ(1.57+1-2+1,0,-1+2-2.5-0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-3+1.57+3.14,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(-1+2.57,0,-1+2-2-0.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
attack = false 
end 

function fourhit() 
attack = true 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2-1+2-1-1*i,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-2+1+1*i,0,-1+2-2.5+1.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-3+1.57+3.14-1.57*i,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(-1+2.57+0.5*i,0,-1+2-2) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(1.2) 
con1=prt12.Touched:connect(function(hit) Damagefunc1(hit,10,15) end) 
con2=prt13.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con3=prt7.Touched:connect(function(hit) Damagefunc1(hit,10,5) end) 
for i = 0,1,0.2 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2-1+2-1-1+1*i,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-2+1+1-2*i,0,-1+2-2.5+1.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,-3+1.57+3.14-1.57,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-1+2.57+0.5-2.07*i,0,-1+2-2+1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
attack = false 
end 

function HeavySlashOne() 
attack = true 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2*i,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(0.9) 
local vel = Instance.new("BodyGyro") 
vel.Parent = Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
con1=prt12.Touched:connect(function(hit) Damagefunc1(hit,10,15) end) 
con2=prt13.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con3=prt7.Touched:connect(function(hit) Damagefunc1(hit,10,5) end) 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2+0.5*i,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,1*i) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1+1*i,0,-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,-1*i,0) 
end
vel.Parent = nil 
wait(0.2) 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
coroutine.resume(coroutine.create(function() 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2+0.5-0.5*i,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,1) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1+1-0.5*i,0,-1+0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,-1,0) 
end
wait(0.2) 
if attack == false then 
combo = 0 
end 
end)) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1,1.57) * CFrame.new(0,1,0) 
attack = false 
end 

function HeavySlashTwo() 
attack = true 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2+0.5,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,1) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1+1,0,-1+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.3) 
attack = false 
end 

function SpinSlash() 
attack = true 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2*i,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,0,1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1=prt12.Touched:connect(function(hit) Damagefunc1(hit,10,15) end) 
con2=prt13.Touched:connect(function(hit) Damagefunc1(hit,20,5) end) 
con3=prt7.Touched:connect(function(hit) Damagefunc1(hit,10,5) end) 
ss(1.1) 
local vel = Instance.new("BodyGyro") 
vel.Parent = Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5+0.5-0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1+2*i,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,0,1-2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
end
wait(0.1) 
coroutine.resume(coroutine.create(function() 
wait(0.5) 
if attack == false then 
combo = 0 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
vel.Parent = nil 
attack = false 
end 

function WaveStab() 
attack = true 
local vel = Instance.new("BodyGyro") 
vel.Parent = Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
for i = 0,1,0.1 do 
wait() 
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,1*i,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-1*i)
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+1*i,1.57+3.14*i) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1*i,-2.5*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57*i,0,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(1) 
for i = 0,1,0.2 do 
wait() 
--vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,1*i,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-1)
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+1,1.57+3.14) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-1*i,-2.5+0.3*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57-0.5*i,0,-1+0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
EVENMOARMAGIX(Head,2,7,2,0,-4,-6,0,0,0,BrickColor.new("White")) 
boomsound(3) 
local testbrick = Instance.new("Part") 
testbrick.Parent = modelzorz 
testbrick.Anchored = true 
testbrick.Transparency = 1 
testbrick.CFrame = Head.CFrame * CFrame.new(0,0,-6) 
coroutine.resume(coroutine.create(function() 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - testbrick.Position;
		local mag = targ.magnitude;
		if mag <= 4 and c[i].Name ~= Player.Name then 
		DBHit(head,testbrick,math.random(5,10))
		end 
		end 
		end 
	end 
end)) 
testbrick.Parent = nil 
wait(0.1) 
EVENMOARMAGIX(Head,2,7,2,4,-4,-8,0,0,0,BrickColor.new("White")) 
boomsound(3) 
local testbrick = Instance.new("Part") 
testbrick.Parent = modelzorz 
testbrick.Anchored = true 
testbrick.Transparency = 1 
testbrick.CFrame = Head.CFrame * CFrame.new(4,0,-8) 
coroutine.resume(coroutine.create(function() 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - testbrick.Position;
		local mag = targ.magnitude;
		if mag <= 4 and c[i].Name ~= Player.Name then 
		DBHit(head,testbrick,math.random(5,10))
		end 
		end 
		end 
	end 
end)) 
testbrick.Parent = nil 
EVENMOARMAGIX(Head,2,7,2,-4,-4,-8,0,0,0,BrickColor.new("White")) 
boomsound(3) 
local testbrick = Instance.new("Part") 
testbrick.Parent = modelzorz 
testbrick.Anchored = true 
testbrick.Transparency = 1 
testbrick.CFrame = Head.CFrame * CFrame.new(-4,0,-8) 
coroutine.resume(coroutine.create(function() 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - testbrick.Position;
		local mag = targ.magnitude;
		if mag <= 4 and c[i].Name ~= Player.Name then 
		DBHit(head,testbrick,math.random(5,10))
		end 
		end 
		end 
	end 
end)) 
testbrick.Parent = nil 
wait(0.2) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
vel.Parent = nil 
attack = false 
end 

function DarkSlash() 
if mana >= 80 then 
attack = true 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+1*i,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,-1.57*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,-1.57*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
lightning = true 
coroutine.resume(coroutine.create(function()
coroutine.resume(coroutine.create(function()
while lightning == true do 
wait() 
mana = mana - 2 
end 
end)) 
Stun2(prt12,20,40,20,BrickColor.new("Black")) 
end)) 
wait(0.2) 
for i = 0,1,0.1 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+1,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,-1.57-0.5*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,-1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
ss(0.8) 
con1=prt12.Touched:connect(function(hit) Damagefunc1(hit,30,30) end) 
con2=prt13.Touched:connect(function(hit) Damagefunc1(hit,60,15) end) 
con3=prt7.Touched:connect(function(hit) Damagefunc1(hit,30,15) end) 
local vel = Instance.new("BodyGyro") 
vel.Parent = Torso 
vel.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
vel.P = 20e+003 
CF = Torso.CFrame 
for i = 0,1,0.05 do 
wait() 
vel.cframe = CF * CFrame.fromEulerAnglesXYZ(0,math.rad(360)*i,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+1+3.14*i,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,-1.57-0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2*i,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,-1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1*i,0,0) 
end 
vel.Parent = nil 
wait(0.2) 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
wait(0.3) 
lightning = false 
attack = false 
skillcombo=1
coroutine.resume(coroutine.create(function()
wait(0.5) 
skillcombo=0
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1,1.57) * CFrame.new(0,1,0) 
end))
end 
end 

function LightSlash() 
if mana >= 50 then 
attack = true 
lightning = true 
coroutine.resume(coroutine.create(function()
coroutine.resume(coroutine.create(function()
while lightning == true do 
wait() 
mana = mana - 1 
end 
end)) 
Stun2(prt12,20,40,20,BrickColor.new("White")) 
end)) 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+1+3.14,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,-1.57-0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2+0.2*i,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57,-1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
end 
ss(0.8) 
con1=prt12.Touched:connect(function(hit) Damagefunc1(hit,30,30) end) 
con2=prt13.Touched:connect(function(hit) Damagefunc1(hit,60,15) end) 
con3=prt7.Touched:connect(function(hit) Damagefunc1(hit,30,15) end) 
for i = 0,1,0.05 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+1+3.14-3*i,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,-1.57-0.5,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2.2-3.2*i,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57,-1.57,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
end 
con1:disconnect() 
con2:disconnect()
con3:disconnect() 
wait(1) 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1,1.57) * CFrame.new(0,1,0) 
lightning = false 
attack = false 
end 
end 

function Shoot(mouse) 
spread2 = 0 
range2 = 500 
rangepower = 10 
if shot=="Dark" then 
if blackhole==true then 
return
end 
end 
attack = true 
if mana >= 10 then 
lasersound(2) 
coroutine.resume(coroutine.create(function() 
if alt==0 then 
if shot == "Normal" then 
mana = mana - 10 
elseif shot == "Explode" then 
mana = mana - 40 
elseif shot == "Bomb" then 
mana = mana - 30 
elseif shot == "Dark" then 
mana = mana - 100 
end 
shoottrail2(mouse) 
elseif alt==1 then 
if shot == "Normal" then 
mana = mana - 50 
elseif shot == "Explode" then 
mana = mana - 40 
elseif shot == "Bomb" then 
mana = mana - 30 
elseif shot == "Dark" then 
mana = mana - 100 
end 
if shot=="Normal" then 
for i = 1,5 do 
coroutine.resume(coroutine.create(function() 
shoottrail2(mouse) 
end))
end 
else 
shoottrail2(mouse) 
end 
end 
end)) 
end 
if aiming == true then 
for i = 0,1,0.2 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2-1,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,math.rad(-51.5))
Torso.Neck.C1=necko2*CFrame.fromEulerAnglesXYZ(-offset,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-2.57+0.3*i,-0.9,0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(offset,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(-0.5+1.5+0.3*i,0,-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(offset,0,0) 
end 
for i = 0,1,0.2 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2-1,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,math.rad(-51.5))
Torso.Neck.C1=necko2*CFrame.fromEulerAnglesXYZ(-offset,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-2.57+0.3-0.3*i,-0.9,0.2-0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(offset,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(-0.5+1.5+0.3-0.3*i,0,-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(offset,0,0) 
end 
else 
for i = 0,1,0.2 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2-1,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,math.rad(-51.5))
Torso.Neck.C1=necko2*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-2.57+0.3*i,-0.9,0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(-0.5+1.5+0.3*i,0,-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,1,0.2 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2-1,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,math.rad(-51.5))
Torso.Neck.C1=necko2*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-2.57+0.3-0.3*i,-0.9,0.2-0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(-0.5+1.5+0.3-0.3*i,0,-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
attack = false 
end 

function Aim(mouse) 
if mode == "Gun" and point == true and aiming == false then 
aiming = true 
while aiming == true and point == true do 
wait() 
offset=(Torso.Position.y-mouse.Hit.p.y)/60
mag=(Torso.Position-mouse.Hit.p).magnitude/80
offset=offset/mag 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,math.rad(-51.5)) 
Torso.Neck.C1=necko2*CFrame.fromEulerAnglesXYZ(-offset,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-2.57,-0.9,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(offset,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(-0.5+1.5,0,-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(offset,0,0) 
end 
else 
aiming = false 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,math.rad(-51.5)) 
Torso.Neck.C1=necko2*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-2.57,-0.9,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(-0.5+1.5,0,-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
while aiming == false do 
wait() 
offset = 0 
end 
end 
end 

function Switch(mouse) 
attack = true 
if mode == "Sword" then 
point = true 
equipsound(0.5) 
mode = "Gun" 
for i = 0,1,0.1 do 
wait() 

msh12.Scale = Vector3.new(0.8-0.5*i,1-0.5*i,0.3-0.1*i) 
msh13.Scale = Vector3.new(1-0.5*i,1-0.5*i,0.1-0.05*i) 
msh14.Scale = Vector3.new(0.3-0.1*i,0.5-0.3*i,0.5-0.3*i) 
msh15.Scale = Vector3.new(0.5-0.25*i,0.8-0.5*i,0.5-0.25*i) 
wld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,-3.14*i) * CFrame.new(-0.8*i,3-3*i,0) 
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,-3.14*i) * CFrame.new(-0.8*i,3-3*i,0) 
wld14.C0 = CFrame.fromEulerAnglesXYZ(-0.86,1.57,0) * CFrame.new(0,1.8-0.9*i,0) 
wld15.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1+0.6*i,0) 

msh16.Scale = Vector3.new(0.9+0.7*i,0.9+0.4*i,0.9+0.7*i) 
msh17.Scale = Vector3.new(0.6+0.5*i,0.6+0.5*i,0.6+0.5*i) 
msh18.Scale = Vector3.new(0.5+0.5*i,0.9+0.5*i,0.5+0.5*i) 
msh19.Scale = Vector3.new(0.3+0.5*i,0.91+0.5*i,0.3+0.5*i) 
msh20.Scale = Vector3.new(0.1+0.2*i,0.7+0.5*i,0.1+0.2*i) 
msh21.Scale = Vector3.new(0.1+0.2*i,0.7+0.5*i,0.1+0.2*i) 
msh22.Scale = Vector3.new(0.1+0.2*i,0.7+0.5*i,0.1+0.2*i) 
msh23.Scale = Vector3.new(0.1+0.2*i,0.7+0.5*i,0.1+0.2*i) 
wld16.C0 = CFrame.fromEulerAnglesXYZ(0,0,-0.3+0.3*i) * CFrame.new(-0.6+0.6*i,1.9*i,0) 
wld17.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6+0.3*i,0) 
wld18.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.5+0.6*i,0) 
wld19.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wld20.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.3-0.3*i,1+0.8*i,0) 
wld21.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.3+0.3*i,1+0.8*i,0) 
wld22.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1+0.8*i,-0.3-0.3*i) 
wld23.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1+0.8*i,0.3+0.3*i) 

wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2*i,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2-1*i,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,math.rad(-60*i))
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-2.57*i,-0.9*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+1.5*i,0,-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
--wt.C0 = CFrame.Angles(0, math.rad(-51.5*i), 0) 
end 
coroutine.resume(coroutine.create(function()
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bg.P = bg.P + 10000
bg.Parent = Torso
while point == true do 
wait()
local pos4 = Vector3.new(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = CFrame.new(Torso.Position,pos4) * CFrame.fromEulerAnglesXYZ(0,1,0) * CFrame.new(0,0,0) --CFrame.new(Torso.Position,MMouse.Hit.p) * 

CFrame.fromEulerAnglesXYZ(0,math.rad(90),0)
offset=((Head.Position.y-MMouse.Hit.p.y)/60 )+0.02
mag=(Head.Position-MMouse.Hit.p).magnitude/80 
offset=offset/mag 
if aiming == true then 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(-offset,0,math.rad(-51.5))
else 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,math.rad(-51.5))
end 
end
wait(0.25)
bg.Parent = nil 
end))
elseif mode == "Gun" then 
point = false 
equipsound(0.8) 
mode = "Sword"
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
RW.Part0 = Torso
LW.Part0 = Torso
Torso.Transparency = 0
RHL.Part0 = Torso
LHL.Part0 = Torso
T.Parent = nil
for i = 0,1,0.1 do 
wait() 

msh12.Scale = Vector3.new(0.8-0.5+0.5*i,1-0.5+0.5*i,0.3-0.1+0.1*i) 
msh13.Scale = Vector3.new(1-0.5+0.5*i,1-0.5+0.5*i,0.1-0.05+0.05*i) 
msh14.Scale = Vector3.new(0.3-0.1+0.1*i,0.5-0.3+0.3*i,0.5-0.3+0.3*i) 
msh15.Scale = Vector3.new(0.5-0.25+0.25*i,0.8-0.5+0.5*i,0.5-0.25+0.25*i) 
wld12.C0 = CFrame.fromEulerAnglesXYZ(0,0,-3.14+3.14*i) * CFrame.new(-0.8+0.8*i,3-3+3*i,0) 
wld13.C0 = CFrame.fromEulerAnglesXYZ(0,0,-3.14+3.14*i) * CFrame.new(-0.8+0.8*i,3-3+3*i,0) 
wld14.C0 = CFrame.fromEulerAnglesXYZ(-0.86,1.57,0) * CFrame.new(0,1.8-0.9+0.9*i,0) 
wld15.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-1+0.6-0.6*i,0) 

msh16.Scale = Vector3.new(0.9+0.7-0.7*i,0.9+0.4-0.4*i,0.9+0.7-0.7*i) 
msh17.Scale = Vector3.new(0.6+0.5-0.5*i,0.6+0.5-0.5*i,0.6+0.5-0.5*i) 
msh18.Scale = Vector3.new(0.5+0.5-0.5*i,0.9+0.5-0.5*i,0.5+0.5-0.5*i) 
msh19.Scale = Vector3.new(0.3+0.5-0.5*i,0.91+0.5-0.5*i,0.3+0.5-0.5*i) 
msh20.Scale = Vector3.new(0.1+0.2-0.2*i,0.7+0.5-0.5*i,0.1+0.2-0.2*i) 
msh21.Scale = Vector3.new(0.1+0.2-0.2*i,0.7+0.5-0.5*i,0.1+0.2-0.2*i) 
msh22.Scale = Vector3.new(0.1+0.2-0.2*i,0.7+0.5-0.5*i,0.1+0.2-0.2*i) 
msh23.Scale = Vector3.new(0.1+0.2-0.2*i,0.7+0.5-0.5*i,0.1+0.2-0.2*i) 
wld16.C0 = CFrame.fromEulerAnglesXYZ(0,0,-0.3+0.3-0.3*i) * CFrame.new(-0.6+0.6-0.6*i,1.9-1.9*i,0) 
wld17.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.6+0.3-0.3*i,0) 
wld18.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0.5+0.6-0.6*i,0) 
wld19.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
wld20.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-0.3-0.3+0.3*i,1+0.8-0.8*i,0) 
wld21.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.3+0.3-0.3*i,1+0.8-0.8*i,0) 
wld22.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1+0.8-0.8*i,-0.3-0.3+0.3*i) 
wld23.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1+0.8-0.8*i,0.3+0.3-0.3*i) 

wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2-1+1*i,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-2.57+2.57*i,-0.9+0.9*i,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * CFrame.fromEulerAnglesXYZ(-0.5+1.5-1.5*i,0,-0.5+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1+2-1+1-2*i,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-2.57+2.57-1*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
attack = false 
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
end
end 

function changeitemleft() 
if Number > 1 then 
Number = Number - 1 
shot = Item[Number] 
end 
end 

function changeitemright() 
if Number < #Item then 
Number = Number + 1 
shot = Item[Number] 
end 
end 

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Stun2=function(Feh,x,y,z,color)
coroutine.resume(coroutine.create(function(part)
--[[		if part.Parent:FindFirstChild("Torso")==nil then
			return
		end]]
		Torsoh2=part
		End2=Torsoh2.CFrame+Vector3.new(math.random(-20,20)/10,math.random(-30,30)/10,math.random(-20,20)/10)
		ST2=Torsoh2.Position
--[[		p=Instance.new("BodyPosition")
		p.P=3000
		p.D=100
		p.maxForce=Vector3.new(math.huge,0,math.huge)
		p.position=Torsoh2.Position
		p.Parent=Torsoh2]]
		while part.Parent ~= nil and lightning == true do 
--			f1:Play()
--			p.position=ST2+Vector3.new(math.random(-50,50)/50,0,math.random(-50,50)/50)
			Start2=End2
			End2=Torsoh2.CFrame*CFrame.new(math.random(-x,x)/10,math.random(-y,y)/10,math.random(-z,z)/10)
			e=Instance.new("Part")
			e.TopSurface=0
			e.BottomSurface=0
			e.CanCollide=false
			e.Anchored=true
			e.formFactor="Symmetric"
			e.Size=Vector3.new(1,1,1)
			Look2=(End2.p-Start2.p).unit
			m=Instance.new("BlockMesh")
			m.Scale=Vector3.new(.2,.2,(Start2.p-End2.p).magnitude)
			m.Parent=e
			e.CFrame=CFrame.new(Start2.p+Look2*(m.Scale.z/2),Start2.p+Look2*99)
			e.Reflectance=.3
			e.Name="Zap"
			e.BrickColor=color
			e.Parent=part.Parent
			coroutine.resume(coroutine.create(function(PAR) for i=1, 25 do PAR.Transparency=i/25 wait() end PAR.Parent=nil end),e)
			wait()
		end
		wait(.45)
--		p.Parent=nil
end),Feh) 
end

Stun3=function(Feh,x,y,z,color)
coroutine.resume(coroutine.create(function(part)
--[[		if part.Parent:FindFirstChild("Torso")==nil then
			return
		end]]
		Torsoh2=part
		End2=Torsoh2.CFrame+Vector3.new(math.random(-20,20)/10,math.random(-30,30)/10,math.random(-20,20)/10)
		ST2=Torsoh2.Position
--[[		p=Instance.new("BodyPosition")
		p.P=3000
		p.D=100
		p.maxForce=Vector3.new(math.huge,0,math.huge)
		p.position=Torsoh2.Position
		p.Parent=Torsoh2]]
		while part.Parent ~= nil and lightning == true do 
--			f1:Play()
--			p.position=ST2+Vector3.new(math.random(-50,50)/50,0,math.random(-50,50)/50)
			Start2=End2
			End2=Torsoh2.CFrame*CFrame.new(math.random(-x,x)/10,y/10,math.random(-z,z)/10)
			e=Instance.new("Part")
			e.TopSurface=0
			e.BottomSurface=0
			e.CanCollide=false
			e.Anchored=true
			e.formFactor="Symmetric"
			e.Size=Vector3.new(3,3,1)
			Look2=(End2.p-Start2.p).unit
			m=Instance.new("BlockMesh")
			m.Scale=Vector3.new(.2,.2,(Start2.p-End2.p).magnitude)
			m.Parent=e
			e.CFrame=CFrame.new(Start2.p+Look2*(m.Scale.z/2),Start2.p+Look2*99)
			e.Reflectance=.3
			e.Name="Zap"
			e.BrickColor=color
			e.Parent=part.Parent
			coroutine.resume(coroutine.create(function(PAR) for i=1, 25 do PAR.Transparency=i/25 wait() end PAR.Parent=nil end),e)
			wait()
		end
		wait(.45)
--		p.Parent=nil
end),Feh) 
end

function shoottrail2(mouse)
spread2 = 0 
range2 = 500 
rangepower = 10 
if alt==1 then 
if shot == "Normal" then 
spread2 = 50 
range2 = 100 
end 
end 
local spreadvector = (Vector3.new(math.random(-spread2,spread2),math.random(-spread2,spread2),math.random(-spread2,spread2)) / 100) * (prt19.Position).magnitude/100
local dir = Head.CFrame.lookVector+spreadvector 
local hit2,pos = rayCast(prt19.Position,dir,10,Character)
local rangepos = range2
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(1,0.2,1)
effectsg.Parent = Character
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("white") 
if shot == "Dark" then 
effectsg.BrickColor = BrickColor.new("Black") 
end 
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(1,mg*5,1)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.2 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(1-1*i,mg*5,1-1*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = prt19.Position
local inc = rangepower
repeat
wait() 
rangepos = rangepos - 10
dir = dir 
--[[if alt==1 then
dir = dir * CFrame.Angles(math.rad(-1),0,0)
end ]]
hit2,pos = rayCast(newpos,dir,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir * inc)
if alt==1 then 
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
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
--effectsmsh.Scale = Vector3.new(1,1,2.5)
effectsmsh.Scale = Vector3.new(3,3,3)
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Transparency = 1 
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = modelzorz 
effectsg.BrickColor = BrickColor.new("white") 
if shot == "Dark" then 
effectsg.BrickColor = BrickColor.new("Black") 
end 
effectsmsh.Parent = effectsg
effectsg.CFrame = CFrame.new(newpos,pos) + CFrame.new(newpos,pos).lookVector*2.5*2
local efwel = Instance.new("Weld") 
efwel.Parent = effectsg 
efwel.Part0 = effectsg 
efwel.Part1 = hit2 
coroutine.resume(coroutine.create(function()
if shot == "Explode" then 
--mana = mana - 50 
boomsound(1) 
	coroutine.resume(coroutine.create(function()
	if workspace:findFirstChild("GridModel") ~= nil then 
	local c = game.Workspace.GridModel:GetChildren();
	for i = 1, #c do
		if c[i].className == "Part" then
		local targ = c[i].Position - effectsg.Position;
		local mag = targ.magnitude;
		if mag <= 8 then 
		c[i].Parent = nil
		end
		end
	end
	end 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - effectsg.Position;
		local mag = targ.magnitude;
		if mag <= 15 then 
		wait() 
		DBHit(head,effectsg,20) 
		end 
		end 
	end 
--[[	local c = game.Workspace:GetChildren();
	for i = 1, #c do
		if c[i].className=="Part" then
		local targ = c[i].Position - effectsg.Position;
		local mag = targ.magnitude;
		if mag <= 15 then 
		wait() 
		c[i]:BreakJoints()
		end 
		end 
		if c[i]:findFirstChild("Part")~=nil then
		local targ = c[i]:findFirstChild("Part").Position - effectsg.Position;
		local mag = targ.magnitude;
		if mag <= 15 then 
		wait() 
		c[i]:BreakJoints()
		end 
		end 
	end ]]
end 
end)) 
EVENMOARMAGIX(effectsg,10,8,10,0,0,0,0,0,0,BrickColor.new("White")) 
for i = 0,5 do 
wait() 
MMMAGIC(effectsg,8,8,8,0,0,0,BrickColor.new("White")) 
end 
elseif shot=="Dark" then
--mana=mana-70
--1529460
coroutine.resume(coroutine.create(function(Part,Mesh)
	local Mesh = Instance.new("SpecialMesh") 
	Mesh.Scale = Vector3.new(0.5,0.5,0.5) 
	Mesh.MeshType = "Sphere" 
--	Mesh.TextureId="http://www.roblox.com/asset/?id=1529460"
	Part=Instance.new("Part")
	Part.Name="Effect"
	Part.formFactor=0
	Part.Size=Vector3.new(1,1,1)
	Part.BrickColor=BrickColor.new("Black")
	Part.Reflectance = 0
	Part.TopSurface=0
	Part.BottomSurface=0
	Part.Transparency=0
	Part.Anchored=true
	Part.CanCollide=false
	Part.CFrame=effectsg.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
	Part.Parent=Character
	Mesh.Parent = Part
	lol=true
coroutine.resume(coroutine.create(function()
	DarkRiftF(Part)
end)) 
	DemMags=1
	for i=0,200 do
	wait()
	DerpMagic(Part,1,i/3,1,0,i/3,0,BrickColor.new("Black")) 
	blackhole=true 
	DemMags=DemMags+0.2
	Mesh.Scale=Mesh.Scale-Vector3.new(0.2,0.2,0.2)
	Part.CFrame=effectsg.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	end
	fff=200
	for i=0,100 do
	wait()
	DerpMagic(Part,1,fff/3,1,0,fff/3,0,BrickColor.new("Black")) 
	Part.CFrame=effectsg.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	end
	for i=0,1,0.05 do
	wait()
	Part.Transparency=Part.Transparency+0.05
	Mesh.Scale=Mesh.Scale+Vector3.new(1.5,1.5,1.5)
	end
	lol=false
	Part.Parent=nil
	blackhole=false
end),nil,nil)
elseif shot == "Bomb" then 
--mana = mana - 20 
coroutine.resume(coroutine.create(function(him) 
coroutine.resume(coroutine.create(function() 
for i=0,1,0.01 do
wait()
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - effectsg.Position;
		local mag = targ.magnitude;
		if mag <= 15 then 
		wait() 
		him=true
		end 
		end 
	end 
	end
	end
him = true 
end)) 
while him == false do 
wait(0.1) 
MMMAGIC(effectsg,4,4,4,0,0,0,BrickColor.new("White")) 
end 
boomsound(1) 
	coroutine.resume(coroutine.create(function()
	if workspace:findFirstChild("GridModel") ~= nil then 
	local c = game.Workspace.GridModel:GetChildren();
	for i = 1, #c do
		if c[i].className == "Part" then
		local targ = c[i].Position - effectsg.Position;
		local mag = targ.magnitude;
		if mag <= 8 then 
		c[i].Parent = nil
		end
		end
	end
	end 
	local c = game.Workspace:GetChildren();
	for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
		local head = c[i]:findFirstChild("Head");
                if head ~= nil then
		local targ = head.Position - effectsg.Position;
		local mag = targ.magnitude;
		if mag <= 15 then 
		wait() 
		DBHit(head,effectsg,5) 
		end 
		end 
	end 
--[[	local c = game.Workspace:GetChildren();
	for i = 1, #c do
		if c[i].className=="Part" then
		local targ = c[i].Position - effectsg.Position;
		local mag = targ.magnitude;
		if mag <= 15 then 
		wait() 
		c[i]:BreakJoints()
		end 
		end 
		if c[i]:findFirstChild("Part")~=nil then
		local targ = c[i]:findFirstChild("Part").Position - effectsg.Position;
		local mag = targ.magnitude;
		if mag <= 15 then 
		wait() 
		c[i]:BreakJoints()
		end 
		end 
	end ]]
end 
end)) 
EVENMOARMAGIX(effectsg,10,8,10,0,0,0,0,0,0,BrickColor.new("White")) 
for i = 0,5 do 
wait() 
MMMAGIC(effectsg,8,8,8,0,0,0,BrickColor.new("White")) 
end 
end),false) 
end 
end)) 
efwel.Parent = nil 
effectsg.Anchored = true 
local HitPos = effectsg.Position + CFrame.new(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + CFrame.new(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + (prt1.CFrame.lookVector * .5) 
local CJ = CFrame.new(HitPos) 
local C0 = effectsg.CFrame:inverse() * CJ
local C1 = hit2.CFrame:inverse() * CJ 
--efwel.C0 = C0
--efwel.C1 = C1
--efwel.Parent = effectsg 
Damg = 10 
coroutine.resume(coroutine.create(function()
wait(3)
effectsg.Parent = nil
end))
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
attackdebounce = false 
Damagefunc1(hit2,Damg,5)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
attackdebounce = false 
Damagefunc1(hit2,Damg,5)
end
end
end


function faketors() 
M.Parent = workspace 
S.Parent = M 
H.Parent = M 
T.formFactor = 0
T.CanCollide = false
T.Name = "FTorso"
T.Locked = true
T.Parent = M
T.Transparency = 1
T.BrickColor = Torso.BrickColor
for i,z in pairs(Character:GetChildren()) do
if z.className == "CharacterMesh" then
if z.BodyPart == Enum.BodyPart.Torso then
local SM = Instance.new("SpecialMesh",T)
SM.MeshId = "http://www.roblox.com/asset/?id=" .. z.MeshId
if z.BaseTextureId ~= 0 then
SM.TextureId = z.BaseTextureId
elseif z.OverlayTextureId ~= 0 then
SM.TextureId = z.OverlayTextureId
else
SM.TextureId = ""
end
end
end
end
local wt = Instance.new("Weld")
wt.Parent = T
wt.Part0 = T
wt.Part1 = Torso
RW.Part0 = T
LW.Part0 = T
T.Transparency = 0
Torso.Transparency = 1
RHL.Part0 = T
LHL.Part0 = T
return wt,T
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
	S.Parent=workspace
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function UltimaMMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(x1,y1,z1) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(1,1,1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=workspace
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

function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	msh1.MeshType = "Sphere" 
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
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
	S.Parent=workspace
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.15,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

--print("Y U NU GIVE CREDIT.") 
print("studioscript: of course i gave credit(:")
print("credits to: studioscript, camerono3")

function WaveEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(x1,y1,z1) 
	msh1.MeshId = "http://www.roblox.com/asset/?id=20329976" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(1,1,1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
	S.Parent=workspace
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function BlastEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(x1,y1,z1) 
	msh1.MeshId = "http://www.roblox.com/asset/?id=1323306" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(1,1,1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
	S.Parent=workspace
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.15,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function DerpMagic(part,x1,y1,z1,x2,y2,z2,color) 
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
	S.Anchored=false
	S.CanCollide=false
	S.CFrame=part.CFrame
	S.Parent=workspace
	msh1.Parent = S
	W=Instance.new("Weld")
	W.Parent=S
	W.Part0=S
	W.Part1=part
	W.C0=CFrame.new(x2,y2,z2) * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	W.Parent=nil
	S.Anchored=true
	coroutine.resume(coroutine.create(function(Part,Weld) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) --[[Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))]] Part.Transparency=i*.1 wait() end Part.Parent=nil Weld.Parent=nil end),S,W)
end 

DarkRiftF=function(par) --Thank you turdulator for this :D
while lol == true do 
wait() 
PWN={}
for _,v in pairs(workspace:children()) do
if v.className=="Model" and v:FindFirstChild("Humanoid")~=nil then
if v.Humanoid.Health>0 and v:FindFirstChild("Torso")~=nil then
if v~=Character and (v.Torso.Position-par.Position).magnitude<=DemMags then
table.insert(PWN,v.Torso)
end
end
end
end
for _,t in pairs(PWN) do
Mag=(par.Position-t.Position).magnitude/2
t.Parent.Humanoid:TakeDamage(1)
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*5000
rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))/10
rl.Parent=t
game:GetService("Debris"):AddItem(rl,.1)
if Mag<=2 then
t.Parent.Humanoid:TakeDamage(.5)
else
vl=Instance.new("BodyVelocity")
vl.P=3000
vl.maxForce=Vector3.new(50000000000,50000000000,50000000000)
vl.velocity=(t.Position-par.Position).unit*-(70/(Mag))
vl.Parent=t
game:GetService("Debris"):AddItem(vl,.1)
end
end
wait(.08)
end
end

function ss(pitch) 

local SlashSound = Instance.new("Sound") 
--SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209645" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function equipsound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\unsheath.wav" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function magicsound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function critsound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function spikesound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=3264793" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function boomsound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset?id=2101148" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function lasersound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds/Launching rocket.wav" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
function omnomnom(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=12544690" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 

Damagefunc1=function(hit,Damage,Knockback)
	if hit.Parent==nil then
		return
	end
	CPlayer=Bin 
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
		if mana < 400 and mode == "Sword" then 
		mana = mana + math.random(30,50)  
		end 
		if mana > 400 then 
		mana = 400 
		end 
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
		if math.random(0,99)+math.random()<=5 then
			CRIT=true
			Damage=Damage*1.5
--[[			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso]]
			critsound(2) 
	
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
	if hit.Parent==nil then
		return
	end
	CPlayer=Bin 
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
		if mana < 400 and mode == "Sword" then 
		mana = mana + math.random(30,50)  
		end 
		if mana > 400 then 
		mana = 400 
		end 
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
		CRIT=true
		if CRIT==true then
			CRIT=true
			Damage=Damage*1.5
			Knockback=Knockback*2
			for i=1,3 do
			EVENMOARMAGIX(hit.Parent.Torso,5,5,5,0,0,0,0,0,0,BrickColor.new("White")) 
			end
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso
			critsound(2) 
	
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

DBHit=function(hit,DB,Dmg) --credits to turdulator for making this function :D
	if hit.Parent==nil then
		return
	end
	h=hit.Parent:FindFirstChild("Humanoid")
	if h==nil then
	h=hit.Parent.Parent:FindFirstChild("Humanoid")
	end
	t=hit.Parent:FindFirstChild("Torso")
	if h~=nil and t~=nil then
--[[		if h.Parent==Character then
			return
		end]]
coroutine.resume(coroutine.create(function() 
if h.Parent==Character then
local vel = Instance.new("BodyVelocity")
vel.maxForce = Vector3.new(0,math.huge,0)
vel.P = vel.P * 2
vel.velocity = Vector3.new(0,100,0)
vel.Parent = Torso
wait(0.2)
vel.Parent = nil
end
end)) 
		Damage=Dmg+math.random(2,10)
		h:TakeDamage(Damage) 
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
		showDamage(hit.Parent,Damage,.5) 
		vl=Instance.new("BodyVelocity")
		vl.P=4500
		vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
		vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
		vl.Parent=t
		game:GetService("Debris"):AddItem(vl,.2)
		rl=Instance.new("BodyAngularVelocity")
		rl.P=3000
		rl.maxTorque=Vector3.new(5000,5000,5000)*500000000
		rl.angularvelocity=Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
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
		c.BrickColor=BrickColor.new("Really red")
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

hold = false 

--LOLOL FEN'S TRADEMARK COG
local fentrademark1 = Instance.new("Part") 
fentrademark1.formFactor = 1 
fentrademark1.Parent = modelzorz 
fentrademark1.CanCollide = false 
fentrademark1.BrickColor = BrickColor.new("Really black") 
fentrademark1.Name = "Part23" 
fentrademark1.Size = Vector3.new(1,1,1) 
fentrademark1.Position = Torso.Position 
local fenmesh1 = Instance.new("CylinderMesh") 
fenmesh1.Parent = fentrademark1
fenmesh1.Scale = Vector3.new(0.7,0.6,0.7) 
local fenweld1 = Instance.new("Weld") 
fenweld1.Parent = fentrademark1
fenweld1.Part0 = fentrademark1
fenweld1.Part1 = prt7
fenweld1.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,math.rad(180)) * CFrame.new(0,-0.65,-0.05)
local fentrademark2 = Instance.new("Part") 
fentrademark2.formFactor = 1 
fentrademark2.Parent = modelzorz 
fentrademark2.CanCollide = false 
fentrademark2.BrickColor = BrickColor.new("Bright blue") 
fentrademark2.Name = "Part24" 
fentrademark2.Size = Vector3.new(1,1,1) 
fentrademark2.Position = Torso.Position 
local fenmesh2 = Instance.new("BlockMesh") 
fenmesh2.Parent = fentrademark2
fenmesh2.Scale = Vector3.new(0.5,0.65,0.15) 
local fenweld2 = Instance.new("Weld") 
fenweld2.Parent = fentrademark2
fenweld2.Part0 = fentrademark2
fenweld2.Part1 = fentrademark1
fenweld2.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.05,0,-0.1) 
local fentrademark3 = Instance.new("Part") 
fentrademark3.formFactor = 1 
fentrademark3.Parent = modelzorz 
fentrademark3.CanCollide = false 
fentrademark3.BrickColor = BrickColor.new("Bright blue") 
fentrademark3.Name = "Part25" 
fentrademark3.Size = Vector3.new(1,1,1) 
fentrademark3.Position = Torso.Position 
local fenmesh3 = Instance.new("BlockMesh") 
fenmesh3.Parent = fentrademark3
fenmesh3.Scale = Vector3.new(0.3,0.65,0.15) 
local fenweld3 = Instance.new("Weld") 
fenweld3.Parent = fentrademark3
fenweld3.Part0 = fentrademark3
fenweld3.Part1 = fentrademark1
fenweld3.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(90),0) * CFrame.new(0.02,0,0) 
local fentrademark4 = Instance.new("Part") 
fentrademark4.formFactor = 1 
fentrademark4.Parent = modelzorz 
fentrademark4.CanCollide = false 
fentrademark4.BrickColor = BrickColor.new("Bright blue") 
fentrademark4.Name = "Part26" 
fentrademark4.Size = Vector3.new(1,1,1) 
fentrademark4.Position = Torso.Position 
local fenmesh4 = Instance.new("BlockMesh") 
fenmesh4.Parent = fentrademark4
fenmesh4.Scale = Vector3.new(0.38,0.65,0.15) 
local fenweld4 = Instance.new("Weld") 
fenweld4.Parent = fentrademark4
fenweld4.Part0 = fentrademark4
fenweld4.Part1 = fentrademark1
fenweld4.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(90),0) * CFrame.new(-0.2,0,0.01) 
local fentrademark5 = Instance.new("Part") 
fentrademark5.formFactor = 1 
fentrademark5.Parent = modelzorz 
fentrademark5.CanCollide = false 
fentrademark5.BrickColor = BrickColor.new("White") 
fentrademark5.Name = "Part27" 
fentrademark5.Size = Vector3.new(1,1,1) 
fentrademark5.Position = Torso.Position 
local fenmesh5 = Instance.new("BlockMesh") 
fenmesh5.Parent = fentrademark5
fenmesh5.Scale = Vector3.new(0.45,0.66,0.1) 
local fenweld5 = Instance.new("Weld") 
fenweld5.Parent = fentrademark5
fenweld5.Part0 = fentrademark5
fenweld5.Part1 = fentrademark1
fenweld5.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0.05,0,-0.1) 
local fentrademark6 = Instance.new("Part") 
fentrademark6.formFactor = 1 
fentrademark6.Parent = modelzorz 
fentrademark6.CanCollide = false 
fentrademark6.BrickColor = BrickColor.new("White") 
fentrademark6.Name = "Part28" 
fentrademark6.Size = Vector3.new(1,1,1) 
fentrademark6.Position = Torso.Position 
local fenmesh6 = Instance.new("BlockMesh") 
fenmesh6.Parent = fentrademark6
fenmesh6.Scale = Vector3.new(0.25,0.66,0.1) 
local fenweld6 = Instance.new("Weld") 
fenweld6.Parent = fentrademark6
fenweld6.Part0 = fentrademark6
fenweld6.Part1 = fentrademark1
fenweld6.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(90),0) * CFrame.new(0.02,0,0) 
local fentrademark7 = Instance.new("Part") 
fentrademark7.formFactor = 1 
fentrademark7.Parent = modelzorz 
fentrademark7.CanCollide = false 
fentrademark7.BrickColor = BrickColor.new("White") 
fentrademark7.Name = "Part29" 
fentrademark7.Size = Vector3.new(1,1,1) 
fentrademark7.Position = Torso.Position 
local fenmesh7 = Instance.new("BlockMesh") 
fenmesh7.Parent = fentrademark7
fenmesh7.Scale = Vector3.new(0.33,0.66,0.1) 
local fenweld7 = Instance.new("Weld") 
fenweld7.Parent = fentrademark7
fenweld7.Part0 = fentrademark7
fenweld7.Part1 = fentrademark1
fenweld7.C0 = CFrame.fromEulerAnglesXYZ(0,math.rad(90),0) * CFrame.new(-0.2,0,0.01) 
ddddd = 0
for i = 1,4 do 
wait() 
local fentrademarkdd = Instance.new("Part") 
fentrademarkdd.formFactor = 1 
fentrademarkdd.Parent = modelzorz 
fentrademarkdd.CanCollide = false 
fentrademarkdd.BrickColor = BrickColor.new("Really black") 
fentrademarkdd.Name = "Dosh" 
fentrademarkdd.Size = Vector3.new(1,1,1) 
fentrademarkdd.Position = Torso.Position 
local fenmeshdd = Instance.new("BlockMesh") 
fenmeshdd.Parent = fentrademarkdd
fenmeshdd.Scale = Vector3.new(1,0.6,0.1) 
local fenwelddd = Instance.new("Weld") 
fenwelddd.Parent = fentrademarkdd
fenwelddd.Part0 = fentrademarkdd
fenwelddd.Part1 = fentrademark1
fenwelddd.C0 = CFrame.fromEulerAnglesXYZ(0,ddddd,0) * CFrame.new(0,0,0) 
ddddd = ddddd + math.rad(45) 
end

function ob1d(mouse) 
if attack == true then return end 
if stancing == true then return end 
hold = true 
if Stance=="Normal" then
if mode == "Sword" then 
if combo == 0 then 
combo = 1 
onehit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
elseif combo == 1 then 
combo = 2 
twohit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
elseif combo == 2 then 
combo = 3 
threehit() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if attack == false then 
combo = 0 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
elseif combo == 3 then 
combo = 4 
fourhit() 
wait(0.5) 
combo = 0 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,-1,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
elseif mode == "Gun" then 
Shoot(mouse) 
end 
end 
end 

function ob1u(mouse) 
hold = false 
end 

buttonhold = false 

function Key(key,mouse) 
if key == "g" then 
EatMuffin()
end 
if attack == true then return end 
if key == "z" and Stance=="NotFighting" then 
keyZ=true
SpinAround() 
end 
if key == "x" and Stance=="NotFighting" then 
JumpStab()
end 
if key == "c" and Stance=="NotFighting" then
EndStance()
Stance="Normal"
attack=false
return
end
if Stance=="Normal" then
if key == "c" then 
StanceMode()
end 
if key == "h" then 
if mana2=="Normal" then
mana2="Max"
elseif mana2=="Max" then
mana2="Normal"
end
end
if key == "q" then 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
Switch() 
end 
if mode == "Gun" then 
if key == "e" then 
Aim(mouse) 
end 
if key == "r" then 
changeitemleft() 
end 
if key == "t" then 
changeitemright() 
end 
if key == "z" then 
if alt==0 then 
elseif alt==1 then 
alt=0
elseif alt==2 then 
alt=1
end
end
--~~ADDED~~--
if key=="j" then
Look(Character)
end
if key=="k" then
unLook(Character)
end
--~~ENDOFADDED~~--
if key == "x" then 
if alt==0 then 
alt=1
elseif alt==1 then 
alt=2
elseif alt==2 then
end
end 
elseif mode == "Sword" then 
if key == "e" then 
SpinSlash() 
end 
if key == "r" then 
WaveStab() 
end 
if key == "t" then 
if skillcombo == 0 then 
DarkSlash() 
elseif skillcombo == 1 then 
LightSlash() 
end 
end 
end 
end 
end 

function Key2(key,mouse) 
if key == "z" then
keyZ=false
end
end 

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(function(key) Key(key,mouse) end) 
mouse.KeyUp:connect(function(key) Key2(key,mouse) end) 
--mouse.KeyDown:connect(key,mouse) 
--mouse.KeyUp:connect(key2,mouse) 
MMouse = mouse 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
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
hideanim() 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 

function onRunning(speed)
--[[	if speed>0 then 
if Stance=="NotFighting" then
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5-0.7*i,1.57) * CFrame.new(0,1+0.3-0.3*i,0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-0.5-2*i,0,-1+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end
else
if Stance=="NotFighting" then
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5-0.7+0.7*i,1.57) * CFrame.new(0,1+0.3-0.3+0.3*i,0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-0.5-2+2*i,0,-1+1-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end
end]]
if attack == true then return end 
	if speed>0 then 
walking = true 
if mode == "Sword" and Stance=="Normal" then 
for i = 0,1,0.1 do 
wait() 
if attack == false then 
--Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
--Torso.Neck.C1=necko2*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 
end 
if Stance=="NotFighting" then
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5-0.7*i,1.57) * CFrame.new(0,1+0.3-0.3*i,0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-0.5-2*i,0,-1+1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end
	else 
walking = false 
if mode == "Sword" and Stance=="Normal" then 
for i = 0,1,0.1 do 
wait() 
if attack == false then 
--Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
--Torso.Neck.C1=necko2*CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end 
end 
if Stance=="NotFighting" then
for i=0,1,0.1 do
wait()
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14+0.5-0.7+0.7*i,1.57) * CFrame.new(0,1+0.3-0.3+0.3*i,0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57+1-0.5-2+2*i,0,-1+1-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end
	end 
end 
Character.Humanoid.Running:connect(onRunning) 

increase = 0 
while true do 
wait(0)  
--[[coroutine.resume(coroutine.create(function()
if attack==true and Stance~="NotFighting" then 
if EtheralMode==false then
EtheralMode=true
prt13.Transparency=0.9
local maxNumClones = 10
local numClones = maxNumClones
local mySwords = {}
local swordConnections = {}
local waitTime = 0.000000000001

for i = 1, numClones do
	local newSword = prt13:Clone()
	newSword.Transparency = (numClones-i+1)/(numClones+1)
--	newSword.Mesh.VertexColor = Vector3.new((i+numClones)/(2*numClones+1), (i+numClones)/(2*numClones+1), 1)
--	newSword.Mesh.VertexColor = Vector3.new((i+numClones)/(2*numClones+1), (i+2*numClones)/(3*numClones+1), 1)
	newSword.Anchored = false
	newSword.CanCollide = false

	local newBodyPos = Instance.new("BodyPosition")
	newBodyPos.Name = "SwordPos"
	newBodyPos.P = 10000
	newBodyPos.maxForce = Vector3.new(newBodyPos.P, newBodyPos.P, newBodyPos.P)
	newBodyPos.Parent = newSword

	local newBodyGyro = Instance.new("BodyGyro")
	newBodyGyro.Name = "SwordGyro"
	newBodyGyro.P = 10000
	newBodyGyro.maxTorque = Vector3.new(newBodyGyro.P, newBodyGyro.P, newBodyGyro.P)
	newBodyGyro.Parent = newSword

	table.insert(mySwords, newSword)
end

	local index = 1

	-- start out at current sword's CFrame
	local swordFrames = {}
	for i = 1, numClones do
		table.insert(swordFrames, prt13.CFrame)
		mySwords[i].CFrame = prt13.CFrame
		--mySwords[i].Parent = game.Workspace
		mySwords[i].Parent = workspace
	end
	
	local numSteps = 5 / waitTime
	for i = 1, 100 do -- 5 seconds of sword ghosting/strobing
		for j = 1, numClones do
			--mySwords[j].CFrame = swordFrames[index]
			if swordFrames[index] ~= nil then
				mySwords[j].SwordGyro.cframe = swordFrames[index]
				mySwords[j].SwordPos.position = swordFrames[index].p
			end
			index = index + 1
			if index > numClones then index = 1 end
		end
		swordFrames[index] = prt13.CFrame
		index = index + 1
		if index > numClones then index = 1 end
		wait(waitTime)

	end

	for i = 1, numClones do
		mySwords[i].Parent = nil 
	end

	if numClones > 0 then numClones = numClones - 1 end
prt13.Transparency=0
EtheralMode=false
end
end 
end))]]
--print(blackhole)
if mana2=="Max" then
mana = 400
end
if mana < 0 then 
mana = 0
end 
increase = increase + 1 
if increase == 5 then 
if mana < 400 then 
mana = mana + 1 
end 
increase = 0 
end 
fentext3.Size = UDim2.new(mana*0.007,0,0.200000006,0)
fentext.Text = "Energy("..mana..")" 
fentext3.BackgroundColor3 = Color3.new(1,1,1) 
fentext4.Text = "Shot Equipped: "..shot.."" 
fentext5.Text = "Alternate Shot: "..alt.."" 
end 