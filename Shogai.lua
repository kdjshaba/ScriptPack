
--[[
Shogai Class Made by Fenrier.
]] 
Player = game:GetService("Players").LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
Face = Head.face
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
xenabled=true cenabled=true venabled=true benabled=true
cloaked=false
 
function swait(num)
if num==0 or num==nil then
game:service'RunService'.RenderStepped:wait()
else
for i=0,num do
game:service'RunService'.RenderStepped:wait()
end
end
end
 
if Character:findFirstChild("Shogai",true) ~= nil then 
Character:findFirstChild("Shogai",true).Parent = nil 
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
local fenframe1=it("TextLabel") 
fenframe1.Parent=fengui
fenframe1.BackgroundColor3=Color3.new(50/255,50/255,50/255) 
fenframe1.BackgroundTransparency=0.3
fenframe1.BorderSizePixel=5
fenframe1.BorderColor3=Color3.new(1,1,1) 
fenframe1.Size=UDim2.new(0.05, 0, 0.1, 0)
fenframe1.Position=UDim2.new(0.325,0,0.7,0)
fenframe1.Text="X"
fenframe1.TextWrapped=true
fenframe1.FontSize=7
fenframe1.TextColor3=Color3.new(1,1,1)
local fenframe1a=it("TextLabel") 
fenframe1a.Parent=fengui
fenframe1a.BackgroundColor3=Color3.new(10/255,10/255,10/255) 
fenframe1a.BackgroundTransparency=0.3
fenframe1a.BorderSizePixel=5
fenframe1a.BorderColor3=Color3.new(1,1,1) 
fenframe1a.Size=UDim2.new(0.05, 0, 0.1, 0)
fenframe1a.Position=UDim2.new(0.325,0,0.7,0)
fenframe1a.Text=""
local fenframe2=it("TextLabel") 
fenframe2.Parent=fengui
fenframe2.BackgroundColor3=Color3.new(50/255,50/255,50/255) 
fenframe2.BackgroundTransparency=0.3
fenframe2.BorderSizePixel=5
fenframe2.BorderColor3=Color3.new(1,1,1) 
fenframe2.Size=UDim2.new(0.05, 0, 0.1, 0)
fenframe2.Position=UDim2.new(0.425,0,0.7,0)
fenframe2.Text="C"
fenframe2.TextWrapped=true
fenframe2.FontSize=7
fenframe2.TextColor3=Color3.new(1,1,1)
local fenframe2a=it("TextLabel") 
fenframe2a.Parent=fengui
fenframe2a.BackgroundColor3=Color3.new(10/255,10/255,10/255) 
fenframe2a.BackgroundTransparency=0.3
fenframe2a.BorderSizePixel=5
fenframe2a.BorderColor3=Color3.new(1,1,1) 
fenframe2a.Size=UDim2.new(0.05, 0, 0.1, 0)
fenframe2a.Position=UDim2.new(0.425,0,0.7,0)
fenframe2a.Text=""
local fenframe3=it("TextLabel") 
fenframe3.Parent=fengui
fenframe3.BackgroundColor3=Color3.new(50/255,50/255,50/255) 
fenframe3.BackgroundTransparency=0.3
fenframe3.BorderSizePixel=5
fenframe3.BorderColor3=Color3.new(1,1,1) 
fenframe3.Size=UDim2.new(0.05, 0, 0.1, 0)
fenframe3.Position=UDim2.new(0.525,0,0.7,0)
fenframe3.Text="V"
fenframe3.TextWrapped=true
fenframe3.FontSize=7
fenframe3.TextColor3=Color3.new(1,1,1)
local fenframe3a=it("TextLabel") 
fenframe3a.Parent=fengui
fenframe3a.BackgroundColor3=Color3.new(10/255,10/255,10/255) 
fenframe3a.BackgroundTransparency=0.3
fenframe3a.BorderSizePixel=5
fenframe3a.BorderColor3=Color3.new(1,1,1) 
fenframe3a.Size=UDim2.new(0.05, 0, 0.1, 0)
fenframe3a.Position=UDim2.new(0.525,0,0.7,0)
fenframe3a.Text=""
local fenframe4=it("TextLabel") 
fenframe4.Parent=fengui
fenframe4.BackgroundColor3=Color3.new(50/255,50/255,50/255) 
fenframe4.BackgroundTransparency=0.3
fenframe4.BorderSizePixel=5
fenframe4.BorderColor3=Color3.new(1,1,1) 
fenframe4.Size=UDim2.new(0.05, 0, 0.1, 0)
fenframe4.Position=UDim2.new(0.625,0,0.7,0)
fenframe4.Text="B"
fenframe4.TextWrapped=true
fenframe4.FontSize=7
fenframe4.TextColor3=Color3.new(1,1,1)
local fenframe4a=it("TextLabel") 
fenframe4a.Parent=fengui
fenframe4a.BackgroundColor3=Color3.new(10/255,10/255,10/255) 
fenframe4a.BackgroundTransparency=0.3
fenframe4a.BorderSizePixel=5
fenframe4a.BorderColor3=Color3.new(1,1,1) 
fenframe4a.Size=UDim2.new(0.05, 0, 0.1, 0)
fenframe4a.Position=UDim2.new(0.625,0,0.7,0)
fenframe4a.Text=""
 
fenframe1a.Size=UDim2.new(0,0,0.1,0)
fenframe2a.Size=UDim2.new(0,0,0.1,0)
fenframe3a.Size=UDim2.new(0,0,0.1,0)
fenframe4a.Size=UDim2.new(0,0,0.1,0)
 
local modelzorz = Instance.new("Model") 
modelzorz.Parent = Character 
modelzorz.Name = "Shogai" 
 
