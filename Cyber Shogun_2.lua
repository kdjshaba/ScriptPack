
Player = game.Players.LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
Humanoid = Character.Humanoid
Humanoid.WalkSpeed = 10
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"]
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
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
necko = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false 
equipped = true
local Anim = "Idle"
local Effects = {}
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local m = Create("Model"){
	Parent = Character,
	Name = "WeaponModel",
}
mouse = Player:GetMouse()
RSH, LSH = nil, nil 
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
RSH = Torso["Right Shoulder"] 
LSH = Torso["Left Shoulder"] 
 
RSH.Parent = nil 
LSH.Parent = nil 

RW = Create("Weld"){
	Name = "Right Shoulder",
	Part0 = Torso ,
	C0 = cf(1.5, 0.5, 0),
	C1 = cf(0, 0.5, 0), 
	Part1 = RightArm ,
	Parent = Torso ,
}

LW = Create("Weld"){
	Name = "Left Shoulder",
	Part0 = Torso ,
	C0 = cf(-1.5, 0.5, 0),
	C1 = cf(0, 0.5, 0) ,
	Part1 = LeftArm ,
	Parent = Torso ,
}

function NoOutline(Part)
	Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
end
function swait(num)
	if num == 0 or num == nil then
		game:service'RunService'.Heartbeat:wait(0)
	else
		for i = 0, num do
			game:service'RunService'.Heartbeat:wait(0)
		end
	end
end
	
