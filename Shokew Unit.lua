Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
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
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
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

	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Heartbeat:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Heartbeat:wait(0)
    end
    end
	    end
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end
	
	
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}

local TrailColor = ("Dark grey")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(TrailColor)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new(TrailColor)
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
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

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
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
                        local c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                local  blocked=false
                local  block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end
                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
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
local rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                local vp=Instance.new("BodyVelocity")
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
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
	            local Targetting = false
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                local  targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                local targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        local debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
        end
end


function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part("Custom",workspace,"SmoothPlastic",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
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
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	Delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

--example: local con = HitboxB.Touched:connect(function(hit) Damagefunc(Hitbox,hit,Dmg,Dmg,math.random(Knockback,Knockback),"Normal",RootPart,.2,1) end) 

HandleA=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","HandleA",Vector3.new(0.400000006, 0.600000024, 1))
HandleAweld=weld(m,Character["Right Arm"],HandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.876270771, -0.000350952148, -0.0871963501, 3.02468436e-007, -0.999996781, -4.86355759e-007, 1.93715664e-007, -4.86354111e-007, 1, -1, -3.02467555e-007, 1.93715522e-007))
mesh("CylinderMesh",HandleA,"","",Vector3.new(0, 0, 0),Vector3.new(0.75999999, 1, 1))
HitboxA=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Toothpaste","HitboxA",Vector3.new(1.00000012, 3.80000019, 0.400000036))
HitboxAweld=weld(m,HandleA,HitboxA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09956372, -1.52587891e-005, 7.62939453e-006, 0.999993563, -3.18323146e-012, -1.94162568e-012, -3.12638804e-012, 1, 0, -1.97004739e-012, 0, 1))
mesh("BlockMesh",HitboxA,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.150000066))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.05311584e-006, -0.599895477, 7.62939453e-006, 0.999993563, -3.18323146e-012, -1.94162568e-012, -3.12638804e-012, 1, 0, -1.97004739e-012, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000036, 1.39999998, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399844766, -3.05175781e-005, 7.62939453e-006, 0.999993563, -3.18323146e-012, -1.94162568e-012, -3.12638804e-012, 1, 0, -1.97004739e-012, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.499806166, 0.799808502, 7.62939453e-006, 0.999993563, -3.18323146e-012, -1.94162568e-012, -3.12638804e-012, 1, 0, -1.97004739e-012, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.420000017, 0.400000006))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399841189, 2.28881836e-005, 0.499961853, 0.999987125, 3.11936617e-007, -1.54066669e-007, 1.39158743e-007, -3.12922936e-007, 0.999996305, 3.11942586e-007, -0.999996305, -4.17230723e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.439999998, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399842381, 2.28881836e-005, -0.68977356, 0.999987125, 3.11936617e-007, -1.54066669e-007, 1.39158743e-007, -3.12922936e-007, 0.999996305, 3.11942586e-007, -0.999996305, -4.17230723e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.420000017, 1.20000005))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399840355, 2.28881836e-005, -0.0999221802, 0.999987125, 3.11936617e-007, -1.54066669e-007, 1.39158743e-007, -3.12922936e-007, 0.999996305, 3.11942586e-007, -0.999996305, -4.17230723e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.499804497, -0.799888611, 7.62939453e-006, 0.999993563, -3.18323146e-012, -1.94162568e-012, -3.12638804e-012, 1, 0, -1.97004739e-012, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.439999998, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399841309, 2.28881836e-005, 0.399986267, 0.999987125, 3.11936617e-007, -1.54066669e-007, 1.39158743e-007, -3.12922936e-007, 0.999996305, 3.11942586e-007, -0.999996305, -4.17230723e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -0.799911499, -0.299885631, 1.70607336e-006, 2.68221839e-007, -1, -2.26939449e-007, 1, 2.6822147e-007, 0.999993563, 2.26934105e-007, 1.70608041e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.420000017, 0.400000006))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399842381, 2.28881836e-005, -0.699806213, 0.999987125, 3.11936617e-007, -1.54066669e-007, 1.39158743e-007, -3.12922936e-007, 0.999996305, 3.11942586e-007, -0.999996305, -4.17230723e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(1.00000012, 0.200000018, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09956372, -1.52587891e-005, 7.62939453e-006, 0.999993563, -3.18323146e-012, -1.94162568e-012, -3.12638804e-012, 1, 0, -1.97004739e-012, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.150000066))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.7220459e-006, 0.599834442, 7.62939453e-006, 0.999993563, -3.18323146e-012, -1.94162568e-012, -3.12638804e-012, 1, 0, -1.97004739e-012, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -0.799816132, -0.299886942, -8.19355193e-007, -2.68222067e-007, 1, 5.3691457e-007, -1, -2.68221612e-007, 0.999993563, 5.369115e-007, 8.19356728e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.48362732e-006, 0.399921417, 0, 0.999993563, -3.18323146e-012, -1.94162568e-012, -3.12638804e-012, 1, 0, -1.97004739e-012, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.75999999, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 0.600000024, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -1.37712097, 0.686037064, -3.19909276e-007, -4.26937277e-008, 1, 0.624627113, 0.780920088, 2.33164513e-007, -0.780915022, 0.624631047, -2.23154302e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 1.20000005, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -1.67708588, 0.0862731934, -3.19909276e-007, -4.26937277e-008, 1, 0.624627113, 0.780920088, 2.33164513e-007, -0.780915022, 0.624631047, -2.23154302e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 0.400000036, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -1.27713776, 0.885951996, -3.19909276e-007, -4.26937277e-008, 1, 0.624627113, 0.780920088, 2.33164513e-007, -0.780915022, 0.624631047, -2.23154302e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -1.47715378, 0.486082077, -3.19909276e-007, -4.26937277e-008, 1, 0.624627113, 0.780920088, 2.33164513e-007, -0.780915022, 0.624631047, -2.23154302e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 1, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -1.5770607, 0.286224365, -3.19909276e-007, -4.26937277e-008, 1, 0.624627113, 0.780920088, 2.33164513e-007, -0.780915022, 0.624631047, -2.23154302e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 0.400000036, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -1.27767563, 0.885528564, 7.32046772e-007, 1.04308597e-007, -1, 0.624627948, -0.780919373, 3.75803722e-007, -0.780914307, -0.624631882, -6.36824609e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-005, -1.17765045, 1.08547592, 7.32046772e-007, 1.04308597e-007, -1, 0.624627948, -0.780919373, 3.75803722e-007, -0.780914307, -0.624631882, -6.36824609e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 0.600000024, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-005, -1.37765884, 0.685609818, 7.32046772e-007, 1.04308597e-007, -1, 0.624627948, -0.780919373, 3.75803722e-007, -0.780914307, -0.624631882, -6.36824609e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -1.17710876, 1.0859108, -3.19909276e-007, -4.26937277e-008, 1, 0.624627113, 0.780920088, 2.33164513e-007, -0.780915022, 0.624631047, -2.23154302e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.439999998, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399842143, 2.28881836e-005, 0.599914551, 0.999987125, 3.11936617e-007, -1.54066669e-007, 1.39158743e-007, -3.12922936e-007, 0.999996305, 3.11942586e-007, -0.999996305, -4.17230723e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 1, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -1.57758713, 0.285804749, 7.32046772e-007, 1.04308597e-007, -1, 0.624627948, -0.780919373, 3.75803722e-007, -0.780914307, -0.624631882, -6.36824609e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 1.20000005, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -1.67761993, 0.0858478546, 7.32046772e-007, 1.04308597e-007, -1, 0.624627948, -0.780919373, 3.75803722e-007, -0.780914307, -0.624631882, -6.36824609e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.34057617e-005, -0.599933624, 0.299871683, 1.70607336e-006, 2.68221839e-007, -1, -2.26939449e-007, 1, 2.6822147e-007, 0.999993563, 2.26934105e-007, 1.70608041e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -1.47767639, 0.485664368, 7.32046772e-007, 1.04308597e-007, -1, 0.624627948, -0.780919373, 3.75803722e-007, -0.780914307, -0.624631882, -6.36824609e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-005, -0.599796295, 0.299871922, -2.76205924e-006, -2.38419574e-007, 1, 1.06996549e-006, -1, -2.38416632e-007, 0.999993563, 1.06996549e-006, 2.76207334e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.29153442e-006, -0.399951935, 0, 0.999993563, -3.18323146e-012, -1.94162568e-012, -3.12638804e-012, 1, 0, -1.97004739e-012, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.75999999, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Wedge",Vector3.new(0.400000006, 1, 0.800000072))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -1.09956384, 0.500591278, -5.34829326e-007, -1.34110962e-007, 1, 0.999993563, 5.60880665e-007, 5.34828928e-007, -5.6088345e-007, 1, 1.3411065e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Wedge",Vector3.new(0.400000006, 1, 0.800000072))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -1.09956241, 0.499965668, 5.17126352e-007, 5.96053695e-008, -1, 0.999993563, -6.50743459e-008, 5.17125784e-007, -6.50676384e-008, -1, -5.96054264e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))