local prt1=part(1,modelzorz,0,0,Torso.BrickColor,"Part1",vt(1,1,1))
local prt2=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part2",vt(1,1,1))
local prt3=part(1,modelzorz,0,0,BrickColor.new("Black"),"Part3",vt(1,1,1))
local prt4=part(1,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part4",vt(1,1,1))
local prt5=part(1,modelzorz,0.2,0,BrickColor.new("White"),"Part5",vt(1,1,1))
local prt6=part(1,modelzorz,0.2,0,BrickColor.new("White"),"Part6",vt(1,1,1))
local prt8=part(0,modelzorz,0,1,BrickColor.new("Black"),"Part8",vt(1,1,1))
 
local msh1=mesh("CylinderMesh",prt1,"","",vt(0,0,0),vt(0.5,0.5,0.5))
local msh2=mesh("CylinderMesh",prt2,"","",vt(0,0,0),vt(0.49,0.8,0.49))
local msh3=mesh("SpecialMesh",prt3,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(1,1,1))
local msh4=mesh("SpecialMesh",prt4,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(1,0.5,0.5))
local msh5=mesh("SpecialMesh",prt5,"Wedge","",vt(0,0,0),vt(0.1,1.4,0.4))
local msh6=mesh("SpecialMesh",prt6,"Wedge","",vt(0,0,0),vt(0.1,1.4,0.4))
local msh8=mesh("SpecialMesh",prt8,"Sphere","",vt(0,0,0),vt(1.5,1.5,1.5))
 
local wld1=weld(prt1,prt1,Torso,euler(0,0,-2)*cf(-1,0.8,-0.5))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0,0))
local wld3=weld(prt3,prt3,prt2,euler(3.14,0,0)*cf(0,0.5,0))
local wld4=weld(prt4,prt4,prt2,euler(0,0,0)*cf(0,-0.5,0))
local wld5=weld(prt5,prt5,prt4,euler(0,1.57,0)*cf(-0.2,-0.9,0))
local wld6=weld(prt6,prt6,prt4,euler(0,-1.57,0)*cf(0.2,-0.9,0))
local wld8=weld(prt8,prt8,LeftArm,euler(0,0,0)*cf(0,0.8,0))
 
numb=-0.3
numb2=0.5
for i=1,5 do
local prt7=part(1,modelzorz,0,0,BrickColor.new("Really black"),"Part7",vt(1,1,1))
local msh7=mesh("SpecialMesh",prt7,"FileMesh","http://www.roblox.com/asset/?id=9756362",vt(0,0,0),vt(numb2,0.2,0.2))
local wld7=weld(prt7,prt7,prt4,euler(0,0,0)*cf(0,numb,0))
numb=numb-0.3
numb2=numb2-0.1
end
 
coroutine.resume(coroutine.create(function(Part,Part2)
while Part2.Parent~=nil do
swait()
if cloaked==false then
for i=1,0.1,-0.01 do
swait()
Part2.Transparency=i
if math.random(1,10)==1 then
local prt2=part(3,workspace,0,0,BrickColor.new("Black"),"Effect",vt(0.5,0.5,0.5))
prt2.Anchored=true
prt2.CFrame=Part2.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
game:GetService("Debris"):AddItem(prt2,2)
coroutine.resume(coroutine.create(function(pPart,Mesh) 
for i=0,1,0.1 do
swait()
pPart.CFrame=pPart.CFrame*cf(0,0.5,0)
end
pPart.Parent=nil
end),prt2,msh2)
end
end
for i=0.1,1,0.01 do
swait()
Part2.Transparency=i
if math.random(1,10)==1 then
local prt2=part(3,workspace,0,0,BrickColor.new("Black"),"Effect",vt(0.5,0.5,0.5))
prt2.Anchored=true
prt2.CFrame=Part2.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
game:GetService("Debris"):AddItem(prt2,2)
coroutine.resume(coroutine.create(function(pPart,Mesh) 
for i=0,1,0.1 do
swait()
pPart.CFrame=pPart.CFrame*cf(0,0.5,0)
end
pPart.Parent=nil
end),prt2,msh2)
end
end
end
end
end),LeftArm,prt8)
 
local hitbox=part(1,nil,0,1,BrickColor.new("Black"),"Hitbox",vt(1,1,1))
hitbox.Anchored=false
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Shogai" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
local Bg = it("BodyGyro") 
Bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
Bg.P = 20e+003 
Bg.Parent = nil 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
swait(6) 
sou:Remove() 
end))
end
 
function hideanim() 
equipped=false
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
wld1.Part1=Torso
wld1.C0=euler(0,0,-2)*cf(-1,0.8,-0.5)
end 
 
function equipanim() 
equipped=true
--[[Torso.Neck.C0=necko*euler(0,0,1)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1)
RW.C0=cf(1.5,0.5,0)*euler(-0.2,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0.5,0.2,0)*euler(0,0.5,-0.5)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0.3,0)*euler(0.2,1,0)
LH.C1=LHC1
wld1.Part1=RightArm
wld1.C0=euler(-1.57,0,1.57)*cf(0,1,0)]]
Torso.Neck.C0=necko*euler(0,0,1.4)
Torso.Neck.C1=necko2
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1.4)
RW.C0=cf(1.5,0.5,0)*euler(-0.6,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0.5,0.2,0)*euler(0,0.5,-0.5)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0.3,0)*euler(0.2,1,0)
LH.C1=LHC1
wld1.Part1=RightArm
wld1.C0=euler(-1.57,0,1.57)*cf(0,1,0)
end 
 
