local mod = ...

-- register potionshop prefab
mod:registerAssetId("models/potionshop.fbx/Prefab/buildingPart", "PREFAB_POTIONSHOP")
mod:registerAssetId("models/potionshop.fbx/Prefab/Construction_Steps", "PREFAB_POTIONSHOP_CONSTRUCTION")

-- apply building asset processor
mod:registerAssetProcessor("models/potionshop.fbx", { DataType = "BUILDING_ASSET_PROCESSOR" })

-- register potionshop
mod:register({
	DataType = "BUILDING",
	Id = "POTIONSHOP",
	Name = "POTIONSHOP_NAME",
	Description = "POTIONSHOP_DESC",
	BuildingType = "GENERAL",
	BuildingPartSetList = {
        {
            Name = "DEFAULT",
            BuildingPartList = { "POTIONSHOP_PART" }
        }
    },
	VillagerRequired = {
	  Status = "COMMONER",
	  Quantity = 10,
	}
})

-- register potionshop building part
mod:register({
	DataType = "BUILDING_PART",
	Id = "POTIONSHOP_PART",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_POTIONSHOP"
	},
	BuildingZoneData = {
		Polygon = polygon.createRectangle({ 6, 4 })
	},
	ConstructionVisual = "PREFAB_POTIONSHOP_CONSTRUCTION",
	BuildingFunction = "POTIONSHOP_FUNCTION",
	Cost = {
		RessourcesNeeded = {
			{ Resource = "WOOD", Quantity = 10 },
			{ Resource = "PLANK", Quantity = 20 },
			{ Resource = "STONE", Quantity = 20 }
		},
		UpkeepCost = { { Resource = "GOLD", Quantity = 10 } }
	},
})

-- building function potionshop
mod:register({
    DataType = "BUILDING_FUNCTION_WORKPLACE",
    Id = "POTIONSHOP_FUNCTION",
	Name = "POTIONSHOP_FUNCTION_NAME",
    WorkerCapacity = 2,
	RelatedJob = { Job = "BREWER", Behavior = "WORK_BEHAVIOR" },
	InputInventoryCapacity = { 
		{ Resource = "HERBS", Quantity = 50 }, 
		{ Resource = "HONEY", Quantity = 50 }, 
		{ Resource = "GRAPES", Quantity = 50 }, 
		{ Resource = "BERRIES", Quantity = 50 } 
	},
	ResourceListNeeded = { 
		{ Resource = "HERBS", Quantity = 1 }, 
		{ Resource = "HONEY", Quantity = 1 }, 
		{ Resource = "GRAPES", Quantity = 1 }, 
		{ Resource = "BERRIES", Quantity = 1 } 
	},
	ResourceProduced = { { Resource = "POTION", Quantity = 1 } }	
})

-- Remove grass
mod:registerPrefabComponent("models/potionshop.fbx/Prefab/buildingPart", {
	DataType = "COMP_DIRT_RECTANGLE",
	Size = { 6, 4 }
})

-- grounding the main building
mod:registerPrefabComponent("models/potionshop.fbx/Prefab/buildingPart", {
	DataType = "COMP_GROUNDED",
	HasBuildingZone = true,
	BuildingZone = { 6, 4 }
})

-- grounding the table
mod:registerPrefabComponent("models/potionshop.fbx/Prefab/buildingPart/table", {
	DataType = "COMP_GROUNDED"
})

-- smoke generator
mod:registerAssetId("models/potionshop.fbx/Prefab/buildingPart/SmokeEmitter", "POTIONSHOP_SMOKE_EMITTER_PREFAB")

mod:registerPrefabComponent("models/potionshop.fbx/Prefab/buildingPart", {
	DataType = "COMP_BUILDING_PART",
	FeedbackComponentListToActivate = {
        { "POTIONSHOP_SMOKE_EMITTER_PREFAB", "COMP_PARTICLE_EMITTER_TOGGLE" }
	}
})

mod:registerPrefabComponent("models/potionshop.fbx/Prefab/buildingPart/SmokeEmitter", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "PARTICLE_SYSTEM_HOUSING_SMOKE",
	IsPlaying = true, --true
	IsEmitting = true  --true
})

mod:registerPrefabComponent("models/potionshop.fbx/Prefab/buildingPart/SmokeEmitter", {
	DataType = "COMP_PARTICLE_EMITTER_TOGGLE",
	Enabled = true --false
})