function nooutline(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function part(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
	local fp = Create("Part"){
		formFactor = formfactor,
		Parent = parent,
		Reflectance = reflectance,
		Transparency = transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(brickcolor)),
		Name = name,
		Size = size,
		Position = Character.Torso.Position,
		Material = material,
	}
	nooutline(fp)
	return fp
end
	
function mesh(Mesh, part, meshtype, meshid, offset, scale)
	local Msh = Create(Mesh){
		Parent = part,
		Offset = offset,
		Scale = scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = meshtype
		Msh.MeshId = meshid
	end
	return Msh
end
	
function weld(parent, part0, part1, c0, c1)
	local Weld = Create("Weld"){
		Parent = parent,
		Part0 = part0,
		Part1 = part1,
		C0 = c0,
		C1 = c1,
	}
	return Weld
end
	
	
local function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
	local edg1 = (c - a):Dot((b - a).unit)
	local edg2 = (a - b):Dot((c - b).unit)
	local edg3 = (b - c):Dot((a - c).unit)
	if edg1 <= (b - a).magnitude and edg1 >= 0 then
		a, b, c = a, b, c
	elseif edg2 <= (c - b).magnitude and edg2 >= 0 then
		a, b, c = b, c, a
	elseif edg3 <= (a - c).magnitude and edg3 >= 0 then
		a, b, c = c, a, b
	else
		assert(false, "unreachable")
	end
 
	local len1 = (c - a):Dot((b - a).unit)
	local len2 = (b - a).magnitude - len1
	local width = (a + (b - a).unit * len1 - c).magnitude
 
	local maincf = CFrameFromTopBack(a, (b - a):Cross(c - b).unit, -(b - a).unit)
 
	local list = {}

	local Color = BrickColor.new("Really red")
 
	if len1 > 0.01 then
		local w1 = Create('WedgePart', m){
			Material = "SmoothPlastic",
			FormFactor = 'Custom',
			BrickColor = Color,
			Transparency = 0,
			Reflectance = 0,
			Material = "SmoothPlastic",
			CanCollide = false,
			Anchored = true,
			Parent = workspace,
			Transparency = 0.3,
		}
		game:GetService("Debris"):AddItem(w1, 5)
		NoOutline(w1)
		local sz = Vector3.new(0.2, width, len1)
		w1.Size = sz
		local sp = Create("SpecialMesh"){
			Parent = w1,
			MeshType = "Wedge",
			Scale = Vector3.new(0, 1, 1) * sz / w1.Size,
		}
		w1:BreakJoints()
		table.insert(Effects, {
			w1,
			"Disappear",
			.03
		})
		w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
		table.insert(list, w1)
	end
	if len2 > 0.01 then
		local w2 = Create('WedgePart', m){
			Material = "SmoothPlastic",
			FormFactor = 'Custom',
			BrickColor = Color,
			Transparency = 0,
			Reflectance = 0,
			Material = "SmoothPlastic",
			CanCollide = false,
			Anchored = true,
			Parent = workspace,
			Transparency = 0.3,
		}
		game:GetService("Debris"):AddItem(w2, 5)
		NoOutline(w2)
		local sz = Vector3.new(0.2, width, len2)
		w2.Size = sz
		local sp = Create("SpecialMesh"){
			Parent = w2,
			MeshType = "Wedge",
			Scale = Vector3.new(0, 1, 1) * sz / w2.Size,
		}
		w2:BreakJoints()
		table.insert(Effects, {
			w2,
			"Disappear",
			.03
		})
		w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
		table.insert(list, w2)
	end
	return unpack(list)
end
	
function so(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		swait() 
		sou:play() 
		swait(6) 
		sou:Remove() 
	end))
end
 
function clerp(a,b,t)

        local function QuaternionFromCFrame(cf) local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() local trace = m00 + m11 + m22 if trace > 0 then local s = math.sqrt(1 + trace) local recip = 0.5/s return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 else local i = 0 if m11 > m00 then i = 1 end if m22 > (i == 0 and m00 or m11) then i = 2 end if i == 0 then local s = math.sqrt(m00-m11-m22+1) local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip elseif i == 1 then local s = math.sqrt(m11-m22-m00+1) local recip = 0.5/s return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip elseif i == 2 then local s = math.sqrt(m22-m00-m11+1) local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip end end end
         
        local function QuaternionToCFrame(px, py, pz, x, y, z, w) local xs, ys, zs = x + x, y + y, z + z local wx, wy, wz = w*xs, w*ys, w*zs local xx = x*xs local xy = x*ys local xz = x*zs local yy = y*ys local yz = y*zs local zz = z*zs return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) end
         
        local function QuaternionSlerp(a, b, t) local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] local startInterp, finishInterp; if cosTheta >= 0.0001 then if (1 - cosTheta) > 0.0001 then local theta = math.acos(cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((1-t)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta  else startInterp = 1-t finishInterp = t end else if (1+cosTheta) > 0.0001 then local theta = math.acos(-cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((t-1)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta else startInterp = t-1 finishInterp = t end end return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp        end

                local qa = {QuaternionFromCFrame(a)}
                local qb = {QuaternionFromCFrame(b)}
                local ax, ay, az = a.x, a.y, a.z
                local bx, by, bz = b.x, b.y, b.z

                local _t = 1-t
                return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))
end

function rayCast(Pos, Dir, Max, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
		if h.MaxHealth >= math.huge then
			hit:BreakJoints()
		end
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			so(HitSound, hit, 1, HitPitch) 
		end
		local Damage = math.random(minim, maxim)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil then
			if block.className == "IntValue" then
				if block.Value > 0 then
					blocked = true
					block.Value = block.Value - 1
					print(block.Value)
				end
			end
		end
		if blocked == false then
			h.Health = h.Health - Damage
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
				swait(1)
				HHumanoid.PlatformStand = false
			end), hum)
			local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
			local bodvol = Create("BodyVelocity"){
				velocity = angle * knockback,
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			local rl = Create("BodyAngularVelocity"){
				P = 3000,
				maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
				angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodvol, .5)
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Normal" then
			local vp = Create("BodyVelocity"){
				P = 500,
				maxForce = Vector3.new(math.huge, 0, math.huge),
				velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
			}
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "Up" then
			local bodyVelocity = Create("BodyVelocity"){
				velocity = vt(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, .5)
		elseif Type == "Snare" then
			local bp = Create("BodyPosition"){
				P = 2000,
				D = 100,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Freeze" then
			local BodPos = Create("BodyPosition"){
				P = 50000,
				D = 1000,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			local BodGy = Create("BodyGyro") {
				maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
				P = 20e+003,
				Parent = hit.Parent.Torso,
				cframe = hit.Parent.Torso.CFrame,
			}
			hit.Parent.Torso.Anchored = true
			coroutine.resume(coroutine.create(function(Part) 
				swait(1.5)
				Part.Anchored = false
			end), hit.Parent.Torso)
			game:GetService("Debris"):AddItem(BodPos, 3)
			game:GetService("Debris"):AddItem(BodGy, 3)
		end
		local debounce = Create("BoolValue"){
			Name = "DebounceHit",
			Parent = hit.Parent,
			Value = true,
		}
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = Player
		c.Parent = h
		game:GetService("Debris"):AddItem(c, .5)
	end
end

function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part("Custom", workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui"){
		Size = UDim2.new(3, 0, 3, 0),
		Adornee = EffectPart,
		Parent = EffectPart,
	}
	local TextLabel = Create("TextLabel"){
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		TextColor3 = Color,
		TextScaled = true,
		Font = Enum.Font.ArialBold,
		Parent = BillboardGui,
	}
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Smoky grey","Handle",Vector3.new(0.442519516, 2.0650897, 0.295012921))
Handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.947258949, -0.45997858, -0.0570378304, 7.77969425e-011, -0.999999881, -1.37820278e-012, -1.39760203e-010, 1.37820257e-012, -1, 1, 7.77969356e-011, -1.39760203e-010))
FakeHandle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","FakeHandle",Vector3.new(0.442519516, 2.0650897, 0.295012921))
FakeHandleweld=weld(m,Handle,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00143384933, 0.00119042397, 1.43051147e-006, 1, -3.30743766e-012, -1.37846817e-011, 3.30743766e-012, 1, -2.06202139e-011, 1.37846817e-011, 2.06202139e-011, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really red","Hitbox",Vector3.new(2.19002581, 6.55274916, 0.590025842))
Hitboxweld=weld(m,FakeHandle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.17896843, -4.79059315, -4.76837158e-007, 1, 2.0566379e-019, 5.67611236e-012, -2.27116525e-019, 1, -1.52766688e-013, -5.67611236e-012, 1.52766688e-013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.442519516, 0.200000003, 0.309763551))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.405433416, 0.701894522, 0, 0.865923226, 0.500177085, 1.67872543e-008, -0.500177085, 0.865923226, 5.24679216e-008, 1.17067778e-008, -5.38297869e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.7375319, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.295013011, 0.200000003, 0.295012951))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.515680313, -1.24921036, -0.295011044, 1, 2.06574115e-019, 0, 2.06574115e-019, 1, 0, 0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.774408579, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.442519516, 0.200000003, 0.32451418))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.405433416, 0.701894522, 0, 0.865923226, 0.500177085, 1.67872543e-008, -0.500177085, 0.865923226, 5.24679216e-008, 1.17067778e-008, -5.38297869e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.773333311, 0.346640021, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Really red","Part",Vector3.new(0.200000003, 0.295012861, 0.442519456))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -7.51639271, 0.443106174, -2.97838199e-008, 1.94848582e-011, 0.999994636, 2.58582196e-012, 1, -1.94823463e-011, -0.999994636, 2.86134896e-012, -2.97838199e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.737532437, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.295013011, 0.295012772, 0.295012951))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.15527344e-005, -0.515707016, -2.06437659, 4.46099548e-008, 4.16034491e-005, -0.999989271, -0.999989271, 9.6335441e-007, -4.62988687e-008, 9.63345315e-007, 1, 4.16012699e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.14750649, 0.147506386, 1.67862356))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.885039032, 0.295012772, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.51570034, -1.91668773, -9.53674316e-007, 0.999989271, -2.75521359e-013, -3.70870001e-013, -2.75503253e-013, 1, -6.03156414e-013, 3.70870001e-013, 6.07985884e-013, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.885039032, 0.295012772, 0.590025842))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.51570034, -1.62167501, -9.53674316e-007, 0.999989271, -2.75521359e-013, -3.70870001e-013, -2.75503253e-013, 1, -6.03156414e-013, 3.70870001e-013, 6.07985884e-013, 0.999989271))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.295013011, 2.06508946, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.220681667, 0.000894546509, -9.53674316e-007, 1, -2.75524395e-013, -3.7087694e-013, 2.75524178e-013, 1, -6.03156414e-013, 3.7087694e-013, 6.03156414e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.295013011, 0.200000003, 0.295012951))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.515694618, -1.24922132, 0.295011997, 1, -2.75524395e-013, -3.7087694e-013, 2.75524178e-013, 1, -6.03156414e-013, 3.7087694e-013, 6.03156414e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.774408579, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.442519516, 0.200000003, 0.309763551))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.258158922, -0.44693923, 0, 0.865923226, 0.500177085, 1.67872543e-008, -0.500177085, 0.865923226, 5.24679216e-008, 1.17067778e-008, -5.38297869e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.7375319, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.737532496, 1.62257028, 0.236010328))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.500944138, -2.87547874, -9.53674316e-007, 1, -2.75524395e-013, -3.7087694e-013, 2.75524178e-013, 1, -6.03156414e-013, 3.7087694e-013, 6.03156414e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cool yellow","Part",Vector3.new(1.03254545, 0.200000003, 0.590025842))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000577926636, -1.25290799, -9.53674316e-007, 1, -2.75524395e-013, -3.7087694e-013, 2.75524178e-013, 1, -6.03156414e-013, 3.7087694e-013, 6.03156414e-013, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.7375319, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cool yellow","Part",Vector3.new(0.442519516, 0.200000003, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000577926636, -1.10540175, -9.53674316e-007, 1, -2.75524395e-013, -3.7087694e-013, 2.75524178e-013, 1, -6.03156414e-013, 3.7087694e-013, 6.03156414e-013, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.7375319, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.442921877, -5.82329798, -9.53674316e-007, 0.999994636, -2.75512252e-013, 1.20729954e-011, 6.40126642e-019, 1, -2.00535422e-012, -1.20729954e-011, 2.00608974e-012, 0.999994636))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.737532437, 0.73753202, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.590025902, 5.75274944, 0.590025842))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.220380783, -4.7907896, -9.53674316e-007, 1, -2.75534153e-013, 5.59502444e-012, 2.75533936e-013, 1, -1.40031042e-012, -5.59502444e-012, 1.40031042e-012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.442519516, 0.200000003, 0.32451418))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.258158922, -0.44693923, 0, 0.865923226, 0.500177085, 1.67872543e-008, -0.500177085, 0.865923226, 5.24679216e-008, 1.17067778e-008, -5.38297869e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.773333311, 0.346640021, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.442519516, 0.200000003, 0.32451418))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.110691786, -0.191638708, 0, 0.865923226, 0.500177085, 1.67872543e-008, -0.500177085, 0.865923226, 5.24679216e-008, 1.17067778e-008, -5.38297869e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.773333311, 0.346640021, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.442519516, 0.200000003, 0.309763551))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.110691786, -0.191638708, 0, 0.865923226, 0.500177085, 1.67872543e-008, -0.500177085, 0.865923226, 5.24679216e-008, 1.17067778e-008, -5.38297869e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.7375319, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.442519516, 0.200000003, 0.309763551))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.25796771, 0.446596622, 0, 0.865923226, 0.500177085, 1.67872543e-008, -0.500177085, 0.865923226, 5.24679216e-008, 1.17067778e-008, -5.38297869e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.7375319, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.442519516, 0.200000003, 0.32451418))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.110505342, 0.191305399, 0, 0.865923226, 0.500177085, 1.67872543e-008, -0.500177085, 0.865923226, 5.24679216e-008, 1.17067778e-008, -5.38297869e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.773333311, 0.346640021, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 1.77007711, 0.590025842))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.148234606, -6.77999687, -4.76837158e-007, 0.999994636, -3.30741142e-012, -8.79209205e-012, 3.03188355e-012, 1, -2.20568841e-011, 8.79386841e-012, 2.2059396e-011, 0.999994636))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.737532437, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cool yellow","Part",Vector3.new(0.295013011, 0.200000003, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.221826315, -1.1054008, -9.53674316e-007, 1, -2.75533285e-013, -1.00870701e-013, 2.75533285e-013, 1, -1.20869981e-012, 1.00870701e-013, 1.20869981e-012, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.7375319, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.885039032, 0.200000003, 0.885038733))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.51568079, -1.40040469, 1.90734863e-006, 1, -1.02663131e-020, 0, -1.02663131e-020, 1, 0, 0, 0, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.7375319, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.442519516, 0.200000003, 0.309763551))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.405618906, -0.702226162, 0, 0.865923226, 0.500177085, 1.67872543e-008, -0.500177085, 0.865923226, 5.24679216e-008, 1.17067778e-008, -5.38297869e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.7375319, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.295012981, 0.200000003, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.221667767, -3.16900206, -1.43051147e-006, 0.999994636, -2.75512252e-013, 8.49046528e-012, 6.40146029e-019, 1, -1.70229109e-012, -8.49046528e-012, 1.70302661e-012, 0.999994636))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.737533867, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(1.03254545, 0.200000003, 0.885038733))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000566482544, -1.40041232, -9.53674316e-007, 1, -2.75533285e-013, -1.00870701e-013, 2.75533285e-013, 1, -1.20869981e-012, 1.00870701e-013, 1.20869981e-012, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.7375319, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.442519516, 0.200000003, 0.309763551))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.110505342, 0.191305399, 0, 0.865923226, 0.500177085, 1.67872543e-008, -0.500177085, 0.865923226, 5.24679216e-008, 1.17067778e-008, -5.38297869e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.7375319, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.442519516, 0.200000003, 0.32451418))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.25796771, 0.446596622, 0, 0.865923226, 0.500177085, 1.67872543e-008, -0.500177085, 0.865923226, 5.24679216e-008, 1.17067778e-008, -5.38297869e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.773333311, 0.346640021, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cool yellow","Part",Vector3.new(0.885039032, 0.200000003, 0.590025842))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.515706539, -1.25290704, -9.53674316e-007, 1, -2.75533285e-013, -1.00870701e-013, 2.75533285e-013, 1, -1.20869981e-012, 1.00870701e-013, 1.20869981e-012, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.7375319, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cool yellow","Part",Vector3.new(0.295013011, 0.200000003, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.220693111, -1.1054008, -9.53674316e-007, 1, -2.75533285e-013, -1.00870701e-013, 2.75533285e-013, 1, -1.20869981e-012, 1.00870701e-013, 1.20869981e-012, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.7375319, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.442519516, 0.200000003, 0.32451418))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.405618906, -0.702226162, 0, 0.865923226, 0.500177085, 1.67872543e-008, -0.500177085, 0.865923226, 5.24679216e-008, 1.17067778e-008, -5.38297869e-008, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.773333311, 0.346640021, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.295012832, 1.47506392, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.369297743, -6.63180447, -4.76837158e-007, -0.999994636, 3.30741012e-012, -5.96323204e-008, 3.03188355e-012, 1, -2.20568841e-011, 5.96323204e-008, -2.2059396e-011, -0.999994636))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.885039032, 4.13017941, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.515714169, -5.75185299, -1.90734863e-006, 1, -2.75524395e-013, -3.52162743e-013, 2.75524178e-013, 1, -6.03156414e-013, 3.52162743e-013, 6.03156414e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.200000003, 0.309763402, 0.295012951))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.86102295e-006, 9.53674316e-007, -0.000194549561, 1, -4.63448572e-007, -3.23592047e-007, -3.23591962e-007, 1.64063181e-007, -1, 4.63448629e-007, 1, 1.64063024e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.737532437, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.324514031, 0.295012951))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.86102295e-006, 9.53674316e-007, -0.000194549561, 1, -4.63448572e-007, -3.23592047e-007, -3.23591962e-007, 1.64063181e-007, -1, 4.63448629e-007, 1, 1.64063024e-007))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.554624319, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(1.18005168, 0.442519188, 0.590025842))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0743150711, -1.69562244, -4.76837158e-007, 1, -2.75524395e-013, -7.45878637e-011, 2.75524178e-013, 1, 1.48707172e-010, 7.45878637e-011, -1.48707172e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.295012981, 0.200000003, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.221646786, -5.82227278, -9.53674316e-007, 0.999994636, -2.75512252e-013, 8.49046528e-012, 6.40146029e-019, 1, -1.70229109e-012, -8.49046528e-012, 1.70302661e-012, 0.999994636))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.737533867, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.295013011, 0.29501307, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.515041351, -7.81274223, 9.53674316e-007, 1, -2.75534153e-013, 5.61278801e-012, 2.75533936e-013, 1, -1.40031042e-012, -5.61278801e-012, 1.40031042e-012, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 2.50760889, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.442756176, -4.49544907, 0, -0.999994636, 4.46044921e-013, -5.96452097e-008, 1.70532628e-013, 1, -2.17245666e-012, 5.96452097e-008, -2.17319218e-012, -0.999994636))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.737532437, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.295012832, 3.83516645, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.664005995, -3.83165455, -4.76837158e-007, -0.999994636, 4.46044704e-013, -5.9642197e-008, 1.70532411e-013, 1, -2.17245666e-012, 5.9642197e-008, -2.17319218e-012, -0.999994636))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.295013011, 0.200000003, 0.295012951))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.516839504, -1.24921942, -0.295013905, 1, -2.75533285e-013, -1.00870701e-013, 2.75533285e-013, 1, -1.20869981e-012, 1.00870701e-013, 1.20869981e-012, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.774408579, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.885039032, 0.200000003, 0.885038733))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.516690731, -1.39850712, -9.53674316e-007, 0.999994636, -2.87668977e-013, 3.06331349e-012, 3.44146416e-015, 1, -1.37230505e-012, -3.06331349e-012, 1.64791791e-012, 0.999994636))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.7375319, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.295012981, 0.590025663, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.221410513, -2.21052313, 0, -0.999994636, 4.46101083e-013, -5.96629377e-008, 1.70589007e-013, 1, -1.86926863e-012, 5.96629377e-008, -1.87000415e-012, -0.999994636))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cool yellow","Part",Vector3.new(0.885039032, 0.200000003, 0.590025842))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.516839266, -1.25290704, -9.53674316e-007, 1, -2.75533285e-013, -1.00870701e-013, 2.75533285e-013, 1, -1.20869981e-012, 1.00870701e-013, 1.20869981e-012, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.7375319, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Smoky grey","Part",Vector3.new(0.295013011, 2.0650897, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.221837759, 0.000894069672, -9.53674316e-007, 1, -2.75524395e-013, -3.7087694e-013, 2.75524178e-013, 1, -6.03156414e-013, 3.7087694e-013, 6.03156414e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.295013011, 0.295012772, 0.295012951))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.86102295e-006, -7.51719093, 0.369443893, -2.97932274e-008, 2.2059396e-011, 0.999994636, 3.03188355e-012, 1, -2.20568841e-011, -0.999994636, 3.30741055e-012, -2.9793231e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.295012981, 2.50760913, 0.590025842))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.221670628, -4.49578571, -9.53674316e-007, 0.999994636, -2.75512252e-013, 8.49046528e-012, 6.40146029e-019, 1, -1.70229109e-012, -8.49046528e-012, 1.70302661e-012, 0.999994636))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 1.18005121, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.442702055, -2.50398636, -4.76837158e-007, -0.999994636, 4.46044704e-013, -5.96449254e-008, 1.70532411e-013, 1, -2.17248441e-012, 5.96449254e-008, -2.17321994e-012, -0.999994636))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.737532437, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.295012981, 0.200000003, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.221019745, 1.26017833, 0, 1, 9.9763433e-018, -7.45067757e-011, -9.97532752e-018, 1, 1.49954715e-010, 7.45067757e-011, -1.49954715e-010, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.7375319, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.590025961, 0.200000003, 0.295012951))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.43051147e-006, 2.43220711, 0.221660852, 4.63391068e-008, 4.46825474e-008, -0.999994636, -1.51188004e-008, -1, -4.46823094e-008, -0.999994636, 1.51191593e-008, -4.63391068e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.7375319, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.590025961, 0.29501313, 0.590025902))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -7.81263161, -0.0730409622, -2.97896676e-008, 2.1756319e-011, 0.999994636, 3.03188355e-012, 1, -2.17538071e-011, -0.999994636, 3.30741055e-012, -2.97896676e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.442914724, -3.16820765, -9.53674316e-007, 0.999994636, -3.32356538e-013, 1.56541308e-011, 5.68447064e-014, 1, -2.00535422e-012, -1.56541308e-011, 2.00608974e-012, 0.999994636))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.737532437, 0.73753202, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cool yellow","Part",Vector3.new(0.295013011, 0.295012653, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.220681667, 1.18094492, -9.53674316e-007, 1, -2.75524395e-013, -3.7087694e-013, 2.75524178e-013, 1, -6.03156414e-013, 3.7087694e-013, 6.03156414e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cool yellow","Part",Vector3.new(0.442519516, 0.295013011, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000577926636, 1.18094552, -9.53674316e-007, 1, -2.75524395e-013, -3.7087694e-013, 2.75524178e-013, 1, -6.03156414e-013, 3.7087694e-013, 6.03156414e-013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Part",Vector3.new(0.295013011, 0.200000003, 0.295012951))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.516839504, -1.24921942, 0.295011997, 1, -2.75533285e-013, -1.00870701e-013, 2.75533285e-013, 1, -1.20869981e-012, 1.00870701e-013, 1.20869981e-012, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.774408579, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Really red","Part",Vector3.new(0.200000003, 0.295012772, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.24520874e-006, -7.2211132, 0.590576887, -2.97847187e-008, 2.00882505e-011, 0.999994636, 2.97503276e-012, 1, -2.00857525e-011, -0.999994636, 3.25055976e-012, -2.97847187e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.737532437, 1, 0.737532377))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.295013011, 0.295012772, 0.295012951))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000162124634, -0.515693188, -3.68544936, 4.4589239e-008, 4.16090261e-005, -1, -1, 9.63814387e-007, -4.45491359e-008, 9.63812568e-007, 1, 4.16090261e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.14750649, 0.147506386, 1.67862356))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.295012981, 0.590025902, 0.590025842))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.221664906, -2.80066252, -4.76837158e-007, 0.999994636, -2.75512252e-013, 5.59144397e-012, 6.40165364e-019, 1, -1.40031042e-012, -5.59144397e-012, 1.40104595e-012, 0.999994636))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.295012861, 0.590025842))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.441378117, -7.8126545, 4.76837158e-007, 1, -2.75534153e-013, 5.60212987e-012, 2.75533936e-013, 1, -1.40031042e-012, -5.60212987e-012, 1.40031042e-012, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.737532437, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Cool yellow","Part",Vector3.new(0.295013011, 0.295012653, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.221837759, 1.1809448, -9.53674316e-007, 1, -2.75524395e-013, -3.7087694e-013, 2.75524178e-013, 1, -6.03156414e-013, 3.7087694e-013, 6.03156414e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.295012981, 0.200000003, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.221020699, 1.26017833, 0, 1, 9.9763433e-018, -7.45067757e-011, -9.97532752e-018, 1, 1.49954715e-010, 7.45067757e-011, -1.49954715e-010, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.7375319, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Really red","Part",Vector3.new(0.200000003, 3.09763432, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-006, -3.01968145, 0.885297298, -2.97987981e-008, 2.57460719e-013, 0.999994636, -6.94917659e-018, 1, -2.56739074e-013, -0.999994636, 2.7550469e-013, -2.97987981e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.737532437, 1, 0.737532377))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Really red","Part",Vector3.new(0.200000003, 3.09763432, 0.295012951))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.7220459e-006, 3.01982832, 1.10655999, -1.39933377e-007, -4.45522055e-008, -0.999994636, 2.86610089e-007, -1, 4.45516228e-008, -0.999994636, -2.86611339e-007, 1.39933377e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.737532437, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.295013011, 3.09763479, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.24520874e-006, 3.02018595, 0.885407448, -3.11451095e-006, 6.73515251e-006, -0.999994636, -9.20183595e-007, -1, -6.73511386e-006, -0.999994636, 9.20167849e-007, 3.11451709e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.737532377))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Really red","Part",Vector3.new(0.200000003, 2.50760865, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-006, -5.82237434, 0.885300398, -2.97994376e-008, 2.57405208e-013, 0.999994636, -6.94917659e-018, 1, -2.56683563e-013, -0.999994636, 2.7550469e-013, -2.97994376e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.737532437, 1, 0.737532377))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.295013011, 0.295012772, 0.295012951))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.33786011e-006, -7.22234058, 0.664441347, -2.9783191e-008, 2.17563467e-011, 0.999994636, 3.03188355e-012, 1, -2.17538348e-011, -0.999994636, 3.30741099e-012, -2.9783191e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Really red","Part",Vector3.new(0.200000003, 0.295012861, 0.295012951))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-006, -7.22363949, 0.811548233, -2.9798791e-008, -4.60201321e-013, 0.999994636, -1.67088796e-013, 1, 1.42011403e-013, -0.999994636, 1.17143505e-013, -2.9798791e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.737532437, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.295013011, 2.50760913, 0.200000003))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.19345093e-005, -5.82271338, 0.885406017, 3.1608879e-006, -6.71891894e-006, 0.999994636, 5.22557343e-007, 1, 6.7188812e-006, -0.999994636, 5.22539153e-007, 3.16089131e-006))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.737532377))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.200000003, 0.442519099, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.737729549, -1.69281816, -9.53674316e-007, -0.999994636, 3.89201068e-013, -5.96419838e-008, 1.13688993e-013, 1, -2.77888823e-012, 5.96419838e-008, -2.77962375e-012, -0.999994636))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.737532437, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0.5,0,"Institutional white","Part",Vector3.new(0.295012832, 1.32755756, 0.295012921))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.664032698, -6.41297722, 4.76837158e-007, -0.999994636, 2.75512279e-013, -5.96358518e-008, 8.56986463e-019, 1, -1.70230496e-012, 5.96358518e-008, -1.70302661e-012, -0.999994636))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0.5,"Really red","Part",Vector3.new(0.200000003, 2.50760865, 0.295012951))
Partweld=weld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.24520874e-006, -5.82254457, 1.1065681, -2.98008658e-008, 2.82357471e-013, 0.999994636, 3.44146437e-015, 1, 2.41195952e-014, -0.999994636, 2.87673775e-013, -2.980088e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.737532437, 1, 1))