function attackone()
attack=true
--so("http://www.roblox.com/Asset?ID=92597369",prt5,1,2) 
so("http://roblox.com/asset/?id=10209640",prt5,100,1.5) 
local LastPoint=prt5.CFrame*CFrame.new(0,prt5.Size.Y/1.5,0)
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,0,"Normal",hitbox,0.2) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(1,2,1)
hitbox.CFrame=prt5.CFrame
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,1-2.3*i)
RootJoint.C0=RootCF*cf(0,0,-0.5+0.5*i)*euler(0,0,-1+2.3*i)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(-0.2+0.4*i,0,0.5+1*i)
RW.C1=cf(0,0.5,0)*euler(-2.5*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2*i,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0.5-0.5*i,0.2-0.2*i,0)*euler(0,0.5-0.5*i,-0.5+0.5*i)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0.3-0.3*i,0)*euler(0.2-0.2*i,1-1*i,0)
LH.C1=LHC1
local Point=prt5.CFrame*CFrame.new(0,prt5.Size.Y/1.5,0)
effect("White",0.5,LastPoint,Point)
LastPoint=Point
hitbox.CFrame=prt5.CFrame
end
con1:disconnect()
hitbox.Parent=nil
numb=2
for i=0,1,0.2 do
Torso.Neck.C0=necko*euler(0,0,-1.3-0.2*(i*numb))
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,1.3+0.2*(i*numb))
RW.C0=cf(1,0.5,-0.5)*euler(0.2,0,1.5)
RW.C1=cf(0,0.5,0)*euler(-2.5-0.2*(i*numb),0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,0,0)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0,0)*euler(0,0,0)
LH.C1=LHC1
local Point=prt5.CFrame*CFrame.new(0,prt5.Size.Y/1.5,0)
effect("White",0.5,LastPoint,Point)
LastPoint=Point
numb=numb-0.2
swait()
end
attack=false
end
 
function attacktwo()
attack=true
so("http://roblox.com/asset/?id=10209640",prt5,1,1.2) 
local LastPoint=prt5.CFrame*CFrame.new(0,prt5.Size.Y/1.5,0)
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,10,20,0,"Normal",hitbox,0.2) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(1,2,1)
hitbox.CFrame=prt5.CFrame
for i=0,1,0.2 do
swait()
Torso.Neck.C0=necko*euler(0,0,-1.5+2.5*i)
RootJoint.C0=RootCF*cf(0,0,-0.5*i)*euler(0,0,1.5-2.5*i)
RW.C0=cf(1+0.5*i,0.5,-0.5+0.5*i)*euler(0.2-0.2*i,0,1.5)
RW.C1=cf(0,0.5,0)*euler(-2.7+2.7*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-0.2)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0.5*i,0.2*i,0)*euler(0,0.5*i,-0.5*i)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0.3*i,0)*euler(0.2*i,1*i,0)
LH.C1=LHC1
local Point=prt5.CFrame*CFrame.new(0,prt5.Size.Y/1.5,0)
effect("White",0.5,LastPoint,Point)
LastPoint=Point
hitbox.CFrame=prt5.CFrame
end
con1:disconnect()
hitbox.Parent=nil
numb=2
for i=0,1,0.2 do
swait()
numb=numb-0.2
end
attack=false
end
 
function attackthree()
attack=true
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,1-1*i)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1+1*i)
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(1.57*i,0,1.5-2.1*i)
RW.C1=cf(0,0.5,0)*euler(0,-1.57*i,0)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(-0.2+1.77*i,0,-0.2+0.8*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0.5,0.2,0)*euler(0,0.5-0.5*i,-0.5)
RH.C1=RHC1
LH.C0=LHC0*cf(-0.5*i,0.3,0)*euler(0.2,1-1*i,0.5*i)
LH.C1=LHC1*euler(0.5*i,0,0)
wld1.C0=euler(-1.57,0.8*i,1.57)*cf(0,1,0)
end
Humanoid.WalkSpeed=0
swait(0.1)
NewCF=Torso.CFrame*cf(0,0.5,-1.3)*euler(1.57,0,0)
local pprt=part(3,workspace,0,1,BrickColor.new("White"),"Effect",vt(0.5,0.5,0.5))
pprt.Anchored=true
pprt.CFrame=NewCF
game:GetService("Debris"):AddItem(pprt,2)
so("http://roblox.com/asset/?id=160772554",pprt,1,1) 
--so("http://roblox.com/asset/?id=138120853",pprt,1,1.3) 
MagicCircle2(BrickColor.new("Black"),NewCF*cf(0,-0.8,0),6,1,6,0.05,0,0.05,0.03)
SkullEffect(BrickColor.new("White"),NewCF*cf(0,-1.2,0)*euler(-1.57,0,0),5,5,5,0.03)
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,20,25,30,"Normal",RootPart,0.5) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(2,3,2)
for i=0,1,0.2 do
swait()
hitbox.CFrame=NewCF*cf(0,-1,0)
end
con1:disconnect()
hitbox.Parent=nil
swait(5)
Humanoid.WalkSpeed=16
attack=false
end
 
