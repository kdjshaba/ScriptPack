loadstring(_G[" TBLib "])()
 
Player=game:GetService("Players").LocalPlayer
Char=Player.Character
Backpack=Player.Backpack
PlayerGui=Player.PlayerGui
Torso=Char.Torso
Head=Char.Head
Hum=Char.Humanoid
Cam=workspace.CurrentCamera
Tn="TBSword"
 
pcall(function() Backpack[Tn]:Remove() end)
pcall(function() Cam[Tn]:Remove() end)
pcall(function() thesuit=Char[''] end)
pcall(function() thesuit[Tn]:Remove() end)
pcall(function() PlayerGui[Tn]:Remove() end)
pcall(function() Char.Block:Remove() end)
 
CModel=qi{'Model',Cam,Name=Tn}
Tool=qi{'HopperBin',Player.Backpack,Name=Tn}
Suit=qi{'Model',Char,Name=''}
Weapon=qi{'Model',Suit,Name=Tn}
Gui=qi{'ScreenGui',PlayerGui,Name=Tn}
Block=qi{'NumberValue',Char,Name='Block'}
 
equip="unequipped"
anim=""
keys={}
UseGyro=true
fmouse=nil
Combo=0
maxmp=565
mp=maxmp
running=false
 
ids = {}
ids.Chakram = 18430887
ids.chakram = 47260990
ids.Diamond = 9756362
ids.Slash = 10209645
ids.Slash2 = 46760716
ids.Slash3 = 10209640
ids.Crown = 20329976
ids.Crown2 = 1323306
ids.Crack = 49173398
ids.Spike = 1033714
ids.Hit = 10209590
ids.Flame = 31760113
ids.Shine = 48965808
ids.Icon = 51902588
ids.Ring =  3270017 
ids.MoonArc2 = 74132306
ids.MoonArc = 87839445
ids.Block = 'rbxasset://sounds\\metal.ogg'
ids.MoonArcShoot = 10209268
ids.Explode = 2697431
 
for i,v in pairs(ids) do 
        if type(v)=='number' then 
                ids[i]='http://www.roblox.com/asset/?id='..v
        end
        game:GetService("ContentProvider"):Preload(ids[i])
end
 
Limbs={
        LS=Torso:findFirstChild'Left Shoulder',
        RS=Torso:findFirstChild'Right Shoulder',
        LH=Torso:findFirstChild'Left Hip',
        RH=Torso:findFirstChild'Right Hip'
}
if _G.Limbz then 
        Limbs.LS=Limbs.LS or _G.Limbz.LS
        Limbs.RS=Limbs.RS or _G.Limbz.RS
        Limbs.LH=Limbs.LH or _G.Limbz.LH
        Limbs.RH=Limbs.RH or _G.Limbz.RH
end 
_G.Limbz=Limbs
Torso.Neck.C0=cn(0,1.5,0) Torso.Neck.C1=cn(0,0,0)
c2(Torso.Neck,1,3,0,1.5,0,0,0,0)
LS,RS,LH,RH=Limbs.LS,Limbs.RS,Limbs.LH,Limbs.RH
LA,RA,LL,RL=Char['Left Arm'],Char['Right Arm'],Char['Left Leg'],Char['Right Leg']
LS.Part0,RS.Part0,LH.Part0,RH.Part0=Torso,Torso,Torso,Torso
LS.Part1,RS.Part1,LH.Part1,RH.Part1=LA,RA,LL,RL
 
pcall(function() thesuit:Remove() end)
 
fTorso=Char.HumanoidRootPart tw=fTorso.RootJoint hw=Torso.Neck c2(tw,1,3,0,0,0,90,180,0)
la=qi{'Weld',Torso,Part0=Torso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)} ra=qi{'Weld',Torso,Part0=Torso,C0=cn(1.5,0.5,0),C1=cn(0,0.5,0)}
ll=qi{'Weld',Torso,Part0=Torso,C0=cn(-0.5,-1,0),C1=cn(0,1,0)} rl=qi{'Weld',Torso,Part0=Torso,C0=cn(0.5,-1,0),C1=cn(0,1,0)}
 
Arms = function(on)
        if on then
                LS.Part1=nil RS.Part1=nil
                la.Part0=Torso ra.Part0=Torso
                la.Part1=LA ra.Part1=RA 
                la.C0,la.C1=cn(-1.5,0.5,0),cn(0,0.5,0) 
                ra.C0,ra.C1=cn(1.5,0.5,0),cn(0,0.5,0)
        else
                LS.Parent,RS.Parent=Torso,Torso 
                LS.Part0=Torso 
                RS.Part0=Torso 
                LS.Part1=LA 
                RS.Part1=RA
                la.Part1=nil ra.Part1=nil
        end
end
 
Legs = function(on)
        if on then
                LH.Part1=nil RH.Part1=nil
                ll.Part0=Torso rl.Part0=Torso
                ll.Part1=LL rl.Part1=RL 
                ll.C0,ll.C1=cn(-0.5,-1,0),cn(0,1,0) 
                rl.C0,rl.C1=cn(0.5,-1,0),cn(0,1,0)
        else
                LH.Parent,RH.Parent=Torso,Torso 
                LH.Part0=Torso 
                RH.Part0=Torso 
                LH.Part1=LL 
                RH.Part1=RL
                ll.Part1=nil rl.Part1=nil
        end
end
 
