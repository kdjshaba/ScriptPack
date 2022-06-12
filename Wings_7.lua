function weld(p0,p1,c0,c1,par) 
local w = Instance.new("Weld",p0 or par) 
w.Part0 = p0 
w.Part1 = p1 
w.C0 = c0 or CFrame.new()
w.C1 = c1 or CFrame.new() 
return w 
end 
local motors = {} 
function motor(p0,p1,c0,c1,des,vel,par) 
local w = Instance.new("Motor6D",p0 or par) 
w.Part0 = p0 
w.Part1 = p1 
w.C0 = c0 or CFrame.new() 
w.C1 = c1 or CFrame.new()
w.MaxVelocity = tonumber(vel) or .05 
w.DesiredAngle = tonumber(des) or 0 
return w 
end 

function lerp(a,b,c) 
return a+(b-a)*c 
end 

function ctlerp(c1,c2,al) 
local com1 = {c1:components()} 
local com2 = {c2:components()} 
for i,v in pairs(com1) do 
com1[i] = lerp(v,com2[i],al) 
end 
return CFrame.new(unpack(com1)) 
end 

do 
local function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else local i = 0 if m11 > m00 then i = 1 end if m22 > (i == 0 and m00 or m11) then i = 2 end if i == 0 then local s = math.sqrt(m00-m11-m22+1) local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip elseif i == 1 then local s = math.sqrt(m11-m22-m00+1) local recip = 0.5/s return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip elseif i == 2 then local s = math.sqrt(m22-m00-m11+1) local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip end end end local function QuaternionToCFrame(px, py, pz, x, y, z, w) local xs, ys, zs = x + x, y + y, z + z local wx, wy, wz = w*xs, w*ys, w*zs local xx = x*xs local xy = x*ys local xz = x*zs local yy = y*ys local yz = y*zs local zz = z*zs return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) end local function QuaternionSlerp(a, b, t) local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] local startInterp, finishInterp; if cosTheta >= 0.0001 then if (1 - cosTheta) > 0.0001 then local theta = math.acos(cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((1-t)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta else startInterp = 1-t finishInterp = t end else if (1+cosTheta) > 0.0001 then local theta = math.acos(-cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((t-1)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta else startInterp = t-1 finishInterp = t end end return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp end function clerp(a,b,t) local qa = {QuaternionFromCFrame(a)} local qb = {QuaternionFromCFrame(b)} local ax, ay, az = a.x, a.y, a.z local bx, by, bz = b.x, b.y, b.z local _t = 1-t return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) end end 
function tickwave(time,length,offset) return (math.abs((tick()+(offset or 0))%time-time/2)*2-time/2)/time/2*length end function invcol(c) c = c.Color return BrickColor.new(Color3.new(1-c.b,1-c.g,1-c.r)) end local oc = oc or function(...) return ... end local plr = game.Players.LocalPlayer local char = plr.Character local tor = char.Torso local hum = char.Humanoid local vel = Vector3.new() local cf = CFrame.new() local flspd = 0 local keysdown = {} local keypressed = {} local ktime = {} local descendtimer = 0 local possiblefly = 0 local cam = workspace.CurrentCamera local flying = false local moving = false hum.PlatformStand = false local winghats = {"Wings","Angel","EmpyreanreignmentII"} for _,o in pairs(char:GetChildren()) do for i,v in pairs(winghats) do if o.Name:lower() == v:lower() then o:Destroy() end end end local mod = Instance.new("Model",char) mod.Name = "Wings" local topcolor = BrickColor.new("Really black") local feacolor = topcolor local ptrans = 0 local pref = 0 local fire = false local fmcol = Color3.new() local fscol = Color3.new() local part = Instance.new("Part") part.Locked = true part.FormFactor = "Custom" part.Size = Vector3.new(.2,.2,.2) part.TopSurface,part.BottomSurface = 0,0 part.CanCollide = false part.BrickColor = topcolor part.Transparency = ptrans part.Reflectance = pref local ef = Instance.new("Fire",fire and part or nil) ef.Size = .15 ef.Color = fmcol or Color3.new() ef.SecondaryColor = fscol or Color3.new() part:BreakJoints() function newpart() local clone = part:Clone() clone.Parent = mod clone:BreakJoints() return clone end local feath = newpart() feath.BrickColor = feacolor Instance.new("SpecialMesh",feath).MeshType = "Sphere" function newfeather() local clone = feath:Clone() clone.Parent = mod clone:BreakJoints() return clone end local r1 = newpart() r1.Size = Vector3.new(.3,1.5,.3)*1.2 local rm1 = motor(tor,r1,CFrame.new(.35,.6,.4) * CFrame.Angles(0,0,math.rad(-60)) * CFrame.Angles(math.rad(30),math.rad(-25),0),CFrame.new(0,-.8,0),.1) 
local r2 = newpart() r2.Size = Vector3.new(.4,1.8,.4)*1.2 local rm2 = motor(r1,r2,CFrame.new(0,.75,0) * CFrame.Angles(0,0,math.rad(50)) * CFrame.Angles(math.rad(-30),math.rad(15),0),CFrame.new(0,-.9,0),.1) local r3 = newpart() r3.Size = Vector3.new(.3,2.2,.3)*1.2 local rm3 = motor(r2,r3,CFrame.new(.1,.9,0) * CFrame.Angles(0,0,math.rad(-140)) * CFrame.Angles(math.rad(-3),0,0),CFrame.new(0,-1.1,0),.1) local r4 = newpart() r4.Size = Vector3.new(.25,1.2,.25)*1.2 local rm4 = motor(r3,r4,CFrame.new(0,1.1,0) * CFrame.Angles(0,0,math.rad(-10)) * CFrame.Angles(math.rad(-3),0,0),CFrame.new(0,-.6,0),.1) local feather = newfeather() feather.Mesh.Scale = Vector3.new(1,1,1) feather.Size = Vector3.new(.4,3,.3) weld(r4,feather,CFrame.new(-.1,-.3,0),CFrame.new(0,-1.5,0)) feather = newfeather() feather.Mesh.Scale = Vector3.new(1,1,1) feather.Size = Vector3.new(.4,2.3,.3) weld(r4,feather,CFrame.new(.1,-.1,0) * CFrame.Angles(0,math.random()*.1,0),CFrame.new(0,-1.1,0)) feather = newfeather() feather.Mesh.Scale = Vector3.new(1,1,1) feather.Size = Vector3.new(.35,2.2,.25) weld(r4,feather,CFrame.new(.1,-.3,0) * CFrame.Angles(0,math.random()*.1,math.rad(-10)),CFrame.new(0,-1.1,0)) local rf3 = {} for i=0,7 do feather = newfeather() feather.Mesh.Scale = Vector3.new(1,1,1) feather.Size = Vector3.new(.45,2.2,.35) table.insert(rf3,motor(r3,feather,CFrame.new(.05,1-i*.285,0) * CFrame.Angles(0,math.random()*.1,math.rad(-25-i*2)),CFrame.new(0,-feather.Size.Y/2,0))) end local rf2 = {} for i=0,7 do feather = newfeather() feather.Mesh.Scale = Vector3.new(1,1,1) feather.Size = Vector3.new(.45,2.2-i*.08,.3) table.insert(rf2,motor(r2,feather,CFrame.new(.05,.75-i*.26,0) * CFrame.Angles(0,math.random()*.1,math.rad(-75-i*4)),CFrame.new(0,-feather.Size.Y/2,0))) end local rf1 = {} for i=0,6 do feather = newfeather() feather.Mesh.Scale = Vector3.new(1,1,1) feather.Size = Vector3.new(.37,1.65-i*.06,.25) 
table.insert(rf1,motor(r1,feather,CFrame.new(.05,.63-i*.21,0) * CFrame.Angles(0,math.random()*.05,math.rad(-75)),CFrame.new(0,-feather.Size.Y/2,0))) end local l1 = newpart() l1.Size = Vector3.new(.3,1.5,.3)*1.2 local lm1 = motor(tor,l1,CFrame.new(-.35,.6,.4) * CFrame.Angles(0,0,math.rad(60)) * CFrame.Angles(math.rad(30),math.rad(25),0) * CFrame.Angles(0,-math.pi,0),CFrame.new(0,-.8,0) ,.1) local l2 = newpart() l2.Size = Vector3.new(.4,1.8,.4)*1.2 local lm2 = motor(l1,l2,CFrame.new(0,.75,0) * CFrame.Angles(0,0,math.rad(50)) * CFrame.Angles(math.rad(30),math.rad(-15),0),CFrame.new(0,-.9,0),.1) local l3 = newpart() l3.Size = Vector3.new(.3,2.2,.3)*1.2 local lm3 = motor(l2,l3,CFrame.new(.1,.9,0) * CFrame.Angles(0,0,math.rad(-140)) * CFrame.Angles(math.rad(3),0,0),CFrame.new(0,-1.1,0),.1) local l4 = newpart() l4.Size = Vector3.new(.25,1.2,.25)*1.2 local lm4 = motor(l3,l4,CFrame.new(0,1.1,0) * CFrame.Angles(0,0,math.rad(-10)) * CFrame.Angles(math.rad(3),0,0),CFrame.new(0,-.6,0),.1) local feather = newfeather() feather.Mesh.Scale = Vector3.new(1,1,1) feather.Size = Vector3.new(.4,3,.3) weld(l4,feather,CFrame.new(-.1,-.3,0),CFrame.new(0,-1.5,0)) feather = newfeather() feather.Mesh.Scale = Vector3.new(1,1,1) feather.Size = Vector3.new(.4,2.3,.3) weld(l4,feather,CFrame.new(.1,-.1,0) * CFrame.Angles(0,math.random()*.1,0),CFrame.new(0,-1.1,0)) feather = newfeather() feather.Mesh.Scale = Vector3.new(1,1,1) feather.Size = Vector3.new(.35,2.2,.25) weld(l4,feather,CFrame.new(.1,-.3,0) * CFrame.Angles(0,math.random()*.1,math.rad(-10)),CFrame.new(0,-1.1,0)) local lf3 = {} for i=0,7 do feather = newfeather() feather.Mesh.Scale = Vector3.new(1,1,1) feather.Size = Vector3.new(.45,2.2,.35) table.insert(lf3,motor(l3,feather,CFrame.new(.05,1-i*.285,0) * CFrame.Angles(0,math.random()*.1,math.rad(-25-i*2)),CFrame.new(0,-feather.Size.Y/2,0))) end local lf2 = {} for i=0,7 do feather = newfeather() feather.Mesh.Scale = Vector3.new(1,1,1) feather.Size = Vector3.new(.45,2.2-i*.08,.3) 
table.insert(lf2,motor(l2,feather,CFrame.new(.05,.75-i*.26,0) * CFrame.Angles(0,math.random()*.1,math.rad(-75-i*4)),CFrame.new(0,-feather.Size.Y/2,0))) end local lf1 = {} for i=0,6 do feather = newfeather() feather.Mesh.Scale = Vector3.new(1,1,1) feather.Size = Vector3.new(.37,1.65-i*.06,.25) table.insert(lf1,motor(l1,feather,CFrame.new(.05,.63-i*.21,0) * CFrame.Angles(0,math.random()*.05,math.rad(-75)),CFrame.new(0,-feather.Size.Y/2,0))) end local rwing = {rm1,rm2,rm3,rm4} local lwing = {lm1,lm2,lm3,lm4} local oc0 = {} for i,v in pairs(rwing) do oc0[v] = v.C0 end for i,v in pairs(lwing) do oc0[v] = v.C0 end function gotResized() if lastsize then if tor.Size == lastsize then return end local scaleVec = tor.Size/lastsize for i,v in pairs(oc0) do oc0[i] = v-v.p+scaleVec*v.p end lastsize = tor.Size end lastsize = tor.Size end tor.Changed:connect(function(p) if p == "Size" then gotResized() end end) gotResized() local idle = {0,0.5,-.2,0; .05,.05,.1,.05; -.6,-1.5,.1,0;} local outlow = {-.7,-.2,1.8,0; .3,.05,.1,.05; .2,0,0,0} local outhigh = {.5,-.2,1.8,0; .3,.05,.1,.05; .2,0,0,0} local outnormal = {0,-.2,1.8,0; .05,.05,.1,.05; -.3,0,0,0} local veryhigh = {.9,-.3,1.9,0; .3,.05,.1,.05; .2,0,0,0} local flap1 = {-.3,.3,1.1,-.2; .3,.05,.1,.05; -.2,-.6,0,0} local divebomb = {0,.2,.4,-.7; .3,.05,.1,.05; 0,-.5,-.6,0} function setwings(tab,time) time = time or 10 for i=1,4 do rwing[i].DesiredAngle = tab[i] lwing[i].DesiredAngle = tab[i] rwing[i].MaxVelocity = math.abs(tab[i]-rwing[i].CurrentAngle)/time lwing[i].MaxVelocity = math.abs(tab[i]-lwing[i].CurrentAngle)/time local rcf = oc0[rwing[i]] * (tab[12+i] or CFrame.new()) local lcf = oc0[lwing[i]] * (tab[12+i] or CFrame.new()) end for i,v in pairs(rf1) do v.DesiredAngle = tab[9] v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time end for i,v in pairs(lf1) do v.DesiredAngle = tab[9] v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time end for i,v in pairs(rf2) do v.DesiredAngle = tab[10] v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time end for i,v in pairs(lf2) do v.DesiredAngle = tab[10] 
v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time end for i,v in pairs(rf3) do v.DesiredAngle = tab[11] v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time end for i,v in pairs(lf3) do v.DesiredAngle = tab[11] v.MaxVelocity = math.abs(v.DesiredAngle-v.CurrentAngle)/time end end setwings(outhigh,1) for i,v in pairs(tor:GetChildren()) do if v.ClassName:lower():match("body") then v:Destroy() end end local ctor = tor:Clone() ctor:ClearAllChildren() ctor.Name = "cTorso" ctor.Transparency = 1 ctor.CanCollide = false ctor.FormFactor = "Custom" ctor.Size = Vector3.new(.2,.2,.2) ctor.Parent = mod weld(tor,ctor) local bg = Instance.new("BodyGyro",ctor) bg.maxTorque = Vector3.new() bg.P = 15000 bg.D = 1000 local bv = Instance.new("BodyVelocity",ctor) bv.maxForce = Vector3.new() bv.P = 15000 kd = plr:GetMouse().KeyDown:connect(oc(function(key) keysdown[key] = true keypressed[key] = true if key == "2" then descendtimer = tick() elseif key == " " and tick()-(ktime[key] or 0) < .5 then possiblefly = tick() elseif (key == "a" or key == "d") and ktime[key] and tick()-ktime[key] < .3 and math.abs(reqrotx) < .3 then reqrotx = key == "a" and math.pi*2 or -math.pi*2 end ktime[key] = tick() end)) ku = plr:GetMouse().KeyUp:connect(function(key) keysdown[key] = false if key == " " then descendtimer = tick() end end) function mid(a,b,c) return math.max(a,math.min(b,c or -a)) end function bn(a) return a and 1 or 0 end function gm(tar) local m = 0 for i,v in pairs(tar:GetChildren()) do if v:IsA("BasePart") then m = m + v:GetMass() end m = m + gm(v) end return m end reqrotx = 0 local grav = 196.2 local flyspeed = 80 local maxspeed = 150 local con con = game:GetService("RunService").Stepped:connect(oc(function() if not mod:IsDescendantOf(workspace) then pcall(function() kd:disconnect() end) pcall(function() ku:disconnect() end) bg:Destroy() bv:Destroy() con:disconnect() hum.PlatformStand = false return end 
local obvel = tor.CFrame:vectorToObjectSpace(tor.Velocity) local sspd, uspd,fspd = obvel.X,obvel.Y,obvel.Z if flying then local lfldir = fldir fldir = cam.CoordinateFrame:vectorToWorldSpace(Vector3.new(bn(keysdown.d)-bn(keysdown.a),0,bn(keysdown.s)-bn(keysdown.w))).unit local lmoving = moving moving = fldir.magnitude > .1 if lmoving and not moving then idledir = lfldir*Vector3.new(1,0,1) descendtimer = tick() end local dbomb = fldir.Y < -.6 or (moving and keysdown["0"]) if moving and keysdown["0"] and lmoving then fldir = (Vector3.new(lfldir.X,math.min(fldir.Y,lfldir.Y+.01)-.1,lfldir.Z)+(fldir*Vector3.new(1,0,1))*.05).unit end local down = tor.CFrame:vectorToWorldSpace(Vector3.new(0,-1,0)) local descending = (not moving and keysdown["2"] and not keysdown[" "]) cf = ctlerp(cf,CFrame.new(tor.Position,tor.Position+(not moving and idledir or fldir)),keysdown["0"] and .02 or .07) local gdown = not dbomb and cf.lookVector.Y < -.2 and tor.Velocity.unit.Y < .05 hum.PlatformStand = true bg.maxTorque = Vector3.new(1,1,1)*9e5 local rotvel = CFrame.new(Vector3.new(),tor.Velocity):toObjectSpace(CFrame.new(Vector3.new(),fldir)).lookVector bg.cframe = cf * CFrame.Angles(not moving and -.1 or -math.pi/2+.2,moving and mid(-2.5,rotvel.X/1.5) + reqrotx or 0,0) reqrotx = reqrotx - reqrotx/10 bv.maxForce = Vector3.new(1,1,1)*9e4*.5 local anioff =(bn(keysdown[" "])-bn(keysdown["2"]))/2 local ani = tickwave(1.5-anioff,1) bv.velocity = bv.velocity:Lerp(Vector3.new(0,bn(not moving)*-ani*15+(descending and math.min(20,tick()-descendtimer)*-8 or bn(keysdown[" "])-bn(keysdown["2"]))*15,0)+vel,.6) vel = moving and cf.lookVector*flspd or Vector3.new() acceleration = moving and (fldir.Y < 0 and (acceleration or 0) + -fldir.Y*grav/60) or lerp((acceleration or 0),0,.02) or 0 flspd = lerp(flspd,moving and math.min(maxspeed,flyspeed + acceleration) or 0,.1) setwings(moving and (gdown and outlow or dbomb and divebomb) or (descending and veryhigh or flap1),15) for i=1,4 do 
rwing[i].C0 = clerp(rwing[i].C0,oc0[rwing[i]] * (gdown and CFrame.new() or dbomb and CFrame.Angles(-.5+bn(i==3)*.4+bn(i==4)*.5,.1+bn(i==2)*.5-bn(i==3)*1.1,bn(i==3)*.1) or descending and CFrame.Angles(.3,0,0) or CFrame.Angles((i*.1+1.5)*ani,ani*-.5,1*ani)),descending and .8 or .2) lwing[i].C0 = clerp(lwing[i].C0,oc0[lwing[i]] * (gdown and CFrame.new() or dbomb and CFrame.Angles(-(-.5+bn(i==3)*.4+bn(i==4)*.5),-(.1+bn(i==2)*.5-bn(i==3)*1.1),bn(i==3)*.1) or descending and CFrame.Angles(-.3,0,0) or CFrame.Angles(-(i*.1+1.5)*ani,ani*.5,1*ani)),descending and .8 or .2) end if down.Y < -.85 then local ignlist = {char} local hit,ray repeat hit,ray = workspace:FindPartOnRayWithIgnoreList(Ray.new(tor.Position,Vector3.new(0,-3.5+math.min(0,bv.velocity.y)/30,0)),ignlist) if hit then if hit.CanCollide then break else table.insert(ignlist,hit) end else break end until false if hit then flying = false hum.PlatformStand = false tor.Velocity = Vector3.new() end end else bg.maxTorque = Vector3.new() bv.maxForce = Vector3.new() local ani = tickwave(walking and .8 or 4.5,1) setwings(keysdown["2"] and outnormal or idle,15) local x,y,z = fspd/160,uspd/700,sspd/900 for i=1,4 do rwing[i].C0 = clerp(rwing[i].C0,oc0[rwing[i]] * CFrame.Angles(ani*.1 + -mid(-.1,x),0 + -mid(-.1,y) + bn(i==2)*.6,ani*.02 + -mid(-.1,z)) * CFrame.Angles(0,bn(i==2)*-.1,0),.2) lwing[i].C0 = clerp(lwing[i].C0,oc0[lwing[i]] * CFrame.Angles(ani*-.05 + mid(-.1,x),0 + mid(-.1,y) + -bn(i==2)*.6,ani*.02 + mid(-.1,z)) * CFrame.Angles(0,bn(i==2)*-.1,0),.2) end if keypressed[" "] and not flying and (tick()-possiblefly < .5) then vel = Vector3.new(0,50,0) bv.velocity = vel idledir = cam.CoordinateFrame.lookVector*Vector3.new(1,0,1) cf = tor.CFrame * CFrame.Angles(-.01,0,0) tor.CFrame = cf bg.cframe = cf flystart = tick() flying = true end end keypressed = {} end))