function heavyattackone()
attack=true
Humanoid.WalkSpeed=0
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0.4*i,1.4+0.17*i)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(-0.2*i,0,-1.4-0.17*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.6,0,0.5+0.2*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.57*i,0,-0.2+1*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0.5,0.2,0)*euler(-0.3*i,0.5,-0.5)
RH.C1=RHC1
LH.C0=LHC0*cf(0.5*i,0.3+0.5*i,0)*euler(0.2-0.1*i,1+0.57*i,0)
LH.C1=LHC1
end
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0.4-0.2*i,1.57)
RootJoint.C0=RootCF*cf(0,0,-0.5-0.1*i)*euler(-0.2+0.3*i,0,-1.57)
RW.C0=cf(1.5,0.5,0)*euler(-0.6+0.3*i,0,0.7+0.5*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.57,0,0.8-2.37*i)
LW.C1=cf(0,0.5,0)*euler(0.5*i,0,0)
RH.C0=RHC0*cf(0.5,0.2,0)*euler(-0.3+0.3*i,0.5-0.4*i,-0.5)
RH.C1=RHC1
LH.C0=LHC0*cf(0.5,0.3+0.5-0.5*i,0)*euler(0.1-0.6*i,1.57,0)
LH.C1=LHC1
end
refprt=part(1,workspace,0,1,BrickColor.new("Black"),"ReferencePart",vt(1,1,1))
refprt.Anchored=true
refprt.CFrame=LeftLeg.CFrame*cf(0,-0.6,0)
so("http://roblox.com/asset/?id=161006069",refprt,1,0.5) 
game:GetService("Debris"):AddItem(refprt,1)
hit,pos = rayCast(refprt.Position, (CFrame.new(LeftLeg.Position,LeftLeg.Position - Vector3.new(0,1,0))).lookVector, 1000, Character)
if hit ~= nil then
floor = true
MagicCircle2(BrickColor.new("Black"),CFrame.new(pos),1,0.5,1,0.05,0,0.05,0.01)
refprt=part(1,workspace,0,1,BrickColor.new("Black"),"ReferencePart",vt(3,3,3))
refprt.Anchored=true
refprt.CFrame=cf(pos)
game:GetService("Debris"):AddItem(refprt,5)
coroutine.resume(coroutine.create(function(Part)
for i=1,30 do
swait()
MagicBlock(BrickColor.new("Really black"),Part.CFrame,1,1,1,0.2,0.2,0.2,0.05)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=20 and c.Name~=Player.Name then 
refprt2=part(3,workspace,0,0.5,BrickColor.new("Black"),"Effect",vt(0.2,0.2,0.2))
refprt2.Anchored=true
refprt2.CFrame=CFrame.new((Part.Position+head.Position)/2,head.Position)*angles(1.57,0,0) 
local mag=(Part.Position-head.Position).magnitude 
local refmsh2=mesh("CylinderMesh",refprt2,"","",vt(0,0,0),vt(0.5,mag*5,0.5))
game:GetService("Debris"):AddItem(refprt2,0.1)
end
end
end
end
end
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=20 and c.Name~=Player.Name then 
Damagefunc(head,5,5,0,"Normal",RootPart,.2) 
so("http://roblox.com/asset/?id=161006069",head,0.6,1) 
MagicBlock2(BrickColor.new("Really black"),head.CFrame,head,1,1,1,0.2,0.2,0.2,0.01)
prop=Instance.new("RocketPropulsion")
prop.MaxSpeed=5000
prop.CartoonFactor=0
prop.MaxThrust=10000
prop.Parent=head
prop.Target=Part
prop.ThrustD=1.5
prop.TurnD=0
prop.TurnP=0
prop:Fire()
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(Humanoid)
swait(50)
Humanoid.PlatformStand=false
end),hum)
game:GetService("Debris"):AddItem(prop,2)
end
end
end
end
end),refprt)
end
swait(10)
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(-0.4*i,0.2-0.2*i,1.57-1.57*i)
RootJoint.C0=RootCF*cf(0,0,-0.6+0.6*i)*euler(0.1-0.1*i,0,-1.57+1.57*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.3,0,1.2)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.57,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(0.5-2.07*i,0,0)
RH.C0=RHC0*cf(0.5-0.5*i,0.2-0.2*i,0)*euler(0,0.1-0.1*i,-0.5+0.5*i)
RH.C1=RHC1
LH.C0=LHC0*cf(0.5-0.5*i,0.3-0.3*i,0)*euler(-0.5+0.5*i,1.57-1.57*i,0)
LH.C1=LHC1
end
swait(30)
Humanoid.WalkSpeed=16
attack=false
end
 
function heavyattacktwo()
attack=true
Humanoid.WalkSpeed=0
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(-0.4+0.6*i,0,0)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,0)
RW.C0=cf(1.5,0.5,0)*euler(-0.3+0.3*i,0,1.2+0.37*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(1.57-1.57*i,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(-1.57+1.57*i,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,0,0)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0,0)*euler(0,0,0)
LH.C1=LHC1
end
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0.2,0,0)
RootJoint.C0=RootCF*cf(0,0,-1.8*i)*euler(0.5*i,0,0)
RW.C0=cf(1.5-0.3*i,0.5,-0.3*i)*euler(0,2*i,1.57)
RW.C1=cf(0,0.5,0)*euler(0,0,0.4*i)
LW.C0=cf(-1.5+0.3*i,0.5,-0.3*i)*euler(0,-2*i,-1.57)
LW.C1=cf(0,0.5,0)*euler(0,0,-0.4*i)
RH.C0=RHC0*cf(0.5*i,1*i,0.2*i)*euler(0,0,0.2*i)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0,0)*euler(0,0,1*i)
LH.C1=LHC1
end
--[[refprt=part(1,workspace,0,0.5,BrickColor.new("White"),"ReferencePart",vt(1,1,1))
refprt.Anchored=true
refprt.CFrame=RootPart.CFrame*cf(0,0,-1)
game:GetService("Debris"):AddItem(refprt,1)
hit,pos = rayCast(refprt.Position, (CFrame.new(refprt.Position,refprt.Position - Vector3.new(0,1,0))).lookVector, 1000, Character)
if hit ~= nil then
floor = true
refprt=part(1,workspace,0,0.5,BrickColor.new("Black"),"ReferencePart",vt(3,3,3))
refprt.Anchored=true
refprt.CFrame=cf(pos)
game:GetService("Debris"):AddItem(refprt,3)
MagicCircle(BrickColor.new("Black"),refprt.CFrame,2,4,2,0.2,1,0.2,0.02)
MagicCircle(BrickColor.new("White"),refprt.CFrame,2,4,2,0.1,0.5,0.1,0.02)
so("http://roblox.com/asset/?id=161006182",refprt,1,0.6) 
end]]
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,20,25,10,"Normal",RootPart,0.5) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(2,7,2)
for i=1,3 do
refprt=part(1,workspace,0,1,BrickColor.new("White"),"ReferencePart",vt(1,1,1))
refprt.Anchored=true
refprt.CFrame=RootPart.CFrame*cf(0,0,-1*(i*2))
game:GetService("Debris"):AddItem(refprt,3)
hit,pos = rayCast(refprt.Position, (CFrame.new(refprt.Position,refprt.Position - Vector3.new(0,1,0))).lookVector, 1000, Character)
if hit ~= nil then
floor = true
refprt=part(1,workspace,0,1,BrickColor.new("Black"),"ReferencePart",vt(0.1,0.1,0.1))
refprt.Anchored=true
refprt.CFrame=cf(pos)
game:GetService("Debris"):AddItem(refprt,3)
MagicCircle(BrickColor.new("Black"),refprt.CFrame,2,4,2,0.2,1,0.2,0.02)
MagicCircle(BrickColor.new("White"),refprt.CFrame,2,4,2,0.1,0.5,0.1,0.02)
so("http://roblox.com/asset/?id=161006182",refprt,1,0.6) 
coroutine.resume(coroutine.create(function(Part)
hitbox.Parent=modelzorz
for i=1,10 do
hitbox.CFrame=Part.CFrame
swait()
end
hitbox.Parent=nil
end),refprt)
end
swait(20)
end
con1:disconnect()
hitbox.Parent=nil
swait(20)
Humanoid.WalkSpeed=16
attack=false
end
 
