--[[
Bow and Arrows
A bow that fires a few different kinds of arrows.
--]]


if script == nil then return end


ModelName = "Bow and Arrows"
Player = Game:GetService("Players").LocalPlayer
Char = Player.Character
animate = Char:findFirstChild("Animate")
if animate then
animate:Destroy()
end
Selected = false
Connected = false
Button1Down = false
CanUse = true
Loaded = false
ArrowType = 1
LoadedArrowType = 1
ArrowReady = false
Damage = 0


function CheckPlayer()
	if Player.Character == nil then return false end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Left Arm") == nil or Player.Character:FindFirstChild("Humanoid") == nil then return false end
	if Player.Character.Humanoid.Health <= 0 then return false end
	return true
end


--[[
CameraPunch v5

Functions:
CameraPunch
CameraSlide
--]]


function CameraPunch(X, Y)
	X, Y = X or math.rad(10), Y or math.rad(math.random(-10000, 10000) / 1000)
	Workspace.CurrentCamera.CoordinateFrame =
		CFrame.new(Workspace.CurrentCamera.Focus.p) *
		CFrame.fromEulerAnglesXYZ(CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p, Workspace.CurrentCamera.Focus.p):toEulerAnglesXYZ()) *
		CFrame.fromEulerAnglesXYZ(X, Y, 0) *
		CFrame.new(0, 0, (Workspace.CurrentCamera.CoordinateFrame.p - Workspace.CurrentCamera.Focus.p).magnitude)
end


function CameraSlide(X, Y, Step)
	X, Y, Step = X or math.rad(10), Y or math.rad(math.random(-10000, 10000) / 1000), Step or 0.1
	for i = 0, 1, Step do
		CameraPunch(Step * X, Step * Y)
		wait()
	end
end


SoundToServer = function(Name, SoundId, Pitch, Volume, Looped, Parent)
local Sound = Instance.new("Sound") 
Sound.Name = Name
Sound.SoundId = SoundId
Sound.Pitch = Pitch
Sound.Volume = Volume
Sound.Looped = Looped
Sound.Parent = Parent
Sound:Play()
end

function CreateParts(Parent, Format)
	if Parent == nil then return end
	local Parts = Instance.new("Model")
	Parts.Name = ModelName
	if Format == 1 then
		Parts.Name = Parts.Name.. " (Holstered)"
	end
	Parts.Parent = Parent

	local MasterPart1 = Instance.new("Part")
	MasterPart1.Name = "Handle"
	MasterPart1.BrickColor = BrickColor.new("Reddish brown")
	MasterPart1.TopSurface = 0
	MasterPart1.BottomSurface = 0
	MasterPart1.FormFactor = "Custom"
	MasterPart1.Size = Vector3.new(0.3, 0.3, 3)
	MasterPart1.Locked = true
	MasterPart1.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart1
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Torso")
		Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
		Weld.C1 = CFrame.new(-0.75, 0, 0.5)
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Left Arm")
		Weld.C1 = CFrame.new(0, -1, -0.1)
	end
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Handle Cover"
	Part.BrickColor = BrickColor.new("White")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.31, 0.31, 0.75)
	Part.Locked = true
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Top Bend"
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.3, 0.3, 1.5)
	Part.Locked = true
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-45), 0, 0)
	Weld.C1 = CFrame.new(0, 0.4875, -1.925)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Bottom Bend"
	Part.BrickColor = BrickColor.new("Reddish brown")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.3, 0.3, 1.5)
	Part.Locked = true
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(45), 0, 0)
	Weld.C1 = CFrame.new(0, 0.4875, 1.925)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Top String"
	Part.BrickColor = BrickColor.new("Institutional white")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 2.25)
	Part.Locked = true
	Part.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.25, 0.25, 1)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -1, 1.125)
	Weld.Parent = Weld.Part0

	local Part = Part:Clone()
	Part.Name = "Bottom String"
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -1, -1.125)
	Weld.Parent = Weld.Part0

	local MasterPart2 = Instance.new("Part")
	MasterPart2.Name = "Quiver"
	MasterPart2.BrickColor = BrickColor.new("Black")
	MasterPart2.TopSurface = 0
	MasterPart2.BottomSurface = 0
	MasterPart2.FormFactor = "Custom"
	MasterPart2.Size = Vector3.new(0.75, 0.75, 1.5)
	MasterPart2.Locked = true
	MasterPart2.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", MasterPart2)
	Mesh.MeshType = "FileMesh"
	Mesh.MeshId = "http://www.roblox.com/Asset/?id=3270017"
	Mesh.Scale = Vector3.new(0.75, 0.75, 1.5 / 0.15)
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart2
	Weld.Part1 = Player.Character:FindFirstChild("Torso")
	Weld.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(90), math.rad(-20))
	Weld.C1 = CFrame.new(0, -1, 0.75)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Name = "Quiver Base"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.75, 0.2, 0.75)
	Part.Locked = true
	Part.Parent = Parts
	local Mesh = Instance.new("CylinderMesh", Part)
	Mesh.Scale = Vector3.new(1, 0.1, 1)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C1 = CFrame.new(0, 0, 0.75)
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
	Weld.Parent = Weld.Part0

	for i = 1, 25 do
		local Part = Instance.new("Part")
		Part.Name = "Arrow"
		Part.BrickColor = BrickColor.new("Reddish brown")
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.2, 1.5)
		Part.Locked = true
		Part.Parent = Parts
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "FileMesh"
		Mesh.MeshId = "http://www.roblox.com/Asset/?id=15887356"
		Mesh.TextureId = "http://www.roblox.com/Asset/?id=15886781"
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart2
		Weld.C1 = CFrame.new(0, 0, 0.7)
		Weld.C0 = CFrame.new(0, 0, 1) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-10, 10)), math.rad(math.random(-10, 10)), math.rad(math.random(0, 360)))
		Weld.Parent = Weld.Part0
	end
