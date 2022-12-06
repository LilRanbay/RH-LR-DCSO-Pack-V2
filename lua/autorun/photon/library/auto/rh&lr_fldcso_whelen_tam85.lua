AddCSLuaFile()

local name = "FLDCSO Whelen TAM85"

local COMPONENT = {}

COMPONENT.Model = "models/anm_whelen_tam85/anm_whelen_tam85_rb2.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.DefaultColors = {
    [1] = "BLUE",
	[2] = "BLUE",
	[3] = "BLUE",
	[4] = "BLUE",
	[5] = "BLUE",
	[6] = "BLUE",
	[7] = "BLUE",
	[8] = "BLUE"
}

COMPONENT.SubMaterials = {
	[0] = "rh&lr/fldcso/Tam85Bulbs",
	[2] = "rh&lr/fldcso/Tam85LensCover",
} 

COMPONENT.Meta = {
    tam85_light = {
        AngleOffset = 90,
        W = 6,
        H = 6,
        Sprite = "rh&lr/sprites/whelen_tam85",
        WMult = 1,
		Scale = .35,
		EmitArray = {
			Vector( 1.65, 0.15, 0 ),
			Vector( 1, -0.15, 0 ),
			Vector( 0.35, 0.15, 0 ),
			
			Vector( -1.65, -0.15, 0 ),
			Vector( -1, 0.15, 0 ),
			Vector( -0.35, -0.15, 0 ),
		}
    },
}

COMPONENT.Positions = {
	[1] = { Vector( 0.34, -17.835, 0.02 ), Angle( 0, 90, 180 ), "tam85_light" },
	[2] = { Vector( 0.34, 17.835, 0.06 ), Angle( 0, 90, 180 ), "tam85_light" },
	[3] = { Vector( 0.34, -12.745, 0.06 ), Angle( 0, 90, 180 ), "tam85_light" },
	[4] = { Vector( 0.34, 12.745, 0.06 ), Angle( 0, 90, 180 ), "tam85_light" },
	[5] = { Vector( 0.34, -7.65, 0.06 ), Angle( 0, 90, 180 ), "tam85_light" },
	[6] = { Vector( 0.34, 7.65, 0.06 ), Angle( 0, 90, 180 ), "tam85_light" },
	[7] = { Vector( 0.34, -2.55, 0.06 ), Angle( 0, 90, 180 ), "tam85_light" },
	[8] = { Vector( 0.34, 2.55, 0.06 ), Angle( 0, 90, 180 ), "tam85_light" },

}

COMPONENT.Sections = {
    ["auto_whelen_tam85"] = {
        {
           { 1, "_1"},{ 2, "_2"},{ 3, "_3"},{ 4, "_4"},{ 5, "_5"},{ 6, "_6"},{ 7, "_7"},{ 8, "_8"},
        },
		
		-- 10-51 --
		
		{
           { 1, "_1" },{ 4, "_4" },{ 5, "_5" },{ 8, "_8" },
        },
		{
           { 2, "_2" },{ 3, "_3" },{ 6, "_6" },{ 7, "_7" }
        },
		
		-- TINTED --
		
		{
           { 1, "_1", 0.5 },{ 4, "_4", 0.5 },{ 5, "_5", 0.5 },{ 8, "_8", 0.5 },
        },
		{
           { 2, "_2", 0.5 },{ 3, "_3", 0.5 },{ 6, "_6", 0.5 },{ 7, "_7", 0.5 }
        },
		{
           { 1, "_1", 0.5 },{ 2, "_2", 0.5 },{ 3, "_3", 0.5 },{ 4, "_4", 0.5 },{ 5, "_5", 0.5 },{ 6, "_6", 0.5 },{ 7, "_7", 0.5 },{ 8, "_8", 0.5 },
        }
    },
}

COMPONENT.Patterns = {
    ["auto_whelen_tam85"] = {
    	["debug"] = { 1 },
		
		["1097"] = { 1 },
		["1097TINTED"] = { 6 },
		
		["1051"] = { 2,2,0,3,3,0 },
		["1051TINTED"] = { 4,4,0,5,5,0 },
	},
}

COMPONENT.TrafficDisconnect = {}

COMPONENT.Modes = {
    Primary = {
        M1 = {
            ["auto_whelen_tam85"] = "1097",
        },
        M3 = {
            ["auto_whelen_tam85"] = "1051",
        }
    },
    Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )