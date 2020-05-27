local mod = ...

-- register statue id
mod:registerAssetId("models/barrelstatue.fbx/Prefab/Statue", "PREFAB_BARREL_STATUE")

-- register statue
mod:register({
	DataType = "BUILDING",
	Id = "BARREL_STATUE",
	Name = "BARREL_STATUE_NAME",
	Description = "BARREL_STATUE_DESC",
	BuildingType = "DECORATION",
	BuildingPartSetList = {
        {
            Name = "DEFAULT",
            BuildingPartList = { "BARREL_STATUE_PART" }
        }
    }
})

-- register statue part
mod:register({
	DataType = "BUILDING_PART",
	Id = "BARREL_STATUE_PART",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BARREL_STATUE"
	},
	Cost = {
		BuildRightTaxes = { { Resource = "STONE", Quantity = 5 } }
	}
})

-- register prefab component
mod:registerPrefabComponent("models/barrelstatue.fbx/Prefab/Statue", {
	DataType = "COMP_BUILDING_PART",
	HasBuildingZone = true,
	BuildingZone = { 0.8, 0.8 }
})