Sounds = {
	"http://www.roblox.com/Asset/?id=10209908", "wrench_hit_build_success1",
	"http://www.roblox.com/Asset/?id=10209905", "wrench_hit_build_fail",
	"http://www.roblox.com/Asset/?id=10209902", "syringegun_worldreload",
	"http://www.roblox.com/Asset/?id=10209897", "syringegun_shoot",
	"http://www.roblox.com/Asset/?id=10209894", "stickybomblauncher_worldreload",
	"http://www.roblox.com/Asset/?id=10209888", "stickybomblauncher_shoot",
	"http://www.roblox.com/Asset/?id=10209886", "stickybomblauncher_det",
	"http://www.roblox.com/Asset/?id=10209881", "sniper_worldreload",
	"http://www.roblox.com/Asset/?id=10209875", "sniper_shoot",
	"http://www.roblox.com/Asset/?id=10209869", "smg_worldreload",
	"http://www.roblox.com/Asset/?id=10209859", "smg_shoot",
	"http://www.roblox.com/Asset/?id=10209850", "shovel_swing",
	"http://www.roblox.com/Asset/?id=10209845", "shotgun_worldreload",
	"http://www.roblox.com/Asset/?id=10209842", "shotgun_shoot",
	"http://www.roblox.com/Asset/?id=10209834", "scatter_gun_worldreload",
	"http://www.roblox.com/Asset/?id=10209828", "scatter_gun_shoot",
	"http://www.roblox.com/Asset/?id=10209821", "rocket_shoot",
	"http://www.roblox.com/Asset/?id=10209813", "rocket_reload",
	"http://www.roblox.com/Asset/?id=10209810", "revolver_worldreload",
	"http://www.roblox.com/Asset/?id=10209803", "revolver_shoot",
	"http://www.roblox.com/Asset/?id=10209801", "pistol_worldreload",
	"http://www.roblox.com/Asset/?id=10209798", "pistol_shoot",
	"http://www.roblox.com/Asset/?id=10209788", "minigun_wind_up",
	"http://www.roblox.com/Asset/?id=10209780", "minigun_spin",
	"http://www.roblox.com/Asset/?id=10209776", "minigun_shoot",
	"http://www.roblox.com/Asset/?id=10209771", "minigun_empty",
	"http://www.roblox.com/Asset/?id=10209786", "minigun_wind_down",
	"http://www.roblox.com/Asset/?id=10209668", "medigun_no_target",
	"http://www.roblox.com/Asset/?id=10209658", "medigun_heal",
	"http://www.roblox.com/Asset/?id=10209653", "medigun_charged",
	"http://www.roblox.com/Asset/?id=10209645", "machete_swing",
	"http://www.roblox.com/Asset/?id=10209640", "knife_swing",
	"http://www.roblox.com/Asset/?id=10209636", "grenade_launcher_worldreload",
	"http://www.roblox.com/Asset/?id=10209633", "grenade_launcher_shoot",
	"http://www.roblox.com/Asset/?id=10209624", "flame_thrower_bb_start",
	"http://www.roblox.com/Asset/?id=10209616", "flame_thrower_bb_loop",
	"http://www.roblox.com/Asset/?id=10209605", "flame_thrower_bb_end",
	"http://www.roblox.com/Asset/?id=10209600", "flame_thrower_airblast",
	"http://www.roblox.com/Asset/?id=10209596", "bottle_hit_flesh1",
	"http://www.roblox.com/Asset/?id=10209590", "blade_hit1",
	"http://www.roblox.com/Asset/?id=10209588", "bat_hit",
	"http://www.roblox.com/Asset/?id=10209583", "axe_hit_flesh1",
	"http://www.roblox.com/Asset/?id=10209481", "sapper_removed",
	"http://www.roblox.com/Asset/?id=10209475", "sapper_plant",
	"http://www.roblox.com/Asset/?id=10209467", "grenade_impact",
	"http://www.roblox.com/Asset/?id=10209450", "regenerate",
	"http://www.roblox.com/Asset/?id=10209303", "teleporter_send",
	"http://www.roblox.com/Asset/?id=10209296", "teleporter_receive",
	"http://www.roblox.com/Asset/?id=10209280", "teleporter_ready",
	"http://www.roblox.com/Asset/?id=10209268", "teleporter_explode",
	"http://www.roblox.com/Asset/?id=10209260", "sentry_spot",
	"http://www.roblox.com/Asset/?id=10209257", "sentry_shoot",
	"http://www.roblox.com/Asset/?id=10209248", "sentry_rocket",
	"http://www.roblox.com/Asset/?id=10209240", "sentry_finish",
	"http://www.roblox.com/Asset/?id=10209236", "sentry_explode",
	"http://www.roblox.com/Asset/?id=10209225", "sentry_empty",
	"http://www.roblox.com/Asset/?id=10209215", "dispenser_generate_metal",
	"http://www.roblox.com/Asset/?id=10209212", "dispenser_explode",
	"http://www.roblox.com/Asset/?id=10209146", "announcer_you_failed",
	"http://www.roblox.com/Asset/?id=10209137", "announcer_victory",
	"http://www.roblox.com/Asset/?id=10209136", "announcer_capture_intel",
	"http://www.roblox.com/Asset/?id=10209129", "announcer_attack_controlpoints",
	"http://www.roblox.com/Asset/?id=10209104", "announcer_am_roundstart03"
}
local Sound = Instance.new("Sound", Workspace)
Sound.Name = "TF2"
Sound.Pitch = 1
Sound.Volume = 1
for i = 1, #Sounds, 2 do
	print(Sounds[i + 1])
	Sound.SoundId = Sounds[i]
	Sound:Play()
	wait(3)
end