Design=function(c)
        ha=pa(Weapon,"","Block",0.4,1.5,0.4,false,false,0,0,c[1]) haw=weld(ha,Torso,ha,1.5,2,0.6,rd(180),0,rd(30)) qi{"CylinderMesh",ha}
        for i=1,15 do 
                hp=pa(Weapon,"","Block",0.4,0.2,0.4,false,false,0,0,c[4]) 
                weld(hp,ha,hp,0,-0.75+(i/10),0,0,0,0) 
                qi{"CylinderMesh",hp,Scale=v3(1.05,0.25,1.05)} 
        end
        p0=pa(Weapon,"","Block",0,0,0,false,false,0,0,c[1]) weld(p0,ha,p0,0,-0.85,0,0,0,0) qi{'SpecialMesh',p0,MeshId=ids.Diamond,Scale=v3(0.8,0.5,0.8)}
        p1=pa(Weapon,"","Block",0,0,0,false,false,0,0,c[4]) weld(p1,ha,p1,0,1.4,0,0,0,0) qi{'SpecialMesh',p1,MeshId=ids.Chakram,Scale=v3(0.8,0.8,5)}
        p2=pa(Weapon,"","Block",0,0,0,false,false,0,0,c[4]) chakw=weld(p2,p1,p2,0,0,0,0,0,0) qi{'SpecialMesh',p2,MeshId=ids.chakram,Scale=v3(1.6,1.6,4)}
        for i=0,45,120/6 do
                p3=pa(Weapon,"","Block",0,0,0,false,false,0,0,c[4]) local p3w=weld(p3,p1,p3,0,0,0,0,0,0) qi{'SpecialMesh',p3,MeshId=ids.Diamond,Scale=v3(0.3,0.6,0.3)}
                p3w.C0=cn(0,0,0)*ca(0,0,rd(-45+i*2))*cn(1,0,0)*ca(0,0,rd(90))
        end
        for i=0,45,120/6 do
                p4=pa(Weapon,"","Block",0,0,0,false,false,0,0,c[4]) local p4w=weld(p4,p1,p4,0,0,0,0,0,0) qi{'SpecialMesh',p4,MeshId=ids.Diamond,Scale=v3(0.3,0.6,0.3)}
                p4w.C0=cn(0,0,0)*ca(0,0,rd(-35+i*2))*cn(-1,0,0)*ca(0,0,rd(-90))
        end
        p5=pa(Weapon,"","Block",0.8,2.5,0.2,false,false,0,0,c[3]) weld(p5,ha,p5,0,3.3-0.03,0,0,0,0) qi{"BlockMesh",p5}
        p6=pa(Weapon,"","Block",0.2,2.5+0.125,0.2,false,false,0,0,c[2]) weld(p6,p5,p6,0.5,-0.125/2,0,0,0,0) qi{"BlockMesh",p6}
        p7=pa(Weapon,"","Block",0.2,2.5+0.125,0.2,false,false,0,0,c[2]) weld(p7,p5,p7,-0.5,-0.125/2,0,0,0,0) qi{"BlockMesh",p7}
        p8=pa(Weapon,"","Block",0.2,0.8,0.4,false,false,0,0,c[3]) weld(p8,p5,p8,0.2,1.65,0,0,rd(-90),0) qi{"SpecialMesh",p8,MeshType="Wedge"}
        p9=pa(Weapon,"","Block",0.2,0.8,0.4,false,false,0,0,c[3]) weld(p9,p5,p9,-0.2,1.65,0,0,rd(90),0) qi{"SpecialMesh",p9,MeshType="Wedge"}
 
        j1=pa(Weapon,"","Block",0,0,0,false,false,1,0) weld(j1,p6,j1,0.1,(2.5+0.125)/2,0,0,0,rd(36.75))
        p10=pa(Weapon,"","Block",0.21,1.005,0.2,false,false,0,0,c[2]) weld(p10,j1,p10,-0.1,p10.Size.Y/2,0,0,rd(90),0) qi{"SpecialMesh",p10,MeshType="Wedge"}
 
        j2=pa(Weapon,"","Block",0,0,0,false,false,1,0) weld(j2,p7,j2,-0.1,(2.5+0.125)/2,0,0,0,rd(-36.75))
        p11=pa(Weapon,"","Block",0.21,1.005,0.2,false,false,0,0,c[2]) weld(p11,j2,p11,0.1,p11.Size.Y/2,0,0,rd(-90),0) qi{"SpecialMesh",p11,MeshType="Wedge"}
        
        tb1=pa(Weapon,"","Block",0.6,0.2,0.2,false,false,0,0,c[4]) weld(tb1,p5,tb1,-0.05,-0.5,-0.01,0,0,0) qi{"BlockMesh",tb1,Scale=v3(1,0.5,1)}
        tb2=pa(Weapon,"","Block",0.2,0.6,0.2,false,false,0,0,c[4]) weld(tb2,tb1,tb2,0.35,0,0,0,0,0) qi{"BlockMesh",tb2,Scale=v3(0.5,1,1)}
        tb3=pa(Weapon,"","Block",0.7,0.2,0.2,false,false,0,0,c[4]) weld(tb3,tb1,tb3,0.05,0.5,0,0,0,0) qi{"BlockMesh",tb3,Scale=v3(1,0.5,1)}
        tb4=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[4]) weld(tb4,tb3,tb4,0.3,0.1,0,0,0,0) qi{"BlockMesh",tb4,Scale=v3(0.5,1,1)}
        tb5=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[4]) weld(tb5,tb3,tb5,0,0.1,0,0,0,0) qi{"BlockMesh",tb5,Scale=v3(0.5,1,1)}
        tp5=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[4]) weld(tp5,tb3,tp5,-0.3,0.1,0,0,0,0) qi{"BlockMesh",tp5,Scale=v3(0.5,1,1)}
        for i=0,180,360/20 do
        tb7=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[4]) local tb7w=weld(tb7,tb4,tb7,0,0,0,0,0,0) qi{"BlockMesh",tb7,Scale=v3(0.5,0.5,1)}
        tb7w.C0=cn(-0.15,0.1,0)*ca(0,0,rd(i))*cn(0.15,0,0)
        end
        for i=0,180,360/20 do
                tb8=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[4]) 
                local tb8w=weld(tb8,tp5,tb8,0,0,0,0,0,0) 
                qi{"BlockMesh",tb8,Scale=v3(0.5,0.5,1)}
                tb8w.C0=cn(0.15,0.1,0)*ca(0,0,rd(i))*cn(0.15,0,0)
        end
 
        for i,v in pairs(Weapon:GetChildren()) do 
                v.CanCollide=false 
                v.Name="Ignore" 
        end
end
 
Design({"Navy blue","Medium stone grey","Dark stone grey","Really black"})
Arms(false) Legs(false)
 
Dealt={15,20}
BBD,BBT=0,{}
BBD2,BBT2=0,{}
CritChance = 10
CriticalSeverity=2.25
 
