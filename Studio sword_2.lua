me = game.Players.yfc
char = me.Character
selected = false
attacking = false
hurt = false
normaldmg = 10
splashdmg = 20
dmg = normaldmg

function getnoobs(pos,dist)
	local stoof = {}
	for _,v in pairs(workspace:children()) do
		local h,t = v:findFirstChild("Humanoid"), v:findFirstChild("Torso")
		if h ~= nil and t ~= nil and v:IsA("Model") and v ~= char then
			if (t.Position - pos).magnitude < dist then
				table.insert(stoof,v)
			end
		end
	end
	return stoof
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

rarm = char:findFirstChild("Right Arm")
larm = char:findFirstChild("Left Arm")
torso = char:findFirstChild("Torso")
hum = char:findFirstChild("Humanoid")

slash = Instance.new("Sound",torso)
slash.Volume = 1
slash.Pitch = 1
slash.SoundId = "rbxasset://sounds\\swordslash.wav"

charge = Instance.new("Sound",torso)
charge.Volume = 1
charge.Pitch = 0.5
charge.SoundId = "http://www.roblox.com/asset/?id=2101137"

brek = Instance.new("Sound",torso)
brek.Volume = 1
brek.Pitch = 0.65
brek.SoundId = "http://www.roblox.com/asset/?id=2974249"

uns = Instance.new("Sound",torso)
uns.Volume = 1
uns.Pitch = 1
uns.SoundId = "rbxasset://sounds\\unsheath.wav"

absc = Instance.new("Sound",torso)
absc.Volume = 1
absc.Pitch = 0.34
absc.SoundId = "http://www.roblox.com/asset/?id=13775494"

jump = Instance.new("Sound",torso)
jump.Volume = 1
jump.Pitch = 2.4
jump.SoundId = "http://www.roblox.com/asset/?id=12222124"

pwns = Instance.new("Sound",torso)
pwns.Volume = 1
pwns.Pitch = 1.6
pwns.SoundId = "http://www.roblox.com/asset/?id=2974000"

bg = Instance.new("BodyGyro",nil)
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg.P = 15000
bp = Instance.new("BodyPosition",nil)
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.P = 15000

pcall(function() char.Sword:remove() end)

mod = Instance.new("Model",char)
mod.Name = "Sword"

hold = Instance.new("Part")
prop(hold,mod,false,1,0,0.5,0.5,0.5,1,false,"Custom")
hw = Instance.new("Weld")
weld(hw,rarm,hold,0,0,0,0,1,0)

main = Instance.new("Part")
prop(main,mod,false,0,0.04,0.44,1.7,0.44,"Dark grey",false,"Custom")
Instance.new("CylinderMesh",main)
wewe = Instance.new("Weld")
weld(wewe,hold,nil,math.pi/2,0,math.pi/2,0,0,0)

torsohold = Instance.new("Weld")
weld(torsohold,torso,main,0,0,math.rad(36)+math.pi,-1.1,-1.65,-0.8)

sp = Instance.new("Part")
prop(sp,mod,false,0,0,0.6,0.4,0.6,"Navy blue",false,"Custom")
Instance.new("SpecialMesh",sp).MeshType = "Sphere"
w1 = Instance.new("Weld")
weld(w1,main,sp,0,0,0,0,0.8,0)

heh = Instance.new("Part")
prop(heh,mod,false,0,0.12,0.9,0.3,0.5,"Navy blue",false,"Custom")
w2 = Instance.new("Weld")
weld(w2,main,heh,0,0,0,0,-0.9,0)
Instance.new("BlockMesh",heh)

blade = Instance.new("Part")
prop(blade,mod,false,0,0.1,0.65,4,0.15,"Medium grey",false,"Custom")
w3 = Instance.new("Weld")
weld(w3,heh,blade,0,0,0,0,-blade.Size.Y/2,0)
Instance.new("BlockMesh",blade)

tip = Instance.new("Part")
prop(tip,mod,false,0,0.1,0.46,0.46,0.12,"Medium grey",false,"Custom")
w4 = Instance.new("Weld")
weld(w4,blade,tip,0,0,math.pi/4,0,-blade.Size.Y/2,0)
Instance.new("BlockMesh",tip)

lols = {}
touchs = {}
table.insert(lols,blade)
table.insert(lols,tip)
table.insert(touchs,blade)
table.insert(touchs,tip)

for i=blade.Size.Y/2,-blade.Size.Y/2,-0.2 do
	local pf = Instance.new("Part")
	prop(pf,mod,false,1,0,0.65,0.1,0.15,1,false,"Custom")
	local wa = Instance.new("Weld")
	weld(wa,blade,pf,0,0,0,0,i,0)
	table.insert(touchs,pf)
end

rb = Instance.new("Part")
prop(rb,mod,false,1,0,0.5,0.5,0.5,1,false,"Custom")
rbw = Instance.new("Weld")
weld(rbw,torso,rb,0,0,0,-1.5,-0.5,0)

lb = Instance.new("Part")
prop(lb,mod,false,1,0,0.5,0.5,0.5,1,false,"Custom")
lbw = Instance.new("Weld")
weld(lbw,torso,lb,0,0,0,1.5,-0.5,0)

rw = Instance.new("Weld")
weld(rw,rb,nil,0,0,0,0,0.5,0)

lw = Instance.new("Weld")
weld(lw,lb,nil,0,0,0,0,0.5,0)

function showdmg(d)
	local pa = Instance.new("Part")
	prop(pa,mod,false,1,0,1,1,1,1,true,"Symmetric")
	pa.CFrame = CFrame.new(blade.Position)
	local bill = Instance.new("BillboardGui",pa)
	bill.Size = UDim2.new(0,50,0,35)
	bill.Adornee = pa
	local tx = Instance.new("TextLabel",bill)
	tx.Size = bill.Size
	tx.Position = UDim2.new(0,0,0,-30)
	tx.BackgroundTransparency = 1
	tx.Text = d
	tx.FontSize = "Size24"
	tx.TextColor3 = Color3.new(0,0,0)
	local poz = pa.Position
	for i=0,7,0.4 do
		wait()
		pa.CFrame = CFrame.new(poz.X, poz.Y+i, poz.Z)
	end
	pa:remove()
end

deb = true

function kill(h)
	if hurt and deb then
		local hu, to = h.Parent:findFirstChild("Humanoid"), h.Parent:findFirstChild("Torso")
		if hu ~= nil and to ~= nil and h.Parent ~= char then
			if hu.Health > 0 then
				deb = false
				local damg = math.random(dmg/4,dmg)
				local chance = math.random(1,5)
				if chance >= 3 then
					hu.PlatformStand = true
					coroutine.resume(coroutine.create(function()
						wait()
						to.Velocity = CFrame.new(torso.Position, to.Position).lookVector * damg/2
						wait(0.1)
						hu.PlatformStand = false
					end))
				else
					damg = 0
				end
				hu.Health = hu.Health - damg
				coroutine.resume(coroutine.create(function()
					showdmg(damg)
				end))
				wait(0.3)
				deb = true
			end
		end
	end
end

for _,v in pairs(touchs) do
	v.Touched:connect(kill)
end

if script.Parent.className  ~= "HopperBin" then
	h = Instance.new("HopperBin",me.Backpack)
	h.Name = "Sword"
	script.Parent = h
end

bin = script.Parent

local mw = nil
local meow = nil
local tsah = nil
battleright = nil
battleleft = nil
battlewep = nil

function eff()
	for _,v in pairs(lols) do
	local ah = v:clone()
	ah.Parent = mod
	ah.Anchored = true
	ah.CFrame = v.CFrame
	ah.Transparency = 0.3
	ah.Reflectance = 0.3
	coroutine.resume(coroutine.create(function()
		wait(0.15)
		for i=0.3,1,0.12 do
			ah.Transparency = i
			wait()
		end
		ah:remove()
	end))
	end
