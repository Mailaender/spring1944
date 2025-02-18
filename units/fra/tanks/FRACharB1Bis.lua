local FRACharB1Bis = MediumTank:New{
	corpse				= "FRACharB1Bis_Burning",
	name				= "Char B1bis",
	buildCostMetal		= 2400,
	maxDamage			= 2800,
	-- this thing was specifically built to be able to cross trenches
	movementClass		= "TANK_Goat",
	trackOffset			= 5,
	trackWidth			= 20,

	--collisionVolumeType	= "box",
	--collisionVolumeOffsets	= [[0.0 0 -2]],
	--collisionVolumeScales	= [[2.5 1.0 6.0]],
	
	-- Transport tags
	transportSize		= 1, -- assumes footprint of BoatChild == 1
	isFirePlatform 		= true,
	transportCapacity	= 1,

	usePieceCollisionVolumes	= true,
	
	objectName			= "FRA/FRACharB1bis.s3o",
	
	weapons = {
		[1] = {
			name				= "FRA47mmSA35AP",
			mainDir				= [[0 16 1]],
			maxAngleDif			= 210,
		},
		[2] = {
			name				= "FRA47mmSA35HE",
			mainDir				= [[0 16 1]],
			maxAngleDif			= 210,
		},
		[3] = {
			name				= "MACmle1931",
		},
		[4] = {
			name				= ".50calproof",
		},
	},
	customParams = {
		armour = {
			base = {
				front = {
					thickness		= 60,
					slope			= 42,
				},
				rear = {
					thickness		= 50,
					slope			= -1,
				},
				side = {
					thickness 		= 55,
				},
				top = {
					thickness		= 25,
				},
			},
			turret = {
				front = {
					thickness		= 56,
					slope			= 1,
				},
				rear = {
					thickness		= 56,
					slope			= 19,
				},
				side = {
					thickness 		= 56,
					slope			= 19,
				},
				top = {
					thickness		= 30,
				},
			},
		},
		maxammo				= 24,

		barrelrecoildist		= 1,
		barrelrecoilspeed		= 10,
		turretturnspeed			= 15,
		elevationspeed			= 20,

		maxvelocitykmh		= 28,
		mother				= true,
		children = {
			"FRA_75mmSA35_Turret",
		},
		customanims			= "charb1bis",
		piecehitvols		= {
			base = {
				scale = {1, 0.6, 1}, -- sodding radio antenna
				offset = {0, -6, 0},
			},
		},

		normaltex = "unittextures/FRACharB1Bis_normals.png",
	},
}

local FRA_75mmSA35_Turret = EnclosedBoatTurret:New{
	name					= "75mm SA35",
	description				= "Primary Turret",
	category				= "MINETRIGGER TURRET HARDVEH",
	objectName				= "FRA/FRA_75mmSA35_Turret.s3o",
	usePieceCollisionVolumes	= true,
  	weapons = {	
		[1] = {
			name				= "FRA75mmSA35HE",
			maxAngleDif			= 10,
			mainDir				= [[0 0 1]],
		},
	},
	customparams = {
		maxammo					= 12,

		barrelrecoildist		= 5,
		barrelrecoilspeed		= 10,
		turretturnspeed			= 15,
		elevationspeed			= 20,
    },
}


return lowerkeys({
	["FRACharB1Bis"] = FRACharB1Bis,
	["FRA_75mmSA35_Turret"] = FRA_75mmSA35_Turret,
})
