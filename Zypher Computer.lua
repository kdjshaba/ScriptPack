--zypher pw is asd
player=game.Players.LocalPlayer
me = player.Character
p=Instance.new('Part',workspace)
p.FormFactor = "Custom"
p.Size = Vector3.new(15,10,0)
p.Anchored = true
p.Color = Color3.new(0,0,0)
passw = "asd"

local folder=Instance.new('Folder',workspace)
local logo = "285083197"
pw = "asd"
p1=Instance.new('Part',p)
p1.FormFactor = "Custom"
p1.Size = Vector3.new(15,5,0)
p1.Anchored = true
p1.Color = Color3.new(0,0,0)

background = "rbxassetid://396316983"

game:GetService('RunService').RenderStepped:connect(function()
	p.CFrame = me.HumanoidRootPart.CFrame * CFrame.new(0,4.5,-7) * CFrame.Angles(-0.2,0,0)
	p1.CFrame = me.HumanoidRootPart.CFrame * CFrame.new(0,-2.9,-6)
end)

sg=Instance.new('SurfaceGui',p)
sg.Face = "Back"

function Intro()
tl=Instance.new('TextLabel',sg)
tl.Text = 'asd'
tl.BackgroundColor = BrickColor.new'Navy blue'
tl.Size = UDim2.new(0,800,0,600)
tl.TextColor3 = Color3.new(255,255,255)
tl.TextScaled = true
for i = 0,18,1 do wait()
	tl.Text = string.sub("Zypher has loaded.",1,i)
end
delay(2,function()
for i = 0,22,1 do wait()
	tl.Text = string.sub("Made by Zypher Studios",1,i)
end
end)
delay(8,function()
for i = 0,1,0.1 do wait()
	tl.BackgroundTransparency=i
	tl.TextTransparency=i
end
end)
end
--Intro()