function attackone()
	attack = true
	Humanoid.WalkSpeed = 5
	for i = 0, 1, 0.05 do
		swait()
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .2)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), .2)
				RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.7, -.5) * angles(math.rad(130), math.rad(0), math.rad(30)), 0.2)
				LW.C0 = clerp(LW.C0, CFrame.new(.5, 0.7, -.5) * angles(math.rad(145), math.rad(0), math.rad(50)), 0.2)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .2)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .2)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(20), math.rad(80)), 0.25)
	end
	local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 30, 50, math.random(1, 5), "Knockdown", RootPart, .2, "rbxassetid://199149221", .8)
	end)
	so("rbxassetid://203691447",Hitbox,1,0.9)
	Humanoid.WalkSpeed = 0
	for i = 0, 1, 0.03 do
		swait()

local blcf = Hitbox.CFrame * CFrame.new(0, .3, 0)
if scfr and (Hitbox.Position - scfr.p).magnitude > .1 then
	local h = 5
	local a, b = Triangle((scfr * CFrame.new(0, h / 2, 0)).p, (scfr * CFrame.new(0, -h / 2, 0)).p, (blcf * CFrame.new(0, h / 2, 0)).p)
	if a then
		game.Debris:AddItem(a, 1)
	end
	if b then
		game.Debris:AddItem(b, 1)
	end
	local a, b = Triangle((blcf * CFrame.new(0, h / 2, 0)).p, (blcf * CFrame.new(0, -h / 2, 0)).p, (scfr * CFrame.new(0, -h / 2, 0)).p)
	if a then
		game.Debris:AddItem(a, 1)
	end
	if b then
		game.Debris:AddItem(b, 1)
	end
	scfr = blcf