HandleB=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","HandleB",Vector3.new(0.400000006, 0.600000024, 1))
HandleBweld=weld(m,Character["Left Arm"],HandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.876271009, -0.000350952148, 0.112800598, 3.02468436e-007, -0.999996781, -4.86355759e-007, 1.93715664e-007, -4.86354111e-007, 1, -1, -3.02467555e-007, 1.93715522e-007))
mesh("CylinderMesh",HandleB,"","",Vector3.new(0, 0, 0),Vector3.new(0.75999999, 1, 1))
HitboxB=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Toothpaste","HitboxB",Vector3.new(1.00000012, 3.80000019, 0.400000036))
HitboxBweld=weld(m,HandleB,HitboxB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.0995636, -1.52587891e-005, 7.62939453e-006, 0.999993563, -3.18323146e-012, -1.94162568e-012, -3.12638804e-012, 1, 0, -1.97004739e-012, 0, 1))
mesh("BlockMesh",HitboxB,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.150000066))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.05311584e-006, -0.599895477, 7.62939453e-006, 0.999993563, -3.18323146e-012, -1.94162568e-012, -3.12638804e-012, 1, 0, -1.97004739e-012, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000036, 1.39999998, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399844646, -3.05175781e-005, 7.62939453e-006, 0.999993563, -3.18323146e-012, -1.94162568e-012, -3.12638804e-012, 1, 0, -1.97004739e-012, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.499806046, 0.799808502, 7.62939453e-006, 0.999993563, -3.18323146e-012, -1.94162568e-012, -3.12638804e-012, 1, 0, -1.97004739e-012, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.420000017, 0.400000006))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399841428, 2.28881836e-005, 0.499961853, 0.999987125, 3.11936617e-007, -1.54066669e-007, 1.39158743e-007, -3.12922936e-007, 0.999996305, 3.11942586e-007, -0.999996305, -4.17230723e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.439999998, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.39984262, 2.28881836e-005, -0.68977356, 0.999987125, 3.11936617e-007, -1.54066669e-007, 1.39158743e-007, -3.12922936e-007, 0.999996305, 3.11942586e-007, -0.999996305, -4.17230723e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.420000017, 1.20000005))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399840593, 2.28881836e-005, -0.0999221802, 0.999987125, 3.11936617e-007, -1.54066669e-007, 1.39158743e-007, -3.12922936e-007, 0.999996305, 3.11942586e-007, -0.999996305, -4.17230723e-007))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.499804378, -0.799888611, 7.62939453e-006, 0.999993563, -3.18323146e-012, -1.94162568e-012, -3.12638804e-012, 1, 0, -1.97004739e-012, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.439999998, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399841547, 2.28881836e-005, 0.399986267, 0.999987125, 3.11936617e-007, -1.54066669e-007, 1.39158743e-007, -3.12922936e-007, 0.999996305, 3.11942586e-007, -0.999996305, -4.17230723e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -0.799911499, -0.299885511, 1.70607336e-006, 2.68221839e-007, -1, -2.26939449e-007, 1, 2.6822147e-007, 0.999993563, 2.26934105e-007, 1.70608041e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.420000017, 0.400000006))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.39984262, 2.28881836e-005, -0.699806213, 0.999987125, 3.11936617e-007, -1.54066669e-007, 1.39158743e-007, -3.12922936e-007, 0.999996305, 3.11942586e-007, -0.999996305, -4.17230723e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(1.00000012, 0.200000018, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.0995636, -1.52587891e-005, 7.62939453e-006, 0.999993563, -3.18323146e-012, -1.94162568e-012, -3.12638804e-012, 1, 0, -1.97004739e-012, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.150000066))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.7220459e-006, 0.599834442, 7.62939453e-006, 0.999993563, -3.18323146e-012, -1.94162568e-012, -3.12638804e-012, 1, 0, -1.97004739e-012, 0, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -0.799816132, -0.299886703, -8.19355193e-007, -2.68222067e-007, 1, 5.3691457e-007, -1, -2.68221612e-007, 0.999993563, 5.369115e-007, 8.19356728e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.48362732e-006, 0.399921417, 0, 0.999993563, -3.18323146e-012, -1.94162568e-012, -3.12638804e-012, 1, 0, -1.97004739e-012, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.75999999, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 0.600000024, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -1.37712097, 0.686037064, -3.19909276e-007, -4.26937277e-008, 1, 0.624627113, 0.780920088, 2.33164513e-007, -0.780915022, 0.624631047, -2.23154302e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 1.20000005, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -1.67708588, 0.0862731934, -3.19909276e-007, -4.26937277e-008, 1, 0.624627113, 0.780920088, 2.33164513e-007, -0.780915022, 0.624631047, -2.23154302e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 0.400000036, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -1.27713776, 0.885951996, -3.19909276e-007, -4.26937277e-008, 1, 0.624627113, 0.780920088, 2.33164513e-007, -0.780915022, 0.624631047, -2.23154302e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -1.47715378, 0.486082077, -3.19909276e-007, -4.26937277e-008, 1, 0.624627113, 0.780920088, 2.33164513e-007, -0.780915022, 0.624631047, -2.23154302e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 1, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -1.57705688, 0.286226273, -3.19909276e-007, -4.26937277e-008, 1, 0.624627113, 0.780920088, 2.33164513e-007, -0.780915022, 0.624631047, -2.23154302e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 0.400000036, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -1.27767181, 0.885528564, 7.32046772e-007, 1.04308597e-007, -1, 0.624627948, -0.780919373, 3.75803722e-007, -0.780914307, -0.624631882, -6.36824609e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-005, -1.17764664, 1.08547783, 7.32046772e-007, 1.04308597e-007, -1, 0.624627948, -0.780919373, 3.75803722e-007, -0.780914307, -0.624631882, -6.36824609e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 0.600000024, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.28881836e-005, -1.37765884, 0.685609818, 7.32046772e-007, 1.04308597e-007, -1, 0.624627948, -0.780919373, 3.75803722e-007, -0.780914307, -0.624631882, -6.36824609e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -1.17710876, 1.0859108, -3.19909276e-007, -4.26937277e-008, 1, 0.624627113, 0.780920088, 2.33164513e-007, -0.780915022, 0.624631047, -2.23154302e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","Part",Vector3.new(0.400000006, 0.439999998, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.399842381, 2.28881836e-005, 0.599914551, 0.999987125, 3.11936617e-007, -1.54066669e-007, 1.39158743e-007, -3.12922936e-007, 0.999996305, 3.11942586e-007, -0.999996305, -4.17230723e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 1, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -1.57758331, 0.285804749, 7.32046772e-007, 1.04308597e-007, -1, 0.624627948, -0.780919373, 3.75803722e-007, -0.780914307, -0.624631882, -6.36824609e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 1.20000005, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -1.67761993, 0.085849762, 7.32046772e-007, 1.04308597e-007, -1, 0.624627948, -0.780919373, 3.75803722e-007, -0.780914307, -0.624631882, -6.36824609e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.34057617e-005, -0.599933624, 0.299871683, 1.70607336e-006, 2.68221839e-007, -1, -2.26939449e-007, 1, 2.6822147e-007, 0.999993563, 2.26934105e-007, 1.70608041e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Part",Vector3.new(0.400000006, 0.800000012, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -1.47767258, 0.485664368, 7.32046772e-007, 1.04308597e-007, -1, 0.624627948, -0.780919373, 3.75803722e-007, -0.780914307, -0.624631882, -6.36824609e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 0.200000003))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.28881836e-005, -0.599796295, 0.299871922, -2.76205924e-006, -2.38419574e-007, 1, 1.06996549e-006, -1, -2.38416632e-007, 0.999993563, 1.06996549e-006, 2.76207334e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.400000006, 0.200000003, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.29153442e-006, -0.399951935, 0, 0.999993563, -3.18323146e-012, -1.94162568e-012, -3.12638804e-012, 1, 0, -1.97004739e-012, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.75999999, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Wedge",Vector3.new(0.400000006, 1, 0.800000072))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -1.09956384, 0.500591278, -5.34829326e-007, -1.34110962e-007, 1, 0.999993563, 5.60880665e-007, 5.34828928e-007, -5.6088345e-007, 1, 1.3411065e-007))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Toothpaste","Wedge",Vector3.new(0.400000006, 1, 0.800000072))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -1.09956253, 0.499965668, 5.17126352e-007, 5.96053695e-008, -1, 0.999993563, -6.50743459e-008, 5.17125784e-007, -6.50676384e-008, -1, -5.96054264e-008))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.160000026, 1, 1))

