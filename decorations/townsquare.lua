local mod = ...

-- register town square
mod:registerAssetId("models/townsquare.fbx/Prefab/Townsquare", "PREFAB_TOWNSQUARE")

-- register town square
mod:register({
	DataType = "BUILDING",
	Id = "TOWNSQUARE",
	Name = "TOWNSQUARE_NAME",
	Description = "TOWNSQUARE_DESC",
	BuildingType = "DECORATION",
	BuildingPartSetList = {
        {
            Name = "DEFAULT",
            BuildingPartList = { "TOWNSQUARE_PART" }
        }
    }
})

-- register townsquare part
mod:register({
	DataType = "BUILDING_PART",
	Id = "TOWNSQUARE_PART",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_TOWNSQUARE"
	},
	Cost = {
		BuildRightTaxes = {
			{ Resource = "STONE", Quantity = 10 }
		}
	}
})

-- register prefab component
mod:registerPrefabComponent("models/townsquare.fbx/Prefab/Townsquare", {
	DataType = "COMP_BUILDING_PART",
	HasBuildingZone = true,
	BuildingZone = { 1, 1 }
})

-- clear grass
mod:registerPrefabComponent("models/townsquare.fbx/Prefab/Townsquare", {
	DataType = "COMP_DIRT_RECTANGLE",
        IsPermanent = true,
	Size = { 20, 20 },
        Strength = 1
})