elseif not scfr then
	scfr = blcf
end
					RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -.5) * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.3, -.5) * angles(math.rad(30), math.rad(0), math.rad(-30)), 0.3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.3, -.5) * angles(math.rad(35), math.rad(0), math.rad(50)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -.5, -.5) * angles(math.rad(0), math.rad(90), math.rad(20)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .2)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .2)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(-20), math.rad(-20)), 0.3)
	end
	attack = false
	Humanoid.WalkSpeed = 10
	con:disconnect()
	scfr = nil
end

function attacktwo()
attack = true
Humanoid.WalkSpeed = 5
for i = 0,1,0.05 do
	swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .2)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(-80)), .2)
				RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(70)), 0.2)
				LW.C0 = clerp(LW.C0, CFrame.new(-.5, 0.5, -.5) * angles(math.rad(0), math.rad(-120), math.rad(-80)), 0.2)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .2)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-150), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .2)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, -.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.25)
end
Humanoid.WalkSpeed = 20
	local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 30, 50, math.random(1, 5), "Knockdown", RootPart, .2, "rbxassetid://199149186", .8)
	end)
for i = 1,3 do
so("rbxassetid://203691492",Hitbox,1,0.9)
for i = 0,1,0.06 do
	swait()
local blcf = Hitbox.CFrame * CFrame.new(0, .3, 0)
if scfr and (Hitbox.Position - scfr.p).magnitude > .1 then
	local h = 5
	local a, b = Triangle((scfr * CFrame.new(0, h / 2, 0)).p, (scfr * CFrame.new(0, -h / 2, 0)).p, (blcf * CFrame.new(0, h / 2, 0)).p)
	if a then
		game.Debris:AddItem(a, 1)
	end
	if b then
		game.Debris:AddItem(b, 1)
	end
	local a, b = Triangle((blcf * CFrame.new(0, h / 2, 0)).p, (blcf * CFrame.new(0, -h / 2, 0)).p, (scfr * CFrame.new(0, -h / 2, 0)).p)
	if a then
		game.Debris:AddItem(a, 1)
	end
	if b then
		game.Debris:AddItem(b, 1)
	end
	scfr = blcf
