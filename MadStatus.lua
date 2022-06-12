--MadStatus.lua
_G.MadStatus = {
	Participle = {
		"Accelerating",
		"Aggregating",
		"Allocating",
		"Aquiring",
		"Automating",
		"Backtracing",
		"Bloxxing",
		"Bootstraping",
		"Calibrating",
		"Correlating",
		"De-noobing",
		"De-ionizing",
		"Deriving",
		"Energizing",
		"Filtering",
		"Generating",
		"Indexing",
		"Loading",
		"Noobing",
		"Optimizing",
		"Oxidizing",
		"Queueing",
		"Parsing",
		"Processing",
		"Rasterizing",
		"Reading",
		"Registering",
		"Re-routing",
		"Resolving",
		"Sampling",
		"Updating",
		"Writing"
	},
	Modifier = {
		"Blox",
		"Count Zero",
		"Cylon",
		"Data",
		"Ectoplasm",
		"Encryption",
		"Event",
		"Farnsworth",
		"Bebop",
		"Flux Capacitor",
		"Fusion",
		"Game",
		"Gibson",
		"Host",
		"Mainframe",
		"Metaverse",
		"Nerf Herder",
		"Neutron",
		"Noob",
		"Photon",
		"Profile",
		"Script",
		"Skynet",
		"TARDIS",
		"Virtual"
	},
	Subject = {
		"Analogs",
		"Blocks",
		"Cannon",
		"Channels",
		"Core",
		"Database",
		"Dimensions",
		"Directives",
		"Engine",
		"Files",
		"Gear",
		"Index",
		"Layer",
		"Matrix",
		"Paradox",
		"Parameters",
		"Parsecs",
		"Pipeline",
		"Players",
		"Ports",
		"Protocols",
		"Reactors",
		"Sphere",
		"Spooler",
		"Stream",
		"Switches",
		"Table",
		"Targets",
		"Throttle",
		"Tokens",
		"Torpedoes",
		"Tubes"
	},
	Generate = function()
		return _G.MadStatus.Participle[math.random(1, #_G.MadStatus.Participle)] .. " " ..
			_G.MadStatus.Modifier[math.random(1, #_G.MadStatus.Modifier)] .. " " ..
			_G.MadStatus.Subject[math.random(1, #_G.MadStatus.Subject)] .. "..."
	end
}
