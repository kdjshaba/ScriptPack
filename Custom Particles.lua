getglobal game
getfield -1 GetService
pushvalue -2
pushstring Players
pcall 2 1 0
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Torso
getglobal Instance
getfield -1 new
pushstring ParticleEmitter
pushvalue -4
pcall 2 1 0
pushstring rbxassetid://73854738
setfield -2 Texture
pushnumber 100
setfield -2 VelocitySpread
emptystack