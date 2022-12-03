-- Edited by LilRanbay
AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"
local RB = "BLUE/RED"

local name = "FLDCSO Tahoe19 Flashers"

local COMPONENT = {}

COMPONENT.Base = "RH&LR Tahoe19 Flashers"
COMPONENT.DefaultColors = {
	[1] = "WHITE",
    [2] = "WHITE"
}

COMPONENT.Sections = {
	["headlights"] = {
        { { 1, SW, { 10, 0, 0  } }, { 2, SW, { -10, 0, 0 } }, },
    },
    ["taillights"] = {
        [1] = { { 3, R }, { 4, R }, { 5, R }, { 6, R },  },
		[2] = { { 5, R }, },
		[3] = { { 6, R }, },
    },
    ["reverse"] = {
        [1] = { { 7, B }, { 8, B }, },       
		[2] = { { 7, B }, },
		[3] = { { 8, B }, },
    },
	["mirrorlights"] = {
		[1] = { { 9, R }, { 10, B }, },
		[2] = { { 9, R }, },
		[3] = { { 10, B },  },
	},
}

COMPONENT.Patterns = {
	["headlights"] = {
		["off"] = {
            0
        },
        ["on"] = {
            1
        }, 
    },
    ["reverse"] = {
		["off"] = {
            0
        },
        ["on"] = {
			2,2,2,2,2,0,3,3,3,3,3,0
        },
    },
    ["taillights"] = {
		["off"] = {
            0
        },
        ["on"] = {
			3,3,3,3,3,0,2,2,2,2,2,0
        },
    },
	["mirrorlights"] = {             
		["code6"] = { 0 },
		
		["code3"] = { 2,0,2,2,2,0,3,0,3,3,3,0, },
    },
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["headlights"] = "off",
				["reverse"] = "off",
				["taillights"] = "off",
			},
			M3 = {
				["headlights"] = "on",
				["reverse"] = "on",
				["taillights"] = "on",
			},
			BRAKE = {
				["taillights"] = "off",
				["reverse"] = "off",
			},
			REVERSE = {
				["taillights"] = "off",
				["reverse"] = "off",
			},
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )