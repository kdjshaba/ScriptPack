--[[
Blade Reaper Class Made by Fenrier.
]] 
Player = game:GetService("Players").LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
Neck = Torso.Neck
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
MMouse=nil
combo=0
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
con1=nil con2=nil con3=nil con4=nil con5=nil con6=nil con7=nil con8=nil con9=nil con10=nil con11=nil con12=nil 
weldlblade1=true weldlblade2=true weldlblade3=true weldlblade4=true weldlblade5=true weldlblade6=true 
hitlblade1=false hitlblade2=false hitlblade3=false hitlblade4=false hitlblade5=false hitlblade6=false 
weldrblade1=true weldrblade2=true weldrblade3=true weldrblade4=true weldrblade5=true weldrblade6=true 
hitrblade1=false hitrblade2=false hitrblade3=false hitrblade4=false hitrblade5=false hitrblade6=false 
 
function swait(num)
if num==0 or num==nil then
game:service'RunService'.RenderStepped:wait()
else
for i=0,num do
game:service'RunService'.RenderStepped:wait()
end
end
end
 
if Character:findFirstChild("Shredder Blades Right Arm",true) ~= nil then 
Character:findFirstChild("Shredder Blades Right Arm",true).Parent = nil 
end 
if Character:findFirstChild("Shredder Blades Left Arm",true) ~= nil then 
Character:findFirstChild("Shredder Blades Left Arm",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("WeaponGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("WeaponGUI",true).Parent = nil 
end 
 
 
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = it("Part")
fp.formFactor = formfactor 
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false 
fp.Locked=true
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh = it(Mesh) 
mesh.Parent = part
if Mesh=="SpecialMesh" then
mesh.MeshType = meshtype
mesh.MeshId = meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld = it("Weld") 
weld.Parent = parent
weld.Part0 = part0 
weld.Part1 = part1 
weld.C0 = c0
return weld
end
 
local fengui=it("GuiMain") 
fengui.Parent=Player.PlayerGui 
fengui.Name="WeaponGUI" 
fenframel=it("Frame") 
fenframel.Parent=fengui
fenframel.BackgroundColor3=Color3.new(0.2,0.2,0.2) 
fenframel.BackgroundTransparency=0
fenframel.BorderColor3=Color3.new(1,1,1) 
fenframel.BorderSizePixel=5
fenframel.Size=UDim2.new(0.2,0,0.2,0)
--fenframel.Position=UDim2.new(0.695,0,0.2,0)
fenframel.Position=UDim2.new(0,0,0.4,0)
fentext1=it("TextLabel") 
fentext1.Parent=fenframel
fentext1.BackgroundColor3=Color3.new(0.5,0.5,0.5) 
fentext1.BackgroundTransparency=0 
fentext1.BorderColor3=Color3.new(1,0.2,0.2) 
fentext1.BorderSizePixel=2
fentext1.Size=UDim2.new(0.495,0,0.3,0)
fentext1.Position=UDim2.new(0.005,0,0.05,0)
fentext1.Font="ArialBold"
fentext1.Text="Blade 1: Active"
fentext1.TextColor3=Color3.new(1,1,1)
fentext1.TextStrokeTransparency=0
fentext1.FontSize="Size18"
fentext1.TextStrokeColor3=Color3.new(0.5,0.5,0.5)
fentext2=fentext1:Clone()
fentext2.Parent=fenframel
fentext2.Text="Blade 2: Active"
fentext2.Position=UDim2.new(0.005,0,0.05+0.3,0)
fentext3=fentext1:Clone()
fentext3.Parent=fenframel
fentext3.Text="Blade 3: Active"
fentext3.Position=UDim2.new(0.005,0,0.05+0.6,0)
local fentext4=fentext1:Clone()
fentext4.Parent=fenframel
fentext4.Text="Blade 4: Active"
fentext4.Position=UDim2.new(0.5,0,0.05,0)
local fentext5=fentext1:Clone()
fentext5.Parent=fenframel
fentext5.Text="Blade 5: Active"
fentext5.Position=UDim2.new(0.5,0,0.05+0.3,0)
fentext6=fentext1:Clone()
fentext6.Parent=fenframel
fentext6.Text="Blade 6: Active"
fentext6.Position=UDim2.new(0.5,0,0.05+0.6,0)
lefttext=fentext1:Clone()
lefttext.Parent=fenframel
lefttext.Text="Left Arm"
lefttext.Position=UDim2.new(0.25,0,-0.35,0)
lefttext.BackgroundColor3=Color3.new(0.8,0.2,0.2) 
coroutine.resume(coroutine.create(function(text1,text2,text3,text4,text5,text6)
while true do
swait()
if weldlblade1==true then
text1.Text="Blade 1: Active"
text1.BackgroundColor3=Color3.new(0.5,0.5,0.5) 
else
text1.Text="Blade 1: Unactive"
text1.BackgroundColor3=Color3.new(0,0,0) 
end
if weldlblade2==true then
text2.Text="Blade 2: Active"
text2.BackgroundColor3=Color3.new(0.5,0.5,0.5) 
else
text2.Text="Blade 2: Unactive"
text2.BackgroundColor3=Color3.new(0,0,0) 
end
if weldlblade3==true then
text3.Text="Blade 3: Active"
text3.BackgroundColor3=Color3.new(0.5,0.5,0.5) 
else
text3.Text="Blade 3: Unactive"
text3.BackgroundColor3=Color3.new(0,0,0) 
end
if weldlblade4==true then
text4.Text="Blade 4: Active"
text4.BackgroundColor3=Color3.new(0.5,0.5,0.5) 
else
text4.Text="Blade 4: Unactive"
text4.BackgroundColor3=Color3.new(0,0,0) 
end
if weldlblade5==true then
text5.Text="Blade 5: Active"
text5.BackgroundColor3=Color3.new(0.5,0.5,0.5) 
else
text5.Text="Blade 5: Unactive"
text5.BackgroundColor3=Color3.new(0,0,0) 
end
if weldlblade6==true then
text6.Text="Blade 6: Active"
text6.BackgroundColor3=Color3.new(0.5,0.5,0.5) 
else
text6.Text="Blade 6: Unactive"
text6.BackgroundColor3=Color3.new(0,0,0) 
end
end
end),fentext1,fentext2,fentext3,fentext4,fentext5,fentext6)
fenframer=it("Frame") 
fenframer.Parent=fengui
fenframer.BackgroundColor3=Color3.new(0.2,0.2,0.2) 
fenframer.BackgroundTransparency=0
fenframer.BorderColor3=Color3.new(1,1,1) 
fenframer.BorderSizePixel=5
fenframer.Size=UDim2.new(0.2,0,0.2,0)
fenframer.Position=UDim2.new(0.795,0,0.4,0)
fentext1=it("TextLabel") 
fentext1.Parent=fenframer
fentext1.BackgroundColor3=Color3.new(0.5,0.5,0.5) 
fentext1.BackgroundTransparency=0 
fentext1.BorderColor3=Color3.new(1,0.2,0.2) 
fentext1.BorderSizePixel=2
fentext1.Size=UDim2.new(0.495,0,0.3,0)
fentext1.Position=UDim2.new(0.005,0,0.05,0)
fentext1.Font="ArialBold"
fentext1.Text="Blade 1: Active"
fentext1.TextColor3=Color3.new(1,1,1)
fentext1.TextStrokeTransparency=0
fentext1.FontSize="Size18"
fentext1.TextStrokeColor3=Color3.new(0.5,0.5,0.5)
fentext2=fentext1:Clone()
fentext2.Parent=fenframer
fentext2.Text="Blade 2: Active"
fentext2.Position=UDim2.new(0.005,0,0.05+0.3,0)
fentext3=fentext1:Clone()
fentext3.Parent=fenframer
fentext3.Text="Blade 3: Active"
fentext3.Position=UDim2.new(0.005,0,0.05+0.6,0)
local fentext4=fentext1:Clone()
fentext4.Parent=fenframer
fentext4.Text="Blade 4: Active"
fentext4.Position=UDim2.new(0.5,0,0.05,0)
local fentext5=fentext1:Clone()
fentext5.Parent=fenframer
fentext5.Text="Blade 5: Active"
fentext5.Position=UDim2.new(0.5,0,0.05+0.3,0)
fentext6=fentext1:Clone()
fentext6.Parent=fenframer
fentext6.Text="Blade 6: Active"
fentext6.Position=UDim2.new(0.5,0,0.05+0.6,0)
lefttext=fentext1:Clone()
lefttext.Parent=fenframer
lefttext.Text="Right Arm"
lefttext.Position=UDim2.new(0.25,0,-0.35,0)
lefttext.BackgroundColor3=Color3.new(0.8,0.2,0.2) 
coroutine.resume(coroutine.create(function(text1,text2,text3,text4,text5,text6)
while true do
swait()
if weldrblade1==true then
text1.Text="Blade 1: Active"
text1.BackgroundColor3=Color3.new(0.5,0.5,0.5) 
else
text1.Text="Blade 1: Unactive"
text1.BackgroundColor3=Color3.new(0,0,0) 
end
if weldrblade2==true then
text2.Text="Blade 2: Active"
text2.BackgroundColor3=Color3.new(0.5,0.5,0.5) 
else
text2.Text="Blade 2: Unactive"
text2.BackgroundColor3=Color3.new(0,0,0) 
end
if weldrblade3==true then
text3.Text="Blade 3: Active"
text3.BackgroundColor3=Color3.new(0.5,0.5,0.5) 
else
text3.Text="Blade 3: Unactive"
text3.BackgroundColor3=Color3.new(0,0,0) 
end
if weldrblade4==true then
text4.Text="Blade 4: Active"
text4.BackgroundColor3=Color3.new(0.5,0.5,0.5) 
else
text4.Text="Blade 4: Unactive"
text4.BackgroundColor3=Color3.new(0,0,0) 
end
if weldrblade5==true then
text5.Text="Blade 5: Active"
text5.BackgroundColor3=Color3.new(0.5,0.5,0.5) 
else
text5.Text="Blade 5: Unactive"
text5.BackgroundColor3=Color3.new(0,0,0) 
end
if weldrblade6==true then
text6.Text="Blade 6: Active"
text6.BackgroundColor3=Color3.new(0.5,0.5,0.5) 
else
text6.Text="Blade 6: Unactive"
text6.BackgroundColor3=Color3.new(0,0,0) 
end
end
end),fentext1,fentext2,fentext3,fentext4,fentext5,fentext6)
 
 
local modelzorz=Instance.new("Model") 
modelzorz.Parent=Character 
modelzorz.Name="Shredder Blades Right Arm" 
 
local prt1=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part1",vt())
prt2=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part2",vt())
prt3=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part3",vt())
prt4=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part4",vt())
prt5=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part5",vt())
prt6=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part6",vt())
prt7=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part7",vt())
prt8=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part8",vt())
local bladea1=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"BladeA.1",vt())
local bladea2=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"BladeA.2",vt())
local bladea3=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"BladeA.3",vt())
local bladea4=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"BladeA.4",vt())
local bladea5=part(3,modelzorz,0.4,0,BrickColor.new("White"),"BladeA.5",vt(0.3,1.5,0.3))
bladea5.Material="Plastic"
local bladea6=part(3,modelzorz,0.4,0,BrickColor.new("White"),"BladeA.6",vt())
bladea6.Material="Plastic"
local bladeb1=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"BladeB.1",vt())
local bladeb2=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"BladeB.2",vt())
local bladeb3=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"BladeB.3",vt())
local bladeb4=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"BladeB.4",vt())
local bladeb5=part(3,modelzorz,0.4,0,BrickColor.new("White"),"BladeB.5",vt(0.3,1.5,0.3))
bladeb5.Material="Plastic"
local bladeb6=part(3,modelzorz,0.4,0,BrickColor.new("White"),"BladeB.6",vt())
bladeb6.Material="Plastic"
local bladec1=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"BladeC.1",vt())
local bladec2=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"BladeC.2",vt())
local bladec3=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"BladeC.3",vt())
local bladec4=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"BladeC.4",vt())
local bladec5=part(3,modelzorz,0.4,0,BrickColor.new("White"),"BladeC.5",vt(0.3,1.5,0.3))
bladec5.Material="Plastic"
local bladec6=part(3,modelzorz,0.4,0,BrickColor.new("White"),"BladeC.6",vt())
bladec6.Material="Plastic"
local bladed1=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"BladeD.1",vt())
local bladed2=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"BladeD.2",vt())
local bladed3=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"BladeD.3",vt())
local bladed4=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"BladeD.4",vt())
local bladed5=part(3,modelzorz,0.4,0,BrickColor.new("White"),"BladeD.5",vt(0.3,1.5,0.3))
bladed5.Material="Plastic"
local bladed6=part(3,modelzorz,0.4,0,BrickColor.new("White"),"BladeD.6",vt())
bladed6.Material="Plastic"
local bladee1=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"BladeE.1",vt())
local bladee2=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"BladeE.2",vt())
local bladee3=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"BladeE.3",vt())
local bladee4=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"BladeE.4",vt())
local bladee5=part(3,modelzorz,0.4,0,BrickColor.new("White"),"BladeE.5",vt(0.3,1.5,0.3))
bladee5.Material="Plastic"
local bladee6=part(3,modelzorz,0.4,0,BrickColor.new("White"),"BladeE.6",vt())
bladee6.Material="Plastic"
local bladef1=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"BladeF.1",vt())
local bladef2=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"BladeF.2",vt())
local bladef3=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"BladeF.3",vt())
local bladef4=part(3,modelzorz,0,0,BrickColor.new("Bright green"),"BladeF.4",vt())
local bladef5=part(3,modelzorz,0.4,0,BrickColor.new("White"),"BladeF.5",vt(0.3,1.5,0.3))
bladef5.Material="Plastic"
local bladef6=part(3,modelzorz,0.4,0,BrickColor.new("White"),"BladeF.6",vt())
bladef6.Material="Plastic"
 
msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(2,5,4.1))
msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(1,0.25,4.25))
msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(1,0.25,4.25))
msh4=mesh("BlockMesh",prt4,"","",vt(0,0,0),vt(1,0.25,4.25))
msh5=mesh("CylinderMesh",prt5,"","",vt(0,0,0),vt(0.5,4.5,0.5))
msh6=mesh("CylinderMesh",prt6,"","",vt(0,0,0),vt(0.5,4.5,0.5))
msh7=mesh("CylinderMesh",prt7,"","",vt(0,0,0),vt(0.5,4.5,0.5))
msh8=mesh("BlockMesh",prt8,"","",vt(0,0,0),vt(2.5,2.5,4.5))
blmsha1=mesh("BlockMesh",bladea1,"","",vt(0,0,0),vt(1,0.5,0.25))
blmsha2=mesh("BlockMesh",bladea2,"","",vt(0,0,0),vt(1.05,2,0.25))
blmsha3=mesh("BlockMesh",bladea3,"","",vt(0,0,0),vt(1,0.5,0.25))
blmsha4=mesh("BlockMesh",bladea4,"","",vt(0,0,0),vt(0.8,0.3,0.228))
blmsha5=mesh("BlockMesh",bladea5,"","",vt(0,0,0),vt(0.5,1,0.15))
blmsha6=mesh("SpecialMesh",bladea6,"Wedge","",vt(0,0,0),vt(0.225,0.75,0.7))
blmshb1=mesh("BlockMesh",bladeb1,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshb2=mesh("BlockMesh",bladeb2,"","",vt(0,0,0),vt(1.05,2,0.25))
blmshb3=mesh("BlockMesh",bladeb3,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshb4=mesh("BlockMesh",bladeb4,"","",vt(0,0,0),vt(0.8,0.3,0.228))
blmshb5=mesh("BlockMesh",bladeb5,"","",vt(0,0,0),vt(0.5,1,0.15))
blmshb6=mesh("SpecialMesh",bladeb6,"Wedge","",vt(0,0,0),vt(0.225,0.75,0.7))
blmshc1=mesh("BlockMesh",bladec1,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshc2=mesh("BlockMesh",bladec2,"","",vt(0,0,0),vt(1.05,2,0.25))
blmshc3=mesh("BlockMesh",bladec3,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshc4=mesh("BlockMesh",bladec4,"","",vt(0,0,0),vt(0.8,0.3,0.228))
blmshc5=mesh("BlockMesh",bladec5,"","",vt(0,0,0),vt(0.5,1,0.15))
blmshc6=mesh("SpecialMesh",bladec6,"Wedge","",vt(0,0,0),vt(0.225,0.75,0.7))
blmshc1=mesh("BlockMesh",bladed1,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshd2=mesh("BlockMesh",bladed2,"","",vt(0,0,0),vt(1.05,2,0.25))
blmshd3=mesh("BlockMesh",bladed3,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshd4=mesh("BlockMesh",bladed4,"","",vt(0,0,0),vt(0.8,0.3,0.228))
blmshd5=mesh("BlockMesh",bladed5,"","",vt(0,0,0),vt(0.5,1,0.15))
blmshd6=mesh("SpecialMesh",bladed6,"Wedge","",vt(0,0,0),vt(0.225,0.75,0.7))
blmshe1=mesh("BlockMesh",bladee1,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshe2=mesh("BlockMesh",bladee2,"","",vt(0,0,0),vt(1.05,2,0.25))
blmshe3=mesh("BlockMesh",bladee3,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshe4=mesh("BlockMesh",bladee4,"","",vt(0,0,0),vt(0.8,0.3,0.228))
blmshe5=mesh("BlockMesh",bladee5,"","",vt(0,0,0),vt(0.5,1,0.15))
blmshe6=mesh("SpecialMesh",bladee6,"Wedge","",vt(0,0,0),vt(0.225,0.75,0.7))
blmshf1=mesh("BlockMesh",bladef1,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshf2=mesh("BlockMesh",bladef2,"","",vt(0,0,0),vt(1.05,2,0.25))
blmshf3=mesh("BlockMesh",bladef3,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshf4=mesh("BlockMesh",bladef4,"","",vt(0,0,0),vt(0.8,0.3,0.228))
blmshf5=mesh("BlockMesh",bladef5,"","",vt(0,0,0),vt(0.5,1,0.15))
blmshf6=mesh("SpecialMesh",bladef6,"Wedge","",vt(0,0,0),vt(0.225,0.75,0.7))
 
local wld1=weld(prt1,prt1,RightArm,euler(0,0,0)*cf(-0.65,0.2,0))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(-0.11,-0.1,0))
local wld3=weld(prt3,prt3,prt1,euler(0,0,0)*cf(-0.11,0.1,0))
local wld4=weld(prt4,prt4,prt1,euler(0,0,0)*cf(-0.11,0.3,0))
local wld5=weld(prt5,prt5,prt1,euler(1.57,0,0)*cf(0.1,-0.1,0))
local wld6=weld(prt6,prt6,prt1,euler(1.57,0,0)*cf(0.1,0.1,0))
local wld7=weld(prt7,prt7,prt1,euler(1.57,0,0)*cf(0.1,0.3,0))
local wld8=weld(prt8,prt8,prt1,euler(0,0,0)*cf(0,-0.5,0))
local blwlda1=weld(bladea1,bladea1,prt1,euler(0,0,0)*cf(-0.15,-0.1,-0.25))
local blwlda2=weld(bladea1,bladea2,bladea1,cf(0,0.2,0)*euler(0,0,0))
local blwlda3=weld(bladea1,bladea3,bladea2,euler(0,0,0)*cf(0,0.25,0))
local blwlda4=weld(bladea1,bladea4,bladea3,euler(0,0,-3.14)*cf(-0.1,-0.05,0))
local blwlda5=weld(bladea1,bladea5,bladea4,cf(0,0.7,0))
local blwlda6=weld(bladea1,bladea6,bladea5,euler(1.57,1.57,0)*cf(0,0.82,0))
local blwldb1=weld(bladeb1,bladeb1,prt1,euler(0,0,0)*cf(-0.15,-0.1,-0.15))
local blwldb2=weld(bladeb1,bladeb2,bladeb1,cf(0,0.2,0)*euler(0,0,0))
local blwldb3=weld(bladeb1,bladeb3,bladeb2,euler(0,0,0)*cf(0,0.25,0))
local blwldb4=weld(bladeb1,bladeb4,bladeb3,euler(0,0,-3.14)*cf(-0.1,-0.05,0))
local blwldb5=weld(bladeb1,bladeb5,bladeb4,cf(0,0.7,0))
local blwldb6=weld(bladeb1,bladeb6,bladeb5,euler(1.57,1.57,0)*cf(0,0.82,0))
local blwldc1=weld(bladec1,bladec1,prt1,euler(0,0,0)*cf(-0.15,-0.1,-0.05))
local blwldc2=weld(bladec1,bladec2,bladec1,cf(0,0.2,0)*euler(0,0,0))
local blwldc3=weld(bladec1,bladec3,bladec2,euler(0,0,0)*cf(0,0.25,0))
local blwldc4=weld(bladec1,bladec4,bladec3,euler(0,0,-3.14)*cf(-0.1,-0.05,0))
local blwldc5=weld(bladec1,bladec5,bladec4,cf(0,0.7,0))
local blwldc6=weld(bladec1,bladec6,bladec5,euler(1.57,1.57,0)*cf(0,0.82,0))
local blwldd1=weld(bladed1,bladed1,prt1,euler(0,0,0)*cf(-0.15,-0.1,0.05))
local blwldd2=weld(bladed1,bladed2,bladed1,cf(0,0.2,0)*euler(0,0,0))
local blwldd3=weld(bladed1,bladed3,bladed2,euler(0,0,0)*cf(0,0.25,0))
local blwldd4=weld(bladed1,bladed4,bladed3,euler(0,0,-3.14)*cf(-0.1,-0.05,0))
local blwldd5=weld(bladed1,bladed5,bladed4,cf(0,0.7,0))
local blwldd6=weld(bladed1,bladed6,bladed5,euler(1.57,1.57,0)*cf(0,0.82,0))
local blwlde1=weld(bladee1,bladee1,prt1,euler(0,0,0)*cf(-0.15,-0.1,0.15))
local blwlde2=weld(bladee1,bladee2,bladee1,cf(0,0.2,0)*euler(0,0,0))
local blwlde3=weld(bladee1,bladee3,bladee2,euler(0,0,0)*cf(0,0.25,0))
local blwlde4=weld(bladee1,bladee4,bladee3,euler(0,0,-3.14)*cf(-0.1,-0.05,0))
local blwlde5=weld(bladee1,bladee5,bladee4,cf(0,0.7,0))
local blwlde6=weld(bladee1,bladee6,bladee5,euler(1.57,1.57,0)*cf(0,0.82,0))
local blwldf1=weld(bladef1,bladef1,prt1,euler(0,0,0)*cf(-0.15,-0.1,0.25))
local blwldf2=weld(bladef1,bladef2,bladef1,cf(0,0.2,0)*euler(0,0,0))
local blwldf3=weld(bladef1,bladef3,bladef2,euler(0,0,0)*cf(0,0.25,0))
local blwldf4=weld(bladef1,bladef4,bladef3,euler(0,0,-3.14)*cf(-0.1,-0.05,0))
local blwldf5=weld(bladef1,bladef5,bladef4,cf(0,0.7,0))
local blwldf6=weld(bladef1,bladef6,bladef5,euler(1.57,1.57,0)*cf(0,0.82,0))
 
local modelzorz2=Instance.new("Model") 
modelzorz2.Parent=Character 
modelzorz2.Name="Shredder Blades Left Arm" 
 
local lprt1=part(3,modelzorz2,0,0,BrickColor.new("Medium stone grey"),"Part1",vt())
lprt2=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"Part2",vt())
lprt3=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"Part3",vt())
lprt4=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"Part4",vt())
lprt5=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"Part5",vt())
lprt6=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"Part6",vt())
lprt7=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"Part7",vt())
lprt8=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"Part8",vt())
local lbladea1=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"BladeA.1",vt())
local lbladea2=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"BladeA.2",vt())
local lbladea3=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"BladeA.3",vt())
local lbladea4=part(3,modelzorz2,0,0,BrickColor.new("Bright green"),"BladeA.4",vt())
local lbladea5=part(3,modelzorz2,0.4,0,BrickColor.new("White"),"BladeA.5",vt(0.3,1.5,0.3))
lbladea5.Material="Plastic"
local lbladea6=part(3,modelzorz2,0.4,0,BrickColor.new("White"),"BladeA.6",vt())
lbladea6.Material="Plastic"
local lbladeb1=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"BladeB.1",vt())
local lbladeb2=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"BladeB.2",vt())
local lbladeb3=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"BladeB.3",vt())
local lbladeb4=part(3,modelzorz2,0,0,BrickColor.new("Bright green"),"BladeB.4",vt())
local lbladeb5=part(3,modelzorz2,0.4,0,BrickColor.new("White"),"BladeB.5",vt(0.3,1.5,0.3))
lbladeb5.Material="Plastic"
local lbladeb6=part(3,modelzorz2,0.4,0,BrickColor.new("White"),"BladeB.6",vt())
lbladeb6.Material="Plastic"
local lbladec1=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"BladeC.1",vt())
local lbladec2=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"BladeC.2",vt())
local lbladec3=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"BladeC.3",vt())
local lbladec4=part(3,modelzorz2,0,0,BrickColor.new("Bright green"),"BladeC.4",vt())
local lbladec5=part(3,modelzorz2,0.4,0,BrickColor.new("White"),"BladeC.5",vt(0.3,1.5,0.3))
lbladec5.Material="Plastic"
local lbladec6=part(3,modelzorz2,0.4,0,BrickColor.new("White"),"BladeC.6",vt())
lbladec6.Material="Plastic"
local lbladed1=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"BladeD.1",vt())
local lbladed2=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"BladeD.2",vt())
local lbladed3=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"BladeD.3",vt())
local lbladed4=part(3,modelzorz2,0,0,BrickColor.new("Bright green"),"BladeD.4",vt())
local lbladed5=part(3,modelzorz2,0.4,0,BrickColor.new("White"),"BladeD.5",vt(0.3,1.5,0.3))
lbladed5.Material="Plastic"
local lbladed6=part(3,modelzorz2,0.4,0,BrickColor.new("White"),"BladeD.6",vt())
lbladed6.Material="Plastic"
local lbladee1=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"BladeE.1",vt())
local lbladee2=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"BladeE.2",vt())
local lbladee3=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"BladeE.3",vt())
local lbladee4=part(3,modelzorz2,0,0,BrickColor.new("Bright green"),"BladeE.4",vt())
local lbladee5=part(3,modelzorz2,0.4,0,BrickColor.new("White"),"BladeE.5",vt(0.3,1.5,0.3))
lbladee5.Material="Plastic"
local lbladee6=part(3,modelzorz2,0.4,0,BrickColor.new("White"),"BladeE.6",vt())
lbladee6.Material="Plastic"
local lbladef1=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"BladeF.1",vt())
local lbladef2=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"BladeF.2",vt())
local lbladef3=part(3,modelzorz2,0,0,BrickColor.new("Dark stone grey"),"BladeF.3",vt())
local lbladef4=part(3,modelzorz2,0,0,BrickColor.new("Bright green"),"BladeF.4",vt())
local lbladef5=part(3,modelzorz2,0.4,0,BrickColor.new("White"),"BladeF.5",vt(0.3,1.5,0.3))
lbladef5.Material="Plastic"
local lbladef6=part(3,modelzorz2,0.4,0,BrickColor.new("White"),"BladeF.6",vt())
lbladef6.Material="Plastic"
 
msh1=mesh("BlockMesh",lprt1,"","",vt(0,0,0),vt(2,5,4.1))
msh2=mesh("BlockMesh",lprt2,"","",vt(0,0,0),vt(1,0.25,4.25))
msh3=mesh("BlockMesh",lprt3,"","",vt(0,0,0),vt(1,0.25,4.25))
msh4=mesh("BlockMesh",lprt4,"","",vt(0,0,0),vt(1,0.25,4.25))
msh5=mesh("CylinderMesh",lprt5,"","",vt(0,0,0),vt(0.5,4.5,0.5))
msh6=mesh("CylinderMesh",lprt6,"","",vt(0,0,0),vt(0.5,4.5,0.5))
msh7=mesh("CylinderMesh",lprt7,"","",vt(0,0,0),vt(0.5,4.5,0.5))
msh8=mesh("BlockMesh",lprt8,"","",vt(0,0,0),vt(2.5,2.5,4.5))
blmsha1=mesh("BlockMesh",lbladea1,"","",vt(0,0,0),vt(1,0.5,0.25))
blmsha2=mesh("BlockMesh",lbladea2,"","",vt(0,0,0),vt(1.05,2,0.25))
blmsha3=mesh("BlockMesh",lbladea3,"","",vt(0,0,0),vt(1,0.5,0.25))
blmsha4=mesh("BlockMesh",lbladea4,"","",vt(0,0,0),vt(0.8,0.3,0.228))
blmsha5=mesh("BlockMesh",lbladea5,"","",vt(0,0,0),vt(0.5,1,0.15))
blmsha6=mesh("SpecialMesh",lbladea6,"Wedge","",vt(0,0,0),vt(0.225,0.75,0.7))
blmshb1=mesh("BlockMesh",lbladeb1,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshb2=mesh("BlockMesh",lbladeb2,"","",vt(0,0,0),vt(1.05,2,0.25))
blmshb3=mesh("BlockMesh",lbladeb3,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshb4=mesh("BlockMesh",lbladeb4,"","",vt(0,0,0),vt(0.8,0.3,0.228))
blmshb5=mesh("BlockMesh",lbladeb5,"","",vt(0,0,0),vt(0.5,1,0.15))
blmshb6=mesh("SpecialMesh",lbladeb6,"Wedge","",vt(0,0,0),vt(0.225,0.75,0.7))
blmshc1=mesh("BlockMesh",lbladec1,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshc2=mesh("BlockMesh",lbladec2,"","",vt(0,0,0),vt(1.05,2,0.25))
blmshc3=mesh("BlockMesh",lbladec3,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshc4=mesh("BlockMesh",lbladec4,"","",vt(0,0,0),vt(0.8,0.3,0.228))
blmshc5=mesh("BlockMesh",lbladec5,"","",vt(0,0,0),vt(0.5,1,0.15))
blmshc6=mesh("SpecialMesh",lbladec6,"Wedge","",vt(0,0,0),vt(0.225,0.75,0.7))
blmshc1=mesh("BlockMesh",lbladed1,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshd2=mesh("BlockMesh",lbladed2,"","",vt(0,0,0),vt(1.05,2,0.25))
blmshd3=mesh("BlockMesh",lbladed3,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshd4=mesh("BlockMesh",lbladed4,"","",vt(0,0,0),vt(0.8,0.3,0.228))
blmshd5=mesh("BlockMesh",lbladed5,"","",vt(0,0,0),vt(0.5,1,0.15))
blmshd6=mesh("SpecialMesh",lbladed6,"Wedge","",vt(0,0,0),vt(0.225,0.75,0.7))
blmshd7=mesh("BlockMesh",lbladed7,"","",vt(0,0,0),vt(0.5,2,0.22))
blmshe1=mesh("BlockMesh",lbladee1,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshe2=mesh("BlockMesh",lbladee2,"","",vt(0,0,0),vt(1.05,2,0.25))
blmshe3=mesh("BlockMesh",lbladee3,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshe4=mesh("BlockMesh",lbladee4,"","",vt(0,0,0),vt(0.8,0.3,0.228))
blmshe5=mesh("BlockMesh",lbladee5,"","",vt(0,0,0),vt(0.5,1,0.15))
blmshe6=mesh("SpecialMesh",lbladee6,"Wedge","",vt(0,0,0),vt(0.225,0.75,0.7))
blmshf1=mesh("BlockMesh",lbladef1,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshf2=mesh("BlockMesh",lbladef2,"","",vt(0,0,0),vt(1.05,2,0.25))
blmshf3=mesh("BlockMesh",lbladef3,"","",vt(0,0,0),vt(1,0.5,0.25))
blmshf4=mesh("BlockMesh",lbladef4,"","",vt(0,0,0),vt(0.8,0.3,0.228))
blmshf5=mesh("BlockMesh",lbladef5,"","",vt(0,0,0),vt(0.5,1,0.15))
blmshf6=mesh("SpecialMesh",lbladef6,"Wedge","",vt(0,0,0),vt(0.225,0.75,0.7))
 
local lwld1=weld(lprt1,lprt1,LeftArm,cf(-0.65,0.2,0)*euler(0,3.14,0))
local lwld2=weld(lprt2,lprt2,lprt1,euler(0,0,0)*cf(-0.11,-0.1,0))
local lwld3=weld(lprt3,lprt3,lprt1,euler(0,0,0)*cf(-0.11,0.1,0))
local lwld4=weld(lprt4,lprt4,lprt1,euler(0,0,0)*cf(-0.11,0.3,0))
local lwld5=weld(lprt5,lprt5,lprt1,euler(1.57,0,0)*cf(0.1,-0.1,0))
local lwld6=weld(lprt6,lprt6,lprt1,euler(1.57,0,0)*cf(0.1,0.1,0))
local lwld7=weld(lprt7,lprt7,lprt1,euler(1.57,0,0)*cf(0.1,0.3,0))
local lwld8=weld(lprt8,lprt8,lprt1,euler(0,0,0)*cf(0,-0.5,0))
local lblwlda1=weld(lbladea1,lbladea1,lprt1,euler(0,0,0)*cf(-0.15,-0.1,-0.25))
local lblwlda2=weld(lbladea1,lbladea2,lbladea1,cf(0,0.2,0)*euler(0,0,0))
local lblwlda3=weld(lbladea1,lbladea3,lbladea2,euler(0,0,0)*cf(0,0.25,0))
local lblwlda4=weld(lbladea1,lbladea4,lbladea3,euler(0,0,-3.14)*cf(-0.1,-0.05,0))
local lblwlda5=weld(lbladea1,lbladea5,lbladea4,cf(0,0.7,0))
local lblwlda6=weld(lbladea1,lbladea6,lbladea5,euler(1.57,1.57,0)*cf(0,0.82,0))
local lblwldb1=weld(lbladeb1,lbladeb1,lprt1,euler(0,0,0)*cf(-0.15,-0.1,-0.15))
local lblwldb2=weld(lbladeb1,lbladeb2,lbladeb1,cf(0,0.2,0)*euler(0,0,0))
local lblwldb3=weld(lbladeb1,lbladeb3,lbladeb2,euler(0,0,0)*cf(0,0.25,0))
local lblwldb4=weld(lbladeb1,lbladeb4,lbladeb3,euler(0,0,-3.14)*cf(-0.1,-0.05,0))
local lblwldb5=weld(lbladeb1,lbladeb5,lbladeb4,cf(0,0.7,0))
local lblwldb6=weld(lbladeb1,lbladeb6,lbladeb5,euler(1.57,1.57,0)*cf(0,0.82,0))
local lblwldc1=weld(lbladec1,lbladec1,lprt1,euler(0,0,0)*cf(-0.15,-0.1,-0.05))
local lblwldc2=weld(lbladec1,lbladec2,lbladec1,cf(0,0.2,0)*euler(0,0,0))
local lblwldc3=weld(lbladec1,lbladec3,lbladec2,euler(0,0,0)*cf(0,0.25,0))
local lblwldc4=weld(lbladec1,lbladec4,lbladec3,euler(0,0,-3.14)*cf(-0.1,-0.05,0))
local lblwldc5=weld(lbladec1,lbladec5,lbladec4,cf(0,0.7,0))
local lblwldc6=weld(lbladec1,lbladec6,lbladec5,euler(1.57,1.57,0)*cf(0,0.82,0))
local lblwldd1=weld(lbladed1,lbladed1,lprt1,euler(0,0,0)*cf(-0.15,-0.1,0.05))
local lblwldd2=weld(lbladed1,lbladed2,lbladed1,cf(0,0.2,0)*euler(0,0,0))
local lblwldd3=weld(lbladed1,lbladed3,lbladed2,euler(0,0,0)*cf(0,0.25,0))
local lblwldd4=weld(lbladed1,lbladed4,lbladed3,euler(0,0,-3.14)*cf(-0.1,-0.05,0))
local lblwldd5=weld(lbladed1,lbladed5,lbladed4,cf(0,0.7,0))
local lblwldd6=weld(lbladed1,lbladed6,lbladed5,euler(1.57,1.57,0)*cf(0,0.82,0))
local lblwlde1=weld(lbladee1,lbladee1,lprt1,euler(0,0,0)*cf(-0.15,-0.1,0.15))
local lblwlde2=weld(lbladee1,lbladee2,lbladee1,cf(0,0.2,0)*euler(0,0,0))
local lblwlde3=weld(lbladee1,lbladee3,lbladee2,euler(0,0,0)*cf(0,0.25,0))
local lblwlde4=weld(lbladee1,lbladee4,lbladee3,euler(0,0,-3.14)*cf(-0.1,-0.05,0))
local lblwlde5=weld(lbladee1,lbladee5,lbladee4,cf(0,0.7,0))
local lblwlde6=weld(lbladee1,lbladee6,lbladee5,euler(1.57,1.57,0)*cf(0,0.82,0))
local lblwldf1=weld(lbladef1,lbladef1,lprt1,euler(0,0,0)*cf(-0.15,-0.1,0.25))
local lblwldf2=weld(lbladef1,lbladef2,lbladef1,cf(0,0.2,0)*euler(0,0,0))
local lblwldf3=weld(lbladef1,lbladef3,lbladef2,euler(0,0,0)*cf(0,0.25,0))
local lblwldf4=weld(lbladef1,lbladef4,lbladef3,euler(0,0,-3.14)*cf(-0.1,-0.05,0))
local lblwldf5=weld(lbladef1,lbladef5,lbladef4,cf(0,0.7,0))
local lblwldf6=weld(lbladef1,lbladef6,lbladef5,euler(1.57,1.57,0)*cf(0,0.82,0))
 
local hitbox=part(1,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
hitbox.Anchored=false
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Shredder Blades" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function hideanim() 
equipped=false
CloseBlades()
for i=0,1,0.1 do
swait()
RW.C0=cf(1.5,0.5,0)*euler(0.4-0.4*i,-1+1*i,0)
RW.C1=cf(0,0.5,0)*euler(-0.6+0.6*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.4-0.4*i,1-1*i,0)
LW.C1=cf(0,0.5,0)*euler(-0.6+0.6*i,0,0)
end
Torso.Neck.C0=necko
RootJoint.C0=RootCF
RW.C0=cf(1.5,0.5,0)*euler(0,0,0)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,0)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0
RH.C1=RHC1
LH.C0=LHC0
LH.C1=LHC1
end 
 
function equipanim() 
equipped=true
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0.05*i,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1*i,0,-0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1*i,0,0.2*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
n=2
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0.05+0.05*i*n,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1+0.1*i*n,0,-0.2-0.1*i*n)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1+0.1*i*n,0,0.2+0.1*i*n)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
n=n-0.2
end
OpenBlades()
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0.1,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1.1-0.6*i,-1*i,-0.3+0.3*i)
RW.C1=cf(0,0.5,0)*euler(-0.5*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.1-0.6*i,1*i,0.3-0.3*i)
LW.C1=cf(0,0.5,0)*euler(-0.5*i,0,0)
end
n=2
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0.1,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(0.5-0.1*i*n,-1,0)
RW.C1=cf(0,0.5,0)*euler(-0.5-0.1*i*n,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.5-0.1*i*n,1,0)
LW.C1=cf(0,0.5,0)*euler(-0.5-0.1*i*n,0,0)
n=n-0.2
end
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0.1-0.1*i,0,0)
end
end 
 
function Stance()
Torso.Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(0.4,-1,0)
RW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.4,1,0)
LW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
end
 
function OpenBlades()
coroutine.resume(coroutine.create(function()
BladesShwing(true,true)
for i=0,1,0.1 do
swait()
--[[local blwlda1=weld(bladea1,bladea1,prt1,euler(0,0,0)*cf(-0.2,-0.1,-0.35))
local blwlda2=weld(bladea1,bladea2,bladea1,cf(0,0.2,0)*euler(0,0,0))
local blwlda3=weld(bladea1,bladea3,bladea2,euler(0,0,0)*cf(0,0.25,0))]]
blwlda2.C0=cf(0,0.2,0)*euler(0.25*i,0,0)
blwlda4.C0=euler(0,0,-3.14+3.14*i)*cf(-0.1+0.1*i,-0.05+0.05*i,0)*euler(0,0,0)
blwlda1.C0=euler(0,0,0)*cf(-0.15,-0.1+0.15*i,-0.25-0.1*i)
blwldb2.C0=cf(0,0.2,0)*euler(0.15*i,0,-0.3*i)
blwldb4.C0=euler(0,0,-3.14+3.14*i)*cf(-0.1+0.1*i,-0.05+0.05*i,0)
blwldb1.C0=euler(0,0,0)*cf(-0.15,-0.1+0.15*i,-0.15-0.06*i)
blwldc2.C0=cf(0,0.2,0)*euler(0.05*i,0,-0.5*i)
blwldc4.C0=euler(0,0,-3.14+3.14*i)*cf(-0.1+0.1*i,-0.05+0.05*i,0)
blwldc1.C0=euler(0,0,0)*cf(-0.15,-0.1+0.15*i,-0.05-0.02*i)
blwldd2.C0=cf(0,0.2,0)*euler(-0.05*i,0,-0.35*i)
blwldd4.C0=euler(0,0,-3.14+3.14*i)*cf(-0.1+0.1*i,-0.05+0.05*i,0)
blwldd1.C0=euler(0,0,0)*cf(-0.15,-0.1+0.15*i,0.05+0.02*i)
blwlde2.C0=cf(0,0.2,0)*euler(-0.15*i,0,-0.1*i)
blwlde4.C0=euler(0,0,-3.14+3.14*i)*cf(-0.1+0.1*i,-0.05+0.05*i,0)
blwlde1.C0=euler(0,0,0)*cf(-0.15,-0.1+0.15*i,0.15+0.06*i)
blwldf2.C0=cf(0,0.2,0)*euler(-0.25*i,0,0)
blwldf4.C0=euler(0,0,-3.14+3.14*i)*cf(-0.1+0.1*i,-0.05+0.05*i,0)
blwldf1.C0=euler(0,0,0)*cf(-0.15,-0.1+0.15*i,0.25+0.1*i)
lblwlda2.C0=cf(0,0.2,0)*euler(0.25*i,0,0)
lblwlda4.C0=euler(0,0,-3.14+3.14*i)*cf(-0.1+0.1*i,-0.05+0.05*i,0)*euler(0,0,0)
lblwlda1.C0=euler(0,0,0)*cf(-0.15,-0.1+0.15*i,-0.25-0.1*i)
lblwldb2.C0=cf(0,0.2,0)*euler(0.15*i,0,-0.3*i)
lblwldb4.C0=euler(0,0,-3.14+3.14*i)*cf(-0.1+0.1*i,-0.05+0.05*i,0)
lblwldb1.C0=euler(0,0,0)*cf(-0.15,-0.1+0.15*i,-0.15-0.06*i)
lblwldc2.C0=cf(0,0.2,0)*euler(0.05*i,0,-0.5*i)
lblwldc4.C0=euler(0,0,-3.14+3.14*i)*cf(-0.1+0.1*i,-0.05+0.05*i,0)
lblwldc1.C0=euler(0,0,0)*cf(-0.15,-0.1+0.15*i,-0.05-0.02*i)
lblwldd2.C0=cf(0,0.2,0)*euler(-0.05*i,0,-0.35*i)
lblwldd4.C0=euler(0,0,-3.14+3.14*i)*cf(-0.1+0.1*i,-0.05+0.05*i,0)
lblwldd1.C0=euler(0,0,0)*cf(-0.15,-0.1+0.15*i,0.05+0.02*i)
lblwlde2.C0=cf(0,0.2,0)*euler(-0.15*i,0,-0.1*i)
lblwlde4.C0=euler(0,0,-3.14+3.14*i)*cf(-0.1+0.1*i,-0.05+0.05*i,0)
lblwlde1.C0=euler(0,0,0)*cf(-0.15,-0.1+0.15*i,0.15+0.06*i)
lblwldf2.C0=cf(0,0.2,0)*euler(-0.25*i,0,0)
lblwldf4.C0=euler(0,0,-3.14+3.14*i)*cf(-0.1+0.1*i,-0.05+0.05*i,0)
lblwldf1.C0=euler(0,0,0)*cf(-0.15,-0.1+0.15*i,0.25+0.1*i)
end
end))
end
 
function CloseBlades()
coroutine.resume(coroutine.create(function()
BladesShwing(true,true)
for i=0,1,0.1 do
swait()
blwlda2.C0=cf(0,0.2,0)*euler(0,0,0)
blwlda4.C0=euler(0,0,-3.14*i)*cf(-0.1*i,-0.05*i,0)
blwlda1.C0=euler(0,0,0)*cf(-0.15,0.05-0.15*i,-0.35+0.1*i)
blwldb2.C0=cf(0,0.2,0)*euler(0,0,-0.3+0.3*i)
blwldb4.C0=euler(0,0,-3.14*i)*cf(-0.1*i,-0.05*i,0)
blwldb1.C0=euler(0,0,0)*cf(-0.15,0.05-0.15*i,-0.21+0.06*i)
blwldc2.C0=cf(0,0.2,0)*euler(0,0,-0.6+0.6*i)
blwldc4.C0=euler(0,0,-3.14*i)*cf(-0.1*i,-0.05*i,0)
blwldc1.C0=euler(0,0,0)*cf(-0.15,0.05-0.15*i,-0.07+0.02*i)
blwldd2.C0=cf(0,0.2,0)*euler(0,0,-0.4+0.4*i)
blwldd4.C0=euler(0,0,-3.14*i)*cf(-0.1*i,-0.05*i,0)
blwldd1.C0=euler(0,0,0)*cf(-0.15,0.05-0.15*i,0.07-0.02*i)
blwlde2.C0=cf(0,0.2,0)*euler(0,0,-0.2+0.2*i)
blwlde4.C0=euler(0,0,-3.14*i)*cf(-0.1*i,-0.05*i,0)
blwlde1.C0=euler(0,0,0)*cf(-0.15,0.05-0.15*i,0.21-0.06*i)
blwldf2.C0=cf(0,0.2,0)*euler(0,0,0)
blwldf4.C0=euler(0,0,-3.14*i)*cf(-0.1*i,-0.05*i,0)
blwldf1.C0=euler(0,0,0)*cf(-0.15,0.05-0.15*i,0.35-0.1*i)
lblwlda2.C0=cf(0,0.2,0)*euler(0,0,0)
lblwlda4.C0=euler(0,0,-3.14*i)*cf(-0.1*i,-0.05*i,0)
lblwlda1.C0=euler(0,0,0)*cf(-0.15,0.05-0.15*i,-0.35+0.1*i)
lblwldb2.C0=cf(0,0.2,0)*euler(0,0,-0.3+0.3*i)
lblwldb4.C0=euler(0,0,-3.14*i)*cf(-0.1*i,-0.05*i,0)
lblwldb1.C0=euler(0,0,0)*cf(-0.15,0.05-0.15*i,-0.21+0.06*i)
lblwldc2.C0=cf(0,0.2,0)*euler(0,0,-0.6+0.6*i)
lblwldc4.C0=euler(0,0,-3.14*i)*cf(-0.1*i,-0.05*i,0)
lblwldc1.C0=euler(0,0,0)*cf(-0.15,0.05-0.15*i,-0.07+0.02*i)
lblwldd2.C0=cf(0,0.2,0)*euler(0,0,-0.4+0.4*i)
lblwldd4.C0=euler(0,0,-3.14*i)*cf(-0.1*i,-0.05*i,0)
lblwldd1.C0=euler(0,0,0)*cf(-0.15,0.05-0.15*i,0.07-0.02*i)
lblwlde2.C0=cf(0,0.2,0)*euler(0,0,-0.2+0.2*i)
lblwlde4.C0=euler(0,0,-3.14*i)*cf(-0.1*i,-0.05*i,0)
lblwlde1.C0=euler(0,0,0)*cf(-0.15,0.05-0.15*i,0.21-0.06*i)
lblwldf2.C0=cf(0,0.2,0)*euler(0,0,0)
lblwldf4.C0=euler(0,0,-3.14*i)*cf(-0.1*i,-0.05*i,0)
lblwldf1.C0=euler(0,0,0)*cf(-0.15,0.05-0.15*i,0.35-0.1*i)
end
end))
end
 
function attackone()
attack=true
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(0.4+2.8*i,-1+2*i,0)
RW.C1=cf(0,0.5,0)*euler(-0.6+1.2*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.4-0.2*i,1,0)
LW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
end
BladesShwing(false,true)
ConnectRight(10,20)
StraightenRight()
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.5*i)
RootJoint.C0=RootCF*euler(0,0,0.5*i)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(3.2-2.7*i,1+0.2*i,0)
RW.C1=cf(0,0.5,0)*euler(0.6-1.3*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.2-0.4*i,1,0)
LW.C1=cf(0,0.5,0)*euler(-0.6+0.3*i,0,0)
end
n=2
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.5-0.1*i*n)
RootJoint.C0=RootCF*euler(0,0,0.5+0.1*i*n)
RW.C0=cf(1,0.5,-0.5)*euler(0.5-0.1*i*n,1.2,0)
RW.C1=cf(0,0.5,0)*euler(-0.7-0.1*i*n,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2,1,0)
LW.C1=cf(0,0.5,0)*euler(-0.3,0,0)
n=n-0.2
end
DisconnectRight()
attack=false
end
 
function attacktwo()
attack=true
UnStraightRight()
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.6)
RootJoint.C0=RootCF*euler(0,0,0.6)
RW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(0.4-0.6*i,1.2-1.6*i,0)
RW.C1=cf(0,0.5,0)*euler(-0.8+0.8*i,0,0)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(-0.2+1.77*i,1-1*i,0.8*i)
LW.C1=cf(0,0.5,0)*euler(-0.3+0.3*i,0,0)
end
BladesShwing(true,false)
ConnectLeft(10,20)
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.6+1.2*i)
RootJoint.C0=RootCF*euler(0,0,0.6-1.2*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.4,-0.4,0)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1,0.5,-0.5)*euler(1.57,0,0.8-0.4*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
n=2
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,0.6+0.2*i*n)
RootJoint.C0=RootCF*euler(0,0,-0.6-0.2*i*n)
RW.C0=cf(1.5,0.5,0)*euler(-0.4,-0.4,0)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1,0.5,-0.5)*euler(1.57,0,0.4+0.2*i*n)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
n=n-0.2
end
DisconnectLeft()
attack=false
end
 
