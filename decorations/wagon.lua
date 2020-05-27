local mod = ...

-- register wagon
mod:registerAssetId("models/wagon.fbx/Prefab/Wagon", "PREFAB_WAGON")

-- register wagon
mod:register({
	DataType = "BUILDING",
	Id = "WAGON",
	Name = "WAGON_NAME",
	Description = "WAGON_DESC",
	BuildingType = "DECORATION",
	BuildingPartSetList = {
        {
            Name = "DEFAULT",
            BuildingPartList = { "WAGON_PART" }
        }
    }
})

-- register wagon part
mod:register({
	DataType = "BUILDING_PART",
	Id = "WAGON_PART",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_WAGON"
	},
	Cost = {
		BuildRightTaxes = { { Resource = "PLANK", Quantity = 4 } }
	}
})

-- register prefab component
mod:registerPrefabComponent("models/wagon.fbx/Prefab/Wagon", {
	DataType = "COMP_BUILDING_PART",
	HasBuildingZone = true,
	BuildingZone = { 3, 1 }
})