function heavyattackthree()
attack=true
Clone() 
RootPart.CFrame=RootPart.CFrame*cf(0,0,-10)*euler(0,3.14,0)
so("http://www.roblox.com/asset/?id=28144425",prt5,1,1) 
local Point=prt5.CFrame*CFrame.new(0,prt5.Size.Y/1.5,0)
effect("Black",0.5,LastPoint,Point)
LastPoint=Point
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,20,50,math.random(20,50),"Knockdown",hitbox,1) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(3,6,3)
hitbox.CFrame=prt5.CFrame
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0.2,0,0)
RootJoint.C0=RootCF*cf(0,0,-1.8+1.8*i)*euler(0.5-0.5*i,0,1.57*i)
RW.C0=cf(1.2+0.3*i,0.5,-0.3+0.3*i)*euler(0,2-2*i,1.57)
RW.C1=cf(0,0.5,0)*euler(-1*i,1.57*i,0.4-0.4*i)
LW.C0=cf(-1.2-0.3*i,0.5,-0.3+0.3*i)*euler(0,-2+2*i,-1.57)
LW.C1=cf(0,0.5,0)*euler(0,0,-0.4+0.4*i)
RH.C0=RHC0*cf(0.5-0.5*i,1-1*i,0.2-0.2*i)*euler(0,0,0.2-0.2*i)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0,0)*euler(0,0,1-1*i)
LH.C1=LHC1
local Point=prt5.CFrame*CFrame.new(0,prt5.Size.Y/1.5,0)
effect("Black",0,LastPoint,Point)
LastPoint=Point
MagicBlock(BrickColor.new("Black"),prt5.CFrame*cf(0,2,0),1,1,1,0.4,0.4,0.4,0.05)
hitbox.CFrame=prt5.CFrame
end
numb=2
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0.2,0,0)
RootJoint.C0=RootCF*cf(0,0,0)*euler(0,0,1.57)
RW.C0=cf(1.5,0.5,0)*euler(0,0,1.57)
RW.C1=cf(0,0.5,0)*euler(-1-0.2*i*numb,1.57,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
local Point=prt5.CFrame*CFrame.new(0,prt5.Size.Y/1.5,0)
effect("Black",0,LastPoint,Point)
LastPoint=Point
hitbox.CFrame=prt5.CFrame
numb=numb-0.1
end
con1:disconnect()
hitbox.Parent=nil
swait(50)
attack=false
end
 
function DarkDash()
attack=true
Clone() 
Torso.Velocity=Torso.Velocity*10
MagicBlock3(BrickColor.new("Black"),Torso.CFrame,RootPart,2,2,2,0.5,0.5,0.5,0.05)
attack=false
end
 
function Gash()
attack=true
so("http://www.roblox.com/asset/?id=28144425",prt5,1,1) 
so("http://roblox.com/asset/?id=10209640",prt5,1,1.2) 
local Point=prt5.CFrame*CFrame.new(0,prt5.Size.Y/1.5,0)
LastPoint=Point
bodvel=it("BodyVelocity")
bodvel.Parent=RootPart
bodvel.maxForce=vt(4e+005,4e+005,4e+005)*1
bodvel.velocity=RootPart.CFrame.lookVector*30
con1=hitbox.Touched:connect(function(hit) Damagefunc(hit,20,40,math.random(20,30),"Knockdown",hitbox,.7) end) 
hitbox.Parent=modelzorz
hitbox.Size=vt(3,6,3)
hitbox.CFrame=prt5.CFrame
for i=0,1,0.05 do
swait()
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1.4+6.28*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.6+0.6*i,0,0.5+1.07*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
local Point=prt5.CFrame*CFrame.new(0,prt5.Size.Y/1.5,0)
effect("Black",0,LastPoint,Point)
LastPoint=Point
MagicBlock(BrickColor.new("Black"),prt5.CFrame*cf(0,2,0),1,1,1,0.4,0.4,0.4,0.05)
hitbox.CFrame=prt5.CFrame
end
so("http://www.roblox.com/asset/?id=28144425",prt5,1,1) 
so("http://roblox.com/asset/?id=10209640",prt5,1,1.2) 
for i=0,1,0.05 do
swait()
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1.4+6.28*i)
RW.C0=cf(1.5,0.5,0)*euler(0,0,1.57)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
local Point=prt5.CFrame*CFrame.new(0,prt5.Size.Y/1.5,0)
effect("Black",0,LastPoint,Point)
LastPoint=Point
MagicBlock(BrickColor.new("Black"),prt5.CFrame*cf(0,2,0),1,1,1,0.4,0.4,0.4,0.05)
hitbox.CFrame=prt5.CFrame
end
bodvel.Parent=nil
for i=0,1,0.1 do
swait()
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1.4)
RW.C0=cf(1.5,0.5,0)*euler(-0.6*i,0,1.57-1.07*i)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
end
con1:disconnect()
hitbox.Parent=nil
attack=false
end
 