end

function eff2()
	local pa = Instance.new("Part")
	prop(pa,mod,false,0.1,0,1,1,1,"Institutional white",true,"Custom")
	pa.CFrame = CFrame.new(torso.Position) * CFrame.new(0,-2.9,0) * CFrame.Angles(0,math.random(-320,320)/100,0)
	local md = Instance.new("SpecialMesh",pa)
	md.Scale = Vector3.new(5.5,4,5.5)
	md.MeshId = "http://www.roblox.com/asset/?id=20329976"
	coroutine.resume(coroutine.create(function()
	for i=5.5,0,-0.6 do
		md.Scale = Vector3.new(i,i/1.4,i)
		pa.Transparency = pa.Transparency + 0.1
		wait()
	end
	pa:remove()
	end))
end

function selmot()
	rw.Part1 = rarm
	for i=0,140,14 do
		rw.C0 = CFrame.Angles(-math.rad(i/1.1),math.rad(i/2.5),math.rad(-i/6))
		wait()
	end
	lo = rw.C0
	meow = lo
	torsohold.Part1 = nil
	wewe.Part1 = main
	uns:play()
	for i=0,140,17 do
		rw.C0 = lo * CFrame.Angles(math.rad(-i),0,0)
		wewe.C0 = CFrame.Angles(math.rad(-i/2),0,0)
		wait()
	end
	lo = rw.C0
	mw = lo
	local hih = wewe.C0
	tsah = hih
	lw.Part1 = larm
	wait()
	for i=0,130,17 do
		rw.C0 = lo * CFrame.Angles(math.rad(i/4),math.rad(i/4),math.rad(-i/1.8)) * CFrame.new(-i/220,-i/500,0)
		lw.C0 = CFrame.new(i/130,-i/600,-i/160) * CFrame.Angles(math.rad(i/1.4),0,math.rad(i/2.6))
		wewe.C0 = hih * CFrame.Angles(math.rad(i/1.8),0,0)
		wait()
	end
	if battleright == nil then
		battleright = rw.C0
		battleleft = lw.C0
		battlewep = wewe.C0
	end
	selected = true
end

function deselmot()
	for i=130,0,-17 do
		rw.C0 = mw * CFrame.Angles(math.rad(i/4),math.rad(i/4),math.rad(-i/1.8)) * CFrame.new(-i/220,-i/500,0)
		lw.C0 = CFrame.new(i/130,-i/600,-i/160) * CFrame.Angles(math.rad(i/1.4),0,math.rad(i/2.6))
		wewe.C0 = tsah * CFrame.Angles(math.rad(i/1.8),0,0)
		wait()
	end
	lw.Part1 = nil
	for i=140,0,-17 do
		rw.C0 = meow * CFrame.Angles(math.rad(-i),0,0)
		wewe.C0 = CFrame.Angles(math.rad(-i/2),0,0)
		wait()
	end
	wewe.Part1 = nil
	torsohold.Part1 = main
	for i=140,0,-14 do
		rw.C0 = CFrame.Angles(-math.rad(i/1.1),math.rad(i/2.5),math.rad(-i/6))
		wait()
	end
	rw.Part1 = nil
	rw.C0 = CFrame.new(0,0,0)
	lw.C0 = CFrame.new(0,0,0)
	selected = false
end

function attack()
	if attacking == false then
	attacking = true
	slash.Pitch = 1
	slash:play()
	for i=0,100,12 do
		rw.C0 = battleright * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.5),0,0)
		lw.C0 = battleleft * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.5),0,0)
		wait()
	end
	local lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
	hurt = true
	for i=0,140,16 do
		rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i),0,0)
		lw.C0 = lo2 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i/1.4),0,0)
		wewe.C0 = lo3 * CFrame.Angles(math.rad(-i/2.8),0,0)
		eff()
		wait()
	end
	hurt = false
	lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
	for i=0,70,10 do
		rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.2),0,0)
		lw.C0 = lo2 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.9),0,0)
		wewe.C0 = lo3 * CFrame.Angles(math.rad(i/2),0,0)
		wait()
	end
	rw.C0 = battleright
	lw.C0 = battleleft
	wewe.C0 = battlewep
	attacking = false
	end