end

function RemoveParts(Parent, Format)
	if Format == 1 then
		pcall(function() Parent[ModelName.. " (Holstered)"]:Remove() end)
	elseif Format == 2 then
		pcall(function() Parent[ModelName]:Remove() end)
	end
end


function SetAngle(Joint, Angle, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	if Joint == 1 or Joint == 3 then
		Joints[Joint].DesiredAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
		Joints[Joint].DesiredAngle = -Angle
	end
end


function ForceAngle(Joint, Angle, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	if Joint == 1 or Joint == 3 then
		Joints[Joint].DesiredAngle = Angle
		Joints[Joint].CurrentAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
		Joints[Joint].DesiredAngle = -Angle
		Joints[Joint].CurrentAngle = -Angle
	end
end


function SetSpeed(Joint, Speed, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	Joints[Joint].MaxVelocity = Speed
end


function DisableLimb(Limb, Character)
	if Character == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder"),
		Character.Torso:FindFirstChild("Left Shoulder"),
		Character.Torso:FindFirstChild("Right Hip"),
		Character.Torso:FindFirstChild("Left Hip")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	local Joint = Instance.new("Motor6D")
	Joint.Parent = Character.Torso
	Joint.Part0 = Character.Torso
	Joint.Part1 = Limbs[Limb]
	if Limb == 1 then
		Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.Name = "Right Shoulder 2"
	elseif Limb == 2 then
		Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.Name = "Left Shoulder 2"
	elseif Limb == 3 then
		Joint.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.Name = "Right Hip 2"
	elseif Limb == 4 then
		Joint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.Name = "Left Hip 2"
	end
	Joint.MaxVelocity = Joints[Limb].MaxVelocity
	Joint.CurrentAngle = Joints[Limb].CurrentAngle
	Joint.DesiredAngle = Joints[Limb].DesiredAngle
	Joints[Limb]:Remove()
end


function ResetLimbCFrame(Limb, Character)
	if Character == nil then return false end
	if Character.Parent == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	if Limb == 1 then
		Joints[Limb].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	elseif Limb == 2 then
		Joints[Limb].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	elseif Limb == 3 then
		Joints[Limb].C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	elseif Limb == 4 then
		Joints[Limb].C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	end
end


function EnableLimb(Limb, Character)
	if Character == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	if Limb == 1 then
		Joints[Limb].Name = "Right Shoulder"
	elseif Limb == 2 then
		Joints[Limb].Name = "Left Shoulder"
	elseif Limb == 3 then
		Joints[Limb].Name = "Right Hip"
	elseif Limb == 4 then
		Joints[Limb].Name = "Left Hip"
	end
	Animate = Character:FindFirstChild("Animate")
	if Animate == nil then return false end
	Animate = Animate:Clone()
	Character.Animate:Remove()
	Animate.Parent = Character
end



function tagHumanoid(humanoid)
	local tag = Instance.new("ObjectValue")
	tag.Name = "creator"
	tag.Value = Player
	tag.Parent = humanoid
end


function untagHumanoid(humanoid)
	if humanoid ~= nil then
		local tag = humanoid:FindFirstChild("creator")
		if tag ~= nil then
			tag:Remove()
		end
	end
end


function onButton1Down(Mouse)
	if Button1Down == true then return end
	Button1Down = true
	if CheckPlayer() == false then return end
	if CanUse == true then
		if Loaded == true then
			CanUse = false
			local Arrow = Player.Character[ModelName]:FindFirstChild("Arrow Ready")
			if Arrow ~= nil then
				ArrowReady = true
				coroutine.wrap(function()
					while Selected == true and Button1Down == true do wait() end
					if Button1Down == false then return end
					CanUse = true
					Button1Down = false
					onKeyDown("e", Mouse)
				end)()
				Damage = 0
				for i = 0, 1, (function()
					if ArrowType == 1 then
						return 0.1
					elseif ArrowType == 2 then
						return 0.025
					elseif ArrowType == 3 then
						return 0.05
					elseif ArrowType == 4 then
						return 0.01
					end
				end)() do
					if Button1Down == false then break end
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-0.5 - (0.25 * i), 0.5, -0.5 - (0.5 * i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115 + (5 * i)), 0)
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1 + (0.25 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(110 + (20 * i)), 0)
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
						Player.Character[ModelName]["Top String"].Weld.C0 = CFrame.new(0, -1 - (0.775 * i), 1.125 - (0.55 * i)) * CFrame.fromEulerAnglesXYZ(math.rad(20 * i), 0, 0)
						Player.Character[ModelName]["Bottom String"].Weld.C0 = CFrame.new(0, -1 - (0.775 * i), -1.125 + (0.55 * i)) * CFrame.fromEulerAnglesXYZ(math.rad(-20 * i), 0, 0)
						Player.Character[ModelName]["Top String"].Mesh.Scale = Vector3.new(Player.Character[ModelName]["Top String"].Mesh.Scale.x, Player.Character[ModelName]["Top String"].Mesh.Scale.y, 1 + (0.1 * i))
						Player.Character[ModelName]["Bottom String"].Mesh.Scale = Vector3.new(Player.Character[ModelName]["Bottom String"].Mesh.Scale.x, Player.Character[ModelName]["Bottom String"].Mesh.Scale.y, 1 + (0.1 * i))
						Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(-0.3 * i, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(25 - (5 * i)))
					end)
					pcall(function()
						Arrow.Weld.C1 = CFrame.new(0.75 * i, -2, 0)
						Arrow.Weld.C0 = CFrame.new(0, 0, 0.8 * i) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-90), math.rad(-47.5 * i))
					end)
					Damage = i
					wait()
				end
			end
		else
			CanUse = false
			SetSpeed(2, 0.2, Player.Character)
			SetAngle(2, math.rad(25), Player.Character)
			CameraSlide(math.rad(-10), 0)
			local Connections = {}
			for i, Part in pairs(Player.Character[ModelName]:GetChildren()) do
				Connections[i] = Part.Touched:connect(function(Hit)
					if Hit.Parent ~= Player.Character then
						if Hit.Parent:FindFirstChild("Humanoid") ~= nil then
							pcall(function()
								tagHumanoid(Hit.Parent.Humanoid)
								Hit.Parent.Humanoid:TakeDamage(3)
								wait(0.1)
								untagHumanoid(Hit.Parent.Humanoid)
							end)
						end
					end
				end)
			end
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", math.random(120, 140) / 100, 1, false, Player.Character[ModelName].Handle)
			SetSpeed(2, 0.25, Player.Character)
			SetAngle(2, math.rad(150), Player.Character)
			local OldCFrame = nil
			local NewCFrame = Player.Character[ModelName]["Bottom Bend"].CFrame * CFrame.new(0, 0, 0.75)
			for i = 0, 1, 0.1 do
				pcall(function()
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-100 * i), 0, 0)
					Player.Character[ModelName].Handle.Weld.C1 = CFrame.new(0, -1 - (0.5 * i), -0.1)
				end)
				CameraPunch(math.rad(2), 0)
				OldCFrame = NewCFrame
				NewCFrame = Player.Character[ModelName]["Bottom Bend"].CFrame * CFrame.new(0, 0, 0.75)
				local Trail = Instance.new("Part", Workspace)
				Trail.Name = "Trail"
				Trail.TopSurface = 0
				Trail.BottomSurface = 0
				Trail.BrickColor = BrickColor.new("Institutional white")
				Trail.Anchored = true
				Trail.CanCollide = false
				Trail.FormFactor = "Custom"
				Trail.Size = Vector3.new(0.3, 0.2, (NewCFrame.p - OldCFrame.p).magnitude)
				Trail.CFrame = CFrame.new((NewCFrame.p + OldCFrame.p) / 2, OldCFrame.p)
				local Mesh = Instance.new("SpecialMesh", Trail)
				Mesh.MeshType = "Brick"
				Mesh.Scale = Vector3.new(1, 0.25, 1)
				coroutine.wrap(function()
					for i = 0, 1, 0.1 do
						Trail.Transparency = i
						Trail.Mesh.Scale = Vector3.new(1 - i, Trail.Mesh.Scale.y, Trail.Mesh.Scale.z)
						wait()
					end
					Trail:Remove()
				end)()
				wait()
			end
			wait(0.1)
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", math.random(120, 140) / 100, 1, false, Player.Character[ModelName].Handle)
			SetSpeed(2, 0.25, Player.Character)
			SetAngle(2, math.rad(-10), Player.Character)
			local NewCFrame = Player.Character[ModelName]["Top Bend"].CFrame * CFrame.new(0, 0, -0.75)
			for i = 0, 1, 0.1 do
				pcall(function()
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad((-100 * (1 - i)) + (50 * i)), 0, 0)
				end)
				CameraPunch(math.rad(-2), 0)
				OldCFrame = NewCFrame
				NewCFrame = Player.Character[ModelName]["Top Bend"].CFrame * CFrame.new(0, 0, -0.75)
				local Trail = Instance.new("Part", Workspace)
				Trail.Name = "Trail"
				Trail.TopSurface = 0
				Trail.BottomSurface = 0
				Trail.BrickColor = BrickColor.new("Institutional white")
				Trail.Anchored = true
				Trail.CanCollide = false
				Trail.FormFactor = "Custom"
				Trail.Size = Vector3.new(0.3, 0.2, (NewCFrame.p - OldCFrame.p).magnitude)
				Trail.CFrame = CFrame.new((NewCFrame.p + OldCFrame.p) / 2, OldCFrame.p)
				local Mesh = Instance.new("SpecialMesh", Trail)
				Mesh.MeshType = "Brick"
				Mesh.Scale = Vector3.new(1, 0.25, 1)
				coroutine.wrap(function()
					for i = 0, 1, 0.1 do
						Trail.Transparency = i
						Trail.Mesh.Scale = Vector3.new(1 - i, Trail.Mesh.Scale.y, Trail.Mesh.Scale.z)
						wait()
					end
					Trail:Remove()
				end)()
				wait()
			end
			wait(0.3)
			for i = 1, #Connections do
				pcall(function() Connections[i]:disconnect() end)
			end
			SetSpeed(2, 0.15, Player.Character)
			SetAngle(2, math.rad(90), Player.Character)
			for i = 1, 0, -0.05 do
				pcall(function()
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(50 * i), 0, 0)
					Player.Character[ModelName].Handle.Weld.C1 = CFrame.new(0, -1 - (0.5 * i), -0.1)
				end)
				CameraPunch(math.rad(0.5), 0)
				wait()
			end
			pcall(function()
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
				Player.Character[ModelName].Handle.Weld.C1 = CFrame.new(1 * i, -1, -0.1)
			end)
			CanUse = true
		end
	end