function attackone()
attack = true
local con1 = HitboxA.Touched:connect(function(hit) Damagefunc(HitboxA,hit,15,20,math.random(1,5),"Normal",RootPart,.2,1) end) 
local con2 = HitboxB.Touched:connect(function(hit) Damagefunc(HitboxB,hit,15,20,math.random(1,5),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.4)* angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(-120), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.9,0)*angles(math.rad(0),math.rad(90),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5,0)*angles(math.rad(0),math.rad(-60),math.rad(-10)),.3)
end
so("http://roblox.com/asset/?id=199145095",HitboxA,1,1)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.4)* angles(math.rad(10),math.rad(0),math.rad(120)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-100)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.5,0)*angles(math.rad(0),math.rad(60),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.9,0)*angles(math.rad(0),math.rad(-90),math.rad(30)),.3)
end
attack = false
con1:disconnect()
con2:disconnect()
end

function attacktwo()
attack = true
local con1 = HitboxA.Touched:connect(function(hit) Damagefunc(HitboxA,hit,15,20,math.random(1,5),"Normal",RootPart,.2,1) end) 
local con2 = HitboxB.Touched:connect(function(hit) Damagefunc(HitboxB,hit,15,20,math.random(1,5),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.4)* angles(math.rad(10),math.rad(0),math.rad(40)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(140), math.rad(80)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.5,0)*angles(math.rad(0),math.rad(60),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.9,0)*angles(math.rad(0),math.rad(-90),math.rad(30)),.3)
end
so("http://roblox.com/asset/?id=199145146",HitboxB,1,1)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.4)* angles(math.rad(10),math.rad(0),math.rad(-120)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(110)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(80)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(-140), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.9,0)*angles(math.rad(0),math.rad(90),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.5,0)*angles(math.rad(0),math.rad(-60),math.rad(-10)),.3)
end
attack = false
con1:disconnect()
con2:disconnect()
end