end

function stab()
	if attacking == false then
		attacking = true
		for i=0,100,12 do
			rw.C0 = battleright * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i/1.1),math.rad(-i/7),math.rad(-i/2.6))
			lw.C0 = battleleft * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i/1.1),0,0)
			wewe.C0 = battlewep * CFrame.Angles(math.rad(i/2.2),0,0)
			wait()
		end
		local lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
		hurt = true
		slash.Pitch = 1.1
		slash:play()
		for i=0,100,15 do
			rw.C0 = lo * CFrame.new(-i/150,0,-i/150) * CFrame.Angles(math.rad(i/1.4),0,0)
			lw.C0 = lo2 * CFrame.new(-i/240,0,i/400) * CFrame.Angles(math.rad(i/1.4),0,0)
			wewe.C0 = lo3 * CFrame.Angles(math.rad(-i*1.3),0,0)
			eff()
			wait()
		end
		hurt = false
		lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
		for i=0,90,10 do
			rw.C0 = lo * CFrame.new(i/150,i/170,i/240) * CFrame.Angles(math.rad(i/5.4),math.rad(i/2.3),0)
			lw.C0 = lo2 * CFrame.new(i/240,-i/280,0) * CFrame.Angles(math.rad(i/4),0,0)
			wewe.C0 = lo3 * CFrame.Angles(math.rad(i/1.2),0,0)
			wait()
		end
		rw.C0 = battleright
		lw.C0 = battleleft
		wewe.C0 = battlewep
		attacking = false
	end
end

function side()
	if attacking == false then
		attacking = true
		for i=0,90,9 do
			rw.C0 = battleright * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),math.rad(-i),math.rad(i))
			lw.C0 = battleleft * CFrame.new(i/270,i/230,0) * CFrame.Angles(0,0,math.rad(i/2.1))
			wewe.C0 = battlewep * CFrame.Angles(math.rad(-i/3),0,0)
			wait()
		end
		local lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
		hurt = true
		slash.Pitch = 1.2
		slash:play()
		for i=0,90,10 do
			rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i/1.5),0,0)
			lw.C0 = lo2 * CFrame.new(0,i/230,0) * CFrame.Angles(0,0,math.rad(-i*1.2))
			wewe.C0 = lo3 * CFrame.Angles(math.rad(-i/1.8),0,0)
			eff()
			wait()
		end
		lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
		hurt = false
		for i=0,90,10 do
			rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i/1.5),math.rad(i/1),0)
			lw.C0 = lo2 * CFrame.new(math.rad(i/2),math.rad(-i/6.5),0) * CFrame.Angles(0,0,math.rad(i/1.3))
			wewe.C0 = lo3 * CFrame.Angles(math.rad(i/1.1),0,0)
			wait()
		end
		rw.C0 = battleright
		lw.C0 = battleleft
		wewe.C0 = battlewep
		attacking = false
	end
end