function Torment()
attack=true
Humanoid.WalkSpeed=0
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,1.4+0.17*i)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1.4-0.17*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.6,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.2-1.37*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
hit,pos = rayCast(RightArm.Position, Head.CFrame.lookVector, 1000, Character)
print(hit)
local efprt=part(3,modelzorz,0,0.5,BrickColor.new("Black"),"Effect",vt(0.2,0.2,0.2))
efprt.Anchored=true
game:GetService("Debris"):AddItem(efprt,3)
local efmsh=mesh("CylinderMesh",efprt,"","",vt(0,0,0),vt(1,1,1))
efprt.CFrame=CFrame.new((LeftArm.Position+pos)/2,pos)*angles(1.57,0,0) 
local mag=(LeftArm.Position-pos).magnitude 
efmsh.Scale=vt(0.5,mag*5,0.5)
coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,0.05 do
swait()
Mesh.Scale=Mesh.Scale+vt(0.5,0,0.5)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
end),efprt,efmsh)
if hit~=nil then
so("http://roblox.com/asset/?id=2974249",hit,1,0.6) 
MagicBlock(BrickColor.new("Black"),cf(pos),1,1,1,1,1,1,0.05)
Damagefunc(hit,5,10,math.random(10,20),"Knockdown",RootPart,1)
if hit.Parent:findFirstChild("Torso")~=nil then
coroutine.resume(coroutine.create(function(Model)
if Model:findFirstChild("Humanoid")~=nil then
Hum=Model.Humanoid
for i=1,400 do
if Hum.WalkSpeed>=9 then
Hum.WalkSpeed=9
end
swait(0.1)
end
print("end slow")
Hum.WalkSpeed=16
end
end),hit.Parent)
for i=1,4 do
local skull=part(3,hit.Parent,0,0,BrickColor.new("White"),"Effect",vt(0.2,0.2,0.2))
game:GetService("Debris"):AddItem(skull,10)
local skullmsh=mesh("SpecialMesh",skull,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(3,3,3))
local skullwld=weld(skull,skull,hit.Parent.Torso,euler(0,3.14,0)*cf(0,math.random(-2,1)+math.random(),3)*euler(0,math.random(-50,50),0))
coroutine.resume(coroutine.create(function(Part,Hitted)
tim=math.random(100,300)
swait(tim)
MagicBlock(BrickColor.new("Black"),Part.CFrame,1,1,1,0.2,0.2,0.2,0.01)
Damagefunc(Hitted,5,10,0,"Normal",RootPart,0)
so("http://roblox.com/asset/?id=138120853",Hitted,1,1.3) 
swait()
Part.Parent=nil
end),skull,hit)
coroutine.resume(coroutine.create(function(Part,Weld)
local num=math.random(90,200)/1000
print(num)
if i==2 or i==3 then
num=-0.1
end
while Part.Parent~=nil do
swait()
Weld.C0=Weld.C0*euler(0,num,0)
end
end),skull,skullwld)
end
end
end
swait(30)
if hit~=nil then
Clone()
Torso.CFrame=cf(hit.Position)*cf(0,3,0)
end
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0,0,1.57-0.17*i)
RootJoint.C0=RootCF*cf(0,0,-0.5)*euler(0,0,-1.57+0.17*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.6,0,0.5)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-1.57+1.37*i)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
end
Humanoid.WalkSpeed=16
attack=false
end
 
function Requiem()
attack=true
Humanoid.WalkSpeed=0
so("http://www.roblox.com/asset/?id=2101137",RootPart,1,1) 
MagicCircle2(BrickColor.new("Black"),RootPart.CFrame*cf(0,-2,0),60,1,60,0.1,0,0.1,0.005)
for i=0,1,0.1 do
swait()
Torso.Neck.C0=necko*euler(0.2*i,0,1.4-1.4*i)
RootJoint.C0=RootCF*cf(0,0,-0.5+0.5*i)*euler(0,0,-1.4+1.4*i)
RW.C0=cf(1.5,0.5,0)*euler(-0.6+0.6*i,0,0.5+1.07*i)
RW.C1=cf(0,0.5,0)*euler(0.5*i,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-0.2-1.37*i)
LW.C1=cf(0,0.5,0)*euler(0.5*i,0,0)
RH.C0=RHC0*cf(0.5-0.5*i,0.2-0.2*i,0)*euler(0,0.5-0.5*i,-0.5+0.5*i)
RH.C1=RHC1
LH.C0=LHC0*cf(0,0.3-0.3*i,0)*euler(0.2-0.2*i,1-1*i,0)
LH.C1=LHC1
MagicBlock(BrickColor.new("Black"),RootPart.CFrame*cf(math.random(-10,10),-2,math.random(-10,10)),1,1,1,0.5,0.5,0.5,0.1)
if i%2==0 then
WaveEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,-2,0),20,10,20,1,1,1,0.1)
end
end
numb=2
for i=0,1,0.1 do
swait()
RW.C0=cf(1.5,0.5,0)*euler(0,0,1.57)
RW.C1=cf(0,0.5,0)*euler(0.5+0.2*i*numb,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(0,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(0.5+0.2*i*numb,0,0)
MagicBlock(BrickColor.new("Black"),RootPart.CFrame*cf(math.random(-10,10),-2,math.random(-10,10)),1,1,1,0.5,0.5,0.5,0.1)
if i%2==0 then
WaveEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,-2,0),20,10,20,1,1,1,0.1)
end
numb=numb-0.1
end
for i=0,1,0.1 do
swait()
RW.C0=cf(1.5-0.5*i,0.5,-0.5*i)*euler(0,0,1.57)
RW.C1=cf(0,0.5,0)*euler(0.7-3*i,0,0)
LW.C0=cf(-1.5+0.5*i,0.5,-0.5*i)*euler(0,0,-1.57)
LW.C1=cf(0,0.5,0)*euler(0.7-3*i,0,0)
MagicBlock(BrickColor.new("Black"),RootPart.CFrame*cf(math.random(-10,10),-2,math.random(-10,10)),1,1,1,0.5,0.5,0.5,0.1)
if i%2==0 then
WaveEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,-2,0),20,10,20,1,1,1,0.1)
end
end
so("http://roblox.com/asset/?id=160772554",RootPart,1,0.6) 
MagicWaveThing(BrickColor.new("Black"),RootPart.CFrame*cf(0,-2,0),20,30,20,0.1,0,0.1,0.01)
MagicBlock(BrickColor.new("Black"),RootPart.CFrame,60,60,60,-1,-1,-1,0.01)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-RootPart.Position
local mag=targ.magnitude
if mag<=20 and c.Name~=Player.Name then 
Damagefunc(head,30,40,-50,"Knockdown",RootPart,0)
end
end
end
end
Clone()
Cloak()
Humanoid.WalkSpeed=16
attack=false
coroutine.resume(coroutine.create(function()
while attack==false do
swait()
end
UnCloak()
end))
end
 