end


function onButton1Up(Mouse)
	Button1Down = false
	if CheckPlayer() == false then return end
	if ArrowReady == true and Loaded == true then
		ArrowReady = false
		local Arrow = Player.Character[ModelName]:FindFirstChild("Arrow Ready")
		if Arrow ~= nil then
			SoundToServer("Fire", "http://www.roblox.com/Asset/?id=16211041", math.random(900, 1100) / 1000, 1, false, Player.Character[ModelName].Handle)
			local function Weld(x, y)
	local Weld = Instance.new("Weld")
	Weld.Part0 = x
	Weld.Part1 = y
	Weld.C0 = x.CFrame:inverse() * CFrame.new(x.Position)
	Weld.C1 = y.CFrame:inverse() * CFrame.new(x.Position)
	Weld.Parent = x
end
		end
		
Source = Char[ModelName]:FindFirstChild("MasterPart1")

--if Source:FindFirstChild("Weld") == nil and Source:FindFirstChild("NoHit") == nil then
	pcall(function() Source.BodyVelocity:Remove() end)
	--Source.CFrame = Source.CFrame * CFrame.new(0, 0, -0.05)
	--Weld(Source, Hit)
	local Sound = Instance.new("Sound")
	Sound.Name = "Hit"
	Sound.SoundId = "http://www.roblox.com/Asset/?id=16211030"
	Sound.Pitch = math.random(900, 1100) / 1000
	Sound.Volume = 1
	Sound.Looped = false
	Sound.Parent = Workspace
	Sound:Play()
			if LoadedArrowType == 1 or LoadedArrowType == 4 then
		--if Hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
		--[[local Tag = Source.Parent.creator:Clone()
		Tag.Parent = Hit.Parent.Parent.Humanoid]]--
		pcall(function() Hit.Parent.Parent.Humanoid:TakeDamage(20)
		wait(0.1)
		Tag:Remove()
	end)
			elseif LoadedArrowType == 2 then
				
	Instance.new("IntValue", Source).Name = "NoHit"
	for i = 0, 1, 0.1 do
		local Blip = Instance.new("Part", Workspace)
		Blip.Name = "Blip"
		Blip.Anchored = true
		Blip.CanCollide = false
		Blip.FormFactor = "Custom"
		Blip.Size = Vector3.new(1, 1, 1)
		Blip.BrickColor = BrickColor.new("Really red")
		Blip.TopSurface = 0
		Blip.BottomSurface = 0
		Blip.CFrame = Source.CFrame * CFrame.new(0, 0, -0.75)
		local Mesh = Instance.new("SpecialMesh", Blip)
		Mesh.MeshType = "Sphere"
		Mesh.Scale = Vector3.new(0, 0, 0)
		coroutine.wrap(function()
			for i = 0, 1, 0.05 do
				Blip.Mesh.Scale = Vector3.new(i, i, i)
				Blip.Transparency = i
				wait()
			end
			Blip:Remove()
		end)()
		local Sound = Instance.new("Sound")
		Sound.Name = "Blip"
		Sound.SoundId = "http://www.roblox.com/Asset/?id=15666462"
		Sound.Pitch = (4 * i) + 2
		Sound.Volume = 1
		Sound.Looped = false
		Sound.Parent = Source
		Sound:Play()
		wait(0.5 * (1 - i))
	end
	coroutine.wrap(function()
		if Hit.Parent:FindFirstChild("Humanoid") ~= nil then
			local Tag = Source.creator:Clone()
			Tag.Parent = Hit.Parent.Humanoid
			wait(0.1)
			Tag:Remove()
		end
		if Hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
			local Tag = Source.creator:Clone()
			Tag.Parent = Hit.Parent.Parent.Humanoid
			wait(0.1)
			Tag:Remove()
		end
	end)()
	if Source ~= nil then
		local Explosion = Instance.new("Explosion")
		Explosion.Position = Source.Position
		Explosion.BlastPressure = 1000000
		Explosion.BlastRadius = 5
		Explosion.Parent = Workspace
		local Sound = Instance.new("Sound")
		Sound.Name = "Explosion"
		Sound.SoundId = "http://www.roblox.com/Asset/?id=2767090"
		Sound.Pitch = 3
		Sound.Volume = 1
		Sound.Looped = false
		Sound.Parent = Source
		Sound:Play()
		Source:BreakJoints()
		Source.Transparency = 1
		Source.CanCollide = false
		Source.Anchored = true
		wait(1)
		Source:Remove()
	end
			elseif LoadedArrowType == 3 then
				local Fire = Instance.new("Fire", Arrow)
				Fire.Size = 5
				Fire.Heat = 0
				local Sound = Instance.new("Sound", Arrow)
				Sound.Name = "Fire Arrow Sound"
				Sound.Looped = true
				Sound.Pitch = math.random(90, 110) / 100
				Sound.Volume = 1
				Sound.SoundId = "http://www.roblox.com/Asset/?id=31760113"
				Sound:Play()
				coroutine.wrap(function()
					wait(math.random(1, 25))
					for i = 1, 0, -0.05 do
						Sound.Volume = i
						Fire.Size = i * 5
						wait()
					end
					Sound.Volume = 0
					Sound:Stop()
					Fire.Enabled = false
					Fire.Size = 5
					wait()
					Sound:Remove()
				end)()
				
	    while Source:FindFirstChild("Weld") ~= nil do
		if Source:FindFirstChild("Fire") == nil then break end
		if Source.Fire.Enabled == false then break end
		if Hit.Parent:FindFirstChild("Humanoid") ~= nil then
			local Tag = Source.creator:Clone()
			Tag.Parent = Hit.Parent.Humanoid
			pcall(function()
				if Hit.Name == "Head" then
					Hit.Parent.Humanoid:TakeDamage(15)
				elseif Hit.Name == "Torso" then
					Hit.Parent.Humanoid:TakeDamage(20)
				else
					Hit.Parent.Humanoid:TakeDamage(50)
				end
			end)
			wait()
			Tag:Remove()
		end
		--if Hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
			local Tag = Source.Parent.creator:Clone()
			Tag.Parent = Hit.Parent.Parent.Humanoid
			pcall(function() Hit.Parent.Parent.Humanoid:TakeDamage(60)
			wait(0.1)
			Tag:Remove()
		end)
		wait()
	end
			end
			--Function = Function.. "\nend\n"
			tagHumanoid(Arrow)
			--TouchedToServer(Function, Arrow)
			Arrow.Name = "Arrow"
			Arrow.Parent = Workspace
			Arrow:BreakJoints()
			Arrow.CFrame = CFrame.new((Player.Character[ModelName].Handle.CFrame * CFrame.new(0, -1.5, 0)).p, Mouse.Hit.p) * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, math.rad(90))
			Arrow.Anchored = true
			for i = 1, 100 do
				Arrow.Velocity = (Mouse.Hit.p - Player.Character[ModelName].Handle.Position).unit * (function()
					if ArrowType == 1 then
						return 150 * Damage
					elseif ArrowType == 2 then
						return 110 * Damage
					elseif ArrowType == 3 then
						return 125 * Damage
					elseif ArrowType == 4 then
						return 500 * Damage
					end
				end)()
			end
			Arrow.Anchored = false
			local BodyForce = Instance.new("BodyForce", Arrow)
			BodyForce.force = Vector3.new(0, 12.5 * Damage, 0)
			game:GetService("Debris"):AddItem(Arrow, 60)
		end
		pcall(function()
			Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-0.75, 0.5, -1) * CFrame.fromEulerAnglesXYZ(0, math.rad(-110), 0)
			Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.25, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(130), 0)
			Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
			Player.Character[ModelName]["Top String"].Weld.C0 = CFrame.new(0, -1, 1.125)
			Player.Character[ModelName]["Bottom String"].Weld.C0 = CFrame.new(0, -1, -1.125)
			Player.Character[ModelName]["Top String"].Mesh.Scale = Vector3.new(Player.Character[ModelName]["Top String"].Mesh.Scale.x, Player.Character[ModelName]["Top String"].Mesh.Scale.y, 1)
			Player.Character[ModelName]["Bottom String"].Mesh.Scale = Vector3.new(Player.Character[ModelName]["Bottom String"].Mesh.Scale.x, Player.Character[ModelName]["Bottom String"].Mesh.Scale.y, 1)
			Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(-0.3, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(20))
		end)
		wait(0.5)
		for i = 1, 0, -0.05 do
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-0.5 - (0.25 * i), 0.5, -0.5 - (0.5 * i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115 + (5 * i)), 0)
				Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1 + (0.25 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(110 + (20 * i)), 0)
				Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(-0.3 * i, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(25 - (5 * i)))
			end)
			wait()
		end
		CanUse = true
		onKeyDown("e", Mouse)
	end