function pow()
	if attacking == false then
		attacking = true
		for i=0,90,15 do
			rw.C0 = battleright * CFrame.new(i/140,0,0) * CFrame.Angles(math.rad(-i/4),0,math.rad(i))
			lw.C0 = battleleft * CFrame.new(0,i/90,0) * CFrame.Angles(0,0,math.rad(-i*1.5))
			wewe.C0 = battlewep * CFrame.Angles(math.rad(-i),0,math.rad(-i))
			wait()
		end
		local lo, lo2, lo3 = rw.C0, lw.C0, wewe.C0
		local poz = CFrame.new(torso.Position)
		bp.position = poz.p
		bp.Parent = torso
		bg.cframe = CFrame.new(torso.Position, torso.CFrame * CFrame.new(0,0,-10).p)
		bg.Parent = torso
		coroutine.resume(coroutine.create(function()
			local ma = Instance.new("Part")
			prop(ma,mod,false,0,0,1,1,1,"White",true,"Custom")
			ma.CFrame = poz * CFrame.new(0,45,0)
			local mam = Instance.new("CylinderMesh",ma)
			mam.Scale = Vector3.new(3,1,3)
			for i=1,50,5 do
				mam.Scale = Vector3.new(i/9,i*1.3,i/9)
				ma.CFrame = poz * CFrame.new(0,-mam.Scale.Y/2+45,0)
				wait()
			end
			brek:play()
			local p = Instance.new("Part")
			prop(p,mod,false,0,0,1,1,1,"White",true,"Custom")
			p.CFrame = poz
			local a = Instance.new("SpecialMesh",p)
			a.MeshId = "http://www.roblox.com/asset/?id=20329976"
			a.Scale = Vector3.new(2,2,2)
			local p2 = p:clone()
			p2.Parent = mod
			local nubs = getnoobs(poz.p,7)
			for _,v in pairs(nubs) do
				v.Humanoid.PlatformStand = true
				v.Humanoid.Health = v.Humanoid.Health - math.random(splashdmg/2, splashdmg)
				v.Torso.Velocity = CFrame.new(poz.p,v.Torso.Position).lookVector * 25
				v.Torso.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
				coroutine.resume(coroutine.create(function() wait(0.6) v.Humanoid.PlatformStand = false end))
			end
			for i=2,12,0.8 do
				wait()
				p.CFrame = poz * CFrame.Angles(0,math.rad(i*10),0)
				a.Scale = Vector3.new(i,i/1.25,i)
				p.Transparency = (i/10)-0.2
				p2.Transparency = p.Transparency
				p2.Mesh.Scale = Vector3.new(i/1.6,i/2.2,i/1.6)
				p2.CFrame = poz * CFrame.Angles(0,math.rad(-i*10),0)
				ma.Transparency = (i/10)-0.2
			end
			p:remove()
			p2:remove()
			ma:remove()
		end))
		for i=0,60,20 do
			rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),0,0)
			lw.C0 = lo2 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),0,0)
			wait()
		end
		wait(0.8)
		bg.Parent = nil
		bp.Parent = nil
		for i=60,0,-20 do
			rw.C0 = lo * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),0,0)
			lw.C0 = lo2 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(i),0,0)
			wait()
		end
		for i=90,0,-15 do
			rw.C0 = battleright * CFrame.new(i/140,0,0) * CFrame.Angles(math.rad(-i/4),0,math.rad(i))
			lw.C0 = battleleft * CFrame.new(0,i/90,0) * CFrame.Angles(0,0,math.rad(-i*1.5))
			wewe.C0 = battlewep * CFrame.Angles(math.rad(-i),0,math.rad(-i))
			wait()
		end
		rw.C0 = battleright
		lw.C0 = battleleft
		wewe.C0 = battlewep
		wait(0.4)
		attacking = false
	end
end

function keys(k)
	if hum.Health > 0 and bin.Parent ~= nil and selected then
		local key = k:lower()
		if key == "q" then
			stab()
		elseif key == "e" then
			side()
		elseif key == "f" then
			pow()
		end
	end
end

function select(mouse)
	if bin.Parent ~= nil then
	repeat wait() until selected == false and attacking == false
	selmot()
	mouse.Button1Down:connect(function() 
		if hum.Health > 0 and bin.Parent ~= nil then
			attack()
		end
	end) 
	mouse.KeyDown:connect(function(key) keys(key) end)
	end
end

function desel()
	repeat wait() until selected == true and attacking == false
	deselmot()
end

bin.Selected:connect(select)
bin.Deselected:connect(desel)
