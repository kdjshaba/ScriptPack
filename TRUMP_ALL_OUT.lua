local playerLeaderstats = {}
for i, v in pairs(game.Players:GetChildren()) do
table.insert(playerLeaderstats, v)
end
for i, v in pairs(playerLeaderstats) do
pe = Instance.new("ParticleEmitter",v.Character.Torso)
pe.Texture = "http://www.roblox.com/asset/?id=408774805"
pe.VelocitySpread = 50
se = Instance.new("ParticleEmitter",v.Character.Torso)
se.Texture = "http://www.roblox.com/asset/?id=378919754"
se.VelocitySpread = 50
fe = Instance.new("ParticleEmitter",v.Character.Torso)
fe.Texture = "http://www.roblox.com/asset/?id=409990921"
fe.VelocitySpread = 50
end

a=Instance.new("Sky",game.Lighting)

 b={"Bk","Dn","Ft","Lf","Rt","Up"}

 for i,v in pairs(b) do

 a["Skybox"..v]="rbxassetid://343377229"

 end

print("Music executed!")

s = Instance.new("Sound")

s.Name = "Music"

s.SoundId = "http://www.roblox.com/asset/?id=418846017" --Put the id into there.

s.Looped = true

s.Pitch = 1 --You can edit these settings.

s.Volume = 4 --You can edit these settings.

s.archivable = false

 

s.Parent = game.Workspace

 

wait(1)

 
s:play()