BladeHit=function(hit)
        local Hum=GetHum(hit)
        if not Hum or BBD==0 or BBT[Hum.Parent] then return end
        BBT[Hum.Parent]=1
        if rn(1,100)<=CritChance then
                Dmg(Hum,rn(Dealt[1],Dealt[2])*CriticalSeverity,true)
        else
                Dmg(Hum,rn(Dealt[1],Dealt[2]),false)
        end        
        local HMT=Hum.Parent:findFirstChild'Torso' 
        if BBD==2 and HMT then 
                AddBV(20,cn(Torso.Position,HMT.Position),HMT,0.15) 
        end
        so(ids.Hit,HMT,1,1)
        wait(0.4)
        BBT[Hum.Parent]=nil
end
 
for i,v in pairs(Weapon:GetChildren()) do v.Touched:connect(BladeHit) end
 
function Destroy(Directory,Part,Distance) 
        for i,v in pairs(Directory:GetChildren()) do 
                if v:IsA("BasePart") and not GetHum(v) and v.Parent.Name~=Tn and v.Parent.Name~=Suit.Name and v.Name~="Ignore" and v.Name~="Base" then 
                        if (Part.Position-v.Position).magnitude<=Distance and v:GetMass()<=1000 then
                                v.Anchored=false
                                v:BreakJoints()
                                v.CFrame=cn(v.Position,Part.Position)*ca(0,rd(180),0) 
                                v.Velocity=cn(Part.Position,v.Position).lookVector*50
                        end
                elseif v:IsA("Model") or v:IsA("Script") or v:IsA("BasePart") and v.Name=="Base" then 
                        Destroy(v,Part,Distance) 
                end 
        end
end
 
GetRegion2 = function(pos,ra,f,f2) -- range get 
        local p0,p1=pos-v3(ra/2,ra/2,ra/2),pos+v3(ra/2,ra/2,ra/2)
        q(function()
                for i,v in pairs(workspace:FindPartsInRegion3(Region3.new(p0,p1),nil,100))  do 
                        local Hum=GetHum(v)
                        if v.Name=='Torso' and Hum and Hum.Health>0  then 
                                q(function()  f(Hum,v)  end) 
                        elseif f2 and not Hum then 
                                q(function()  f2(v)  end) 
                        end 
                end
        end) 
end 
 
RangeAnim=function(obj,sticks,times,speed,range,fu,ignor,isanc,nobreak,dohit)
        local isanc = isanc or false
        local sts = {}
        local Hit,Pos
        for i,v in pairs(sticks) do 
                sts[v]=v.CFrame:toObjectSpace(obj.CFrame)
        end
        for ty=1,times do 
                if not obj.Parent then return end 
                obj.CFrame=obj.CFrame*cn(0,0,-speed)
                for i,v in pairs(sts) do i.CFrame=obj.CFrame*v end
                local hit,pos=ray(obj.Position,obj.Position-obj.CFrame*cn(0,0,1).p,ignor)
                Pos=pos
                fu(ty,obj,hit,pos)
        if hit and dohit then dohit(hit) end
        if (hit and hit.Name~='unray') and (pos-obj.Position).magnitude<range then 
                if not isanc or (hit.Anchored and hit.Transparency<1) then 
                        Hit=hit 
                        if not nobreak then 
                                break 
                        end 
                end 
        end 
        wait()
        end
        return Hit,(Pos-obj.Position).magnitude
end
 
H1T={}
Hit1=function(hit,dmg,v1,v2,v3,CRIT)
        local Hum=GetHum(hit)
        if not Hum or H1T[Hum.Parent] then return end
        H1T[Hum.Parent]=1
        Dmg(Hum,dmg,CRIT,false)
        local HMT=Hum.Parent:findFirstChild'Torso' 
        if v1 and HMT then AddBV(v1,v2,HMT,v3) end
        wait(0.3)
        H1T[Hum.Parent]=nil
end
 