function attackthree()
attack=true
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,0.8-1*i)
RootJoint.C0=RootCF*euler(0,0,-0.8+1*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.4,-0.4,0.5*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1-0.5*i,0.5,-0.5+0.5*i)*euler(1.57-1.77*i,1.57*i,0.6-0.6*i)
LW.C1=cf(0,0.5,0)*euler(-0.5*i,0,0)
end
BladesShwing(true,false)
ConnectLeft(10,20)
StraightenLeft()
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(-0.2*i,0,-0.2+0.6*i)
RootJoint.C0=RootCF*euler(0,0,0.2-0.6*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.4-0.2*i,-0.4,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5+0.5*i,0.5+0.2*i,-0.5*i)*euler(-0.2+2.6*i,1.57,0)
LW.C1=cf(0,0.5,0)*euler(-0.5+0.5*i,0,0)
end
n=2
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(-0.2,0,0.4)
RootJoint.C0=RootCF*euler(0,0,-0.4)
RW.C0=cf(1.5,0.5,0)*euler(-0.6,-0.4,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1,0.7,-0.5)*euler(2.4+0.2*i*n,1.57,0)
LW.C1=cf(0,0.5,0)*euler(0.1*i*n,0,0)
end
DisconnectLeft()
attack=false
end
 
function attackfour()
attack=true
UnStraightLeft()
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(-0.2+0.4*i,0,0.4-0.4*i)
RootJoint.C0=RootCF*euler(0,0,-0.4+0.4*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.6+0.4*i,-0.4,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1-0.5*i,0.7-0.2*i,-0.5+0.5*i)*euler(2.6-2.8*i,1.57-1.17*i,-0.5*i)
LW.C1=cf(0,0.5,0)*euler(0.1-0.1*i,0,0)
end
BladesShwing(true,true)
ConnectLeft(10,20)
ConnectRight(10,20)
StraightenLeft()
StraightenRight()
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0.2-0.2*i,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.2+2.7*i,-0.4-1.17*i,0.5-0.5*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2+2.7*i,0.4+1.17*i,-0.5+0.5*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
n=2
for i=0,1,0.1 do
swait()
RW.C0=cf(1.5,0.5,0)*euler(2.5+0.6*i*n,-1.57+3.14*i*n,0)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(2.5+0.6*i*n,1.57-3.14*i*n,0)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
n=n-0.1
end
BladesShwing(true,true)
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0.2*i,0,0)
RW.C0=cf(1.5,0.5,0)*euler(3.1-3.3*i,1.57,0)
RW.C1=cf(0,0.5,0)*euler(0.2*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(3.1-3.3*i,-1.57,0)
LW.C1=cf(0,0.5,0)*euler(0.2*i,0,0)
end
n=2
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0.2+0.1*i*n,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.2-0.1*i*n,1.57,0)
RW.C1=cf(0,0.5,0)*euler(0.2+0.1*i*n,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2-0.1*i*n,-1.57,0)
LW.C1=cf(0,0.5,0)*euler(0.2+0.1*i*n,0,0)
n=n-0.1
end
DisconnectLeft()
DisconnectRight()
attack=false
end
 