function attackthree()
attack = true
local con1 = HitboxA.Touched:connect(function(hit) Damagefunc(HitboxA,hit,15,20,math.random(1,5),"Normal",RootPart,.2,1) end) 
local con2 = HitboxB.Touched:connect(function(hit) Damagefunc(HitboxB,hit,15,20,math.random(1,5),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.4)* angles(math.rad(10),math.rad(0),math.rad(120)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-100)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.5,0)*angles(math.rad(0),math.rad(60),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.9,0)*angles(math.rad(0),math.rad(-90),math.rad(30)),.3)
end
for i = 0,1,0.5 do
swait()
so("http://roblox.com/asset/?id=199145327",Torso,1,1)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.4)* angles(math.rad(0),math.rad(0),-6*i),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-100)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.5,0)*angles(math.rad(0),math.rad(60),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.9,0)*angles(math.rad(0),math.rad(-90),math.rad(30)),.3)
end
end
attack = false
con1:disconnect()
con2:disconnect()
end

mouse.Button1Down:connect(function()
if attack == false and attacktype == 1 then
attacktype = 2
attackone()
elseif attack == false and attacktype == 2 then
attacktype = 3
attacktwo()
elseif attack == false and attacktype == 3 then
attacktype = 1
attackthree()
end
end)

mouse.KeyDown:connect(function(k)
k=k:lower()
if attack == false and k == '' then

end
end)


local sine = 0
local change = 1
local val = 0

while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(0,math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(70)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-70)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.4)* angles(math.rad(10),math.rad(0),math.rad(40)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-40)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-.5,0)*angles(math.rad(0),math.rad(60),math.rad(10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.9,0)*angles(math.rad(0),math.rad(-90),math.rad(30)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
end
end
end
if #Effects>0 then
for e=1,#Effects do
if Effects[e]~=nil then
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
end
end
end
end