--end


function onKeyDown(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Button1Down == false and CanUse == true and CheckPlayer() == true then
		if Key == "q" then
			if Mouse.Target == nil then return end
			if CheckPlayer() == false then return end
			local NewPlayer = game:GetService("Players"):GetPlayerFromCharacter(Mouse.Target.Parent)
			if NewPlayer == nil then return end
			if NewPlayer.Character == nil then return end
			if NewPlayer.Character:FindFirstChild("Torso") == nil then return end
			if (NewPlayer.Character.Torso.Position - Player.Character.Torso.Position).magnitude > 10 then return end
			onDeselected(Mouse)
			wait()
			RemoveParts(Player.Character, 1)
			script.Parent.Parent = NewPlayer.Backpack
			Player = NewPlayer
		end
		if Key == "e" then
			CanUse = false
			if Loaded == false then
				LoadedArrowType = ArrowType
				DisableLimb(1, Player.Character)
				SetSpeed(1, 0.5, Player.Character)
				SetAngle(1, math.rad(-10), Player.Character)
				for i = 0, 1, 0.15 do
					pcall(function()
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 - (50 * i)), 0)
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
					end)
					wait()
				end
				SetSpeed(1, 0.1, Player.Character)
				SetAngle(1, math.rad(90), Player.Character)
				local Arrow = Instance.new("Part")
				Arrow.Name = "Arrow Ready"
				Arrow.BrickColor = BrickColor.new("Reddish brown")
				Arrow.TopSurface = 0
				Arrow.BottomSurface = 0
				Arrow.FormFactor = "Custom"
				Arrow.Size = Vector3.new(0.3, 0.3, 1)
				Arrow.Locked = true
				Arrow.Parent = Player.Character[ModelName]
				local Mesh = Instance.new("SpecialMesh", Arrow)
				Mesh.MeshType = "FileMesh"
				Mesh.MeshId = "http://www.roblox.com/Asset/?id=15887356"
				Mesh.TextureId = "http://www.roblox.com/Asset/?id=15886781"
				if ArrowType == 2 then
					Mesh.Scale = Vector3.new(1.25, 1.25, 0.9)
					Mesh.VertexColor = Vector3.new(0.25, 0.1, 0.1)
				elseif ArrowType == 3 then
					Mesh.Scale = Vector3.new(1.1, 1.1, 1.1)
					Mesh.VertexColor = Vector3.new(1, 0.5, 0.5)
				elseif ArrowType == 4 then
					Mesh.Scale = Vector3.new(0.75, 0.75, 1.3)
					Mesh.VertexColor = Vector3.new(0.5, 0.5, 1)
				end
				local Weld = Instance.new("Weld")
				Weld.Part0 = Arrow
				Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
				Weld.C1 = CFrame.new(0, -1, 0.5)
				Weld.Parent = Weld.Part0
				wait(0.1)
				for i = 0, 1, (function()
					if ArrowType == 1 then
						return 0.1
					elseif ArrowType == 2 then
						return 0.05
					elseif ArrowType == 3 then
						return 0.075
					elseif ArrowType == 4 then
						return 0.25
					end
				end)() do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (1 * i), 0.5, -0.5 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (25 * i)), 0)
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(40 + (70 * i)), 0)
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
						Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(0, 0, math.rad(25 * i))
						Arrow.Weld.C1 = CFrame.new(0, -1 - (1 * i), 0.5 * (1 - i))
						Arrow.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(-90 * i), 0)
					end)
					wait()
				end
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-0.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
					Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(110), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
					Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(0, 0, math.rad(25))
					Arrow.Weld.C1 = CFrame.new(0, -2, 0)
					Arrow.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-90), 0)
				end)
				Loaded = true
			else
				local Arrow = Player.Character[ModelName]:FindFirstChild("Arrow Ready")
				SetSpeed(1, 0.13, Player.Character)
				SetAngle(1, math.rad(-10), Player.Character)
				for i = 1, 0, -0.075 do
					pcall(function()
						Player.Character.Torso["Left Shoulder 2"].C0 = CFrame.new(-1.5 + (1 * i), 0.5, -0.5 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (25 * i)), 0)
						Player.Character.Torso["Left Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5 - (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(40 + (70 * i)), 0)
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
						Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(0, 0, math.rad(25 * i))
					end)
					pcall(function()
						Arrow.Weld.C1 = CFrame.new(0, -1 - (1 * i), 0.5 * (1 - i))
						Arrow.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90 * i), math.rad(-90 * i), 0)
					end)
					wait()
				end
				SetSpeed(1, 0.25, Player.Character)
				SetAngle(1, 0, Player.Character)
				pcall(function() Arrow:Remove() end)
				for i = 1, 0, -0.15 do
					pcall(function()
						Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 - (50 * i)), 0)
						Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
					end)
					wait()
				end
				ResetLimbCFrame(1, Player.Character)
				EnableLimb(1, Player.Character)
				EnableLimb(2, Player.Character)
				DisableLimb(2, Player.Character)
				Loaded = false
			end
			CanUse = true
		end
		if Key == "r" then
			ArrowType = ArrowType - 1
			if ArrowType < 1 then
				ArrowType = 4
			end
		end
		if Key == "t" then
			ArrowType = ArrowType + 1
			if ArrowType > 4 then
				ArrowType = 1
			end
		end
		if Key == "r" or Key == "t" then
			local Message = Instance.new("Hint", Player.PlayerGui)
			if ArrowType == 1 then
				Message.Text = "[Arrow Type] Standard arrow."
			elseif ArrowType == 2 then
				Message.Text = "[Arrow Type] Explosive arrow."
			elseif ArrowType == 3 then
				Message.Text = "[Arrow Type] Fire arrow."
			elseif ArrowType == 4 then
				Message.Text = "[Arrow Type] Long-range arrow."
			end
			game:GetService("Debris"):AddItem(Message, 2.5)
		end
	end
