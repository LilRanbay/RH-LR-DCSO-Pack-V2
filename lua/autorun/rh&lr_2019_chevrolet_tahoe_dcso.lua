AddCSLuaFile()

local VehicleName = "2019 Chevrolet Tahoe DCSO [RH&LR]"

local EMV = {}

local A = "AMBER"
local R = "RED"
local G = "GREEN"
local DR = "D_RED" 
local B = "BLUE"   
local W = "WHITE" 
local CW = "C_WHITE"
local SW = "S_WHITE"
     
EMV.Siren = "lr_w_295"
EMV.Skin = "rh&lr/fldcso/tahoe19/tahoe19_patrol" 
EMV.Color = Color(255,255,255)  

EMV.Liveries = {
	["DCSO"] = {   
		["DCSO Patrol"] = "rh&lr/fldcso/tahoe19/tahoe19_patrol",
		["DCSO K9"] = "rh&lr/fldcso/tahoe19/tahoe19_k9",
		["DCSO Highway Patrol"] = "rh&lr/fldcso/tahoe19/tahoe19_hwy", 
	}
}

EMV.BodyGroups = {
	{ 0, 0 }, -- car
	{ 1, 0 }, -- pushbar
	{ 2, 1 }, -- windowbars
	{ 3, 1 }, -- partition
	{ 4, 1 }, -- lightbar
	{ 5, 0 }, -- console
	{ 6, 1 }, -- ions
	{ 7, 1 }, -- dominator
	{ 8, 1 }, -- mirrors
	{ 9, 0 }, -- keychain
	{ 10, 0 }, -- clamped1
	{ 11, 0 }, -- clamped2
	{ 12, 0 }, -- clamped3
	{ 13, 0 }, -- clamped4
	{ 14, 0 }, -- clamped5
	{ 15, 0 }, -- clamped6
	{ 16, 0 }, -- clamped7
}