pcall(function()--delay(4,function()
local BackgroundSignIn = Instance.new('ImageLabel',sg)
	BackgroundSignIn.Image = 'rbxassetid://396316983'
	BackgroundSignIn.Size = UDim2.new(0,800,0,610)

local Person = Instance.new('ImageLabel',BackgroundSignIn)
Person.Size = UDim2.new(0,200,0,200)
Person.BackgroundTransparency=1
Person.Position = UDim2.new(0,300,0,150)
Person.BackgroundTransparency=1

PersonName = Instance.new('TextLabel',Person)
PersonName.Text = player.Name
PersonName.TextScaled = true
PersonName.TextStrokeTransparency=1
PersonName.TextColor=BrickColor.White()
PersonName.Position = UDim2.new(0,0,0,200)
PersonName.Size = UDim2.new(0,200,0,50)
PersonName.BackgroundTransparency=11

local LogInBoard = Instance.new('TextButton',BackgroundSignIn)
LogInBoard.BackgroundColor=BrickColor.White()
LogInBoard.TextTransparency=0.5
LogInBoard.Text='Click me to enter your password'
LogInBoard.TextScaled = true
LogInBoard.Size = UDim2.new(0,200,0,30)
LogInBoard.Position = UDim2.new(0,300,0,430)
LogInBoard.BorderSizePixel = 5
LogInBoard.BorderColor3=Color3.new()

LogIn=Instance.new('TextButton',LogInBoard)
LogIn.Text='->'
LogIn.BorderColor3=Color3.new()
LogIn.TextTransparency=0.3
LogIn.TextScaled = true
LogIn.Size = UDim2.new(0,30,0,30)
LogIn.Position = UDim2.new(0,210,0,0)
LogIn.BackgroundColor=BrickColor.new('Bright bluish green')
LogIn.BorderSizePixel = 3

if player.Name=='Nil_Scripter' then
passw='asd'
PersonName.Text = "Nil [Developer]"
Person.Image = "rbxassetid://164897383"
end

if player.Name=='Ourmineteam' then
passw='asd'
PersonName.Text = "Cartman [Admin/Tester]"
Person.Image = "rbxassetid://14139512"
end

if player.Name=='Player' then
passw='asd'
PersonName.Text = "Test"
Person.Image = "rbxassetid://14139512"
end

LogInBoard.MouseButton1Down:connect(function()
	local PGUI=Instance.new('ScreenGui',player.PlayerGui)
	local TGUI=Instance.new('TextBox',PGUI)
	TGUI.BackgroundColor3=Color3.new(255,255,255)
	TGUI.TextColor3=Color3.new()
	TGUI.Size = UDim2.new(0,400,0,100)
	TGUI.BackgroundTransparency=0.1
	TGUI.BorderSizePixel = 4
	TGUI.Position = UDim2.new(0,200,0,300)
	TGUI.TextScaled = true
	TGUI:CaptureFocus()
	
	local EGUI = Instance.new('TextButton',TGUI)
	EGUI.Text='Go'
	EGUI.Font = "SourceSansItalic"
	EGUI.TextColor = BrickColor.White()
	EGUI.BackgroundColor3 = Color3.new()
	EGUI.TextScaled = true
	EGUI.Size = UDim2.new(0,30,0,100)
	EGUI.Position = UDim2.new(0,415,0,0)
	EGUI.BorderSizePixel = 3
	EGUI.BorderColor = BrickColor.new'Bright bluish green'
	EGUI.TextXAlignment = 'Left'

	XGUI=Instance.new('TextButton',TGUI)
	XGUI.Text = 'X'
	XGUI.TextColor = BrickColor.new'Crimson'
	XGUI.BackgroundTransparency=11
	XGUI.Font = "SourceSansBold"
	XGUI.TextScaled = true
	XGUI.Size = UDim2.new(0,50,0,50)
	XGUI.Position = UDim2.new(0,300,0,-50)
	
		XGUI.MouseButton1Down:connect(function()
			PGUI:remove()
		end)
		
		EGUI.MouseButton1Down:connect(function()-----------------------
			PGsv = TGUI.Text
		end)
		
		LogIn.MouseButton1Down:connect(function()
	if PGsv==passw then
	PGUI:remove()
	LogInBoard.Text = 'Signing In..'
	wait(3)
	BackgroundSignIn:remove()

back=Instance.new('ImageLabel',sg)
back.Size = UDim2.new(0,800,0,550)
back.Image = background
local Desktop = back

frame=Instance.new("Frame",sg)
frame.Size = UDim2.new(0,800,0,50)
frame.Position = UDim2.new(0,0,0,550)
frame.BackgroundColor = BrickColor.new'Black'
local Toolbar = frame

local sounds = Instance.new('ImageButton',Toolbar)
sounds.Position = UDim2.new(0,640,0,6)
sounds.Image = 'rbxassetid://72625616'
sounds.Size = UDim2.new(0,40,0,40)
sounds.BackgroundTransparency=11
soundson = false

		vol=1

sounds.MouseButton1Down:connect(function()
	soundsff = sounds:FindFirstChild('control')
	if soundson == false then soundson = true 	
	if soundsff then soundsff:remove() end
		local soundsf=Instance.new('Frame',sounds)
		soundsf.Size = UDim2.new(0,200,0,150)
		soundsf.BackgroundColor=BrickColor.White()
		soundsf.Position = UDim2.new(0,-150,0,-150)
		soundsf.Name='control'
		
		local soundbar=Instance.new('Frame',soundsf)
		soundbar.BackgroundColor = BrickColor.Black()
		soundbar.Size = UDim2.new(0,200,0,20)
		
		local soundx=Instance.new('TextButton',soundbar)
		soundx.Text = 'X'
		soundx.Font = 'SourceSansBold'
		soundx.TextColor3 = Color3.new(255)
		soundx.Position = UDim2.new(0,170,0,0)
		soundx.Size = UDim2.new(0,30,0,20)
		soundx.BackgroundTransparency = 11
		soundx.TextScaled = true
		
		soundx.MouseButton1Down:connect(function()
			soundson = false
			soundsf:remove()
		end)		
		
		local soundlabel=Instance.new('TextLabel',soundsf)
		soundlabel.Text='Volume Mixer'
		soundlabel.TextColor3=Color3.new(255,255,255)
		soundlabel.Font = "SourceSansItalic"
		soundlabel.Size = UDim2.new(0,200,0,20)
		soundlabel.BackgroundTransparency=11
		soundlabel.TextScaled = true
		soundlabel.TextXAlignment = 'Left'
	
		
		volsound=Instance.new('TextLabel',soundlabel)
		volsound.TextScaled = true
		volsound.BackgroundTransparency=11
		volsound.Size = UDim2.new(0,200,0,20)
		volsound.Position = UDim2.new(0,0,0,20)
		volsound.TextXAlignment = 'Left'
		
	
		local updvol = Instance.new('ImageButton',volsound)
		updvol.Image = 'rbxassetid://170952383'--170952383
		updvol.Size = UDim2.new(0,20,0,20)
		updvol.Position = UDim2.new(0,150,0,0)
		updvol.BackgroundTransparency=1
		
		local upvol = Instance.new('ImageButton',volsound)
		upvol.Image = 'rbxassetid://170952405'--170952405
		upvol.Size = UDim2.new(0,20,0,20)
		upvol.Position = UDim2.new(0,170,0,0)
		upvol.BackgroundTransparency=1
		
		updvol.MouseButton1Down:connect(function()
			if vol > 0 then
			vol=vol-1
			end
		end)
		
		upvol.MouseButton1Down:connect(function()
		vol=vol+1
		end)
		
	player.Chatted:connect(function(msg)
		if msg:lower():sub(1,4)=='vol/' then
			vol=msg:sub(5)
		end
	end)	
		
		game:GetService('RunService').RenderStepped:connect(function()
			volsound.Text = 'Volume: '..vol
		end)
	else
		soundson=false
	if soundsff then soundsff:remove() end
	end
end)

local SearchText=Instance.new('TextButton',Toolbar)
SearchText.Text = 'Search the web and Zypher..'
SearchText.TextTransparency=.5
SearchText.Name = 'SearchBar'
SearchText.BackgroundColor3=Color3.new(255,255,255)
SearchText.Position = UDim2.new(0,10,0,10)
SearchText.Size = UDim2.new(0,250,0,30)
SearchText.TextScaled = true
SearchText.TextXAlignment = 'Left'

local SearchLogo = Instance.new('TextButton',Toolbar)
SearchLogo.Text = 'S'
SearchLogo.TextScaled = true
SearchLogo.Font = "SourceSansBold"
SearchLogo.Position = UDim2.new(0,265,0,10)
SearchLogo.Size = UDim2.new(0,30,0,30)
SearchLogo.BorderSizePixel = 5
SearchLogo.BackgroundColor=BrickColor.new'Bright bluish green'
SearchLogo.TextColor3=Color3.new()
on = false

	SearchText.MouseButton1Down:connect(function()
	local STR = SearchText:FindFirstChild('SearchBarThingy')
if on == false then on = true
			if STR then STR:TweenSize(UDim2.new(0,200,0,400),'Out','Quad',0.35) wait() STR:remove() end
		local SearchSpace = Instance.new('Frame',SearchText)
		SearchSpace.BackgroundColor=BrickColor.White()
		SearchSpace.Size = UDim2.new(0,200,0,400)
		SearchSpace.Position = UDim2.new(0,0,0,-400)
		SearchSpace.Name = 'SearchBarThingy'
		SearchSpace:TweenSize(UDim2.new(0,250,0,400),'Out','Quad',0.35)
		
		player.Chatted:connect(function(m)
			if m:lower():sub(1,7)=='search/' then
				for i = 1,#m:sub(8),1 do wait()
					SearchText.Text = string.sub(m:sub(8),1,i)
					SearchText.TextTransparency=0
				end
				wait(.3)
				SearchText.TextTransparency=.5
			end
		end)

		else on = false if STR then STR:TweenSize(UDim2.new(0,200,0,400),'Out','Quad',0.35) wait(.3) STR:remove() end
 	end
	end)

framesb=Instance.new('TextBox',frame)
framesb.BackgroundColor3 = Color3.new(255,255,255)
framesb.Size = UDim2.new(0,450,0,30)
framesb.TextColor3 = Color3.new(0,0,0)
framesb.TextScaled = true
framesb.Visible = false
framesb.TextXAlignment = "Left"
framesb.Font = "SourceSansItalic"
framesb.Position = UDim2.new(0,100,0,21)

function OnChatted(msg)
if msg:lower():sub(1,4)=='url/' then
		if framesb.Visible == true then
			for i = 0,string.len(msg),1 do wait()
				framesb.Text = "http://www."..string.sub(msg:sub(5,#msg),1,i)..".com/"
			end
		end
end
end

player.Chatted:connect(OnChatted)
------------Find sbutton's function at line (307)------------
sbutton=Instance.new('ImageButton',frame)
sbutton.Position = UDim2.new(0,555,0,21)
sbutton.Size = UDim2.new(0,30,0,30)
sbutton.Image = "rbxassetid://67517663"
sbutton.BackgroundTransparency=1
sbutton.Visible = false

------asd------
hide=Instance.new('Frame',back)
hide.BackgroundColor = BrickColor.new'Really black'
hide.Position = UDim2.new(0,600,0,0)
hide.Size = UDim2.new(0,200,0,550)
hide.BackgroundTransparency=1

winds=Instance.new('ImageLabel',hide)
winds.Image = "rbxassetid://"..logo
winds.BackgroundTransparency=1
winds.Size = UDim2.new(0,200,0,200)

wtl=Instance.new('TextLabel',winds)
wtl.Text = "Settings"
wtl.BackgroundTransparency = 1
wtl.Size = UDim2.new(0,200,0,50)
wtl.Position = UDim2.new(0,0,0,200)
wtl.Font = "Legacy"
wtl.TextScaled = true
wtl.TextColor = BrickColor.new'Teal'
wtl.TextStrokeTransparency =0.5

bd=Instance.new('TextButton',hide)
bd.TextScaled = true
bd.Text = "Background Themes"
bd.BackgroundTransparency=0.5
bd.Size = UDim2.new(0,100,0,50)
bd.BackgroundColor = BrickColor.new'Black'
bd.TextColor3=Color3.new(255,255,255)
bd.Position = UDim2.new(0,0,0,350)

function onClick()
	bd1=Instance.new('Frame',back)
	bd1.Position = UDim2.new(0,200,0,100)
	bd1.Size = UDim2.new(0,300,0,300)
	bd1.Active = true
	bd1.Draggable = true
	bd1.BackgroundColor3 = Color3.new(255,255,255)
	
	bdf=Instance.new('Frame',bd1)
	bdf.BackgroundColor = BrickColor.new'Black'
	bdf.Size = UDim2.new(0,300,0,20)

	bdx=Instance.new('TextButton',bdf)
	bdx.Text = "X"
	bdx.TextColor3 = Color3.new(1,0,0)
	bdx.Size = UDim2.new(0,20,0,20)
	bdx.BackgroundColor3 = Color3.new(0,0,0)
	bdx.TextScaled = true
	bdx.Position = UDim2.new(0,280,0,0)
	
		function onClicke()
			bd1:remove()
		end
	
	bdx.MouseButton1Down:connect(onClicke)
	
	
	
	bd2=Instance.new('ImageButton',bd1)
	bd2.Size = UDim2.new(0,100,0,100)
	bd2.Position = UDim2.new(0,0,0,20)
	bd2.Image = "rbxassetid://371680220" -- FaZe
	
	function onClicker()
	back.Image = "rbxassetid://371680220" --FaZe
end

bd2.MouseButton1Down:connect(onClicker)


	bd3=Instance.new('ImageButton',bd1)
	bd3.Size = UDim2.new(0,100,0,100)
	bd3.Position = UDim2.new(0,100,0,20)
	bd3.Image = "rbxassetid://171214901"
	
	function onClickerr()
	back.Image = "rbxassetid://171214901"
end

bd3.MouseButton1Down:connect(onClickerr)

	bd4=Instance.new('ImageButton',bd1)
	bd4.Size = UDim2.new(0,100,0,100)
	bd4.Position = UDim2.new(0,200,0,20)
	bd4.Image = "rbxassetid://13511519" -- Red Anchor	
	function onClickerrr()
	back.Image = "rbxassetid://13511519" -- Red Anchor
end

bd4.MouseButton1Down:connect(onClickerrr)


	bd5=Instance.new('ImageButton',bd1)
	bd5.Size = UDim2.new(0,100,0,100)
	bd5.Position = UDim2.new(0,0,0,120)
	bd5.Image = "rbxassetid://396316983"
	
	function onClickerrrr()
	back.Image = "rbxassetid://396316983"
end

bd5.MouseButton1Down:connect(onClickerrrr)
--396316984

	bd6=Instance.new('ImageButton',bd1)
	bd6.Size = UDim2.new(0,100,0,100)
	bd6.Position = UDim2.new(0,100,0,120)
	bd6.Image = "rbxassetid://208338590"
	
	function onClickerrrrr()
	back.Image = "rbxassetid://208338590"
end

bd6.MouseButton1Down:connect(onClickerrrrr)


end

bd.MouseButton1Down:connect(onClick)


for i,v in pairs(hide:children()) do v.Visible = false end
m=player:GetMouse()
mouse=player:GetMouse()
mouse.KeyDown:connect(function(key)
key:lower()
if key == "e" then
	hide.Visible = true
	for i,v in pairs(hide:children()) do v.Visible = true end
for i = 1,0.3,-0.1 do wait()
	hide.BackgroundTransparency=i
end
end
end)

mouse.KeyUp:connect(function(keye)
keye:lower()
if keye == "e" then
	
	for i,v in pairs(hide:children()) do v.Visible = false end
for i = 0.3,1,0.1 do wait()
	hide.BackgroundTransparency=i
end
hide.Visible = false
end
end)
-----------icons---------
labinterp=Instance.new('StringValue',nil)
labinterp.Value = '70'

function label(parent,text)
	labinter=Instance.new('TextLabel',parent)
	labinter.FontSize = "Size18"
	labinter.Text = text
	labinter.TextColor3 = Color3.new(255,255,255)
	labinter.BackgroundTransparency=1
	labinter.Size = UDim2.new(0,50,0,50)
	labinter.Position = UDim2.new(0,10,0,labinterp.Value)
	labinter.TextStrokeTransparency=0
end

intericon=Instance.new('ImageButton',back)
intericon.Image = "rbxassetid://72777962"
intericon.BackgroundTransparency=1
intericon.Position = UDim2.new(0,20,0,20)
intericon.Size = UDim2.new(0,70,0,70)

wm=Instance.new('ImageButton',back)
wm.Image = "rbxassetid://72441708"
wm.BackgroundTransparency=1
wm.Position = UDim2.new(0,150,0,20)

wm.Size = UDim2.new(0,70,0,70)

label(intericon,'Google \n Chrome')
label(wm,'Server \n Control')

local SDown = 20
wm.MouseButton1Down:connect(function()
	SDown = 20
	local SCF = Instance.new('Frame',Desktop)
	SCF.Size = UDim2.new(0,400,0,400)
	SCF.BackgroundColor=BrickColor.White()
	SCF.Position = UDim2.new(0,200,0,100)
	
	SCFT = Instance.new('Frame',SCF)
	SCFT.Size = UDim2.new(0,400,0,20)
	SCFT.BackgroundColor=BrickColor.Black()
	
	SCX = Instance.new('TextButton',SCFT)
	SCX.TextScaled = true
	SCX.Text = 'X'
	SCX.TextColor = BrickColor.new'Really red'
	SCX.BackgroundTransparency=1
	SCX.Font = "SourceSansBold"
	SCX.Size = UDim2.new(0,30,0,20)
	SCX.Position = UDim2.new(0,370,0,0)
	
SCX.MouseButton1Down:connect(function()
	SCF:remove()
end)

local cmdsboard=Instance.new('Frame',SCF)
cmdsboard.Position=UDim2.new(0,0,0,20)
cmdsboard.Size = UDim2.new(0,400,0,350)
cmdsboard.BackgroundTransparency=1

local cmdsboard1=Instance.new('Frame',SCF)
cmdsboard1.Position=UDim2.new(0,0,0,20)
cmdsboard1.Size = UDim2.new(0,400,0,350)
cmdsboard1.BackgroundTransparency=1

	function AddSCmd(cmd,name)
		local thingy=Instance.new('TextButton',cmdsboard)
		thingy.TextColor = BrickColor.new'White'
		thingy.BackgroundColor3=Color3.new()
		thingy.TextScaled = true
		thingy.TextStrokeTransparency=0
		thingy.Size = UDim2.new(0,400,0,20)
		thingy.Position = UDim2.new(0,0,0,-20+SDown)
		thingy.Text = cmd
		thingy.Name = name
		
		thingy.MouseEnter:connect(function()
		thingy.TextColor = BrickColor.new'Bright yellow'
		thingy.Font = "SourceSansBold"
		end)
		
		thingy.MouseLeave:connect(function()
		thingy.TextColor = BrickColor.new'White'
		end)
		wait()
		SDown = SDown+20
	end
	------------------------------------------------------

	------------------------------------------------------
	AddSCmd('ZYPHER CMDS MENU','fked')
	AddSCmd('Kill (plr)','kill')
	AddSCmd('God (plr)','god')
	AddSCmd('ff (plr)','ff')
	AddSCmd('unff (plr)','unff')
	AddSCmd('ParticleEmitter (plr)','ParticleEmitter')
	AddSCmd('Sparkles (plr)','Sparkles')
	AddSCmd('Smoke (plr)','Smoke')
	AddSCmd('Fire (plr)','Fire')
	AddSCmd('PointLight (plr)','PointLight')
	AddSCmd('Normal (plr)','Normal')
	AddSCmd('Demigod (plr)','Demigod')
	AddSCmd('Explode (plr)','Explode')
	AddSCmd('Btools (plr)','tools') 	
	-----------------------------------------------------------------------------------
	--------------------------------K I L L--------------------------------------------
	-----------------------------------------------------------------------------------
	for i,v in pairs(cmdsboard:children()) do if v.Name=='kill' then
		v.MouseButton1Down:connect(function()
					local down=0
		for i,x in pairs(cmdsboard:children()) do x.Visible=false end
		for i,x in pairs(game.Players:children()) do
		local playerlist=Instance.new('TextButton',cmdsboard1)
		playerlist.Text = x.Name
		playerlist.TextColor = BrickColor.White()
		playerlist.Size = UDim2.new(0,400,0,20)
		playerlist.BackgroundColor3=Color3.new()
		playerlist.TextScaled=true
		playerlist.Position=UDim2.new(0,0,0,down)
		wait()
		down=down+20
		playerlist.MouseButton1Down:connect(function()
			workspace[x.Name]:BreakJoints()
			for i,h in pairs(cmdsboard1:children()) do h:remove() end
			for i,h in pairs(cmdsboard:children()) do h.Visible = true end
		end)
		end
	end)
	end
	end
	-----------------------------------------------------------------------------------
	-----------------------------------G O D--------------------------------------------
	-----------------------------------------------------------------------------------
	for i,v in pairs(cmdsboard:children()) do if v.Name=='god' then
		v.MouseButton1Down:connect(function()
					local down=0
		for i,x in pairs(cmdsboard:children()) do x.Visible=false end
		for i,x in pairs(game.Players:children()) do
		local playerlist=Instance.new('TextButton',cmdsboard1)
		playerlist.Text = x.Name
		playerlist.TextColor = BrickColor.White()
		playerlist.Size = UDim2.new(0,400,0,20)
		playerlist.BackgroundColor3=Color3.new()
		playerlist.TextScaled=true
		playerlist.Position=UDim2.new(0,0,0,down)
		wait()
		down=down+20
		playerlist.MouseButton1Down:connect(function()
			workspace[x.Name].Humanoid.MaxHealth = 9e999
			for i,h in pairs(cmdsboard1:children()) do h:remove() end
			for i,h in pairs(cmdsboard:children()) do h.Visible = true end
		end)
		end
	end)
	end
	end
	-----------------------------------------------------------------------------------
	-----------------------------------F F---------------------------------------------
	-----------------------------------------------------------------------------------
	for i,v in pairs(cmdsboard:children()) do if v.Name=='ff' then
		v.MouseButton1Down:connect(function()
		local down=0
		for i,x in pairs(cmdsboard:children()) do x.Visible=false end
		for i,x in pairs(game.Players:children()) do
		local playerlist=Instance.new('TextButton',cmdsboard1)
		playerlist.Text = x.Name
		playerlist.TextColor = BrickColor.White()
		playerlist.Size = UDim2.new(0,400,0,20)
		playerlist.BackgroundColor3=Color3.new()
		playerlist.TextScaled=true
		playerlist.Position=UDim2.new(0,0,0,down)
		wait()
		down=down+20
		playerlist.MouseButton1Down:connect(function()
			Instance.new('ForceField',workspace[x.Name])
			for i,h in pairs(cmdsboard1:children()) do h:remove() end
			for i,h in pairs(cmdsboard:children()) do h.Visible = true end
		end)
		end
	end)
	end
	end
	-----------------------------------------------------------------------------------
	---------------------------------U N  F F---------------------------------------------
	-----------------------------------------------------------------------------------
	for i,v in pairs(cmdsboard:children()) do if v.Name=='unff' then
		v.MouseButton1Down:connect(function()
		local down=0
		for i,x in pairs(cmdsboard:children()) do x.Visible=false end
		for i,x in pairs(game.Players:children()) do
		local playerlist=Instance.new('TextButton',cmdsboard1)
		playerlist.Text = x.Name
		playerlist.TextColor = BrickColor.White()
		playerlist.Size = UDim2.new(0,400,0,20)
		playerlist.BackgroundColor3=Color3.new()
		playerlist.TextScaled=true
		playerlist.Position=UDim2.new(0,0,0,down)
		wait()
		down=down+20
		playerlist.MouseButton1Down:connect(function()
			for i,rff in pairs(workspace[x.Name]:children()) do
				if rff.ClassName=='ForceField' then
					rff:Remove()
				end
			end
			for i,h in pairs(cmdsboard1:children()) do h:remove() end
			for i,h in pairs(cmdsboard:children()) do h.Visible = true end
		end)
		end
	end)
	end
	end
	-----------------------------------------------------------------------------------
	---------------------------------ParticleEmitter-----------------------------------
	-----------------------------------------------------------------------------------
	for i,v in pairs(cmdsboard:children()) do if v.Name=='ParticleEmitter' then
		v.MouseButton1Down:connect(function()
		local down=0
		for i,x in pairs(cmdsboard:children()) do x.Visible=false end
		for i,x in pairs(game.Players:children()) do
		local playerlist=Instance.new('TextButton',cmdsboard1)
		playerlist.Text = x.Name
		playerlist.TextColor = BrickColor.White()
		playerlist.Size = UDim2.new(0,400,0,20)
		playerlist.BackgroundColor3=Color3.new()
		playerlist.TextScaled=true
		playerlist.Position=UDim2.new(0,0,0,down)
		wait()
		down=down+20
		playerlist.MouseButton1Down:connect(function()
			Instance.new('ParticleEmitter',workspace[x.Name].Head)
			for i,h in pairs(cmdsboard1:children()) do h:remove() end
			for i,h in pairs(cmdsboard:children()) do h.Visible = true end
		end)
		end
	end)
	end
	end
	-----------------------------------------------------------------------------------
	---------------------------------ParticleEmitter-----------------------------------
	-----------------------------------------------------------------------------------
		-----------------------------------------------------------------------------------
	---------------------------------Smoke-----------------------------------
	-----------------------------------------------------------------------------------
	for i,v in pairs(cmdsboard:children()) do if v.Name=='Smoke' then
		v.MouseButton1Down:connect(function()
		local down=0
		for i,x in pairs(cmdsboard:children()) do x.Visible=false end
		for i,x in pairs(game.Players:children()) do
		local playerlist=Instance.new('TextButton',cmdsboard1)
		playerlist.Text = x.Name
		playerlist.TextColor = BrickColor.White()
		playerlist.Size = UDim2.new(0,400,0,20)
		playerlist.BackgroundColor3=Color3.new()
		playerlist.TextScaled=true
		playerlist.Position=UDim2.new(0,0,0,down)
		wait()
		down=down+20
		playerlist.MouseButton1Down:connect(function()
			Instance.new('Smoke',workspace[x.Name].Head)
			for i,h in pairs(cmdsboard1:children()) do h:remove() end
			for i,h in pairs(cmdsboard:children()) do h.Visible = true end
		end)
		end
	end)
	end
	end
	-----------------------------------------------------------------------------------
	---------------------------------Fire-----------------------------------
	-----------------------------------------------------------------------------------
		for i,v in pairs(cmdsboard:children()) do if v.Name=='Fire' then
		v.MouseButton1Down:connect(function()
		local down=0
		for i,x in pairs(cmdsboard:children()) do x.Visible=false end
		for i,x in pairs(game.Players:children()) do
		local playerlist=Instance.new('TextButton',cmdsboard1)
		playerlist.Text = x.Name
		playerlist.TextColor = BrickColor.White()
		playerlist.Size = UDim2.new(0,400,0,20)
		playerlist.BackgroundColor3=Color3.new()
		playerlist.TextScaled=true
		playerlist.Position=UDim2.new(0,0,0,down)
		wait()
		down=down+20
		playerlist.MouseButton1Down:connect(function()
			Instance.new('Fire',workspace[x.Name].Head)
			for i,h in pairs(cmdsboard1:children()) do h:remove() end
			for i,h in pairs(cmdsboard:children()) do h.Visible = true end
		end)
		end
	end)
	end
	end
	-----------------------------------------------------------------------------------
	---------------------------------Sparkles-----------------------------------
	-----------------------------------------------------------------------------------
			for i,v in pairs(cmdsboard:children()) do if v.Name=='Sparkles' then
		v.MouseButton1Down:connect(function()
		local down=0
		for i,x in pairs(cmdsboard:children()) do x.Visible=false end
		for i,x in pairs(game.Players:children()) do
		local playerlist=Instance.new('TextButton',cmdsboard1)
		playerlist.Text = x.Name
		playerlist.TextColor = BrickColor.White()
		playerlist.Size = UDim2.new(0,400,0,20)
		playerlist.BackgroundColor3=Color3.new()
		playerlist.TextScaled=true
		playerlist.Position=UDim2.new(0,0,0,down)
		wait()
		down=down+20
		playerlist.MouseButton1Down:connect(function()
			Instance.new('Sparkles',workspace[x.Name].Head)
			for i,h in pairs(cmdsboard1:children()) do h:remove() end
			for i,h in pairs(cmdsboard:children()) do h.Visible = true end
		end)
		end
	end)
	end
	end
	-----------------------------------------------------------------------------------
	---------------------------------Light-----------------------------------
	-----------------------------------------------------------------------------------
				for i,v in pairs(cmdsboard:children()) do if v.Name=='PointLight' then
		v.MouseButton1Down:connect(function()
		local down=0
		for i,x in pairs(cmdsboard:children()) do x.Visible=false end
		for i,x in pairs(game.Players:children()) do
		local playerlist=Instance.new('TextButton',cmdsboard1)
		playerlist.Text = x.Name
		playerlist.TextColor = BrickColor.White()
		playerlist.Size = UDim2.new(0,400,0,20)
		playerlist.BackgroundColor3=Color3.new()
		playerlist.TextScaled=true
		playerlist.Position=UDim2.new(0,0,0,down)
		wait()
		down=down+20
		playerlist.MouseButton1Down:connect(function()
			Instance.new('PointLight',workspace[x.Name].Head)
			for i,h in pairs(cmdsboard1:children()) do h:remove() end
			for i,h in pairs(cmdsboard:children()) do h.Visible = true end
		end)
		end
	end)
	end
	end
	-----------------------------------------------------------------------------------
	---------------------------------Demigod-----------------------------------
	-----------------------------------------------------------------------------------
					for i,v in pairs(cmdsboard:children()) do if v.Name=='Demigod' then
		v.MouseButton1Down:connect(function()
		local down=0
		for i,x in pairs(cmdsboard:children()) do x.Visible=false end
		for i,x in pairs(game.Players:children()) do
		local playerlist=Instance.new('TextButton',cmdsboard1)
		playerlist.Text = x.Name
		playerlist.TextColor = BrickColor.White()
		playerlist.Size = UDim2.new(0,400,0,20)
		playerlist.BackgroundColor3=Color3.new()
		playerlist.TextScaled=true
		playerlist.Position=UDim2.new(0,0,0,down)
		wait()
		down=down+20
		playerlist.MouseButton1Down:connect(function()
         workspace[x.Name].Humanoid.MaxHealth = 4000
			for i,h in pairs(cmdsboard1:children()) do h:remove() end
			for i,h in pairs(cmdsboard:children()) do h.Visible = true end
		end)
		end
	end)
	end
	end
	-----------------------------------------------------------------------------------
	---------------------------------DNormal-----------------------------------
	-----------------------------------------------------------------------------------
						for i,v in pairs(cmdsboard:children()) do if v.Name=='Normal' then
		v.MouseButton1Down:connect(function()
		local down=0
		for i,x in pairs(cmdsboard:children()) do x.Visible=false end
		for i,x in pairs(game.Players:children()) do
		local playerlist=Instance.new('TextButton',cmdsboard1)
		playerlist.Text = x.Name
		playerlist.TextColor = BrickColor.White()
		playerlist.Size = UDim2.new(0,400,0,20)
		playerlist.BackgroundColor3=Color3.new()
		playerlist.TextScaled=true
		playerlist.Position=UDim2.new(0,0,0,down)
		wait()
		down=down+20
		playerlist.MouseButton1Down:connect(function()
		workspace[x.Name].Humanoid.MaxHealth = 100
			for i,h in pairs(cmdsboard1:children()) do h:remove() end
			for i,h in pairs(cmdsboard:children()) do h.Visible = true end
		end)
		end
	end)
	end
	end
	-----------------------------------------------------------------------------------
	---------------------------------Explode-----------------------------------
	-----------------------------------------------------------------------------------
				for i,v in pairs(cmdsboard:children()) do if v.Name=='tools' then
		v.MouseButton1Down:connect(function()
		local down=0
		for i,x in pairs(cmdsboard:children()) do x.Visible=false end
		for i,x in pairs(game.Players:children()) do
		local playerlist=Instance.new('TextButton',cmdsboard1)
		playerlist.Text = x.Name
		playerlist.TextColor = BrickColor.White()
		playerlist.Size = UDim2.new(0,400,0,20)
		playerlist.BackgroundColor3=Color3.new()
		playerlist.TextScaled=true
		playerlist.Position=UDim2.new(0,0,0,down)
		wait()
		down=down+20
		playerlist.MouseButton1Down:connect(function()
	    Instance.new('HopperBin', x.Backpack).BinType = 2
	    Instance.new('HopperBin', x.Backpack).BinType = 3
	    Instance.new('HopperBin', x.Backpack).BinType = 4
			for i,h in pairs(cmdsboard1:children()) do h:remove() end
			for i,h in pairs(cmdsboard:children()) do h.Visible = true end
		end)
		end
	end)
	end
	end
	---------
	-----------------------------------------------------------------------------------
	---------------------------------Btools-----------------------------------
	-----------------------------------------------------------------------------------
	
					for i,v in pairs(cmdsboard:children()) do if v.Name=='Explode' then
		v.MouseButton1Down:connect(function()
		local down=0
		for i,x in pairs(cmdsboard:children()) do x.Visible=false end
		for i,x in pairs(game.Players:children()) do
		local playerlist=Instance.new('TextButton',cmdsboard1)
		playerlist.Text = x.Name
		playerlist.TextColor = BrickColor.White()
		playerlist.Size = UDim2.new(0,400,0,20)
		playerlist.BackgroundColor3=Color3.new()
		playerlist.TextScaled=true
		playerlist.Position=UDim2.new(0,0,0,down)
		wait()
		down=down+20
		playerlist.MouseButton1Down:connect(function()
			Instance.new('Explosion',workspace[x.Name].Head)
			for i,h in pairs(cmdsboard1:children()) do h:remove() end
			for i,h in pairs(cmdsboard:children()) do h.Visible = true end
		end)
		end
	end)
	end
	end

---------
	-----------------------------------------------------------------------------------
	---------------------------------DNormal-----------------------------------
	-----------------------------------------------------------------------------------
end) -- END

function onInter()
	intericon.Visible = false
	wm.Visible = false
	SearchText.Visible = false
	SearchLogo.Visible = false

	chromeb=Instance.new('Frame',back)
	chromeb.Size = UDim2.new(0,800,0,550)
	chromeb.BackgroundColor3 = Color3.new(255,255,255)
	
	chrometop=Instance.new('Frame',chromeb)
	chrometop.Size = UDim2.new(0,800,0,30)
	chrometop.BackgroundColor = BrickColor.new'Black'
	
	chromeexit=Instance.new('TextButton',chrometop)
	chromeexit.Size = UDim2.new(0,30,0,30)
	chromeexit.Position = UDim2.new(0,770,0,0)
	chromeexit.BackgroundTransparency=1
	chromeexit.Text = "X"
	chromeexit.TextColor3 = Color3.new(255,255,255)
	chromeexit.TextScaled = true
	
	framesb.Visible = true
	sbutton.Visible = true
	for i = 1,0,-0.1 do wait()
	framesb.BackgroundTransparency=i
	framesb.TextTransparency=i
	sbutton.ImageTransparency=i
	end
	
	function onexit()
	chromeb:remove()
	SearchLogo.Visible = true
	SearchText.Visible = true
	intericon.Visible = true
	wm.Visible = true
		for i = 0,1,0.1 do wait()
	framesb.BackgroundTransparency=i
	framesb.TextTransparency=i
	sbutton.ImageTransparency=i
		end
	framesb.Visible = false
	sbutton.Visible = false
	end
	
	chromeexit.MouseButton1Down:connect(onexit)
end

intericon.MouseButton1Down:connect(onInter)

----sbuttons click functions-----
function onfind()
	if not folder:FindFirstChild(framesb.Text) then
		filec=Instance.new('ImageLabel',chromeb)
		filec.Position = UDim2.new(0,150,0,50)
		filec.Size = UDim2.new(0,500,0,300)
		filec.Image = "rbxassetid://55330853"
		filec.ImageTransparency=1		
		
		ctrl=Instance.new('TextLabel',filec)
		ctrl.Text="Sorry, but that file hasn't been added yet. Please try again later."
		ctrl.TextScaled = true
		ctrl.Position = UDim2.new(0,0,0,300)
		ctrl.Size = UDim2.new(0,450,0,50)
		ctrl.TextColor3 = Color3.new(1,0,0)
		ctrl.TextTransparency=1
		ctrl.BackgroundTransparency=1
		ctrl.Font = "SourceSansBold"
		
		for i = 1,0,-0.1 do wait()
			filec.ImageTransparency=i
			ctrl.TextTransparency=i
		end
		
	end
end

	sbutton.MouseButton1Down:connect(onfind)
-----------------------------------
---Time---
function LocalTime()
timer = Instance.new('TextLabel',frame)
timer.BackgroundTransparency=1
timer.Size = UDim2.new(0,100,0,50)
timer.Position = UDim2.new(0,690,0,0)
timer.TextColor3 = Color3.new(255,255,255)
timer.TextScaled = true


local Months = 	{ 
							"January", "Febreuary", "March", "April", "May", "June",
							"July", "August", "September", "October", "November", "December"
						}
local MonthDays = { 	
							31, 28, 31, 30, 31, 30, 
							31, 31, 30, 31, 30, 31 
						}

function getDay(Date, year)
	local month, date = Date:match("(%a+)%s*(%d+)")
	local DAYS = tonumber(date)
	local leaps = math.floor( (year-2011)/4 - .25 ) + 1
	local Days = {"Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"}
	for _, v in ipairs(MonthDays) do
		if Months[_] == month then break end
		DAYS = DAYS + v
	end
	DAYS = math.floor( DAYS + (year-2011) * 365 ) + leaps
	return Days[ (DAYS%7 == 0 and 7 or DAYS%7) ] 
end

function getMonthAndDate(days, year)
	local leap = year%4 == 0 and 1 or 0
	local month;
	for _, v in ipairs(MonthDays) do
		if (days-v) < 1 then 
			month = Months[_]
			break 
		end
		days = days - v
	end
	return month, days
end

while wait() do
	local time = tick()
	local year = math.floor(1970 + time/(365.25*86400))
	local days = math.ceil(((time % (86400*365.25)) )/86400 + 0.25)
	local month, date = getMonthAndDate(days, year)
	local day = getDay(month..date, year)
	local hours = math.floor( (time%86400)/3600 )
	local minutes = math.floor( (time%3600)/60 )
	local seconds = math.floor( time%60 )
	local ZONE = game:FindFirstChild("NetworkServer") and "PST" or ""
	local AmOrPm = hours > 11 and "PM" or "AM"

	-- Get rid of military time
	hours = (hours%12 == 0 and 12 or hours%12)

	-- Format hours, minutes, seconds for 0's
	hours = (hours < 10 and "0"..hours or hours)
	minutes = (minutes < 10 and "0"..minutes or minutes)
	seconds = (seconds < 10 and "0"..seconds or seconds)


	timer.Text = hours..":"..minutes..":"..seconds.." "..AmOrPm..'\n'..year..string.rep(" ", 10)
end
end

LocalTime()
	else
	LogInBoard.Text= 'Incorrect password'
	if not LogInBoard:FindFirstChild('Hint') then
	local LogInHint = Instance.new('TextLabel',LogInBoard)
	LogInHint.Text= "Hint; starts with an '"..passw:sub(1,1).."'"
	LogInHint.Name= 'Hint'
	LogInHint.TextColor = BrickColor.White()
	LogInHint.TextStrokeTransparency = 0.4
	LogInHint.Size = UDim2.new(0,200,0,20)
	LogInHint.Position = UDim2.new(0,0,0,30)
	LogInHint.TextScaled = true
	LogInHint.BackgroundTransparency=1
	end
end
end)
end)
end)