end


function onSelected(Mouse)
	if Selected == true or CanUse == false then return end
	CanUse = false
	while true do
		if CheckPlayer() == true then
			if Player.Character.Torso:FindFirstChild("Left Shoulder") ~= nil then
				break
			end
		end
		wait(0.1)
	end
	Selected = true
	DisableLimb(2, Player.Character)
	SetSpeed(2, 0.5, Player.Character)
	SetAngle(2, 0, Player.Character)
	wait(0.25)
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	SetSpeed(2, 0.15, Player.Character)
	SetAngle(2, math.rad(90), Player.Character)
	for i = 0, 1, 0.1 do
		pcall(function()
			Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 * (1 - i)), 0, 0)
			Player.Character[ModelName].Handle.Weld.C1 = CFrame.new(0.8 * (1 - i), -1 * i, (-0.1 * i) + (0.6 * (1 - i)))
		end)
		wait()
	end
	pcall(function()
		Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
		Player.Character[ModelName].Handle.Weld.C1 = CFrame.new(0, -1, -0.1)
	end)
	Mouse.Icon = "rbxasset://textures/GunCursor.png"
	Mouse.Button1Down:connect(function() onButton1Down(Mouse) end)
	Mouse.Button1Up:connect(function() onButton1Up(Mouse) end)
	Mouse.KeyDown:connect(function(Key) onKeyDown(Key, Mouse) end)
	CanUse = true
end


function onDeselected(Mouse)
	if Selected == false then return end
	Selected = false
	while CanUse == false do wait() end
	if CheckPlayer() == false or pcall(function() local _ = Player.Character.Torso["Left Shoulder 2"] end) == false then
		RemoveParts(Player.Character, 2)
		CreateParts(Player.Character, 1)
		SetAngle(1, 0, Player.Character)
		ResetLimbCFrame(1, Player.Character)
		EnableLimb(1, Player.Character)
		SetAngle(2, 0, Player.Character)
		ResetLimbCFrame(2, Player.Character)
		EnableLimb(2, Player.Character)
		return
	end
	if Selected == true then return end
	if Loaded == true then Selected = true onKeyDown("e", Mouse) Selected = false end
	CanUse = false
	SetSpeed(2, 0.15, Player.Character)
	SetAngle(2, 0, Player.Character)
	for i = 1, 0, -0.1 do
		pcall(function()
			Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 * (1 - i)), 0, 0)
			Player.Character[ModelName].Handle.Weld.C1 = CFrame.new(0.8 * (1 - i), -1 * i, (-0.1 * i) + (0.6 * (1 - i)))
		end)
		wait()
	end
	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)
	SetSpeed(2, 0.25, Player.Character)
	EnableLimb(2, Player.Character)
	CanUse = true
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = ModelName
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
elseif script.Parent.ClassName == "HopperBin" and Connected == false then
	Connected = true
	Player = script.Parent.Parent.Parent
	end wait() if script.Parent.ClassName == "HopperBin" then
	while script.Parent.Parent.ClassName ~= "Backpack" do
		wait()
    end
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
	CreateParts(Player.Character, 1)
	--[[
FirstPerson v37
Variables:

FirstPersonOffset
Player
ModelName

Functions:

UpdateFirstPerson
--]]


FirstPersonOffset = FirstPersonOffset or CFrame.new()


local WeaponClone = nil
local BodyClone = nil
local Check = false
local FirstRun = false


function UpdateFirstPerson(Override)
	if (Selected == true or CanUse == false) and Player.Character ~= nil and Player.Character:FindFirstChild("Humanoid") ~= nil and Player.Character.Humanoid.Health > 0 and Workspace.CurrentCamera.CameraSubject == Player.Character.Humanoid and Player.Character:FindFirstChild("Torso") ~= nil and Player.Character:FindFirstChild(ModelName) ~= nil and (Workspace.CurrentCamera.CoordinateFrame.p - Workspace.CurrentCamera.Focus.p).magnitude <= 1 then
		if (BodyClone == nil or WeaponClone == nil) or Override == true then
			pcall(function() WeaponClone:Remove() end)
			WeaponClone = nil
			pcall(function() BodyClone:Remove() end)
			BodyClone = nil
			if (Player.Character.Torso:FindFirstChild("Left Shoulder") == nil and Player.Character.Torso:FindFirstChild("Left Shoulder 2") == nil) or (Player.Character.Torso:FindFirstChild("Right Shoulder") == nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") == nil) then
				return
			end
			BodyClone = Instance.new("Model", Workspace.CurrentCamera)
			BodyClone.Name = "Body Clone"
			local Torso = Instance.new("Part", BodyClone)
			Torso.Name = "Torso"
			Torso.FormFactor = "Custom"
			Torso.Size = Vector3.new(0.2, 0.2, 0.2)
			Torso.Transparency = 1
			Torso:BreakJoints()
			local Weld = Instance.new("Weld", Torso)
			Weld.Part0 = Weld.Parent
			Weld.Part1 = Player.Character.Torso
			Weld.C1 = Check == true and CFrame.new() or FirstPersonOffset
			local LeftArm = Player.Character:FindFirstChild("Left Arm")
			if LeftArm ~= nil and Player.Character.Torso:FindFirstChild("Left Shoulder 2") ~= nil then
				LeftArm = LeftArm:Clone()
				LeftArm.Parent = BodyClone
				local Motor6D = Instance.new("Motor6D", Torso)
				Motor6D.Name = "Left Shoulder"
				Motor6D.Part0 = Motor6D.Parent
				Motor6D.Part1 = LeftArm
				Motor6D.C0 = Player.Character.Torso["Left Shoulder 2"].C0
				Motor6D.C1 = Player.Character.Torso["Left Shoulder 2"].C1
				Motor6D.CurrentAngle = Player.Character.Torso["Left Shoulder 2"].CurrentAngle
				Motor6D.DesiredAngle = Player.Character.Torso["Left Shoulder 2"].DesiredAngle
				Motor6D.MaxVelocity = Player.Character.Torso["Left Shoulder 2"].MaxVelocity
				Player.Character.Torso["Left Shoulder 2"].Changed:connect(function(Property)
					pcall(function() Motor6D[Property] = Player.Character.Torso["Left Shoulder 2"][Property] end)
				end)
			end
			local RightArm = Player.Character:FindFirstChild("Right Arm")
			if RightArm ~= nil and Player.Character.Torso:FindFirstChild("Right Shoulder 2") ~= nil then
				RightArm = RightArm:Clone()
				RightArm.Parent = BodyClone
				local Motor6D = Instance.new("Motor6D", Torso)
				Motor6D.Name = "Right Shoulder"
				Motor6D.Part0 = Motor6D.Parent
				Motor6D.Part1 = RightArm
				Motor6D.C0 = Player.Character.Torso["Right Shoulder 2"].C0
				Motor6D.C1 = Player.Character.Torso["Right Shoulder 2"].C1
				Motor6D.CurrentAngle = Player.Character.Torso["Right Shoulder 2"].CurrentAngle
				Motor6D.DesiredAngle = Player.Character.Torso["Right Shoulder 2"].DesiredAngle
				Motor6D.MaxVelocity = Player.Character.Torso["Right Shoulder 2"].MaxVelocity
				Player.Character.Torso["Right Shoulder 2"].Changed:connect(function(Property)
					pcall(function() Motor6D[Property] = Player.Character.Torso["Right Shoulder 2"][Property] end)
				end)
			end
			Instance.new("Humanoid", BodyClone)
			BodyClone.Humanoid.MaxHealth = math.huge
			BodyClone.Humanoid.Health = math.huge
			for _, Part in pairs(Player.Character:GetChildren()) do
				if Part.ClassName == "Shirt" then
					Part:Clone().Parent = BodyClone
				elseif Part.ClassName == "CharacterMesh" then
					if Part.BodyPart.Name == "LeftArm" or Part.BodyPart.Name == "RightArm" then
						Part:Clone().Parent = BodyClone
					end
				end
			end
			WeaponClone = Player.Character[ModelName]:Clone()
			WeaponClone.Parent = Workspace.CurrentCamera
			local _, WeaponCloneDual = pcall(function() return Player.Character[ModelName.. " (Dual)"]:Clone() end)
			if type(WeaponCloneDual) == "userdata" then
				for _, Part in pairs(WeaponCloneDual:GetChildren()) do
					Part.Name = Part.Name.. " Dual"
					Part.Parent = WeaponClone
				end
			end
			for _, Part in pairs(WeaponClone:GetChildren()) do
				pcall(function()
					Part.Velocity = Vector3.new(0, 0, 0)
					Part.RotVelocity = Vector3.new(0, 0, 0)
					Part.CanCollide = false
				end)
				for _, Part2 in pairs(Part:GetChildren()) do
					if Part2.ClassName == "Fire" or Part2.ClassName == "Smoke" then
						pcall(function() Part2:Remove() end)
					end
				end
			end
			for i = 1, 2 do
				for _, Part in pairs(WeaponClone:GetChildren()) do
					if i == 2 and (Part.Name == "Handle" or Part.Name == "Handle Dual") then
						pcall(function()
						local Source = Part.Name == "Handle" and Player.Character[ModelName]["Handle"] or Player.Character[ModelName.. " (Dual)"]["Handle"]
							local Weld = Instance.new("Weld", Part)
							Weld.Part0 = Weld.Parent
							Weld.Part1 = BodyClone:FindFirstChild(Source.Weld.Part1.Name)
							Weld.C0 = Source.Weld.C0
							Weld.C1 = Source.Weld.C1
						end)
					else
						for _, Part2 in pairs(Part:GetChildren()) do
							if Part2:IsA("JointInstance") then
								if Part2.Part0 == nil or Part2.Part1 == nil then
									Part:Remove()
								elseif (Part2.Part1.Name == "Torso" or Part2.Part1.Name == "Left Arm" or Part2.Part1.Name == "Right Arm") and Part.Name ~= "Handle" and Part.Name ~= "Handle Dual" then
									Part:Remove()
								end
							end
						end
					end
				end
				for _, Model in pairs(Player.Character:GetChildren()) do
					if Model.Name == ModelName or Model.Name == ModelName.. " (Dual)" then
						for _, Part in pairs(Model:GetChildren()) do
							Part.Changed:connect(function(Property)
								if Model ~= Player.Character:FindFirstChild(ModelName) and Model ~= Player.Character:FindFirstChild(ModelName.. " (Dual)") then return end
								if Property == "Transparency" or Property == "Reflectance" then
									pcall(function() WeaponClone[Part.Name .. (Model.Name == ModelName.. " (Dual)" and " Dual" or "")][Property] = Part[Property] end)
								end
							end)
							for _, Joint in pairs(Part:GetChildren()) do
								if Joint:IsA("JointInstance") then
									Joint.Changed:connect(function(Property)
										if Model ~= Player.Character:FindFirstChild(ModelName) and Model ~= Player.Character:FindFirstChild(ModelName.. " (Dual)") then return end
										pcall(function() WeaponClone[Part.Name .. (Model.Name == ModelName.. " (Dual)" and " Dual" or "")][Joint.Name][Property] = Part[Joint.Name][Property] end)
									end)
								end
							end
						end
					end
				end
			end
		end
	else
		pcall(function() WeaponClone:Remove() end)
		WeaponClone = nil
		pcall(function() BodyClone:Remove() end)
		BodyClone = nil
	end
end


while true do
	UpdateFirstPerson()
	if BodyClone ~= nil then
		if CanUse == true then
			BodyClone.Torso.Weld.C1 = FirstPersonOffset
			Check = false
			FirstRun = true
		elseif CanUse == false then
			if FirstRun == true then
				Check = not Button1Down
				FirstRun = false
			end
			if Check == true then
				BodyClone.Torso.Weld.C1 = CFrame.new()
			end
		end
	end
	wait()
end
	--[[
MouseAim v11
--]]


script.Parent.Selected:connect(function(Mouse)
	while Selected == false do wait() end
	while Selected == true do
		if script.Parent == nil then break end
		if Player.Character:FindFirstChild("Humanoid") == nil or Player.Character:FindFirstChild("Torso") == nil then break end
		if Player.Character.Humanoid.Health > 0 and Player.Character.Humanoid.Sit == false and Player.Character.Humanoid.PlatformStand == false and Player.Character.Torso:FindFirstChild("BodyGyro") == nil and Player.Character.Torso:FindFirstChild("BodyAngularVelocity") == nil and Player.Character:FindFirstChild("Ragdoll") == nil then
			local AimGyro = Instance.new("BodyGyro")
			game:GetService("Debris"):AddItem(AimGyro, 0)
			AimGyro.Parent = Player.Character.Torso
			AimGyro.Name = "AimGyro"
			AimGyro.P = 40000
			AimGyro.D = 300
			AimGyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
			AimGyro.cframe = CFrame.new(Player.Character.Torso.Position, Vector3.new(Mouse.Hit.p.x, Player.Character.Torso.Position.y, Mouse.Hit.p.z)) * (Player.Character:FindFirstChild("AimGyroAdd") and Player.Character.AimGyroAdd.Value or CFrame.new())
		end
		wait()
	end
end)
end