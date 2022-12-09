AddCSLuaFile()
 
local name = "FLDCSO Whelen Freedom Mini"
 
local COMPONENT = {}
 
COMPONENT.Model = "models/noble/whelen_ultrafreedommini/ultrafreedommini_lightbar.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.UsePhases = true
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
	[3] = "WHITE",
	[4] = "AMBER"
}
 
COMPONENT.Meta = {
    whelen_main = {
        AngleOffset = -90,
        W = 5.3,
        H = 4.3,
        Sprite = "sprites/emv/whelen_freedom_main",
        Scale = .4,
		WMult = 1.2,
		EmitArray = {
			Vector( 1.6, 0, 0 ),
			Vector( 0.8, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.6, 0, 0 ),
			Vector( -0.8, 0, 0 ),
		}
    },
    whelen_side = {
        AngleOffset = -90,
        W = 7.5,
        H = 4.2,
        Sprite = "sprites/emv/whelen_freedom_main",
        Scale = .4,
		WMult = 1.2,
		EmitArray = {
			Vector( 2.25, 0, 0 ),
			Vector( 1.7, 0, 0 ),
			Vector( 1.125, 0, 0 ),
			Vector( 0.55, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -2.25, 0, 0 ),
			Vector( -1.7, 0, 0 ),
			Vector( -1.125, 0, 0 ),
			Vector( -0.55, 0, 0 ),
		}
    },
	whelen_alley = {
		AngleOffset = -90,
		W = 3.7,
		H = 3.2,
		Sprite = "sprites/emv/emv_whelen_tri",
		WMult = 1,
		Scale = 1,
		EmitArray = {
			Vector( -.6, -.45, 0 ),
			Vector( 0, .5, 0 ),
			Vector( .6, -.45, 0 )
		}
	}
}
 
COMPONENT.Positions = {
	[1] = { Vector( 1.1, 6.2, 6.2 ), Angle( 0, 0, 0 ), "whelen_main" },
	[2] = { Vector( 6.5, 6.2, 6.2 ), Angle( 0, 0, 0 ), "whelen_main" },
	[3] = { Vector( -5.2, 4.5, 6.2 ), Angle( 0, 30, 0 ), "whelen_side" },
    [4] = { Vector( 13, 4.4, 6.2 ), Angle( 0, -30, 0 ), "whelen_side" },
	
	
	[5] = { Vector( -5.2, -3.5, 6.1 ), Angle( 0, 150, 0 ), "whelen_side" },
	[6] = { Vector( 13, -3.5, 6.1 ), Angle( 0, 210, 0 ), "whelen_side" },
    [7] = { Vector( 1.1, -5.3, 6.1 ), Angle( 0, 180, 0 ), "whelen_main" },
	[8] = { Vector( 6.5, -5.3, 6.1 ), Angle( 0, 180, 0 ), "whelen_main" },
    
    
	[9] = { Vector( 1.1, 6.2, 4.2 ), Angle( 0, 0, 0 ), "whelen_main" },
	[10] = { Vector( 6.5, 6.2, 4.2 ), Angle( 0, 0, 0 ), "whelen_main" },
	[11] = { Vector( -5.2, 4.5, 4.2 ), Angle( 0, 30, 0 ), "whelen_side" },
    [12] = { Vector( 13, 4.4, 4.2 ), Angle( 0, -30, 0 ), "whelen_side" },
    

    [13] = { Vector( -5.2, -3.5, 4.2 ), Angle( 0, 150, 0 ), "whelen_side" },
	[14] = { Vector( 13, -3.5, 4.2 ), Angle( 0, 210, 0 ), "whelen_side" },
	[15] = { Vector( 1.1, -5.2, 4.2 ), Angle( 0, 180, 0 ), "whelen_main" },
    [16] = { Vector( 6.5, -5.2, 4.2 ), Angle( 0, 180, 0 ), "whelen_main" },
	
	[17] = { Vector( -8.2, 0.515, 6.25 ), Angle( 0, 90, 180 ), "whelen_alley" },
    [18] = { Vector( 8.2+7.7, 0.515-0.1, 6.25 ), Angle( 0, -90, 180 ), "whelen_alley" },
	[19] = { Vector( -8.2, 0.515, 4.225 ), Angle( 0, 90, 0 ), "whelen_alley" },
    [20] = { Vector( 8.2+7.7, 0.515-0.1, 4.225 ), Angle( 0, -90, 0 ), "whelen_alley" },
}
 
COMPONENT.Sections = {
    ["auto_whelen_freedom_mini"] = {
        [1] = { 
            { 1, "_1" }, { 2, "_1" },
			{ 3, "_2" }, { 4, "_2" }, 
			{ 5, "_2" }, { 6, "_2" }, 
			{ 7, "_1" }, { 8, "_1" },
			
			{ 9, "_1" }, { 10, "_1" },
			{ 11, "_2" }, { 12, "_2" }, 
			{ 13, "_2" }, { 14, "_2" }, 
			{ 15, "_1" }, { 16, "_1" },
			
			{ 17, "_3" }, { 18, "_3" },
			{ 19, "_3" }, { 20, "_3" },
        },
    },
}
 
COMPONENT.Patterns = {
    ["auto_whelen_freedom_mini"] = {
        ["debug"] = { 1 },
    },
}
 
COMPONENT.Modes = {
    Primary = {
        M1 = {
            ["auto_whelen_freedom_mini"] = "debug",
        },
        M3 = {
            ["auto_whelen_freedom_mini"] = "debug",
        }
    },
    Auxiliary = {
        L = {
        },
        R = {
        },
        D = {
        }
    }
}
 
EMVU:AddAutoComponent( COMPONENT, name )