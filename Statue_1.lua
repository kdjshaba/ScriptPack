mod = Instance.new("Model") 
mod.Name = "yfc" 
mod.Parent = Game.Workspace.yfc
------------------------------------------------------
h = Instance.new("Humanoid") 
h.MaxHealth = 0 
h.Health = 0 
h.Parent = mod 
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Bright yellow")
brick.Parent = mod 
brick.Name = "1" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(49.5, 500, 0.5) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0.25 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Bright yellow")
brick.Parent = mod 
brick.Name = "2" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(49.5, 500, -0.5) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0.25 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Bright yellow")
brick.Parent = mod 
brick.Name = "Torso" 
brick.Size = Vector3.new(1, 2, 2) 
brick.Position = Vector3.new(49.5, 500, 0) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0.25 
brick.FormFactor = (2)
------------------------------------------------------
local brick1 = Instance.new("Part")
brick1.BrickColor=BrickColor.new("Bright yellow")
brick1.Parent = mod 
brick1.Name = "Head" 
brick1.Size = Vector3.new(1, 1, 1) 
brick1.Position = Vector3.new(49.5, 500, 0) 
brick1.Anchored = true 
brick1.CanCollide = true 
brick1.Locked = true 
brick1.Transparency = 0 
brick1.Reflectance = 0.25 
brick1.FormFactor = (2)
------------------------------------------------------
m = Instance.new("SpecialMesh") 
m.Parent = brick1 
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Bright yellow")
brick.Parent = mod 
brick.Name = "Right Arm" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(49.5, 513, -1.5) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0.25 
brick.FormFactor = (2)
------------------------------------------------------
local brick = Instance.new("Part")
brick.BrickColor=BrickColor.new("Bright yellow")
brick.Parent = mod 
brick.Name = "Left Arm" 
brick.Size = Vector3.new(1, 2, 1) 
brick.Position = Vector3.new(49.5, 513, 1.5) 
brick.Anchored = true 
brick.CanCollide = true 
brick.Locked = true 
brick.Transparency = 0 
brick.Reflectance = 0.25 
brick.FormFactor = (2)