EMV.Props = {
	-- INTERIOR PROPS --
	{
		Model = "models/pringle/props/laptopstands/laptopstand2.mdl",
		Scale = 0.3, 
		Pos = Vector(7.5, 24, 53.9), 
		Ang = Angle( 0, 180, -2),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/pringle/props/panasonic_toughbook/panasonic_toughbook.mdl",
		Scale = 0.075,
		Pos = Vector(9.3, 25.5, 55.3),
		Ang = Angle( 2, -46, 19.3),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/pringle/props/stalkerdsr2x.mdl",
		Scale = 0.25,
		Pos = Vector(0, 40, 63.3),
		Ang = Angle( 0, 0, 2),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/schmal/stalker_dual_aux.mdl", 
		Scale = 0.25,
		Pos = Vector(-34, 47.5, 62.8),
		Ang = Angle( 2, 180, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/schmal/stalker_dual_aux.mdl",
		Scale = 0.25,
		Pos = Vector(-22, -111, 78.7),   
		Ang = Angle( 180, 0, 0),   
		RenderGroup = RENDERGROUP_OPAQUE, 
		RenderMode = RENDERMODE_NONE, 
	},
	{
        Model = "models/supermighty/photon/dashcam.mdl",
        Scale = 1,
        Pos = Vector(0, 32, 74.1),
        Ang = Angle( 0, 270, 0),
        RenderGroup = RENDERGROUP_OPAQUE,
        RenderMode = RENDERMODE_NONE,
    },
	{
		Model = "models/c3/shotgun/shotgun.mdl",
		Scale = 0.5,
		Pos = Vector(5, -9, 50),
		Ang = Angle( -12, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/pringle/props/m16_rifle/m16gunlock.mdl",
		Scale = 0.5,
		Pos = Vector(-5, -6.5, 50),
		Ang = Angle( 0, 180, -10),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/pringle/props/medbag/medbag.mdl",
		Scale = 1,
		Pos = Vector(0, -70, 34.6),
		Ang = Angle( 10, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},        
	{
		Model = "models/props_junk/TrafficCone001a.mdl",
		Scale = 1,
		Pos = Vector(-17, -92, 50.9),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/props_junk/TrafficCone001a.mdl",
		Scale = 1,
		Pos = Vector(-17, -92, 52.9),
		Ang = Angle( 0, 90-7, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/props_junk/TrafficCone001a.mdl",
		Scale = 1,
		Pos = Vector(-17, -92, 54.9),
		Ang = Angle( 0, 90-14, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/props_junk/TrafficCone001a.mdl",
		Scale = 1,
		Pos = Vector(-17, -92, 56.9),
		Ang = Angle( 0, 90-4, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	-- EXTERIOR PROPS --
	{
		Model = "models/sentry/props/spotlight_left_down.mdl",
		Scale = 1,
		Pos = Vector(-38, 41, 68),
		Ang = Angle( 0, 0, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		SubMaterials = { ["5"] = "sentry/shared/env_cubemap_model" },
	},
	{
		Model = "models/sentry/props/spotlight_right_down.mdl",
		Scale = 1,
		Pos = Vector(38, 41, 68),
		Ang = Angle( 0, 0, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		SubMaterials = { ["5"] = "sentry/shared/env_cubemap_model" },
	},
	{
		Model = "models/japanplate/licenseplate.mdl",
		Scale = 1,
		Pos = Vector(0, -122.3, 47),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE, 
		SubMaterials = {[0] = "rh&lr/nyccpd/plate"}
	},
	{
		Model = "models/japanplate/licenseplate.mdl",
		Scale = 1,
		Pos = Vector(0, 122.4, 22.2),
		Ang = Angle( 4, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE, 
		SubMaterials = {[0] = "rh&lr/nyccpd/plate"}
	},
	-- ANTENNAS --
	{
		Model = "models/sentry/antenna3.mdl",
		Scale = Vector( 0.65, 0.65, 0.5 ),
		Pos = Vector(4, -85, 87.25),
		Ang = Angle( 1, 0, 1.5),       
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	}, 
	{
		Model = "models/sentry/antenna3.mdl",
		Scale = Vector( 0.65, 0.65, 0.5 ),
		Pos = Vector(-4, -85, 87.25),
		Ang = Angle( -1, 0, 1.5),       
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/sentry/antenna3.mdl",
		Scale = Vector( 0.65, 0.65, 0.5 ),
		Pos = Vector(4, -69, 87.75),
		Ang = Angle( 1, 0, 1.5),       
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/sentry/antenna3.mdl",
		Scale = Vector( 0.65, 0.65, 0.5 ),
		Pos = Vector(-4, -69, 87.75),
		Ang = Angle( -1, 0, 1.5),       
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	}, 
	{
		Model = "models/sentry/antenna6.mdl",
		Scale = 0.4,  
		Pos = Vector(11.65, -75, 87.4), 
		Ang = Angle( 1, 0, 0.6),  
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		SubMaterials = {[0] = "sentry/shared/env_cubemap_model"}
	},
	{
		Model = "models/sentry/antenna6.mdl",
		Scale = 0.4,  
		Pos = Vector(-11.65, -75, 87.4), 
		Ang = Angle( -1, 0, 0.6),  
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		SubMaterials = {[0] = "sentry/shared/env_cubemap_model"}		
	},
	--Annoying alert
	{
		Model = "models/props_phx/construct/metal_plate_curve360.mdl",
		Scale = Vector(0.0182, 0.0182, 0.0095),  
		Pos = Vector(11.65+0.01, -75, 87.4+0.4), 
		Ang = Angle( 1, 0, 0.6),  
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		SubMaterials = {
			[0] = "sentry/shared/black",
			[1] = "sentry/shared/black",
		}                                         
	},
	{
		Model = "models/props_phx/construct/metal_plate_curve360.mdl",
		Scale = Vector(0.0182, 0.0182, 0.0095),  
		Pos = Vector(-11.65-0.01, -75, 87.4+0.4), 
		Ang = Angle( -1, 0, 0.6),  
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		SubMaterials = {
			[0] = "sentry/shared/black",
			[1] = "sentry/shared/black",
		}
	},          
}
       
EMV.Auto = {  
	-- LIGHTBARS --
	{ 
		ID = "FLDCSO Whelen Freedom", 
		Scale = 1.14,    
		Pos = Vector( 0, -11, 90 ), 
		Ang = Angle( 0, 0, 0 )
	},
	{ 
		ID = "FLDCSO Whelen Freedom Mini", 
		Scale = 1.14,    
		Pos = Vector( -4.365, -93.5, 86 ), 
		Ang = Angle( 0, 90, 0 )
	},
	-- FRONT AVENGERS --
	{ 
		ID = "FLDCSO Whelen Avenger Single",    
		Scale = .22,
		Pos = Vector(5, 26, 79.8),    
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,  
		RenderMode = RENDERMODE_NONE,
		Phase = "A",
		Color1 = B
	},
	{ 
		ID = "FLDCSO Whelen Avenger Single",    
		Scale = .22,
		Pos = Vector(-5, 26, 79.8),  
		Ang = Angle( 0, 90, 0),           
		RenderGroup = RENDERGROUP_OPAQUE,  
		RenderMode = RENDERMODE_NONE,
		Phase = "A", 
		Color1 = B
	}, 
	-- GRILLE IONS --
	{
		ID = "FLDCSO Whelen Ion",   
		Scale = 1,
		Pos = Vector( -11, 117.8, 43.83 ),
		Ang = Angle( 1, 10, 0 ),
		Color1 = "RED", 
		Color2 = "WHITE",
		Phase = "SC"
	},
	{
		ID = "FLDCSO Whelen Ion",
		Scale = 1,
		Pos = Vector( 11, 117.8, 43.83 ), 
		Ang = Angle( -1, -10, 0 ),
		Color1 = "WHITE", 
		Color2 = "RED",
		Phase = "SC"
	},
	{
		ID = "FLDCSO Whelen Ion",
		Scale = 1,
		Pos = Vector( -18, 116.6, 43.96 ),
		Ang = Angle( 1, 10, 0 ),
		Color1 = "WHITE", 
		Color2 = "BLUE",
		Phase = "SA"
	},
	{
		ID = "FLDCSO Whelen Ion",
		Scale = 1,
		Pos = Vector( 18, 116.6, 43.96 ),
		Ang = Angle( -1, -10, 0 ),
		Color1 = "BLUE", 
		Color2 = "WHITE",
		Phase = "SA"
	},
	-- SIDE FACING PLATE HOLDER IONS --
	{
		ID = "FLDCSO Whelen Ion", 
		Scale = 1,
		Pos = Vector( -7.95, 122.5, 21.3 ),
		Ang = Angle( 90+5, 90, 0 ),
		Color1 = "WHITE", 
		Color2 = "BLUE",
		Phase = "SC"
	},
	{
		ID = "FLDCSO Whelen Ion", 
		Scale = 1,
		Pos = Vector( 7.95, 122.5, 21.3 ),
		Ang = Angle( 90-5, -90, 0 ),
		Color1 = "WHITE", 
		Color2 = "BLUE",
		Phase = "SC"
	},
	-- SIDE FACING IONS --
	{
		ID = "FLDCSO Whelen Ion", 
		Scale = 1,
		Pos = Vector( -33, -82.8, 80.75 ),
		Ang = Angle( -1.5, 90, 0 ),
		Color1 = "BLUE", 
		Color2 = "WHITE",
		Phase = "SB",             
		RenderGroup = RENDERGROUP_OPAQUE,  
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "FLDCSO Whelen Ion", 
		Scale = 1,
		Pos = Vector( -33, -88.4, 80.58 ),
		Ang = Angle( -1.5, 90, 0 ),
		Color1 = "WHITE", 
		Color2 = "BLUE",
		Phase = "SD",
		RenderGroup = RENDERGROUP_OPAQUE,  
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "FLDCSO Whelen Ion", 
		Scale = 1,
		Pos = Vector( 33, -82.8, 80.75 ),
		Ang = Angle( 1.5, -90, 0 ),
		Color1 = "WHITE", 
		Color2 = "BLUE",
		Phase = "SB",
		RenderGroup = RENDERGROUP_OPAQUE,  
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "FLDCSO Whelen Ion", 
		Scale = 1,
		Pos = Vector( 33, -88.4, 80.58 ),
		Ang = Angle( 1.5, -90, 0 ), 
		Color1 = "BLUE", 
		Color2 = "WHITE",
		Phase = "SD",
		RenderGroup = RENDERGROUP_OPAQUE,  
		RenderMode = RENDERMODE_NONE,
	},
	-- REAR TAM85 --
	{ 
		ID = "FLDCSO Whelen TAM85",
		Scale = 1,
		Pos = Vector(0, -102.5, 88.75),  
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,  
		RenderMode = RENDERMODE_NONE,
		--Phase = "TINTED",
		Color1 = B,
		Color2 = B,
		Color3 = B, 
		Color4 = B,
		Color5 = R,
		Color6 = R,
		Color7 = R,
		Color8 = R,
	},
	-- FLASHERS -- 
	{
		ID = "FLDCSO Tahoe19 Flashers",  
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0 ),
	},
}   

EMV.Sequences = {
	Sequences = {
		{ Name = "10-97", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "10-51", Stage = "M3", Components = {}, Disconnect = {} },  
	},
	Traffic = {
		{ Name = "LEFT", Stage = "L", Components = {}, Disconnect = {} },
		{ Name = "DIVERGE", Stage = "D", Components = {}, Disconnect = {} },
		{ Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {} }, 
	},
	Illumination = { 
		{  
			Name = "TKDN", 
			Icon = "takedown",
			Stage = "T",  
			Components = {},  
			BG_Components = {}, 
			Preset_Components = {},
			Lights = { 
				-- LIGHTBAR --
				{ Vector( 18.82, -3.95, 89.79 ), Angle( 0, 90, 0 ), "takedown" },
				{ Vector( -18.82, -3.95, 89.79 ), Angle( 0, 90, 0 ), "takedown" },
			},
			Disconnect = {}
		},
		{
			Name = "LEFT",
			Icon = "alley-left",
			Stage = "L",
			Components = {}, 
			BG_Components = {},
			Preset_Components = {}, 
			Lights = {
				-- Surface Light --
				{ Vector( -33.52, -11, 89.79 ), Angle(0, 180, 0 ), "takedown" },
			},
			Disconnect = {} 
		},
		{
			Name = "RIGHT",
			Icon = "alley-right", 
			Stage = "R",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				-- Surface Light --
				{ Vector( 33.52, -11, 89.79 ), Angle(0, 0, 0 ), "takedown" },
			},
			Disconnect = {}
		},
	}
}

EMV.Lamps = {
	["takedown"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 110,
		FOV = 90,
		Distance = 800,
	},
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "RH&LR DeSantis County Sheriff's Office",
	Author = "RH&LR",
	Model = "models/sentry/19tahoe.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/sentry/19tahoe.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", "fldcso_tahoe19_48612855", V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