function Clone() 
so("http://roblox.com/asset/?id=2767090",Torso,1,1) 
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                        n=v:clone()
                        n:BreakJoints()
                        n.archivable=true
                        n.Anchored=true
                        n.CanCollide=false
                        n.Name="TRAILER"
                        n.BrickColor=BrickColor.new("Really black")
                        n.Parent=workspace
                        n.CFrame=v.CFrame
                        coroutine.resume(coroutine.create(function(ne) for i=1, 80 do ne:BreakJoints() ne.Transparency=i/80 wait() end ne.Parent=nil end),n)
                elseif v.className=="Hat" then
                        n=v.Handle:clone()
                        n:BreakJoints()
                        n.archivable=true
                        n.Anchored=true
                        n.CanCollide=false
                        n.Name="TRAILER"
                        n.BrickColor=BrickColor.new("Really black")
                        n.Parent=workspace
                        n.CFrame=v.Handle.CFrame
                        coroutine.resume(coroutine.create(function(ne) for i=1, 80 do ne:BreakJoints() ne.Transparency=i/80 wait() end ne.Parent=nil end),n)
                end
        end
        for _,v in pairs(modelzorz:children()) do
                if v.className=="Part" then
                        n=v:clone()
                        n:BreakJoints()
                        n.archivable=true
                        n.Anchored=true
                        n.CanCollide=false
                        n.Name="TRAILER"
                        n.BrickColor=BrickColor.new("Really black")
                        n.Parent=workspace
                        n.CFrame=v.CFrame
                        coroutine.resume(coroutine.create(function(ne) for i=1, 80 do ne:BreakJoints() ne.Transparency=i/80 wait() end ne.Parent=nil end),n)
                end
        end
end 
 
function Cloak()
Face.Parent=nil
cloaked=true
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency+0.1
                end
                v.Transparency=1
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.1 do
                wait()
                derp.Transparency=derp.Transparency+0.1
                end
                derp.Transparency=1
                end),hatp)
                end
        end
        for _,v in pairs(modelzorz:children()) do
                if v.className=="Part" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency+0.1
                end
                v.Transparency=1
                end))
                end
        end
end
 
function UnCloak()
so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
Face.Parent=Head 
cloaked=false
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.1 do
                wait()
                derp.Transparency=derp.Transparency-0.1
                end
                derp.Transparency=0
                end),hatp)
                end
        end
        for _,v in pairs(modelzorz:children()) do
                if v.className=="Part" and v.Name~="Hitbox" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                v.Transparency=0
                end
        end
end
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
local Point=prt5.CFrame*CFrame.new(0,prt5.Size.Y/7,0)
LastPoint=Point
function effect(Color,Ref,LP,P1,returnn)
local effectsmsh = Instance.new("BlockMesh")
effectsmsh.Scale = Vector3.new(0.2,1,0.2)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.5,1,0.5)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new(Color)
effectsg.Reflectance = Ref
local point1 = P1
local mg = (LP.p - point1.p).magnitude
effectsg.Size = Vector3.new(0.5,mg,0.5)
effectsg.CFrame = CFrame.new((LP.p+point1.p)/2,point1.p) * CFrame.Angles(math.rad(90),0,0)
effectsmsh.Scale = Vector3.new(0.2,1,0.2)
game:GetService("Debris"):AddItem(effectsg,2)
if returnn then return effectsg end
coroutine.resume(coroutine.create(function(Part,Mesh)
if not returnn then
for i = 0 , 1 , 0.1 do
swait()
Part.Transparency = 1*i
Mesh.Scale = Vector3.new(0.1-0.1*i,1,0.1-0.1*i)
end
swait()
Part.Parent = nil
end
end),effectsg,effectsmsh)
end
 