elseif not scfr then
	scfr = blcf
end
Torso.Velocity = Head.CFrame.lookVector * 30
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), -6*i), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), .2)
				RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(85)), 0.2)
				LW.C0 = clerp(LW.C0, CFrame.new(0, 0.5, -.5) * angles(math.rad(0), math.rad(-150), math.rad(-85)), 0.2)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .2)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-30)) * angles(math.rad(-5), math.rad(0), math.rad(0)), .2)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, -.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.25)
end
end
attack = false
scfr = nil
con:disconnect()
Humanoid.WalkSpeed = 10
end

function attackthree()
attack = true
for i = 0,1,0.05 do
swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -.3) * angles(math.rad(0), math.rad(0), math.rad(70)), .2)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(-70)), .2)
				RW.C0 = clerp(RW.C0, CFrame.new(1, 0.3, -.5) * angles(math.rad(80), math.rad(0), math.rad(-30)), 0.2)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, -.3) * angles(math.rad(80), math.rad(0), math.rad(10)), 0.2)
				RH.C0 = clerp(RH.C0, cf(1, -.8, -.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .2)
				LH.C0 = clerp(LH.C0, cf(-1, -.8, 0) * angles(math.rad(0), math.rad(-90), math.rad(30)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .2)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, -.7, 0) * angles(math.rad(-90), math.rad(0), math.rad(-50)), 0.25)
