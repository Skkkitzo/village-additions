local mod = ...

-- register barn prefab
mod:registerAssetId("models/barn.fbx/Prefab/buildingPart", "PREFAB_BARN")
mod:registerAssetId("models/barn.fbx/Prefab/Construction_Steps", "PREFAB_BARN_CONSTRUCTION")

-- register pig
mod:registerAssetId("models/pig.fbx/Prefab/Pig", "PREFAB_LIVESTOCK_PIG")

-- apply building asset processor
mod:registerAssetProcessor("models/barn.fbx", { DataType = "BUILDING_ASSET_PROCESSOR" })

-- register barn
mod:register({
	DataType = "BUILDING",
	Id = "BARN",
	Name = "BARN_NAME",
	Description = "BARN_DESC",
	BuildingType = "GENERAL",
	BuildingPartSetList = {
        {
            Name = "DEFAULT",
            BuildingPartList = { "BARN_PART" }
        }
    },
	VillagerRequired = {
	  Status = "COMMONER",
	  Quantity = 5,
	}
})

-- register barn building part
mod:register({
	DataType = "BUILDING_PART",
	Id = "BARN_PART",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BARN"
	},
	BuildingZoneData = {
		Polygon = polygon.createRectangle({ 4, 3 })
	},
	ConstructionVisual = "PREFAB_BARN_CONSTRUCTION",
	BuildingFunction = "BARN_FUNCTION",
	Cost = {
		RessourcesNeeded = {
            { Resource = "WOOD", Quantity = 10 },
            { Resource = "STONE", Quantity = 20 }
		}--,
		--UpkeepCost = { { Resource = "GOLD", Quantity = 10 } }
	}
})

mod:register({
    DataType = "BUILDING_FUNCTION_ASSIGNABLE",
    Id = "BARN_FUNCTION",
    AuthorizedFunctionList = "BARN_FUNCTION_LIST"
})

-- list of building functions
mod:register({
    DataType = "BUILDING_FUNCTION_LIST",
    Id = "BARN_FUNCTION_LIST",
    AssetFunctionList = {
        "BARN_FUNCTION_1",
        "BARN_FUNCTION_2"
    }
})

-- cattle barn
mod:register({
    DataType = "BUILDING_FUNCTION_LIVESTOCK_FARM",
    Id = "BARN_FUNCTION_1",
    Name = "BARN_FUNCTION_1_NAME",
    WorkerCapacity = 2,
	RelatedJob = { Job = "SHEPHERD", Behavior = "WORK_BEHAVIOR" },
    ResourceProduced = { { Resource = "CATTLE", Quantity = 1 } },
    SpawningLivestock = "PREFAB_LIVESTOCK_COW",
    SpawnLivestockButtonText = "SPAWN_COW_LABEL",
    RemoveLivestockButtonText = "REMOVE_COW_LABEL"
})

-- pig barn
mod:register({
    DataType = "BUILDING_FUNCTION_LIVESTOCK_FARM",
    Id = "BARN_FUNCTION_2",
    Name = "BARN_FUNCTION_2_NAME",
    WorkerCapacity = 2,
	RelatedJob = { Job = "SHEPHERD", Behavior = "WORK_BEHAVIOR" },
    ResourceProduced = { { Resource = "PIG", Quantity = 1 } },
    SpawningLivestock = "PREFAB_LIVESTOCK_COW",
    SpawnLivestockButtonText = "SPAWN_PIG_LABEL",
    RemoveLivestockButtonText = "REMOVE_PIG_LABEL"
})

-- Remove grass
mod:registerPrefabComponent("models/barn.fbx/Prefab/buildingPart/building", {
	DataType = "COMP_DIRT_RECTANGLE",
	Size = { 6, 5 }
})

mod:registerPrefabComponent("models/barn.fbx/Prefab/buildingPart/dirt_locator", {
	DataType = "COMP_DIRT_RECTANGLE",
	Size = { 5, 5 }
})

mod:registerPrefabComponent("models/barn.fbx/Prefab/buildingPart/crates", {
	DataType = "COMP_DIRT_CIRCLE",
    HardRadius = 1,
    SoftRadius = 1
})

-- grounding the main building
mod:registerPrefabComponent("models/barn.fbx/Prefab/buildingPart", {
    DataType = "COMP_GROUNDED",
    HasBuildingZone = false
})

mod:registerPrefabComponent("models/barn.fbx/Prefab/buildingPart/feeder", {
    DataType = "COMP_GROUNDED"
})

mod:registerPrefabComponent("models/barn.fbx/Prefab/buildingPart/fence01", {
    DataType = "COMP_GROUNDED"
})

mod:registerPrefabComponent("models/barn.fbx/Prefab/buildingPart/fence02", {
    DataType = "COMP_GROUNDED"
})

mod:registerPrefabComponent("models/barn.fbx/Prefab/buildingPart/fence03", {
    DataType = "COMP_GROUNDED"
})

mod:registerPrefabComponent("models/barn.fbx/Prefab/buildingPart/crates", {
    DataType = "COMP_GROUNDED"
})

-- building zones for the whole model
mod:registerPrefabComponent("models/barn.fbx/Prefab/buildingPart/building", {
	DataType = "COMP_BUILDING_PART",
	HasBuildingZone = true,
	BuildingZone = { 6, 5 }
})

mod:registerPrefabComponent("models/barn.fbx/Prefab/buildingPart/extension", {
	DataType = "COMP_BUILDING_PART",
	HasBuildingZone = true,
	BuildingZone = { 3, 2 }
})

mod:registerPrefabComponent("models/barn.fbx/Prefab/buildingPart/feeder", {
	DataType = "COMP_BUILDING_PART",
	HasBuildingZone = true,
	BuildingZone = { 2, 3 }
})