function SkullEffect(brickcolor,cframe,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(x1,y1,z1))
--http://www.roblox.com/asset/?id=4770560
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
coroutine.resume(coroutine.create(function(Part,Mesh,TehCF) 
for i=0,1,0.2 do
swait()
Part.CFrame=CF*cf(0,0,-0.4)
end
for i=0,1,delay do
swait()
--Part.CFrame=CF*cf((math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5)
Mesh.Scale=Mesh.Scale
end
for i=0,1,0.1 do
swait()
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,CF)
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicBlock2(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,euler(0,0,0)*cf(0,0,0))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
swait()
Weld.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicBlock3(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,euler(0,0,0)*cf(0,0,0))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
swait()
Weld.C0=euler(i*20,0,0)
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
local prt2=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt2.Anchored=true
prt2.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
game:GetService("Debris"):AddItem(prt2,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
swait()
Part.CFrame=Part.CFrame*cf(0,0.5,0)
end
Part.Parent=nil
end),prt2,msh2)
end
for i=0,1,delay*2 do
swait()
Part.CFrame=Part.CFrame
Mesh.Scale=vt((x1+x3)-(x1+x3)*i,(y1+y3)-(y1+y3)*i,(z1+z3)-(z1+z3)*i)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicRing(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(x2,y2,z2)
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.03 do
swait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()-math.random()
rand1=math.random()/5
for i=0,1,rand1 do
swait()
CF=CF*cf(0,1,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end
 
function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame*euler(0,0.7,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame*cf(0,y3,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
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
 
function findNearestTorso(pos)
        local list = game:service("Workspace"):children()
        local torso = nil
        local dist = 50
        local temp = nil
        local human = nil
        local temp2 = nil
        for x = 1, #list do
                temp2 = list[x]
                if (temp2.className == "Model") and (temp2 ~= Character) and (temp2.Name ~= "Fenrier") then
                        temp = temp2:findFirstChild("Torso")
                        human = temp2:findFirstChild("Humanoid")
                        if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
                                if (temp.Position - pos).magnitude < dist then
                                        torso = temp
                                        dist = (temp.Position - pos).magnitude
                                end
                        end
                end
        end
        return torso
end
 
Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,HitSound,HitPitch)
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        if h.MaxHealth>=math.huge then
        hit:BreakJoints()
        end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                if HitSound~=nil and HitPitch~=nil then
                so(HitSound,hit,1,HitPitch) 
                end
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                block.Value=block.Value-1
                print(block.Value)
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
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,20,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Freeze" then
                BodPos=Instance.new("BodyPosition")
                BodPos.P=50000
                BodPos.D=1000
                BodPos.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                BodPos.position=hit.Parent.Torso.Position
                BodPos.Parent=hit.Parent.Torso
                BodGy = it("BodyGyro") 
                BodGy.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
                BodGy.P = 20e+003 
                BodGy.Parent=hit.Parent.Torso
                BodGy.cframe = hit.Parent.Torso.CFrame
                hit.Parent.Torso.Anchored=true
                coroutine.resume(coroutine.create(function(Part) 
                swait(1.5)
                Part.Anchored=false
                end),hit.Parent.Torso)
                game:GetService("Debris"):AddItem(BodPos,3)
                game:GetService("Debris"):AddItem(BodGy,3)
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
 
combo=0
function ob1d(mouse) 
if attack==true then return end
hold=true
if combo==1 then
combo=2
attacktwo()
elseif combo==2 then
combo=3
attackthree()
elseif combo==3 then
combo=4
elseif combo==5 then
combo=6
heavyattacktwo()
elseif combo==6 then
combo=7
heavyattackthree()
elseif combo==7 then
combo=8
end
if combo==0 then
if holdz==true then
combo=5
heavyattackone()
else
combo=1
attackone()
end
end
coroutine.resume(coroutine.create(function() 
if combo==3 then
swait(10)
else
swait(10)
end
if attack==false then
combo=0
equipanim() 
end
end))
end 
 
function ob1u(mouse) 
hold = false 
end 
 
buttonhold = false 
 
eul=0
holdz=false
function key(key) 
if attack==true then return end
if key=="z" then
holdz=true
end
if key=="x" and xenabled==true then
xenabled=false
coroutine.resume(coroutine.create(function()
for i=1,0,-0.01 do
swait()
fenframe1a.Size=UDim2.new(0.05*i,0,0.1,0)
end
xenabled=true
fenframe1a.Size=UDim2.new(0,0,0.1,0)
end))
DarkDash()
end
if key=="c" and cenabled==true then
cenabled=false
coroutine.resume(coroutine.create(function()
for i=1,0,-0.005 do
swait()
fenframe2a.Size=UDim2.new(0.05*i,0,0.1,0)
end
cenabled=true
fenframe2a.Size=UDim2.new(0,0,0.1,0)
end))
Gash()
end
if key=="v" and venabled==true then
venabled=false
coroutine.resume(coroutine.create(function()
for i=1,0,-0.002 do
swait()
fenframe3a.Size=UDim2.new(0.05*i,0,0.1,0)
end
venabled=true
fenframe3a.Size=UDim2.new(0,0,0.1,0)
end))
Torment()
end
if key=="b" and benabled==true and cloaked==false then
benabled=false
coroutine.resume(coroutine.create(function()
for i=1,0,-0.001 do
swait()
fenframe4a.Size=UDim2.new(0.05*i,0,0.1,0)
end
benabled=true
fenframe4a.Size=UDim2.new(0,0,0.1,0)
end))
Requiem()
end
if key=="f" then
Neck.C0=necko*euler(-0.4,0,-0.2)
RootJoint.C0=RootCF*cf(0,0,-1.5)*euler(0.8,0,0.5)
RW.C0=cf(1.5,0.5,0)*euler(1.4,0,1.57-1.07)
RW.C1=cf(0,0.5,0)*euler(0,0,0)
LW.C0=cf(-1.5,0.5,0)*euler(-0.2,0,-1.57+1.17)
LW.C1=cf(0,0.5,0)*euler(0,0,0)
RH.C0=RHC0*cf(0,0,0)*euler(0,-0.5,-0.5)
LH.C0=LHC0*cf(-0.5,1,0)*euler(0.5,0,-0.5)
end
end 
 
function key2(key) 
if key=="z" then
holdz=false
end
end 
 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
unsheathed = true 
player = Player 
ch = Character 
MMouse = mouse 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
-- 
RW.Name = "Right Shoulder"
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Name = "Left Shoulder"
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
swait(0) 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
print("Shogai loaded.")
 
--[[ 
Copyrighted (C) Fenrier 2014
]] 