end
Torso.Velocity = Head.CFrame.lookVector * 90
if Humanoid.Jump == true then
Torso.Velocity = Head.CFrame.lookVector * 50
end
so("rbxassetid://203691447",Hitbox,1,0.9)
	local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 30, 50, math.random(1, 5), "Knockdown", RootPart, .2, "rbxassetid://199149186", .8)
	end)
for i = 0,1,0.03 do
swait()
local blcf = Hitbox.CFrame * CFrame.new(0, .3, 0)
if scfr and (Hitbox.Position - scfr.p).magnitude > .1 then
	local h = 5
	local a, b = Triangle((scfr * CFrame.new(0, h / 2, 0)).p, (scfr * CFrame.new(0, -h / 2, 0)).p, (blcf * CFrame.new(0, h / 2, 0)).p)
	if a then
		game.Debris:AddItem(a, 1)
	end
	if b then
		game.Debris:AddItem(b, 1)
	end
	local a, b = Triangle((blcf * CFrame.new(0, h / 2, 0)).p, (blcf * CFrame.new(0, -h / 2, 0)).p, (scfr * CFrame.new(0, -h / 2, 0)).p)
	if a then
		game.Debris:AddItem(a, 1)
	end
	if b then
		game.Debris:AddItem(b, 1)
	end
	scfr = blcf