function BladeThrowL()
attack=true
StraightenLeft()
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.5*i)
RootJoint.C0=RootCF*euler(0,0,0.5*i)
RW.C0=cf(1.5,0.5,0)*euler(0.4-0.4*i,-1,0)
RW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.4-0.6*i,1,0)
LW.C1=cf(0,0.5,0)*euler(-0.6+0.2*i,0,0)
end
n=2
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.5-0.2*i*n)
RootJoint.C0=RootCF*euler(0,0,0.5+0.2*i*n)
RW.C0=cf(1.5,0.5,0)*euler(0,-1,0)
RW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2-0.2*i*n,1,0)
LW.C1=cf(0,0.5,0)*euler(-0.4-0.2*i*n,0,0)
n=n-0.1
end
LaunchLeft()
for i=0,1,0.05 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.7+1.2*i)
RootJoint.C0=RootCF*euler(0,0,0.7-1.2*i)
RW.C0=cf(1.5,0.5,0)*euler(0,-1,0)
RW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(-0.4+2.9*i,1,0)
LW.C1=cf(0,0.5,0)*euler(-0.6+1.4*i,0,0)
end
swait(10)
UnStraightLeft()
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,0.5-0.5*i)
RootJoint.C0=RootCF*euler(0,0,-0.5+0.5*i)
RW.C0=cf(1.5,0.5,0)*euler(0.4*i,-1,0)
RW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
LW.C0=cf(-1-0.5*i,0.5,-0.5+0.5*i)*euler(2.5-2.1*i,1,0)
LW.C1=cf(0,0.5,0)*euler(0.8-1.4*i,0,0)
end
attack=false
end
 
function ReturnBladesL()
attack=true
weldlblade1=false weldlblade2=false weldlblade3=false weldlblade4=false weldlblade5=false weldlblade6=false 
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,0.5*i)
RootJoint.C0=RootCF*euler(0,0,-0.5*i)
RW.C0=cf(1.5,0.5,0)*euler(0.4-0.4*i,-1,0)
RW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.4+1.17*i,1-2.57*i,0)
LW.C1=cf(0,0.5,0)*euler(-0.6+1.1*i,0,0)
end
thepart=nil
thepart2=nil
theweld=nil
bladeconec=nil
for i=1,6 do
if i==1 then thepart=lbladea5 thepart2=lbladea3 theweld=lblwlda4 bladeconec=con7 
elseif i==2 then thepart=lbladeb5 thepart2=lbladeb3 theweld=lblwldb4 bladeconec=con8
elseif i==3 then thepart=lbladec5 thepart2=lbladec3 theweld=lblwldc4 bladeconec=con9
elseif i==4 then thepart=lbladed5 thepart2=lbladed3 theweld=lblwldd4 bladeconec=con10
elseif i==5 then thepart=lbladee5 thepart2=lbladee3 theweld=lblwlde4 bladeconec=con11
elseif i==6 then thepart=lbladef5 thepart2=lbladef3 theweld=lblwldf4 bladeconec=con12
end
for _,v in pairs(thepart:children()) do
if v.className=="Weld" then
v.Parent=nil
end
end
thepart.CanCollide=true
theweld.Part1=nil
theweld.Parent=lprt1
--Part1 should be lbladea3
--thepart.CFrame=thepart.CFrame
--[[prop=Instance.new("RocketPropulsion")
--prop.ThrustP=50
prop.MaxSpeed=500
--prop.MaxThrust=500
--prop.CartoonFactor=0
prop.Parent=thepart
prop.Target=thepart2
prop:Fire()]]
prop=Instance.new("BodyPosition")
prop.P=1000
prop.D=100
prop.maxForce=Vector3.new(math.huge,math.huge,math.huge)
prop.position=thepart2.Position
prop.Parent=thepart
coroutine.resume(coroutine.create(function(Part,Bod)
while Bod.Parent~=nil and holdq==true do
swait()
Bod.position=Part.Position
end
Bod.Parent=nil
end),thepart2,prop)
coroutine.resume(coroutine.create(function(Part1,Part2,Weld1,Connec,Num)
Connec=Part1.Touched:connect(function(hit) 
if hit.Parent.Name==modelzorz2.Name then
tehweld=Weld1
tehweld.Part1=Part2
Part1.CanCollide=false
--[[if Part1:findFirstChild("RocketPropulsion")~=nil then
Part1.RocketPropulsion.Parent=nil
end]]
if Part1:findFirstChild("BodyPosition")~=nil then
Part1.BodyPosition.Parent=nil
end
so("rbxasset://sounds\\unsheath.wav",Part1,1,math.random(60,150)/100)
Connec:disconnect()
if Num==1 then weldlblade1=true 
elseif Num==2 then weldlblade2=true 
elseif Num==3 then weldlblade3=true 
elseif Num==4 then weldlblade4=true 
elseif Num==5 then weldlblade5=true 
elseif Num==6 then weldlblade6=true 
end
end
end)
end),thepart,thepart2,theweld,bladeconec,i)
end
while holdq==true do
swait()
end
thepart=nil
for i=1,6 do
if i==1 then thepart=lbladea5
elseif i==2 then thepart=lbladeb5
elseif i==3 then thepart=lbladec5
elseif i==4 then thepart=lbladed5
elseif i==5 then thepart=lbladee5
elseif i==6 then thepart=lbladef5
end
for _,v in pairs(thepart:children()) do
if v.className=="RocketPropulsion" then
v.Parent=nil
end
end
end
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,0.5-0.5*i)
RootJoint.C0=RootCF*euler(0,0,-0.5+0.5*i)
RW.C0=cf(1.5,0.5,0)*euler(0.4*i,-1,0)
RW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.57-1.17*i,-1.57+2.57*i,0)
LW.C1=cf(0,0.5,0)*euler(0.5-1.1*i,0,0)
end
attack=false
end
 
function BladeThrowR()
attack=true
StraightenRight()
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,0.5*i)
RootJoint.C0=RootCF*euler(0,0,-0.5*i)
RW.C0=cf(1.5,0.5,0)*euler(0.4-0.6*i,-1,0)
RW.C1=cf(0,0.5,0)*euler(-0.6+0.2*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.4-0.4*i,1,0)
LW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
end
n=2
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,0.5+0.2*i*n)
RootJoint.C0=RootCF*euler(0,0,-0.5-0.2*i*n)
RW.C0=cf(1.5,0.5,0)*euler(-0.2-0.2*i*n,-1,0)
RW.C1=cf(0,0.5,0)*euler(-0.4-0.2*i*n,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,1,0)
LW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
n=n-0.1
end
LaunchRight()
for i=0,1,0.05 do
swait()
Torso.Neck.C0=necko*euler(0,0,0.7-1.2*i)
RootJoint.C0=RootCF*euler(0,0,-0.7+1.2*i)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(-0.4+2.9*i,-1,0)
RW.C1=cf(0,0.5,0)*euler(-0.6+1.4*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,1,0)
LW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
end
swait(10)
UnStraightRight()
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.5+0.5*i)
RootJoint.C0=RootCF*euler(0,0,0.5-0.5*i)
RW.C0=cf(1+0.5*i,0.5,-0.5*i)*euler(2.5-2.1*i,-1,0)
RW.C1=cf(0,0.5,0)*euler(0.8-1.4*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.4*i,1,0)
LW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
end
attack=false
end
 
function ReturnBladesR()
attack=true
weldrblade1=false weldrblade2=false weldrblade3=false weldrblade4=false weldrblade5=false weldrblade6=false 
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.5*i)
RootJoint.C0=RootCF*euler(0,0,0.5*i)
RW.C0=cf(1.5,0.5,0)*euler(0.4+1.17*i,-1+2.57*i,0)
RW.C1=cf(0,0.5,0)*euler(-0.6+1.1*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.4-0.4*i,1,0)
LW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
end
thepart=nil
thepart2=nil
theweld=nil
bladeconec=nil
for i=1,6 do
if i==1 then thepart=bladea5 thepart2=bladea3 theweld=blwlda4 bladeconec=con1
elseif i==2 then thepart=bladeb5 thepart2=bladeb3 theweld=blwldb4 bladeconec=con2
elseif i==3 then thepart=bladec5 thepart2=bladec3 theweld=blwldc4 bladeconec=con3
elseif i==4 then thepart=bladed5 thepart2=bladed3 theweld=blwldd4 bladeconec=con4
elseif i==5 then thepart=bladee5 thepart2=bladee3 theweld=blwlde4 bladeconec=con5
elseif i==6 then thepart=bladef5 thepart2=bladef3 theweld=blwldf4 bladeconec=con6
end
for _,v in pairs(thepart:children()) do
if v.className=="Weld" then
v.Parent=nil
end
end
thepart.CanCollide=true
theweld.Part1=nil
theweld.Parent=lprt1
--Part1 should be lbladea3
--thepart.CFrame=thepart.CFrame
prop=Instance.new("BodyPosition")
prop.P=1000
prop.D=100
prop.maxForce=Vector3.new(math.huge,math.huge,math.huge)
prop.position=thepart2.Position
prop.Parent=thepart
coroutine.resume(coroutine.create(function(Part,Bod)
while Bod.Parent~=nil and holde==true do
swait()
Bod.position=Part.Position
end
Bod.Parent=nil
end),thepart2,prop)
coroutine.resume(coroutine.create(function(Part1,Part2,Weld1,Connec,Num)
Connec=Part1.Touched:connect(function(hit) 
if hit.Parent.Name==modelzorz.Name then
tehweld=Weld1
tehweld.Part1=Part2
Part1.CanCollide=false
if Part1:findFirstChild("BodyPosition")~=nil then
Part1.BodyPosition.Parent=nil
end
so("rbxasset://sounds\\unsheath.wav",Part1,1,math.random(60,150)/100)
Connec:disconnect()
if Num==1 then weldrblade1=true 
elseif Num==2 then weldrblade2=true 
elseif Num==3 then weldrblade3=true 
elseif Num==4 then weldrblade4=true 
elseif Num==5 then weldrblade5=true 
elseif Num==6 then weldrblade6=true 
end
end
end)
end),thepart,thepart2,theweld,bladeconec,i)
end
while holde==true do
swait()
end
thepart=nil
for i=1,6 do
if i==1 then thepart=bladea5
elseif i==2 then thepart=bladeb5
elseif i==3 then thepart=bladec5
elseif i==4 then thepart=bladed5
elseif i==5 then thepart=bladee5
elseif i==6 then thepart=bladef5
end
for _,v in pairs(thepart:children()) do
if v.className=="RocketPropulsion" then
v.Parent=nil
end
end
end
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.5+0.5*i)
RootJoint.C0=RootCF*euler(0,0,0.5-0.5*i)
RW.C0=cf(1.5,0.5,0)*euler(1.57-1.17*i,1.57-2.57*i,0)
RW.C1=cf(0,0.5,0)*euler(0.5-1.1*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.4*i,1,0)
LW.C1=cf(0,0.5,0)*euler(-0.6,0,0)
end
attack=false
end
 
