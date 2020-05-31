local mod = ...

-- register potionshop prefab
mod:registerAssetId("models/candlemaker.fbx/Prefab/buildingPart", "PREFAB_CANDLEMAKER")
mod:registerAssetId("models/candlemaker.fbx/Prefab/Construction_Steps", "PREFAB_CANDLEMAKER_CONSTRUCTION")

-- apply building asset processor
mod:registerAssetProcessor("models/candlemaker.fbx", { DataType = "BUILDING_ASSET_PROCESSOR" })

-- register potionshop
mod:register({
	DataType = "BUILDING",
	Id = "CANDLEMAKER",
	Name = "CANDLEMAKER_NAME",
	Description = "CANDLEMAKER_DESC",
	BuildingType = "GENERAL",
	BuildingPartSetList = {
        {
            Name = "DEFAULT",
            BuildingPartList = { "CANDLEMAKER_PART" }
        }
    },
	VillagerRequired = {
	  Status = "COMMONER",
	  Quantity = 2,
	}
})

-- register potionshop building part
mod:register({
	DataType = "BUILDING_PART",
	Id = "CANDLEMAKER_PART",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_CANDLEMAKER"
	},
	BuildingZoneData = {
		Polygon = polygon.createRectangle({ 7, 5 })
	},
	ConstructionVisual = "PREFAB_CANDLEMAKER_CONSTRUCTION",
	BuildingFunction = "CANDLEMAKER_FUNCTION",
	Cost = {
		RessourcesNeeded = {
			{ Resource = "WOOD", Quantity = 10 },
			{ Resource = "STONE", Quantity = 5 }
		}--,
		--UpkeepCost = { { Resource = "GOLD", Quantity = 10 } }
	},
})

-- building function potionshop
mod:register({
    DataType = "BUILDING_FUNCTION_WORKPLACE",
    Id = "CANDLEMAKER_FUNCTION",
	Name = "CANDLEMAKER_FUNCTION_NAME",
    WorkerCapacity = 2,
	RelatedJob = { Job = "BREWER", Behavior = "WORK_BEHAVIOR" },
	InputInventoryCapacity = { 
		{ Resource = "WOOD", Quantity = 20 }, 
		{ Resource = "TALLOW", Quantity = 20 }
	},
	ResourceListNeeded = { 
		{ Resource = "WOOD", Quantity = 1 }, 
		{ Resource = "TALLOW", Quantity = 1 }
	},
	ResourceProduced = { { Resource = "CANDLE", Quantity = 1 } }	
})

-- Remove grass
mod:registerPrefabComponent("models/candlemaker.fbx/Prefab/buildingPart", {
	DataType = "COMP_DIRT_RECTANGLE",
	Size = { 7, 5 }
})

mod:registerPrefabComponent("models/candlemaker.fbx/Prefab/buildingPart/rack", {
	DataType = "COMP_DIRT_RECTANGLE",
	Size = { 2, 2 }
})

-- grounding the main building
mod:registerPrefabComponent("models/candlemaker.fbx/Prefab/buildingPart", {
	DataType = "COMP_GROUNDED",
	HasBuildingZone = false
})

mod:registerPrefabComponent("models/candlemaker.fbx/Prefab/buildingPart/rack", {
	DataType = "COMP_GROUNDED",
	HasBuildingZone = false
})

mod:registerPrefabComponent("models/candlemaker.fbx/Prefab/buildingPart/barrels", {
	DataType = "COMP_GROUNDED",
	HasBuildingZone = false
})

-- building parts
mod:registerPrefabComponent("models/candlemaker.fbx/Prefab/buildingPart/rack", {
	DataType = "COMP_BUILDING_PART",
	HasBuildingZone = true,
	BuildingZone = { 2, 2 }
})

mod:registerPrefabComponent("models/candlemaker.fbx/Prefab/buildingPart/barrels", {
	DataType = "COMP_BUILDING_PART",
	HasBuildingZone = true,
	BuildingZone = { 1, 2 }
})

-- smoke generator
mod:registerAssetId("models/candlemaker.fbx/Prefab/buildingPart/SmokeEmitter", "CANDLEMAKER_SMOKE_EMITTER_PREFAB")

mod:registerPrefabComponent("models/candlemaker.fbx/Prefab/buildingPart", {
	DataType = "COMP_BUILDING_PART",
	FeedbackComponentListToActivate = {
        { "CANDLEMAKER_SMOKE_EMITTER_PREFAB", "COMP_PARTICLE_EMITTER_TOGGLE" }
	}
})

mod:registerPrefabComponent("models/candlemaker.fbx/Prefab/buildingPart/SmokeEmitter", {
	DataType = "COMP_PARTICLE_EMITTER",
	ParticleSystem = "PARTICLE_SYSTEM_HOUSING_SMOKE",
	IsPlaying = true, --true
	IsEmitting = true  --true
})

mod:registerPrefabComponent("models/candlemaker.fbx/Prefab/buildingPart/SmokeEmitter", {
	DataType = "COMP_PARTICLE_EMITTER_TOGGLE",
	Enabled = true --false
})