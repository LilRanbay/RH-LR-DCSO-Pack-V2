AddCSLuaFile()

local name = "FLDCSO Whelen Vertex"

local COMPONENT = {}

COMPONENT.Model = "models/tdmcars/emergency/equipment/small_led.mdl"
COMPONENT.Required = "489864412"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.Category = "Exterior"
COMPONENT.NotLegacy = true
COMPONENT.DefaultColors = {
	[1] = "WHITE",
	[2] = "WHITE",
}

COMPONENT.Meta = {
	auto_vertex = {
		AngleOffset = 90,
		W = 1.25,
		H = 1.25,
		Sprite = "sprites/emv/emv_whelen_vertex",
		Scale = 0.275,
		WMult = 0.6,
		EmitArray = {
            Vector( -0.16, -0.22, 0 ),
            Vector( -0.28, 0, 0 ),
            Vector( -0.15, 0.22, 0 ),
            Vector( 0.16, -0.22, 0 ),
            Vector( 0.28, 0, 0 ),
            Vector( 0.15, 0.22, 0 ),
        }
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0, 0, 0.32 ), Angle( 0, 0, -90 ), "auto_vertex" },

}

COMPONENT.Sections = {
	["auto_whelen_vertex"] = {
		[1] = { { 1, "_1" } },
		[2] = { { 1, "_2" } },
		
		-- PARK --
		[3] = { { 1, "_1", { 8, 0.35, 0 } } },
		[4] = { { 1, "_2", { 8, 0.35, 0 } } },
		
		[5] = { { 1, "_1", { -8, 0.35, 0 } } },
		[6] = { { 1, "_2", { -8, 0.35, 0 } } },
	},
}

COMPONENT.Patterns = {
	["auto_whelen_vertex"] = {
		["all"] = { 1 },
		
		["park"] = { 1 },
		--
		["parkFA"] = { 3 },
		["parkFB"] = { 3 },
		["parkFC"] = { 5 },
		["parkFD"] = { 5 },
		["parkFRA"] = { 3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4 },
		["parkFRB"] = { 3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4 },
		["parkFRC"] = { 3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4 },
		--
		["parkRA"] = { 3 },
		["parkRB"] = { 3 },
		["parkRC"] = { 5 },
		["parkRD"] = { 5 },
		["parkRRA"] = { 3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4 },
		["parkRRB"] = { 3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4 },
		["parkRRC"] = { 3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4 },
		
		
		["rear"] = { 1 },
		--
		["rearFA"] = { 0 },
		["rearFB"] = { 0 },
		["rearFC"] = { 0 },
		["rearFD"] = { 0 },
		["rearFRA"] = { 0 },
		["rearFRB"] = { 0 },
		["rearFRC"] = { 0 },
		--
		["rearRA"] = { 1,0,1,0,1,0,0,0,0,0,0,0 },
		["rearRB"] = { 0,0,0,0,0,0,1,0,1,0,1,0 },
		["rearRC"] = { 0,1,0,1,0,1,0,0,0,0,0,0 },
		["rearRD"] = { 0,0,0,0,0,0,0,1,0,1,0,1 },
		["rearRRA"] = { 1,0,1,0,1,0,0,0,0,0,0,2,0,2,0,2,0,0,0,0,0,0 },
		["rearRRB"] = { 0,0,0,0,0,0,1,0,1,0,1,0,0,0,0,0,0,2,0,2,0,2 },
		["rearRRC"] = { 0,1,0,1,0,1,0,0,0,0,0,0,2,0,2,0,2,0,0,0,0,0 },
		
		
		["response"] = { 1 },
		--
		["responseFA"] = { 1,0,1,0,1,0,0,0,0,0,0,0 },
		["responseFB"] = { 0,0,0,0,0,0,1,0,1,0,1,0 },
		["responseFC"] = { 0,1,0,1,0,1,0,0,0,0,0,0 },
		["responseFD"] = { 0,0,0,0,0,0,0,1,0,1,0,1 },
		["responseFRA"] = { 1,0,1,0,1,0,0,0,0,0,0,2,0,2,0,2,0,0,0,0,0,0 },
		["responseFRB"] = { 0,0,0,0,0,0,1,0,1,0,1,0,0,0,0,0,0,2,0,2,0,2 },
		["responseFRC"] = { 0,1,0,1,0,1,0,0,0,0,0,0,2,0,2,0,2,0,0,0,0,0 },
		--
		["responseRA"] = { 1,0,1,0,1,0,0,0,0,0,0,0 },
		["responseRB"] = { 0,0,0,0,0,0,1,0,1,0,1,0 },
		["responseRC"] = { 0,1,0,1,0,1,0,0,0,0,0,0 },
		["responseRD"] = { 0,0,0,0,0,0,0,1,0,1,0,1 },
		["responseRRA"] = { 1,0,1,0,1,0,0,0,0,0,0,2,0,2,0,2,0,0,0,0,0,0 },
		["responseRRB"] = { 0,0,0,0,0,0,1,0,1,0,1,0,0,0,0,0,0,2,0,2,0,2},
		["responseRRC"] = { 0,1,0,1,0,1,0,0,0,0,0,0,2,0,2,0,2,0,0,0,0,0 },
	}
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_whelen_vertex"] = "park",
			},
			M2 = {
				["auto_whelen_vertex"] = "rear",
			},
			M3 = {
				["auto_whelen_vertex"] = "response",
			}
		},
	Auxiliary = {},
	Illumination = {

	}
}

EMVU:AddAutoComponent( COMPONENT, name )