function BoomerangThrow()
attack=true
Humanoid.WalkSpeed=0.1
StraightenRight()
StraightenLeft()
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.5*i)
RootJoint.C0=RootCF*euler(0,0,0.5*i)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(0.4+1.17*i,-1+1*i,-1*i)
RW.C1=cf(0,0.5,0)*euler(-0.6+1.2*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.4+1.17*i,1-1*i,-1.57*i)
LW.C1=cf(0,0.5,0)*euler(-0.6+1.2*i,0,0)
end
while holdx==true do
swait()
BoomerangLeft()
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.5+0.9*i)
RootJoint.C0=RootCF*euler(0,0,0.5-0.9*i)
RW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(1.57,0,-1+2.57*i)
RW.C1=cf(0,0.5,0)*euler(0.6-0.6*i,0,0)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(1.57,0,-1.57+2.57*i)
LW.C1=cf(0,0.5,0)*euler(0.6-1.2*i,0,0)
end
n=2
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,0.4+0.1*i*n)
RootJoint.C0=RootCF*euler(0,0,-0.4-0.1*i*n)
RW.C0=cf(1.5,0.5,0)*euler(1.57,0,1.57)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1,0.5,-0.5)*euler(1.57,0,1+0.1*i*n)
LW.C1=cf(0,0.5,0)*euler(-0.6-0.1*i*n,0,0)
n=n-0.2
end
for i=0,1,0.1 do
swait()
RW.C0=cf(1.5,0.5,0)*euler(1.57,0,1.57)
RW.C1=cf(0,0.5,0)*euler(0.6*i,0,0)
LW.C0=cf(-1,0.5,-0.5)*euler(1.57,0,1.1-0.1*i)
LW.C1=cf(0,0.5,0)*euler(-0.7+1.3*i,0,0)
end
BoomerangRight()
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,0.5-0.9*i)
RootJoint.C0=RootCF*euler(0,0,-0.5+0.9*i)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(1.57,0,1.57-2.57*i)
RW.C1=cf(0,0.5,0)*euler(0.6-1.2*i,0,0)
LW.C0=cf(-1-0.5*i,0.5,-0.5+0.5*i)*euler(1.57,0,1-2.57*i)
LW.C1=cf(0,0.5,0)*euler(0.6-0.6*i,0,0)
end
n=2
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.4-0.1*i*n)
RootJoint.C0=RootCF*euler(0,0,0.4+0.1*i*n)
RW.C0=cf(1,0.5,-0.5)*euler(1.57,0,-1-0.1*i*n)
RW.C1=cf(0,0.5,0)*euler(-0.6-0.1*i*n,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.57,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
n=n-0.2
end
for i=0,1,0.1 do
swait()
RW.C0=cf(1,0.5,-0.5)*euler(1.57,0,-1.1+0.1*i)
RW.C1=cf(0,0.5,0)*euler(-0.7+1.3*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.57,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(0.6*i,0,0)
end
end
UnStraightRight()
UnStraightLeft()
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,-0.5+0.5*i)
RootJoint.C0=RootCF*euler(0,0,0.5-0.5*i)
RW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(1.57-1.17*i,-1*i,-1+1*i)
RW.C1=cf(0,0.5,0)*euler(0.6-1.2*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.57-1.17*i,1*i,-1.57+1.57*i)
LW.C1=cf(0,0.5,0)*euler(0.6-1.2*i,0,0)
end
Humanoid.WalkSpeed=16
attack=false
end
 
function BladeStorm()
attack=true
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0.2*i,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(0.4+1.17*i,-1+1*i,1.57*i)
RW.C1=cf(0,0.5,0)*euler(-0.6+0.6*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.4+1.17*i,1-1*i,-1.57*i)
LW.C1=cf(0,0.5,0)*euler(-0.6+0.6*i,0,0)
end
n=2
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0.2+0.1*i*n,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(1.57,0,1.57)
RW.C1=cf(0,0.5,0)*euler(0,0,-0.4*i*n)
LW.C0=cf(-1.5,0.5,0)*euler(1.57,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(0,0,0.4*i*n)
n=n-0.1
end
CircleBlades()
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0.3,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(1.57-0.2*i,0,1.57)
RW.C1=cf(0,0.5,0)*euler(0,0,-0.4+3*i)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(1.57+0.2*i,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(0,0,0.4-3*i)
end
n=2
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0.3,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1,0.5,-0.5)*euler(1.37,0,1.57)
RW.C1=cf(0,0.5,0)*euler(0,0,2.6+0.2*i*n)
LW.C0=cf(-1,0.5,-0.5)*euler(1.77,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(0,0,-2.6-0.2*i*n)
n=n-0.1
end
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0.3-0.3*i,0,0)
RootJoint.C0=RootCF*euler(0,0,0)
RW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(1.37-0.97*i,-1*i,1.57-1.57*i)
RW.C1=cf(0,0.5,0)*euler(-0.6*i,0,2.8-2.8*i)
LW.C0=cf(-1-0.5*i,0.5,-0.5+0.5*i)*euler(1.77-1.37*i,1*i,-1.57+1.57*i)
LW.C1=cf(0,0.5,0)*euler(-0.6*i,0,-2.8+2.8*i)
end
attack=false
end
 
function SnipeShot()
attack=true
Humanoid.WalkSpeed=0.1
StraightenLeft()
StraightenRight()
for i=0,1,0.1 do
swait()
RW.C0=cf(1.5,0.5,0)*euler(0.4+1.17*i,-1+2.57*i,0)
RW.C1=cf(0,0.5,0)*euler(-0.6+0.6*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0.4+1.17*i,1-2.57*i,0)
LW.C1=cf(0,0.5,0)*euler(-0.6+0.6*i,0,0)
end
SnipeLaunch()
while holdb==true do
swait()
end
UnStraightLeft()
UnStraightRight()
for i=0,1,0.1 do
swait()
RW.C0=cf(1.5,0.5,0)*euler(1.57-1.17*i,1.57-2.57*i,0)
RW.C1=cf(0,0.5,0)*euler(-0.6*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.57-1.17*i,-1.57+2.57*i,0)
LW.C1=cf(0,0.5,0)*euler(-0.6*i,0,0)
end
Humanoid.WalkSpeed=16
attack=false
end
 
function StraightenRight()
coroutine.resume(coroutine.create(function()
for i=0,1,0.2 do
swait()
blwlda2.C0=cf(0,0.2,0)*euler(0.25-0.25*i,0,0)
blwldb2.C0=cf(0,0.2,0)*euler(0.15-0.15*i,0,-0.3+0.3*i)
blwldc2.C0=cf(0,0.2,0)*euler(0.05-0.05*i,0,-0.5+0.5*i)
blwldd2.C0=cf(0,0.2,0)*euler(-0.05+0.05*i,0,-0.35+0.35*i)
blwlde2.C0=cf(0,0.2,0)*euler(-0.15+0.15*i,0,-0.1+0.1*i)
blwldf2.C0=cf(0,0.2,0)*euler(-0.25+0.25*i,0,0)
end
end))
end
 
function UnStraightRight()
coroutine.resume(coroutine.create(function()
for i=0,1,0.2 do
swait()
blwlda2.C0=cf(0,0.2,0)*euler(0.25*i,0,0)
blwlda4.C0=euler(0,0,0)*cf(0,0,0)*euler(0,0,0)
blwlda1.C0=euler(0,0,0)*cf(-0.15,0.05,-0.35)
blwldb2.C0=cf(0,0.2,0)*euler(0.15*i,0,-0.3*i)
blwldc2.C0=cf(0,0.2,0)*euler(0.05*i,0,-0.5*i)
blwldd2.C0=cf(0,0.2,0)*euler(-0.05*i,0,-0.35*i)
blwlde2.C0=cf(0,0.2,0)*euler(-0.15*i,0,-0.1*i)
blwldf2.C0=cf(0,0.2,0)*euler(-0.25*i,0,0)
end
end))
end
 
function StraightenLeft()
coroutine.resume(coroutine.create(function()
for i=0,1,0.2 do
swait()
lblwlda2.C0=cf(0,0.2,0)*euler(0.25-0.25*i,0,0)
lblwldb2.C0=cf(0,0.2,0)*euler(0.15-0.15*i,0,-0.3+0.3*i)
lblwldc2.C0=cf(0,0.2,0)*euler(0.05-0.05*i,0,-0.5+0.5*i)
lblwldd2.C0=cf(0,0.2,0)*euler(-0.05+0.05*i,0,-0.35+0.35*i)
lblwlde2.C0=cf(0,0.2,0)*euler(-0.15+0.15*i,0,-0.1+0.1*i)
lblwldf2.C0=cf(0,0.2,0)*euler(-0.25+0.25*i,0,0)
end
end))
end
 
function UnStraightLeft()
coroutine.resume(coroutine.create(function()
for i=0,1,0.2 do
swait()
lblwlda2.C0=cf(0,0.2,0)*euler(0.25*i,0,0)
lblwldb2.C0=cf(0,0.2,0)*euler(0.15*i,0,-0.3*i)
lblwldc2.C0=cf(0,0.2,0)*euler(0.05*i,0,-0.5*i)
lblwldd2.C0=cf(0,0.2,0)*euler(-0.05*i,0,-0.35*i)
lblwlde2.C0=cf(0,0.2,0)*euler(-0.15*i,0,-0.1*i)
lblwldf2.C0=cf(0,0.2,0)*euler(-0.25*i,0,0)
end
end))
end
 
function BladesShwing(Left,Right)
ppart=nil
part2=nil
pit=0.6
for i=1,6 do
if i==1 then ppart=bladea5 part2=lbladea5 pit=math.random(60,160)/100
elseif i==2 then ppart=bladeb5 part2=lbladeb5 pit=math.random(60,160)/100
elseif i==3 then ppart=bladec5 part2=lbladec5 pit=math.random(60,160)/100
elseif i==4 then ppart=bladed5 part2=lbladed5 pit=math.random(60,160)/100
elseif i==5 then ppart=bladee5 part2=lbladee5 pit=math.random(60,160)/100
elseif i==6 then ppart=bladef5 part2=lbladef5 pit=math.random(60,160)/100
end
if Left==true then
so("http://www.roblox.com/Asset?ID=92597369",part2,1,pit)
end
if Right==true then
so("http://www.roblox.com/Asset?ID=92597369",ppart,1,pit)
end
end
end
 
function ConnectRight(minim,maxim)
con1=bladea5.Touched:connect(function(hit) Damagefunc(hit,minim,maxim,math.random(0,5),"Normal",RootPart,.1,1) end) 
con2=bladeb5.Touched:connect(function(hit) Damagefunc(hit,minim,maxim,math.random(0,5),"Normal",RootPart,.1,1) end) 
con3=bladec5.Touched:connect(function(hit) Damagefunc(hit,minim,maxim,math.random(0,5),"Normal",RootPart,.1,1) end) 
con4=bladed5.Touched:connect(function(hit) Damagefunc(hit,minim,maxim,math.random(0,5),"Normal",RootPart,.1,1) end) 
con5=bladee5.Touched:connect(function(hit) Damagefunc(hit,minim,maxim,math.random(0,5),"Normal",RootPart,.1,1) end) 
con6=bladef5.Touched:connect(function(hit) Damagefunc(hit,minim,maxim,math.random(0,5),"Normal",RootPart,.1,1) end) 
end
 
function DisconnectRight()
con1:disconnect()
con2:disconnect()
con3:disconnect()
con4:disconnect()
con5:disconnect()
con6:disconnect()
end
 
function ConnectLeft(minim,maxim)
con7=lbladea5.Touched:connect(function(hit) Damagefunc(hit,minim,maxim,math.random(0,5),"Normal",RootPart,.1,1) end) 
con8=lbladeb5.Touched:connect(function(hit) Damagefunc(hit,minim,maxim,math.random(0,5),"Normal",RootPart,.1,1) end) 
con9=lbladec5.Touched:connect(function(hit) Damagefunc(hit,minim,maxim,math.random(0,5),"Normal",RootPart,.1,1) end) 
con10=lbladed5.Touched:connect(function(hit) Damagefunc(hit,minim,maxim,math.random(0,5),"Normal",RootPart,.1,1) end) 
con11=lbladee5.Touched:connect(function(hit) Damagefunc(hit,minim,maxim,math.random(0,5),"Normal",RootPart,.1,1) end) 
con12=lbladef5.Touched:connect(function(hit) Damagefunc(hit,minim,maxim,math.random(0,5),"Normal",RootPart,.1,1) end) 
end
 
function DisconnectLeft()
con7:disconnect()
con8:disconnect()
con9:disconnect()
con10:disconnect()
con11:disconnect()
con12:disconnect()
end
 
Connec=nil
function LaunchLeft()
--weldlblade1=false weldlblade2=false weldlblade3=false 
--weldlblade4=false weldlblade5=false weldlblade6=false 
lbladea4.CanCollide=true
lbladeb4.CanCollide=true
lbladec4.CanCollide=true
lbladed4.CanCollide=true
lbladee4.CanCollide=true
lbladef4.CanCollide=true
coroutine.resume(coroutine.create(function()
thepart=nil
theweld=nil
for i=1,6 do
swait(3)
local TheHit=MMouse.Hit.p
spread=vt((math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7)*(Head.Position-MMouse.Hit.p).magnitude/100
local MouseLook=cf((Head.Position+TheHit)/2,TheHit+spread)
local hit,pos = rayCast(Head.Position,MouseLook.lookVector,999,Character)
target=nil
if hit~=nil and hit.Anchored==false then
target=hit
else
local ref=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
ref.CFrame=cf(pos)
ref.Anchored=true
game:GetService("Debris"):AddItem(ref,1)
target=ref
end
prop=Instance.new("RocketPropulsion")
prop.ThrustP=50
prop.MaxSpeed=100
prop.MaxThrust=7000
prop.CartoonFactor=0
game:GetService("Debris"):AddItem(prop,.3)
if i==1 and weldlblade1==true then
weldlblade1=false
thepart=lbladea5
thepart.CanCollide=true
theweld=lblwlda4
elseif i==2 and weldlblade2==true then
weldlblade2=false
thepart=lbladeb5
thepart.CanCollide=true
theweld=lblwldb4
elseif i==3 and weldlblade3==true then
weldlblade3=false
thepart=lbladec5
thepart.CanCollide=true
theweld=lblwldc4
elseif i==4 and weldlblade4==true then
weldlblade4=false
thepart=lbladed5
thepart.CanCollide=true
theweld=lblwldd4
elseif i==5 and weldlblade5==true then
weldlblade5=false
thepart=lbladee5
thepart.CanCollide=true
theweld=lblwlde4
elseif i==6 and weldlblade6==true then
weldlblade6=false
thepart=lbladef5
thepart.CanCollide=true
theweld=lblwldf4
else
thepart=nil
end
if thepart~=nil then
so("rbxasset://sounds\\unsheath.wav",thepart,1,math.random(60,150)/100)
end
if thepart~=nil then
coroutine.resume(coroutine.create(function(Num,Part)
local Connec=nil
Connec=Part.Touched:connect(function(hit) 
if hit.Name~=modelzorz2.Name and hit.Parent~=Character and hit.Parent.Parent~=Character then
blweld=Instance.new("Weld")
blweld.Part0=Part
blweld.Part1=hit
local HitPos=Part.Position+Part.CFrame.lookVector*0.75
local CJ=CFrame.new(HitPos)
local C0=Part.CFrame:inverse() * CJ
local C1=hit.CFrame:inverse() * CJ
blweld.C0=C0
blweld.C1=C1
blweld.Parent=Part
Damagefunc(hit,5,15,0,"Normal",RootPart,0,1)
Connec:disconnect()
--print(Part.." derp "..Connec)
end
end)
end),i,thepart)
thepart.CanCollide=true
theweld.Parent=nil
thepart.Velocity=Head.CFrame.lookVector*100
prop.Parent=thepart
prop.Target=target
prop:Fire()
end
end
end))
end
 
Connec=nil
function LaunchRight()
--weldlblade1=false weldlblade2=false weldlblade3=false 
--weldlblade4=false weldlblade5=false weldlblade6=false 
bladea4.CanCollide=true
bladeb4.CanCollide=true
bladec4.CanCollide=true
bladed4.CanCollide=true
bladee4.CanCollide=true
bladef4.CanCollide=true
coroutine.resume(coroutine.create(function()
thepart=nil
theweld=nil
for i=1,6 do
swait(3)
local TheHit=MMouse.Hit.p
spread=vt((math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7)*(Head.Position-MMouse.Hit.p).magnitude/100
local MouseLook=cf((Head.Position+TheHit)/2,TheHit+spread)
local hit,pos = rayCast(Head.Position,MouseLook.lookVector,999,Character)
target=nil
if hit~=nil and hit.Anchored==false then
target=hit
else
local ref=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
ref.CFrame=cf(pos)
ref.Anchored=true
game:GetService("Debris"):AddItem(ref,1)
target=ref
end
prop=Instance.new("RocketPropulsion")
prop.ThrustP=50
prop.MaxSpeed=100
prop.MaxThrust=7000
prop.CartoonFactor=0
game:GetService("Debris"):AddItem(prop,.3)
if i==1 and weldrblade1==true then
weldrblade1=false
thepart=bladea5
thepart.CanCollide=true
theweld=blwlda4
elseif i==2 and weldrblade2==true then
weldrblade2=false
thepart=bladeb5
thepart.CanCollide=true
theweld=blwldb4
elseif i==3 and weldrblade3==true then
weldrblade3=false
thepart=bladec5
thepart.CanCollide=true
theweld=blwldc4
elseif i==4 and weldrblade4==true then
weldrblade4=false
thepart=bladed5
thepart.CanCollide=true
theweld=blwldd4
elseif i==5 and weldrblade5==true then
weldrblade5=false
thepart=bladee5
thepart.CanCollide=true
theweld=blwlde4
elseif i==6 and weldrblade6==true then
weldrblade6=false
thepart=bladef5
thepart.CanCollide=true
theweld=blwldf4
else
thepart=nil
end
if thepart~=nil then
so("rbxasset://sounds\\unsheath.wav",thepart,1,math.random(60,150)/100)
end
if thepart~=nil then
coroutine.resume(coroutine.create(function(Num,Part)
local Connec=nil
Connec=Part.Touched:connect(function(hit) 
if hit.Name~=modelzorz2.Name and hit.Parent~=Character and hit.Parent.Parent~=Character then
blweld=Instance.new("Weld")
blweld.Part0=Part
blweld.Part1=hit
local HitPos=Part.Position+Part.CFrame.lookVector*0.75
local CJ=CFrame.new(HitPos)
local C0=Part.CFrame:inverse() * CJ
local C1=hit.CFrame:inverse() * CJ
blweld.C0=C0
blweld.C1=C1
blweld.Parent=Part
Damagefunc(hit,5,15,0,"Normal",RootPart,0,1)
Connec:disconnect()
--print(Part.." derp "..Connec)
end
end)
end),i,thepart)
thepart.CanCollide=true
theweld.Parent=nil
thepart.Velocity=Head.CFrame.lookVector*100
prop.Parent=thepart
prop.Target=target
prop:Fire()
end
end
end))
end
 
function BoomerangLeft()
--weldlblade1=false weldlblade2=false weldlblade3=false 
--weldlblade4=false weldlblade5=false weldlblade6=false 
lbladea4.CanCollide=true
lbladeb4.CanCollide=true
lbladec4.CanCollide=true
lbladed4.CanCollide=true
lbladee4.CanCollide=true
lbladef4.CanCollide=true
coroutine.resume(coroutine.create(function()
thepart=nil
thepart2=nil
theweld=nil
for i=1,6 do
swait(1)
local TheHit=MMouse.Hit.p
spread=vt((math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7)*(Head.Position-MMouse.Hit.p).magnitude/100
local MouseLook=cf((Head.Position+TheHit)/2,TheHit+spread)
local hit,pos = rayCast(Head.Position,MouseLook.lookVector,999,Character)
target=nil
if hit~=nil and hit.Anchored==false then
target=hit
else
local ref=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
ref.CFrame=cf(pos)
ref.Anchored=true
game:GetService("Debris"):AddItem(ref,.5)
target=ref
end
prop=Instance.new("RocketPropulsion")
prop.ThrustP=50
prop.MaxSpeed=100
prop.MaxThrust=7000
prop.CartoonFactor=0
game:GetService("Debris"):AddItem(prop,.3)
if i==1 and weldlblade1==true then
weldlblade1=false
thepart=lbladea5
thepart2=lbladea3
thepart.CanCollide=true
theweld=lblwlda4
elseif i==2 and weldlblade2==true then
weldlblade2=false
thepart=lbladeb5
thepart2=lbladeb3
thepart.CanCollide=true
theweld=lblwldb4
elseif i==3 and weldlblade3==true then
weldlblade3=false
thepart=lbladec5
thepart2=lbladec3
thepart.CanCollide=true
theweld=lblwldc4
elseif i==4 and weldlblade4==true then
weldlblade4=false
thepart=lbladed5
thepart2=lbladed3
thepart.CanCollide=true
theweld=lblwldd4
elseif i==5 and weldlblade5==true then
weldlblade5=false
thepart=lbladee5
thepart2=lbladee3
thepart.CanCollide=true
theweld=lblwlde4
elseif i==6 and weldlblade6==true then
weldlblade6=false
thepart=lbladef5
thepart2=lbladef3
thepart.CanCollide=true
theweld=lblwldf4
else
thepart=nil
end
if thepart~=nil then
so("rbxasset://sounds\\unsheath.wav",thepart,.5,math.random(60,150)/100)
end
if thepart~=nil then
local TheMode=1
coroutine.resume(coroutine.create(function(Num,Part1,Part2,Weld1,Mode)
local Mode=1
local Connec
Connec=Part1.Touched:connect(function(hit) 
if Mode==1 then
if hit.Name~=modelzorz2.Name and hit.Parent~=Character and hit.Parent.Parent~=Character then
Mode=2
Damagefunc(hit,5,15,0,"Normal",RootPart,0,1)
if Part1:findFirstChild("RocketPropulsion")~=nil then
Part1.RocketPropulsion.Parent=nil
end
prop=Instance.new("BodyPosition")
prop.P=1000
prop.D=100
prop.maxForce=Vector3.new(math.huge,math.huge,math.huge)
prop.position=Part1.Position
prop.Parent=Part1
coroutine.resume(coroutine.create(function(Part,Bod)
while Bod.Parent~=nil do
swait()
Bod.position=Part.Position
end
Bod.Parent=nil
end),Part2,prop)
--print(Part.." derp "..Connec)
end
elseif Mode==2 then
--Mode=3
if hit.Parent.Name==modelzorz2.Name then
tehweld=Weld1
tehweld.Parent=Part1
tehweld.Part1=Part2
Part1.CanCollide=false
if Part1:findFirstChild("BodyPosition")~=nil then
Part1.BodyPosition.Parent=nil
end
so("rbxasset://sounds\\unsheath.wav",Part1,.5,math.random(60,150)/100)
if Num==1 then weldlblade1=true 
elseif Num==2 then weldlblade2=true 
elseif Num==3 then weldlblade3=true 
elseif Num==4 then weldlblade4=true 
elseif Num==5 then weldlblade5=true 
elseif Num==6 then weldlblade6=true 
end
--print(Part.." derp "..Connec)
Connec:disconnect()
end
end
end)
end),i,thepart,thepart2,theweld,TheMode)
thepart.CanCollide=true
theweld.Parent=nil
thepart.Velocity=Head.CFrame.lookVector*100
prop.Parent=thepart
prop.Target=target
prop:Fire()
end
end
end))
end
 
function BoomerangRight()
bladea4.CanCollide=true
bladeb4.CanCollide=true
bladec4.CanCollide=true
bladed4.CanCollide=true
bladee4.CanCollide=true
bladef4.CanCollide=true
coroutine.resume(coroutine.create(function()
thepart=nil
thepart2=nil
theweld=nil
for i=1,6 do
swait(1)
local TheHit=MMouse.Hit.p
spread=vt((math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7)*(Head.Position-MMouse.Hit.p).magnitude/100
local MouseLook=cf((Head.Position+TheHit)/2,TheHit+spread)
local hit,pos = rayCast(Head.Position,MouseLook.lookVector,999,Character)
target=nil
if hit~=nil and hit.Anchored==false then
target=hit
else
local ref=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
ref.CFrame=cf(pos)
ref.Anchored=true
game:GetService("Debris"):AddItem(ref,1)
target=ref
end
prop=Instance.new("RocketPropulsion")
prop.ThrustP=50
prop.MaxSpeed=100
prop.MaxThrust=7000
prop.CartoonFactor=0
game:GetService("Debris"):AddItem(prop,.3)
if i==1 and weldrblade1==true then
weldrblade1=false
thepart=bladea5
thepart2=bladea3
thepart.CanCollide=true
theweld=blwlda4
elseif i==2 and weldrblade2==true then
weldrblade2=false
thepart=bladeb5
thepart2=bladeb3
thepart.CanCollide=true
theweld=blwldb4
elseif i==3 and weldrblade3==true then
weldrblade3=false
thepart=bladec5
thepart2=bladec3
thepart.CanCollide=true
theweld=blwldc4
elseif i==4 and weldrblade4==true then
weldrblade4=false
thepart=bladed5
thepart2=bladed3
thepart.CanCollide=true
theweld=blwldd4
elseif i==5 and weldrblade5==true then
weldrblade5=false
thepart=bladee5
thepart2=bladee3
thepart.CanCollide=true
theweld=blwlde4
elseif i==6 and weldrblade6==true then
weldrblade6=false
thepart=bladef5
thepart2=bladef3
thepart.CanCollide=true
theweld=blwldf4
else
thepart=nil
end
if thepart~=nil then
so("rbxasset://sounds\\unsheath.wav",thepart,.5,math.random(60,150)/100)
end
if thepart~=nil then
local TheMode=1
coroutine.resume(coroutine.create(function(Num,Part1,Part2,Weld1,Mode)
local Mode=1
local Connec=nil
Connec=Part1.Touched:connect(function(hit) 
if Mode==1 then
if hit.Name~=modelzorz.Name and hit.Parent~=Character and hit.Parent.Parent~=Character then
Mode=2
Damagefunc(hit,5,15,0,"Normal",RootPart,0,1)
if Part1:findFirstChild("RocketPropulsion")~=nil then
Part1.RocketPropulsion.Parent=nil
end
prop=Instance.new("BodyPosition")
prop.P=1000
prop.D=100
prop.maxForce=Vector3.new(math.huge,math.huge,math.huge)
prop.position=Part1.Position
prop.Parent=Part1
coroutine.resume(coroutine.create(function(Part,Bod)
while Bod.Parent~=nil do
swait()
Bod.position=Part.Position
end
Bod.Parent=nil
end),Part2,prop)
--print(Part.." derp "..Connec)
end
elseif Mode==2 then
--Mode=3
if hit.Parent.Name==modelzorz.Name then
tehweld=Weld1
tehweld.Parent=Part1
tehweld.Part1=Part2
Part1.CanCollide=false
if Part1:findFirstChild("BodyPosition")~=nil then
Part1.BodyPosition.Parent=nil
end
so("rbxasset://sounds\\unsheath.wav",Part1,.5,math.random(60,150)/100)
if Num==1 then weldrblade1=true 
elseif Num==2 then weldrblade2=true 
elseif Num==3 then weldrblade3=true 
elseif Num==4 then weldrblade4=true 
elseif Num==5 then weldrblade5=true 
elseif Num==6 then weldrblade6=true 
end
--print(Part.." derp "..Connec)
Connec:disconnect()
end
end
end)
end),i,thepart,thepart2,theweld,TheMode)
thepart.CanCollide=true
theweld.Parent=nil
thepart.Velocity=Head.CFrame.lookVector*100
prop.Parent=thepart
prop.Target=target
prop:Fire()
end
end
end))
end
 
function CircleBlades()
bladea4.CanCollide=false
bladeb4.CanCollide=false
bladec4.CanCollide=false
bladed4.CanCollide=false
bladee4.CanCollide=false
bladef4.CanCollide=false
lbladea4.CanCollide=false
lbladeb4.CanCollide=false
lbladec4.CanCollide=false
lbladed4.CanCollide=false
lbladee4.CanCollide=false
lbladef4.CanCollide=false
coroutine.resume(coroutine.create(function()
thepart=nil
theweld=nil
for i=1,12 do
swait()
local TheHit=MMouse.Hit.p
spread=vt((math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7)*(Head.Position-MMouse.Hit.p).magnitude/100
local MouseLook=cf((Head.Position+TheHit)/2,TheHit+spread)
local hit,pos = rayCast(Head.Position,MouseLook.lookVector,999,Character)
target=nil
if hit~=nil and hit.Anchored==false then
target=hit
else
local ref=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
ref.CFrame=cf(pos)
ref.Anchored=true
game:GetService("Debris"):AddItem(ref,1)
target=ref
end
prop=Instance.new("RocketPropulsion")
prop.ThrustP=50
prop.MaxSpeed=100
prop.MaxThrust=7000
prop.CartoonFactor=0
if i==1 and weldrblade1==true then
weldrblade1=false
thepart=bladea5
theweld=blwlda4
elseif i==2 and weldrblade2==true then
weldrblade2=false
thepart=bladeb5
theweld=blwldb4
elseif i==3 and weldrblade3==true then
weldrblade3=false
thepart=bladec5
theweld=blwldc4
elseif i==4 and weldrblade4==true then
weldrblade4=false
thepart=bladed5
theweld=blwldd4
elseif i==5 and weldrblade5==true then
weldrblade5=false
thepart=bladee5
theweld=blwlde4
elseif i==6 and weldrblade6==true then
weldrblade6=false
thepart=bladef5
theweld=blwldf4
elseif i==7 and weldlblade1==true then
weldlblade1=false
thepart=lbladea5
theweld=lblwlda4
elseif i==8 and weldlblade2==true then
weldlblade2=false
thepart=lbladeb5
theweld=lblwldb4
elseif i==9 and weldlblade3==true then
weldlblade3=false
thepart=lbladec5
theweld=lblwldc4
elseif i==10 and weldlblade4==true then
weldlblade4=false
thepart=lbladed5
theweld=lblwldd4
elseif i==11 and weldlblade5==true then
weldlblade5=false
thepart=lbladee5
theweld=lblwlde4
elseif i==12 and weldlblade6==true then
weldlblade6=false
thepart=lbladef5
theweld=lblwldf4
else
thepart=nil
end
if thepart~=nil then
thepart.CanCollide=false
so("rbxasset://sounds\\unsheath.wav",thepart,1,math.random(60,150)/100)
end
if thepart~=nil then
coroutine.resume(coroutine.create(function(Num,Part)
local Connec=nil
Connec=Part.Touched:connect(function(hit) 
if hit.Name~=modelzorz2.Name and hit.Parent~=Character and hit.Parent.Parent~=Character then
if Num==1 and weldrblade1==true then
Connec:disconnect()
elseif Num==2 and weldrblade2==true then
Connec:disconnect()
elseif Num==3 and weldrblade3==true then
Connec:disconnect()
elseif Num==4 and weldrblade4==true then
Connec:disconnect()
elseif Num==5 and weldrblade5==true then
Connec:disconnect()
elseif Num==6 and weldrblade6==true then
Connec:disconnect()
elseif Num==7 and weldlblade1==true then
Connec:disconnect()
elseif Num==8 and weldlblade2==true then
Connec:disconnect()
elseif Num==9 and weldlblade3==true then
Connec:disconnect()
elseif Num==10 and weldlblade4==true then
Connec:disconnect()
elseif Num==11 and weldlblade5==true then
Connec:disconnect()
elseif Num==12 and weldlblade6==true then
Connec:disconnect()
end
so("rbxasset://sounds\\unsheath.wav",thepart,.3,math.random(60,150)/100)
Damagefunc(hit,5,15,0,"Normal",RootPart,.5,1)
end
end)
end),i,thepart)
thepart.CanCollide=true
theweld.Parent=nil
--thepart.Velocity=Head.CFrame.lookVector*100
thepart.Velocity=vt(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)*100
prop.Parent=thepart
prop.Target=RootPart
prop:Fire()
coroutine.resume(coroutine.create(function(Num,Prop)
if Num==1 then
while weldrblade1==false do
swait()
end
Prop.Parent=nil
elseif Num==2 then
while weldrblade2==false do
swait()
end
Prop.Parent=nil
elseif Num==3 then
while weldrblade3==false do
swait()
end
Prop.Parent=nil
elseif Num==4 then
while weldrblade4==false do
swait()
end
Prop.Parent=nil
elseif Num==5 then
while weldrblade5==false do
swait()
end
Prop.Parent=nil
elseif Num==6 then
while weldrblade6==false do
swait()
end
Prop.Parent=nil
elseif Num==7 then
while weldlblade1==false do
swait()
end
Prop.Parent=nil
elseif Num==8 then
while weldlblade2==false do
swait()
end
Prop.Parent=nil
elseif Num==9 then
while weldlblade3==false do
swait()
end
Prop.Parent=nil
elseif Num==10 then
while weldlblade4==false do
swait()
end
Prop.Parent=nil
elseif Num==11 then
while weldlblade5==false do
swait()
end
Prop.Parent=nil
elseif Num==12 then
while weldlblade6==false do
swait()
end
Prop.Parent=nil
end
end),i,prop)
end
end
end))
end
 
function SnipeLaunch()
coroutine.resume(coroutine.create(function()
thepart=nil
theweld=nil
for i=1,12 do
if holdb==true then
local TheHit=MMouse.Hit.p
spread=vt((math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7,(math.random(-1,0)+math.random())*7)*(Head.Position-MMouse.Hit.p).magnitude/100
local MouseLook=cf((Head.Position+TheHit)/2,TheHit)
local hit,pos = rayCast(Head.Position,MouseLook.lookVector,999,Character)
target=nil
if hit~=nil and hit.Anchored==false then
target=hit
else
local ref=part(3,workspace,0,1,BrickColor.new("Black"),"Effect",vt())
ref.CFrame=cf(pos)
ref.Anchored=true
game:GetService("Debris"):AddItem(ref,1)
target=ref
end
prop=Instance.new("RocketPropulsion")
prop.ThrustP=50
prop.MaxSpeed=100
prop.MaxThrust=7000
prop.CartoonFactor=0
game:GetService("Debris"):AddItem(prop,1)
if i==1 and weldrblade1==true then
weldrblade1=false
thepart=bladea5
theweld=blwlda4
elseif i==2 and weldrblade2==true then
weldrblade2=false
thepart=bladeb5
theweld=blwldb4
elseif i==3 and weldrblade3==true then
weldrblade3=false
thepart=bladec5
theweld=blwldc4
elseif i==4 and weldrblade4==true then
weldrblade4=false
thepart=bladed5
theweld=blwldd4
elseif i==5 and weldrblade5==true then
weldrblade5=false
thepart=bladee5
theweld=blwlde4
elseif i==6 and weldrblade6==true then
weldrblade6=false
thepart=bladef5
theweld=blwldf4
elseif i==7 and weldlblade1==true then
weldlblade1=false
thepart=lbladea5
theweld=lblwlda4
elseif i==8 and weldlblade2==true then
weldlblade2=false
thepart=lbladeb5
theweld=lblwldb4
elseif i==9 and weldlblade3==true then
weldlblade3=false
thepart=lbladec5
theweld=lblwldc4
elseif i==10 and weldlblade4==true then
weldlblade4=false
thepart=lbladed5
theweld=lblwldd4
elseif i==11 and weldlblade5==true then
weldlblade5=false
thepart=lbladee5
theweld=lblwlde4
elseif i==12 and weldlblade6==true then
weldlblade6=false
thepart=lbladef5
theweld=lblwldf4
else
thepart=nil
end
if thepart~=nil then
so("rbxasset://sounds\\unsheath.wav",thepart,1,math.random(60,150)/100)
end
if thepart~=nil then
coroutine.resume(coroutine.create(function(Num,Part,Prop)
local Connec=nil
Connec=Part.Touched:connect(function(hit) 
if hit.Name~=modelzorz2.Name and hit.Parent~=Character and hit.Parent.Parent~=Character then
Prop.Parent=nil
blweld=Instance.new("Weld")
blweld.Part0=Part
blweld.Part1=hit
local HitPos=Part.Position+Part.CFrame.lookVector*0.75
local CJ=CFrame.new(HitPos)
local C0=Part.CFrame:inverse() * CJ
local C1=hit.CFrame:inverse() * CJ
blweld.C0=C0
blweld.C1=C1
blweld.Parent=Part
Damagefunc(hit,5,15,0,"Normal",RootPart,0,1)
Connec:disconnect()
--print(Part.." derp "..Connec)
end
end)
end),i,thepart,prop)
thepart.CanCollide=true
theweld.Parent=nil
thepart.Velocity=Head.CFrame.lookVector*200
prop.Parent=thepart
prop.Target=target
prop:Fire()
swait(10)
end
end
end
end))
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                block.Value=block.Value-1
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                block.Value=block.Value-1
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5,BrickColor:Red())
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                end
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
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
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
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
 
combo=0
function ob1d(mouse) 
if attack==true then return end
if equipped==false then return end
hold=true
if combo==0 then
combo=1
attackone()
elseif combo==1 then
combo=2
attacktwo()
elseif combo==2 then
combo=3
attackthree()
elseif combo==3 then
combo=4
attackfour()
end
coroutine.resume(coroutine.create(function() 
for i=1,40 do
if attack==false then
swait()
end
end
if attack==false then
combo=0
Stance()
UnStraightRight()
UnStraightLeft()
end
end))
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
equipped=false
holdq=false
holde=false
holdx=false
holdb=false
function key(key) 
if key=="q" then
holdq=true
end
if key=="e" then
holde=true
end
if key=="x" then
holdx=true
end
if key=="b" then
holdb=true
end
if attack==true then return end
attack=true
--[[if key=="f" then
if equipped==false then
equipped=true
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 
--
equipanim() 
else
equipped=false
hideanim() 
swait(0) 
RW.Parent=nil 
LW.Parent=nil 
RSH.Parent=player.Character.Torso 
LSH.Parent=player.Character.Torso 
end
end]]--
attack=false
if equipped==false then return end
if key=="q" then
ReturnBladesL()
end
if key=="e" then
ReturnBladesR()
end
if key=="z" then
BladeThrowL()
end
if key=="c" then
BladeThrowR()
end
if key=="x" then
BoomerangThrow()
end
if key=="v" then
BladeStorm()
end
if key=="b" then
SnipeShot()
end
end 
 
function key2(key) 
if key=="q" then
holdq=false
end
if key=="e" then
holde=false
end
if key=="x" then
holdx=false
end
if key=="b" then
holdb=false
end
end 
 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
player=Player 
ch=Character 
MMouse=mouse 
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 
--
equipanim() 
end 
 
function ds(mouse) 
equipped=false
hideanim() 
swait(0) 
RW.Parent=nil 
LW.Parent=nil 
RSH.Parent=player.Character.Torso 
LSH.Parent=player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
print("Blade Reaper loaded.")
 
--[[ 
Copyrighted (C) Fenrier 2014
]] 