elseif not scfr then
	scfr = blcf
end
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-70)), .2)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(70)), .2)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(-70)), 0.2)
				RH.C0 = clerp(RH.C0, cf(1, -1, -.3) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .2)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(5)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .2)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, -.7, 0) * angles(math.rad(-90), math.rad(0), math.rad(-50)), 0.25)
end
attack = false
con:disconnect()
scfr = nil
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
	k = k:lower()
	if attack == false and k == '' then

	end
end)

local sine = 0
local change = 1
local val = 0
local idle = 0

local RHCF  = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF  = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)

while true do
	swait()
	sine = sine + change
	local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	local velderp = RootPart.Velocity.y
	hitfloor, posfloor = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if attack == false then
			idle = idle + 1
		else
			idle = 0
		end
		if idle >= 500 then
			if attack == false then
			end
		end
		if RootPart.Velocity.y > 1 and hitfloor == nil then 
			Anim = "Jump"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .2)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), .2)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(40)), 0.2)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-20)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .2)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(20)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .2)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(20)), 0.25)
			end
		elseif RootPart.Velocity.y < -1 and hitfloor == nil then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), .2)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(0)), .2)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(70)), 0.2)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-70)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(30)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .2)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-30)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .2)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(-30)), 0.25)
			end
		elseif torvel < 1 and hitfloor ~= nil then
			Anim = "Idle"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-30)), .2)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-3), math.rad(-3), math.rad(30)), .2)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(20), math.rad(10)), .2)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(-15)), .2)
				RH.C0 = clerp(RH.C0, cf(1, -1, -.3) * RHCF * angles(math.rad(-3), math.rad(20), math.rad(7)), .2)
				LH.C0 = clerp(LH.C0, cf(-1, -.9, 0) * LHCF * angles(math.rad(-5), math.rad(30), math.rad(-8)), .2)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(15)), 0.25)
			end
		elseif torvel > 2 and hitfloor ~= nil then
			Anim = "Walk"
			if attack == false then
				change = 3
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(0)), .2)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-20), math.rad(0), math.rad(0)), .2)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(10)), 0.2)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-20)), 0.3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(20)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .2)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-20)) * angles(math.rad(-3), math.rad(0), math.rad(0)), .2)
				FakeHandleweld.C0 = clerp(FakeHandleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(190), math.rad(0), math.rad(-50)), 0.25)
			end
		end
	end
	if #Effects > 0 then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if Thing[1].Transparency <= 1 then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * cf(0, .5, 0)
							Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
end