MoonArc=function(cff,x,z,dmg,critical)
        q(function()
                local arc=pa(workspace,"MoonArc","Block",x,0.2,z,true,true,1,0) arc.CFrame=cff
                local darc={}
                for i,v in pairs{'Top','Bottom'} do 
                        for ii,vv in pairs{arc} do  
                                darc[#darc+1]=qi{'Decal',vv,Texture=ids.MoonArc,Face=v,Name=v} 
                        end 
                end
                local tym=40
                local ty=0
                local crit
                local speedz0r = 1.6
                local HitArc=function() 
                        GetRegion2(arc.Position,(x+z)/2.6,function(Hum,HT) 
                                local Hum,HT,block=GetHum(HT) 
                                local bounced=block and block.Value>0 
                                if bounced then
                                        GlowMesh(false,ids.Chakram,Weapon,v3(4,4,2.6),"Navy blue",arc.CFrame*cn(0,0,z/5),0,1,0.2)
                                        arc.CFrame=arc.CFrame*ca(rd(180),0,0)*cn(0,0,-3)  
                                        so(ids.MoonArcShoot,arc,0.7,3.4) 
                                        speedz0r=speedz0r+0.5
                                        ty=0 
                                        crit=true
                                end 
                                Hit1(HT,crit and dmg*CriticalSeverity or dmg,not bounced and 25,arc.CFrame,0.2,crit)
                        end--[[,function(v) 
                                if v~=arc and v.Name=='MoonArc' and arc.Name=='MoonArc' then 
                                        arc:Remove() 
                                        for i=-1,1,2 do 
                                                MoonArc(arc.CFrame*ca(0,rd(180)+(25*i),0)*cn(0,0,0),x/1.2,z,dmg,false) 
                                                wait()
                                        end 
                                end 
                        end]])
                end
                
                local Hit,Mag=RangeAnim(arc,{},1/0,speedz0r,1.6,function(ty2,obj,hit,pos) 
                        ty=ty+1  
                        HitArc() 
                        if ty>=tym-10 then 
                                for i,dar in pairs(darc) do 
                                        dar.Transparency=dar.Transparency+0.1 
                                end 
                        end 
                        if ty==tym then 
                                arc:Remove() 
                        end 
                end,Char,true,false)
                if Hit and Hit.Anchored and arc.Parent then 
                        print(Hit.Name,Mag) 
                        local cf=arc.CFrame 
                        for i=0,1,0.25 do 
                                arc.Size=v3(x,0.2,z*(1-i)) 
                                arc.CFrame=cf*cn(0,0,-z/2*i)  
                                wait() 
                        end 
                        arc:Remove() 
                end
        end)
end
 
SplashDmg=function(Part,Distance)
        q(function()
                BBD2=2
                for i,v in pairs(workspace:GetChildren()) do
                        if v:FindFirstChild("Torso",true) then
                                local vTorso=v:FindFirstChild("Torso",true)
                                if (vTorso.Position-Part.Position).magnitude<=Distance and vTorso.Parent~=Char then
                                        local vHum=GetHum(vTorso)
                                        if not vHum or BBD2==0 or BBT2[vHum.Parent] then return end
                                        BBT2[vHum.Parent]=1
                                        Dmg(vHum,rn(Dealt[1],Dealt[2]))
                                        if BBD2==2 and vTorso then 
                                                vHum.PlatformStand=true
                                                if vHum.Jump then
                                                        AddBV(120,cn(Part.Position,vTorso.Position),vTorso,0.4) 
                                                else
                                                        AddBV(100,cn(Part.Position,vTorso.Position),vTorso,0.4) 
                                                end
                                                if vTorso.Parent~=Char then
                                                        AddBAV(v3(rn(-50,50),rn(-50,50),rn(-50,50)),vTorso,0.4)
                                                end
                                                q(function()
                                                        wait(0.6)
                                                        vHum.PlatformStand=false
                                                end)
                                        end
                                        so(ids.Hit,vTorso,1,1)
                                        BBT2[vHum.Parent]=nil
                                end
                        end
                end
                BBD2=0
        end)
end
 
function Trail(Loops,Part,Time,Color,Thickness,Offset) 
        q(function() 
                local oldpos=(Part.CFrame *Offset).p 
                local lopz2=0
                local function loltr() 
                        local obp=(Part.CFrame *Offset).p 
                        lopz2=lopz2 + 1
                        local mag=(oldpos - obp).magnitude 
                        local tr=pa(Part,"trail","Block",0,0,0,false,true,0,0,Color) 
                        tr.CanCollide=false
                        tr.CFrame=cn(oldpos,obp) 
                        tr.CFrame=tr.CFrame + tr.CFrame.lookVector*(mag/2)
                        local trm=qi{'CylinderMesh',tr,Scale=v3(5*Thickness,mag*5,5*Thickness)}
                        q(function() 
                                for i=5*Thickness,0,-5*Thickness/10 do 
                                        trm.Scale=v3(i,mag*5,i) 
                                        w() 
                                end 
                                tr:Destroy()
                        end)
                        tr.CFrame=tr.CFrame*ca(rd(90),0,0) oldpos=obp 
                end 
                repeat 
                        loltr()
                        wait(Time) 
                until lopz2 == Loops 
                loltr() 
        end) 
end
 
BodySteer = function(y,inc)
        local cff=fTorso.CFrame
        for i=inc,1,inc do 
                AddBG(cn(cff.p,cff*ca(0,i*y,0)*cn(0,0,-0.05).p),fTorso,0.1)
                wait()
        end
end
 
function RestrictMovement(pos,par)
        tbbp=qi{"BodyPosition",par,P=1e5,D=0,maxForce=v3(1,1,1)*5e5,position=pos}
        return tbbp
end
 
function Stance(speed)
        c2(ra,speed,3,1,0.5,-0.25,-85,-20,-10)
        c2(la,speed,3,-0.5,0.5,-0.5,-65,40,0)
        c2(ll,speed,3,-0.5,-1,0,0,0,0)
        c2(rl,speed,3,0.5,-1,0,0,0,0)
        c2(hw,speed,3,0,1.5,0,0,0,0)
        c2(tw,speed,3,0,0,0,90,180,0)
        c2(neck,speed,3,0,1.5,0,0,0,0)
        Ani(haw,0,-1,0,-90,-90,0,0,speed/2,1)
end
 
function Reset(speed)
        c2(ra,speed,3,1.5,0.5,0,0,0,0)
        c2(la,speed,3,-1.5,0.5,0,0,0,0)
        c2(ll,speed,3,-0.5,-1,0,0,0,0)
        c2(rl,speed,3,0.5,-1,0,0,0,0)
        c2(hw,speed,3,0,1.5,0,0,0,0)
        c2(tw,speed,3,0,0,0,90,180,0)
        c2(neck,speed,3,0,1.5,0,0,0,0)
        Ani(haw,1.5,2,0.6,180,0,30,0,speed,1)
end
 
function Combo1()
        run()
        Combo=0.5
        anim="Melee"
        c2(hw,0.1,3,0,1.5,0,-20,5,0)
        c2(la,0.1,3,0,0.5,-0.75,-130,60,0)
        c1(ra,0.1,3,1,0.5,-0.25,-170,0,20)
        anim=""
        Combo=1
end
 
function Combo2()
        Combo=1.5
        anim="Melee"
        BBD=running and 2 or 1
        so(ids.Slash3,ha,1,1.1)
        Trail(8,p5,0,"White",0.2,cn(0,2,0))
        c2(la,0.3,3,0,0,-0.5,30,-0.25,-15)
        c2(hw,0.3,3,0,1.5,0,15,-5,0)
        c1(ra,0.3,3,1,0.5,-0.25,30,0,20)
        BBD=0
        anim=""
        Combo=2
end
 
function Combo3()
        Combo=2.5
        anim="Melee"
        c2(hw,0.1,3,0,1.5,0,-25,-15,0)
        c2(ra,0.1,3,0.5,0.5,-0.5,-120,0,-60)
        c1(la,0.1,3,-0.5,0.5,-0.5,-90,10,-60)
        anim=""
        Combo=3
end
 
function Combo4()
        Combo=3.5
        anim="Melee"
        BBD=running and 2 or 1
        so(ids.Slash3,ha,1,1.1)
        Trail(8,p5,0,"White",0.2,cn(0,2,0))
        c2(hw,0.3,3,0,1.5,0,25,15,0)
        c2(ra,0.3,3,1,0.375,0,0,0,-60)
        c2(la,0.3,3,0.75,0.5,-0.75,30,10,-60)
        Ani(haw,0,-1,0,-135,-90,0,0,0.3,1)
        BBD=0
        anim=""
        Combo=4
end
 
function Combo5()
        Combo=4.5
        anim="Melee"
        qAni(haw,0,-1,-0.5,-90,-90,0,0,0.1,1)
        c2(hw,0.1,3,0,1.5,0,0,-30,0)
        c2(ra,0.1,3,0.25,0.5,-0.5,-125,0,-90)
        c2(la,0.1,3,-1,0.5,-0.5,-70,0,-90)
        c1(tw,0.1,3,0,0,0,90,180,-70)
        anim=""
        Combo=5
end
 
function Combo6()
        Combo=5.5
        anim="Melee"
        BBD=running and 2 or 1
        Trail(25,p5,0,"White",0.2,cn(0,2,0))
        q(function()
                for i=1,3 do
                        so(ids.Slash3,ha,1,1.1)
                        wait(0.25)
                end
        end)
        qAni(haw,0,-1,0,-210,-90,0,0,0.1,1)
        c2(hw,0.1,3,0,1.5,0,0,30,0)
        c1(tw,0.05,3,0,0,0,90,180,360)
        c1(tw,1,3,0,0,0,90,180,0)
        BBD=0
        anim=""
        Combo=6
end
 
function Combo7()
        Combo=6.5
        anim="Melee"
        c2(hw,0.1,3,0,1.5,0,0,-50,0)
        c2(tw,0.1,3,0,0,0,90,180,50)
        qAni(haw,0,-1,0,-90,-90,0,0,0.1,1)
        c2(la,0.1,3,0.5,0.75,-1,-195,0,50)
        c1(ra,0.1,3,1,0.5,0,-210,60,30)
        anim=""
        Combo=7
end
 
function Combo8()
        if mp>=40 then
                mp=mp-40
                Combo=7.5
                anim="Melee"
                local PreviousDealt=Dealt
                Dealt={25,45}
                BBD=running and 2 or 1
                Trail(10,p5,0,"White",0.2,cn(0,2,0))
                so(ids.Slash3,ha,1,1.1)
                c2(hw,0.15,3,0,1.5,0,0,90,0)
                c2(tw,0.15,3,0,0,0,90,180,-90)
                c2(la,0.15,3,1.5,0.25,-0.5,-195,0,130)
                qAni(haw,0,-1,0,-140,-90,0,0,0.1,1)
                c1(ra,0.15,3,1.5,0.5,0,0,90,-30)
                GlowMesh(false,ids.Crown,Weapon,v3(6,4,6),"Black",fTorso.CFrame*cn(0,0,-6),0.25,1,0.05)
                GlowMesh(false,ids.Crown,Weapon,v3(8,2,8),"Black",fTorso.CFrame*cn(0,0,-6),0.25,1,0.05)
                GlowMesh(false,ids.Crown2,Weapon,v3(6,4,6),"Black",fTorso.CFrame*cn(0,0,-6),0.25,1,0.05)
                local dmgpart=pa(Weapon,"","Block",0,0,0,true,true,1,0) dmgpart.CFrame=fTorso.CFrame*cn(0,-2,-6) de(dmgpart,1)
                so(ids.Explode,ha,1,0.4)
                SplashDmg(dmgpart,11)
                Destroy(workspace,dmgpart,11)
                BBD=0
                Dealt=PreviousDealt
                anim=""
                Combo=8
        end
end
 
function Break()
        Combo=-0.5
        Stance(0.1)
        UseGyro=true
        anim=""
        Combo=0
end
 
function Button1Down()
        if equip=="equipped" and anim=="" then
                if Combo==0 then
                        Combo1()
                        q(function()
                                wait(0.5)
                                if Combo==1 then
                                        Break()
                                end
                        end)
                elseif Combo==1 then
                        Combo2()
                        q(function()
                                wait(0.5)
                                if Combo==2 then
                                        Break()
                                end
                        end)
                elseif Combo==2 then
                        Combo3()
                        q(function() 
                                wait(0.5)
                                if Combo==3 then
                                        Break()
                                end
                        end)
                elseif Combo==3 then
                        Combo4()
                        q(function() 
                                wait(0.5)
                                if Combo==4 then
                                        Break()
                                end
                        end)
                elseif Combo==4 then
                        Combo5()
                        q(function() 
                                wait(0.5)
                                if Combo==5 then
                                        Break()
                                end
                        end)
                elseif Combo==5 then
                        Combo6()
                        q(function() 
                                wait(0.5)
                                if Combo==6 then
                                        Break()
                                end
                        end)
                elseif Combo==6 then
                        Combo7()
                        q(function() 
                                wait(0.5)
                                if Combo==7 then
                                        Break()
                                end
                        end)
                elseif Combo==7 then
                        Combo8()
                        q(function() 
                                wait(0.5)
                                if Combo==8 then
                                        Break()
                                end
                        end)
                end
                
        elseif equip=="equipped" and anim=="Block" and keys["f"]==true and mp>=50 then
                anim="Moon arc"
                mp=mp-25
                Hum.WalkSpeed=16
                c2(hw,0.12,3,0,1.5,0,-25,-15,0)
                c2(ra,0.12,3,0.5,0.5,-0.5,-120,0,-60)
                qAni(haw,0,-1,0,-90,-90,0,0,0.12,1)
                c1(la,0.12,3,-0.5,0.5,-0.5,-90,10,-60)
                BBD=running and 2 or 1
                so(ids.Slash3,ha,1,1.1)
                so(ids.MoonArcShoot,ha,0.7,3)
                q(function() MoonArc(fTorso.CFrame*cn(0,1.5,-3),5.5,2.5,rn(15,25)) end)
                Trail(8,p5,0,"White",0.2,cn(0,2,0))
                c2(hw,0.32,3,0,1.5,0,25,15,0)
                c2(ra,0.32,3,1,0.375,0,0,0,-60)
                c2(la,0.32,3,0.75,0.5,-0.75,30,10,-60)
                Ani(haw,0,-1,0,-135,-90,0,0,0.32,1)
                BBD=0
                Block.Value=0
                wait(0.2)
                Stance(0.08)
                anim=""
        end
 
end
 
function KeyDown(key)
        key=key:lower()
        keys[key]=true
        if key=="x" and equip=="equipped" and anim=="" and Combo==0 and mp>=100 then
                run()
                UseGyro=false
                mp=mp-100
                anim="Shockwave"
                Hum.WalkSpeed=0
                Arms(true) Legs(true)
                c2(tw,0.1,3,0,-1,0,90,180,0)
                c2(rl,0.1,3,0.5,-0.5,-0.8,10,0,0)
                c2(ll,0.1,3,-0.5,-1.5,-0.25,90,0,0)
                c2(hw,0.1,3,0,1.5,-0.15,15,0,0)
                c2(ra,0.1,3,1.5,0.5,0,40,-20,0)
                c1(la,0.1,3,-1.5,0.5,0,40,20,0)
                wait(0.2)
                local total=0
                local function lol(dir)
                        for i,v in pairs(dir:children()) do
                                if v:IsA("BasePart") then
                                        total=total+(v:GetMass()*196.2)
                                end
                                lol(v)
                        end
                end
                lol(Char)
                Hum.Jump=true
                local bf=qi{"BodyForce",Torso,force=v3(0,total,0)} game:GetService("Debris"):AddItem(bf,0.38)
                c2(tw,0.07,3,0,0,0,90-15,180,360)
                c2(rl,0.09,3,0.5,-0.9,0,25,0,-15)
                c2(ll,0.09,3,-0.5,-0.9,0,25,0,15)
                c2(hw,0.07,3,0,1.5,0.15,-15,0,0)
                c2(ra,0.07,3,1,0.5,-0.3,-130,-50,-20)
                c1(la,0.07,3,-1,0.5,-0.3,-75,40,0)
                BBD=2
                q(function()
                        for i=1,20 do
                                GlowMesh(false,"block",Weapon,v3(1,1,1),"Black",p5.CFrame*cn(rn(-1,1),2,rn(-1,1))*ca(rn(-5,5),rn(-5,5),rn(-5,5)),0.1,1,0.1)
                                wait()
                        end
                end)
                c1(tw,1,3,0,0,0,90-15,180,0)
                c2(tw,0.06,3,0,-1,0,90+15,180,0)
                c2(rl,0.1,3,0.5,-0.5,-0.8,10,0,0)
                c2(ll,0.1,3,-0.5,-1.4,-0.4,90-15,0,0)
                c2(hw,0.1,3,0,1.5,-0.15,15,0,0)
                c2(ra,0.1,3,1,0.5,0,-60,-20,0)
                c2(la,0.1,3,-0.5,0.5,-0.5,-50,45,0)
                Ani(haw,0,-1,0,-160,-90,0,0,0.06,1)
                GlowMesh(false,"sphere",Weapon,v3(4,4,4),"Black",fTorso.CFrame*cn(0,-2,-7),0.1,1,0.05)
                GlowMesh(false,ids.Crown,Weapon,v3(10,5,10),"Black",fTorso.CFrame*cn(0,-2,-7),0.1,1,0.05)
                local cr=pa(workspace,"Ignore","Block",15,0,15,false,true,1,0) qi{"Decal",cr,Face="Top",Texture=ids.Crack} cr.CanCollide=false
                pcall(function()
                        local LOL=FindGround(fTorso.CFrame*cn(0,0,-7))*ca(0,rn(-500,500),0,Char)
                        cr.CFrame=LOL
                        de(cr,10)
                end)
                Dealt={40,60}
                local umad=pa(workspace,"","Block",0,0,0,false,true,1,0) umad.CFrame=fTorso.CFrame*cn(0,0,-7)
                so(ids.Explode,umad,1,0.4)
                SplashDmg(umad,15)
                Destroy(workspace,umad,15)
                BBD=0
                wait(0.4)
                Dealt={15,30}
                Stance(0.15)
                Legs(false)
                Hum.WalkSpeed=16
                anim=""
                UseGyro=true
        elseif key=="f" and equip=="equipped" and anim=="" and Combo==0 and mp>=1 then 
                run()
                anim="Blocking" Block.Value=5 Hum.WalkSpeed=8
                c2(ra,0.1,3,1.5,0.5,0,-100,0,0) c2(la,0.1,3,-1.5,0.5,0,-85,-25,0)
                Ani(haw,0,-1,0,-90,0,100,0,0.1/1.3,1)
                anim="Block" 
                so(ids.Block,ha,1,1)
                Block.Value=5
                Hum.WalkSpeed=8 
                repeat 
                        wait() 
                        mp=mp-0.05 
                until Block.Value<=0 or mp<1
                if anim=="Block" then
                        anim="Unblocking" 
                        Block.Value=0 
                        Hum.WalkSpeed=16
                        Stance(0.2)
                        anim="" 
                end
        elseif key=="b" and anim=="" and Combo==0 then
                run()
                MoonArc(fTorso.CFrame*cn(0,0.5,-3),5.5,2.5,1)
        elseif key=="z" and equip=="equipped" and anim=="" and Combo==0 and mp<maxmp then
                run()
                Hum.WalkSpeed=0
                UseGyro=false
                anim="Charge"
                c2(ra,0.12,3,1.1,0.5,-0.5,-75,-45,0)
                c2(la,0.12,3,-1.3,0.5,-0.5,-100,50,0)
                Ani(haw,0,-1,0,-270+15,45,0,0,0.1,1)
                repeat 
                        local lolpart=pa(workspace,"","Block",0.5,0.5,0.5,true,true,0.5,0,"Black") lolpart.CanCollide=false
                        lolpart.CFrame=p5.CFrame*cn(0,-0.25,0)*ca(rd(180),rd(rn(-360,360)),0)
                        local lolmesh=qi{"SpecialMesh",lolpart,MeshId=ids.Crown,Scale=v3(1.5,0.5,1.5)}
                        q(function()
                                for i=0,1,0.1 do
                                        lolmesh.Scale=v3(i+1.5,i+0.5,i+1.5)
                                        wait()
                                end
                        end)
                        fade(lolpart,0.1)
                        mp=mp+1
                        wait()
                until not keys.z or mp>=maxmp
                Hum.WalkSpeed=16
                Stance(0.15)
                anim=""
                UseGyro=true
        elseif key=="q" and equip=="equipped" and anim=="" and Combo==0 and mp>=50 then
                run()
                anim="Flip Kick"
                local PreviousDealt=Dealt
                mp=mp-50
                UseGyro=false
                Gyro.Parent = nil
                c2(ra,0.1,3,1.5,0.5,0,-150,0,0)
                Ani(haw,0,-1,0,-290,-90,0,0,0.05,1)
                BBD=running and 2 or 1
                Dealt={10,15}
                so(ids.Slash3,ha,1,1.1)
                c2(ra,0.2,3,1.5,0.5,0,-80,0,0)
                Ani(haw,0,-1,-0.3,-260,-90,0,0,0.1,1)
                Dealt={15,30}
                BBD=0
                wait(0.3)
                Hum.WalkSpeed=0
                lolbp=RestrictMovement(fTorso.Position,fTorso)
                Legs(true)
                qAni(haw,0,-1,0,0,0,360-85,0,0.1,1)
                c2(ra,0.1,3,1.4,0.7,0,-180,0,0)
                c2(la,0.1,3,-1.5,0.5,0,0,0,35)
                c2(rl,0.1,3,0.5,-1,0,0,0,-5)
                c2(ll,0.1,3,-0.5,-1,0,0,0,5)
                c1(tw,0.1,3,-2.5,2,0,90,180+90,0)
                wait(0.2)
                rldmg=RL.Touched:connect(BladeHit)
                lldmg=LL.Touched:connect(BladeHit)
                Trail(70,RL,0,"White",0.4,cn(0,-1.5,0))
                q(function()
                        for i=1,6 do
                                so(ids.Slash3,ha,1,0.6)
                                wait(0.35)
                        end
                end)
                BBD=running and 2 or 1
                local numba=rn(0,180)
                q(function()
                        BodySteer(rd(-1080-360-numba),0.01125)
                end)
                Ani(haw,0,-1,0,-1080-numba,0,360-90,0,0.014,1)
                BBD=0
                rldmg:disconnect()
                lldmg:disconnect()
                Legs(false)
                Ani(haw,0,-1,0,0,0,360-90,0,1,1)
                Stance(0.1)
                anim=""
                Dealt=PreviousDealt
                lolbp:Destroy()
                Hum.WalkSpeed=16
                Gyro.Parent = fTorso
                UseGyro=true
        elseif key=="e" and equip=="equipped" and anim=="" and Combo==0 then
                run()
                anim="Sword Jab"
                c2(ra,0.1,3,1,0.5,0,-35,0,25)
                c2(la,0.1,3,-1,0.5,-0.5,-35,0,-65)
                Ani(haw,0,-1,-0.5,-90-35,-90,0,0,0.1,1)
                wait(0.1)
                c2(ra,0.07,3,1,0.5,0,0,0,40)
                c2(la,0.07,3,-1,0.5,-0.5,0,0,-50)
                Ani(haw,0,-1,-0.5,-90,-90,0,0,0.07,1)
                wait(0.2)
                BBD=running and 2 or 1
                c2(ra,0.2,3,1,0.5,0,-50,0,25)
                c2(la,0.2,3,-1,0.5,-0.5,-50,0,-65)
                Ani(haw,0,-1,-0.5,-90-50,-90,0,0,0.2,1)
                q(function()
                        for i=1,5 do
                                local lolpart=pa(workspace,"","Block",0.5,0.5,0.5,true,true,0.5,0,"Black") lolpart.CanCollide=false
                                lolpart.CFrame=p5.CFrame*cn(0,-1,0)*ca(rd(180),rd(rn(-360,360)),0)
                                local lolmesh=qi{"SpecialMesh",lolpart,MeshId=ids.Crown,Scale=v3(1.25,3,1.25)}
                                q(function()
                                        for i=0,1,0.1 do
                                                lolmesh.Scale=v3(i+1.25,i+3,i+1.25)
                                                wait()
                                        end
                                end)
                                fade(lolpart,0.07)
                                wait()
                        end
                end)
                AddBV(running and 40,fTorso.CFrame,fTorso,0.3)
                if running then 
                        Trail(5,p5,0,"Black",1,cn(0,2,0))
                end
                so(ids.Slash3,ha,1,0.8)
                q(function() w(0.4) BBD=0 end)
                wait(0.2)
                Stance(0.1)
                anim=""
                
        elseif key=="g" and equip=="equipped" and anim=="" and Combo==0 and mp>=250 then
                run()
                anim="Black Hole"
                mp=mp-250
                q(function()
                        pos=Torso.CFrame*cn(0,0,-15)
                        sc=1
                        local bped = {}
                        local tms = 0 
                        local rr=10*sc 
                        local bal = pa(workspace,"Ignore","Ball",4*sc,4*sc,4*sc,false,true,0.16,0,"Navy blue") bal.CFrame = pos bal.CanCollide=false
                        local bal2 = pa(workspace,"Ignore","Ball",rr*2,rr*2,rr*2,false,true,0.6,0,"Black") bal2.CFrame = pos bal2.CanCollide=false
                        local spi = pa(workspace,"Ignore","Ball",0,0,0,false,true,0.16,0.5,"Navy blue") spi.CFrame = bal.CFrame spi.CanCollide=false
                        local dia = pa(bal,"Ignore","Block",0,0,0,false,true,0.2,0.3,"Medium grey") dia.CanCollide=false
                        qi{"SpecialMesh",dia,MeshId=ids.Diamond,Scale=v3(0.7,0.7,0.7)}
                        local dia2 = dia:Clone() dia2.Parent = bal local dia3 = dia:Clone() dia3.Parent = bal 
                        
                        for x=1,25 do 
                                for i=0,1,0.1 do 
                                        tms = tms + 1
                                        local lolpart=pa(workspace,"Ignore","Ball",1*sc,1*sc,1*sc,false,false,0.16,0,"Black") fade(lolpart,0.1)
                                        lolpart.CFrame=pos*cn(rn(-rr,rr),rn(-rr,rr),rn(-rr,rr)) lolpart.CanCollide=false
                                        qi{"BodyPosition",lolpart,P=1000,D=400,maxForce=v3(1/0,1/0,1/0),position=pos.p}
                                        
                                        spi.CFrame=spi.CFrame*ca(rd(4),rd(4),rd(4)) 
                                        dia.CFrame = bal.CFrame*ca(rd(tms*5),0,0)*cn(0,6*sc,0)  
                                        dia2.CFrame = bal.CFrame*ca(0,0,rd(tms*5))*cn(0,6*sc,0)  
                                        dia3.CFrame = bal.CFrame*ca(0,rd(tms*5),0)*cn(0,0,6*sc)*ca(rd(90),0,0)
                                        if tms%5==0 then 
                                                GetRegion(Char,bal.Position-v3(rr,rr,rr),bal.Position+v3(rr,rr,rr),function(v) 
                                                        if v.Torso:findFirstChild("SBP") == nil and v.Name~=Player.Name then 
                                                                Dmg(v.Humanoid,rn(1,3),false)
                                                                table.insert(bped,v) 
                                                                qi({"BodyPosition",v.Torso,Name="SBP",D=12000,maxForce=v3(100000,100000,100000),position=bal.Position}) 
                                                        end 
                                                end) 
                                        end
                                        wait()
                                end
                                for i,v in pairs(bped) do 
                                        q(function() 
                                                for i,vv in pairs(v.Torso:children()) do 
                                                        if vv.Name == "SBP" then 
                                                                vv:Remove() 
                                                        end 
                                                end 
                                        end) 
                                end
                        end
                        fade(bal,0.08) fade(spi,0.08) fade(dia,0.08) fade(dia2,0.08) fade(dia3,0.08) fade(ff,0.08) fade(bal2,0.08)
                end)
                anim=""
        end
end
 
function KeyUp(key)
        key=key:lower()
        keys[key]=false
        if key=="f" and equip=="equipped" and anim=="Block" then
                anim="Unblocking" 
                Block.Value=0 
                Hum.WalkSpeed=16
                Stance(0.2) 
                anim="" 
                Hum.WalkSpeed=16
        end
end
 
Tool.Selected:connect(function(mouse)
        UseGyro=true
        fmouse=mouse
        if equip=="unequipped" and anim=="" then
                equip="equipping" 
                Arms(true) 
                c2(la,0.1,3,-1.5,0.5,0,0,0,18) 
                c1(ra,0.1,3,1.5,0.5,0,-210,0,-10)
                local ofs = RA.CFrame:toObjectSpace(ha.CFrame) 
                haw.Part0=RA 
                haw.C0=ofs 
                haw.C1=cn(0,0,0) 
                rAni(haw)
                Stance(0.2) 
                equip="equipped"
        end
        
        mouse.Button1Down:connect(Button1Down)
        mouse.KeyDown:connect(KeyDown)
        mouse.KeyUp:connect(KeyUp)
end)
 
function idle()
        Legs(true)
        for i=0,10,10/44 do
                ra.C0=cn(1,0.5,-0.25)*ca(rd(i),0,0)
                la.C0=cn(-0.5,0.5,-0.5)*ca(rd(i),0,0)
                ll.C0=cn(-0.5,-1,0)*ca2(0,0,-i/2)
                rl.C0=cn(0.5,-1,0)*ca2(0,0,i/2)
                hw.C0=cn(0,1.5,0)*ca2(i/4,0,0)
                if equip~="equipped" or Torso.Velocity.magnitude>2 or anim~="" or Combo~=0 then break end
                wait()
        end
        for i=10,0,-10/44 do
                ra.C0=cn(1,0.5,-0.25)*ca(rd(i),0,0)
                la.C0=cn(-0.5,0.5,-0.5)*ca(rd(i),0,0)
                ll.C0=cn(-0.5,-1,0)*ca2(0,0,-i/2)
                rl.C0=cn(0.5,-1,0)*ca2(0,0,i/2)
                hw.C0=cn(0,1.5,0)*ca2(i/4,0,0)
                if equip~="equipped" or Torso.Velocity.magnitude>2 or anim~="" or Combo~=0 then break end
                wait()
        end
end
 
function run()
        Stance(50)
        Legs(false)
end
 
Tool.Deselected:connect(function()
        fmouse=nil 
        UseGyro=false
        if equip=="equipped" and anim=="" then
                run()
                equip="unequipping" 
                c2(la,0.1,3,-1.5,0.5,0,0,0,0) 
                c1(ra,0.1,3,1.5,0.5,0,-210,0,-10)
                local ofs = Torso.CFrame:toObjectSpace(ha.CFrame)
                haw.Part0=Torso 
                haw.C0=ofs 
                haw.C1=cn(0,0,0) 
                rAni(haw)
                Reset(0.1)
                Arms(false) 
                Legs(false) 
                equip="unequipped"
        end
end)
 
 
q(function()
        while true do
                wait()
                if equip=="equipped" and anim=="" and Combo==0 then
                        if Torso.Velocity.magnitude < 2 then
                                idle()
                                wait()
                        else
                                run()
                                wait()
                        end
                end
        end
end)
 
 
mpback=qi{"Frame",Gui,Name="MPBack",BackgroundColor3=bc("Really black").Color,BorderColor3=bc("Really black").Color,Position=ud(0.5-0.15/2,0,0.05,0),Size=ud(0.15,0,0.075,0),ZIndex=1}
mpbar=qi{"ImageLabel",mpback,Name="MPBar",BackgroundColor3=bc("Alder").Color,Position=ud(0.025-0.0125,0,0.05,0),Size=ud(0.975,0,0.9,0),Image=ids.Shine,ZIndex=2}
mptext=qi{"TextLabel",mpback,Name="MPText",TextColor3=bc("White").Color,BackgroundTransparency=1,Position=ud(0.025,0,0.05,0),Size=ud(0.95,0,0.9,0),Text=mp.." / "..maxmp,FontSize="Size24",ZIndex=3,TextStrokeTransparency=0,Font="ArialBold"}
 
i=0
Gyro=qi{"BodyGyro",fTorso,D=50,P=1500}
game:GetService("RunService").Stepped:connect(function()
        mptext.Text=math.floor(mp).." / "..maxmp
        mpbar.Size=ud(0.975*(mp/maxmp),0,0.9,0)
        i=i+3
        chakw.C0=ca(0,0,rd(i))
        if fmouse ~= nil and UseGyro then
                Gyro.maxTorque=v3(1/0,1/0,1/0)
                Gyro.cframe = cn(fTorso.Position,v3(Cam.CoordinateFrame.p.x,fTorso.Position.y,Cam.CoordinateFrame.p.z))*ca(0,rd(180),0)
        else 
                Gyro.maxTorque = v3(0,0,0) 
        end 
end)
Hum.Running:connect(function(spd) running=spd>0 and true or false end)