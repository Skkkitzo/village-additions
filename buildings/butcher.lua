local mod = ...

-- register butcher prefab
mod:registerAssetId("models/butcher.fbx/Prefab/buildingPart", "PREFAB_BUTCHER")
mod:registerAssetId("models/butcher.fbx/Prefab/Construction_Steps", "PREFAB_BUTCHER_CONSTRUCTION")

-- apply building asset processor
mod:registerAssetProcessor("models/butcher.fbx", { DataType = "BUILDING_ASSET_PROCESSOR" })

-- register butcher
mod:register({
	DataType = "BUILDING",
	Id = "BUTCHER",
	Name = "BUTCHER_NAME",
	Description = "BUTCHER_DESC",
	BuildingType = "GENERAL",
	BuildingPartSetList = {
        {
            Name = "DEFAULT",
            BuildingPartList = { "BUTCHER_PART" }
        }
    },
	VillagerRequired = {
	  Status = "COMMONER",
	  Quantity = 5,
	}
})

-- register butcher building part
mod:register({
	DataType = "BUILDING_PART",
	Id = "BUTCHER_PART",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BUTCHER"
	},
	BuildingZoneData = {
		Polygon = polygon.createRectangle({ 4, 3 })
	},
	ConstructionVisual = "PREFAB_BUTCHER_CONSTRUCTION",
	BuildingFunction = "BUTCHER_FUNCTION",
	Cost = {
		RessourcesNeeded = {
			{ Resource = "WOOD", Quantity = 10 },
			{ Resource = "STONE", Quantity = 10 }
		}--,
		--UpkeepCost = { { Resource = "GOLD", Quantity = 10 } }
	}
})

-- register list for building functions
mod:register({
    DataType = "BUILDING_FUNCTION_ASSIGNABLE",
    Id = "BUTCHER_FUNCTION",
    AuthorizedFunctionList = "BUTCHER_FUNCTION_LIST"
})

mod:register({
    DataType = "BUILDING_FUNCTION_LIST",
    Id = "BUTCHER_FUNCTION_LIST",
    AssetFunctionList = {
		"BUTCHER_FUNCTION_1",
		"BUTCHER_FUNCTION_2"
    }
})

-- beef
mod:register({
    DataType = "BUILDING_FUNCTION_WORKPLACE",
    Id = "BUTCHER_FUNCTION_1",
    Name = "BUTCHER_FUNCTION_1_NAME",
    WorkerCapacity = 2,
	RelatedJob = { Job = "COOK", Behavior = "WORK_BEHAVIOR" },
	InputInventoryCapacity = { { Resource = "CATTLE", Quantity = 20 } },
	ResourceListNeeded = { { Resource = "CATTLE", Quantity = 1 } },
    ResourceProduced = { { Resource = "BEEF", Quantity = 1 } }
})

-- pork
mod:register({
    DataType = "BUILDING_FUNCTION_WORKPLACE",
    Id = "BUTCHER_FUNCTION_2",
    Name = "BUTCHER_FUNCTION_2_NAME",
    WorkerCapacity = 2,
	RelatedJob = { Job = "COOK", Behavior = "WORK_BEHAVIOR" },
	InputInventoryCapacity = { { Resource = "PIG", Quantity = 20 } },
	ResourceListNeeded = { { Resource = "PIG", Quantity = 1 } },
    ResourceProduced = { { Resource = "PORK", Quantity = 1 } }
})

-- remove grass
mod:registerPrefabComponent("models/butcher.fbx/Prefab/buildingPart", {
	DataType = "COMP_DIRT_RECTANGLE",
	Size = { 6, 5 }
})

-- grounding objects
mod:registerPrefabComponent("models/butcher.fbx/Prefab/buildingPart", {
    DataType = "COMP_GROUNDED",
    HasBuildingZone = false
})

mod:registerPrefabComponent("models/butcher.fbx/Prefab/buildingPart/table01", {
    DataType = "COMP_GROUNDED",
    HasBuildingZone = false
})

mod:registerPrefabComponent("models/butcher.fbx/Prefab/buildingPart/table02", {
    DataType = "COMP_GROUNDED",
    HasBuildingZone = false
})

-- building zones for the whole model
mod:registerPrefabComponent("models/butcher.fbx/Prefab/buildingPart/building", {
	DataType = "COMP_BUILDING_PART",
	HasBuildingZone = true,
	BuildingZone = { 8, 6 }
})