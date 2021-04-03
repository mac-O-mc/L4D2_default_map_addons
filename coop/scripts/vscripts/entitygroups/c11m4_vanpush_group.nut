// Dead Air - Terminals DLC Patches, of Orin's
// Copyright ©️ 2021 Orinuse (http://steamcommunity.com/profiles/76561198294712284)
//// For full details on the license, see the addon / repository's main folder.
//==================================================================
//-------------------------------------------------------
// Autogenerated from 'c11_m4_van_push.vmf'
//-------------------------------------------------------
local function VanEntsBaseCB(entity, rarity)
{
	local van_start_relay = Ent("van_start_relay")
	entity.SetAngles( entity.GetAngles() + QAngle(0, -27, 0) )
	EntFire( entity.GetName(), "SetParent", "vanmodel" )
	EntFire( entity.GetName(), "SetParentAttachmentMaintainOffset", "reverse_L", 0.1 )
	EntityOutputs.AddOutput( van_start_relay, "OnTrigger", entity.GetName(), "Kill", "", 18.0, -1 )
}
local function VanEntsCB(entity, rarity)
{
	local van_start_relay = Ent("van_start_relay")
	VanEntsBaseCB(entity, rarity)
	EntityOutputs.AddOutput( van_start_relay, "OnTrigger", entity.GetName(), "Enable", "", 4.0, -1 )
}
local function VanEntsPropPushCB(entity, rarity)
{
	local van_start_relay = Ent("van_start_relay")
	VanEntsBaseCB(entity, rarity)
	EntityOutputs.AddOutput( van_start_relay, "OnTrigger", entity.GetName(), "RunScriptCode", "ThinkSleep = false", 4.0, -1 )

	if( entity.ValidateScriptScope() )
	{
		local ent_script = entity.GetScriptScope()
		ent_script["LastOrigin"] <- entity.GetOrigin()
		ent_script["ThinkSleep"] <- true
		ent_script["pushforce_new"] <- 30
		ent_script["PushForceThink"] <- function()
		{
			local pushforce_new_temp = abs(entity.GetOrigin().x - ent_script["LastOrigin"].x) + abs(entity.GetOrigin().y - ent_script["LastOrigin"].y)
			if( pushforce_new_temp != 0 )
				ent_script["pushforce_new"] = pushforce_new_temp

			EntFire( entity.GetName(), "SetPushSpeed", ent_script["pushforce_new"].tostring() )
			entity.GetScriptScope()["LastOrigin"] = entity.GetOrigin()
			if( ent_script["ThinkSleep"] )
			{
				self.Disable()
				return 3.0
			}
			else
			{
				self.Enable()
				return 0.2
			}
		}
		AddThinkToEnt(entity, "PushForceThink")
	}
}
C11M4VanPush <-
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
			EntityGroup.SpawnTables.orin_van_push_patch,
			EntityGroup.SpawnTables.orin_van_hurt_patch,
			EntityGroup.SpawnTables.orin_van_push_props_patch,
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
			orin_van_push_patch =
			{
				SpawnInfo =
				{
					classname = "script_trigger_push"
					alternateticksfix = "0.5"
					origin = Vector( -512, 4268, 62.95 )
					pushdir = Vector( 0, 270, 0 )
					spawnflags = "3"
					speed = "300"
					StartDisabled = "1"
					targetname = "orin_van_push_patch"
					triggeronstarttouch = "0"
					extent = Vector( 128, 100, 49.0508 )
				}
				PostPlaceCB = VanEntsCB
			}
			orin_van_hurt_patch =
			{
				SpawnInfo =
				{
					classname = "script_trigger_hurt"
					damage = "2000"
					damagecap = "20"
					damagemodel = "0"
					damageor1 = "0"
					damageor2 = "0"
					damagetype = "64"
					nodmgforce = "0"
					origin = Vector( -426, 4219.5, 48 )
					spawnflags = "10"
					StartDisabled = "1"
					targetname = "orin_van_hurt_patch"
					thinkalways = "1"
					extent = Vector( 35.1875, 40.3449999999998, 16 )
				}
				PostPlaceCB = VanEntsCB
			}
			orin_van_push_props_patch =
			{
				SpawnInfo =
				{
					classname = "script_trigger_push"
					alternateticksfix = "0.5"
					origin = Vector( -426, 4219.5, 48 )
					pushdir = Vector( 0, 270, 0 )
					spawnflags = "8"
					speed = "100"
					StartDisabled = "1"
					targetname = "orin_van_push_props_patch"
					triggeronstarttouch = "0"
					extent = Vector( 35.1875, 40.3449999999998, 16 )
				}
				PostPlaceCB = VanEntsPropPushCB
			}
		} // SpawnTables
	} // EntityGroup
} // C11M4VanPush

RegisterEntityGroup( "C11M4VanPush", C11M4VanPush )