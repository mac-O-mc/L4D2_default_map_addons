//-------------------------------------------------------
// Autogenerated from 'c11m4_missingweapons.vmf'
//-------------------------------------------------------
C11M4MissingWeapons <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.weapons_mc15,
			EntityGroup.SpawnTables.weapons_mc14,
			EntityGroup.SpawnTables.weapons_mc13,
			EntityGroup.SpawnTables.weapons_mc12,
			EntityGroup.SpawnTables.weapons_mc11,
			EntityGroup.SpawnTables.weapons_mc10,
			EntityGroup.SpawnTables.weapons_mc9,
			EntityGroup.SpawnTables.weapons_mc8,
			EntityGroup.SpawnTables.weapons_mc7,
			EntityGroup.SpawnTables.weapons_mc6,
			EntityGroup.SpawnTables.weapons_mc5,
			EntityGroup.SpawnTables.weapons_mc4,
			EntityGroup.SpawnTables.weapons_mc3,
			EntityGroup.SpawnTables.weapons_mc2,
			EntityGroup.SpawnTables.weapons_mc1,
			EntityGroup.SpawnTables.weapons_mc,
		]
		return spawnEnts
	}

	//-------------------------------------------------------
	function GetEntityGroup()
	{
		return EntityGroup
	}

	//-------------------------------------------------------
	// Table of entities that make up this group
	//-------------------------------------------------------
	EntityGroup =
	{
		SpawnTables =
		{
			weapons_mc = 
			{
				SpawnInfo =
				{
					classname = "weapon_pistol_spawn"
					angles = Vector( 0, 0, -90 )
					body = "0"
					count = "1"
					disableshadows = "0"
					glowrange = "0"
					skin = "0"
					solid = "6"
					spawnflags = "0"
					targetname = "weapons_mc"
					weaponskin = "-1"
					origin = Vector( 904, 4416, 17 )
				}
			}
			weapons_mc1 = 
			{
				SpawnInfo =
				{
					classname = "weapon_spawn"
					angles = Vector( 0, 30, -90 )
					body = "0"
					count = "1"
					disableshadows = "0"
					no_cs_weapons = "0"
					skin = "1"
					solid = "6"
					spawn_without_director = "0"
					spawnflags = "0"
					targetname = "weapons_mc"
					weapon_selection = "tier1_any"
					weaponskin = "-1"
					origin = Vector( 1008, 4032, 17 )
				}
			}
			weapons_mc2 = 
			{
				SpawnInfo =
				{
					classname = "weapon_item_spawn"
					angles = Vector( 0, 45, 0 )
					item1 = "0"
					item11 = "1"
					item13 = "1"
					item3 = "0"
					item4 = "0"
					item5 = "1"
					targetname = "weapons_mc"
					weaponskin = "-1"
					origin = Vector( 928, 4024, 16 )
				}
			}
			weapons_mc3 = 
			{
				SpawnInfo =
				{
					classname = "weapon_spawn"
					angles = Vector( 0, 150, 90 )
					body = "0"
					count = "1"
					disableshadows = "0"
					no_cs_weapons = "0"
					skin = "0"
					solid = "6"
					spawn_without_director = "0"
					targetname = "weapons_mc"
					weapon_selection = "any_pistol"
					weaponskin = "-1"
					origin = Vector( 967.404, 4828.55, 16.4287 )
				}
			}
			weapons_mc4 = 
			{
				SpawnInfo =
				{
					classname = "weapon_item_spawn"
					angles = Vector( 0, 90, 0 )
					item1 = "0"
					item11 = "1"
					item3 = "0"
					item4 = "1"
					item5 = "0"
					targetname = "weapons_mc"
					weaponskin = "-1"
					origin = Vector( 1023, 4457, 52 )
				}
			}
			weapons_mc5 = 
			{
				SpawnInfo =
				{
					classname = "weapon_pain_pills_spawn"
					angles = Vector( 0, 0, -45 )
					body = "0"
					disableshadows = "0"
					skin = "0"
					solid = "6"
					spawnflags = "0"
					targetname = "weapons_mc"
					weaponskin = "-1"
					origin = Vector( 948, 4240, 38 )
				}
			}
			weapons_mc6 = 
			{
				SpawnInfo =
				{
					classname = "upgrade_spawn"
					angles = Vector( 0, 90, 0 )
					laser_sight = "0"
					targetname = "weapons_mc"
					upgradepack_explosive = "1"
					upgradepack_incendiary = "1"
					origin = Vector( 970, 4517, 35 )
				}
			}
			weapons_mc7 = 
			{
				SpawnInfo =
				{
					classname = "weapon_item_spawn"
					angles = Vector( 0, 0, 0 )
					item1 = "0"
					item11 = "1"
					item12 = "0"
					item13 = "0"
					item16 = "0"
					item17 = "0"
					item18 = "0"
					item2 = "0"
					item3 = "1"
					item4 = "1"
					item5 = "1"
					item6 = "0"
					item7 = "0"
					item8 = "0"
					targetname = "weapons_mc"
					weaponskin = "-1"
					origin = Vector( 1039, 4873, 56 )
				}
			}
			weapons_mc8 = 
			{
				SpawnInfo =
				{
					classname = "weapon_item_spawn"
					angles = Vector( 0, 60, 0 )
					glowrange = "0"
					item1 = "0"
					item11 = "1"
					item12 = "0"
					item13 = "0"
					item16 = "0"
					item17 = "0"
					item18 = "0"
					item2 = "1"
					item3 = "0"
					item4 = "1"
					item5 = "0"
					item6 = "0"
					item7 = "0"
					item8 = "0"
					spawnflags = "0"
					targetname = "weapons_mc"
					weaponskin = "-1"
					origin = Vector( 1042, 1932, 45 )
				}
			}
			weapons_mc9 = 
			{
				SpawnInfo =
				{
					classname = "weapon_item_spawn"
					angles = Vector( 90, 180, 0 )
					glowrange = "0"
					item1 = "0"
					item11 = "1"
					item12 = "0"
					item13 = "0"
					item16 = "0"
					item17 = "0"
					item18 = "0"
					item2 = "1"
					item3 = "0"
					item4 = "1"
					item5 = "0"
					item6 = "0"
					item7 = "0"
					item8 = "0"
					spawnflags = "0"
					targetname = "weapons_mc"
					weaponskin = "-1"
					origin = Vector( 1245, 1683, 48 )
				}
			}
			weapons_mc10 = 
			{
				SpawnInfo =
				{
					classname = "weapon_spawn"
					angles = Vector( 0, 90, 90 )
					body = "0"
					count = "1"
					disableshadows = "0"
					glowrange = "0"
					no_cs_weapons = "0"
					skin = "0"
					solid = "6"
					spawn_without_director = "0"
					spawnflags = "0"
					targetname = "weapons_mc"
					weapon_selection = "tier1_any"
					weaponskin = "-1"
					origin = Vector( 1105.39, 1679, 90 )
				}
			}
			weapons_mc11 = 
			{
				SpawnInfo =
				{
					classname = "weapon_spawn"
					angles = Vector( 0, 15, 90 )
					body = "0"
					count = "1"
					disableshadows = "0"
					glowrange = "0"
					no_cs_weapons = "0"
					skin = "0"
					solid = "6"
					spawn_without_director = "0"
					spawnflags = "0"
					targetname = "weapons_mc"
					weapon_selection = "tier1_any"
					weaponskin = "-1"
					origin = Vector( 1111.5, 1165.29, 91.3793 )
				}
			}
			weapons_mc12 = 
			{
				SpawnInfo =
				{
					classname = "weapon_spawn"
					angles = Vector( 0, 285, 90 )
					body = "0"
					count = "1"
					disableshadows = "0"
					glowrange = "0"
					no_cs_weapons = "0"
					skin = "0"
					solid = "6"
					spawn_without_director = "0"
					spawnflags = "0"
					targetname = "weapons_mc"
					weapon_selection = "tier1_any"
					weaponskin = "-1"
					origin = Vector( 1100, 1428, 91.3793 )
				}
			}
			weapons_mc13 = 
			{
				SpawnInfo =
				{
					classname = "weapon_spawn"
					angles = Vector( 0, 120, 90 )
					body = "0"
					count = "1"
					disableshadows = "0"
					glowrange = "0"
					no_cs_weapons = "0"
					skin = "0"
					solid = "6"
					spawn_without_director = "0"
					spawnflags = "0"
					targetname = "weapons_mc"
					weapon_selection = "tier1_any"
					weaponskin = "-1"
					origin = Vector( 1141, 1409, 91.3793 )
				}
			}
			weapons_mc14 = 
			{
				SpawnInfo =
				{
					classname = "weapon_item_spawn"
					angles = Vector( 0, 165, 0 )
					item1 = "0"
					item11 = "1"
					item2 = "1"
					item3 = "0"
					item4 = "1"
					item5 = "0"
					targetname = "weapons_mc"
					weaponskin = "-1"
					origin = Vector( 1307, 1169, 46 )
				}
			}
			weapons_mc15 = 
			{
				SpawnInfo =
				{
					classname = "weapon_item_spawn"
					angles = Vector( 90, 180, 0 )
					glowrange = "0"
					item1 = "0"
					item11 = "1"
					item12 = "0"
					item13 = "0"
					item16 = "0"
					item17 = "0"
					item18 = "0"
					item2 = "1"
					item3 = "0"
					item4 = "1"
					item5 = "0"
					item6 = "0"
					item7 = "0"
					item8 = "0"
					spawnflags = "0"
					targetname = "weapons_mc"
					weaponskin = "-1"
					origin = Vector( 1035.09, 1712.57, 78.8861 )
				}
			}
		} // SpawnTables
	} // EntityGroup
} // C11M4MissingWeapons

RegisterEntityGroup( "C11M4MissingWeapons", C11M4MissingWeapons )
