local mod = ...

-- register wagon
mod:registerAssetId("models/barrel.fbx/Prefab/Barrel", "PREFAB_BARREL")
mod:registerAssetId("models/barrel.fbx/Prefab/SideBarrel", "PREFAB_SIDE_BARREL")
mod:registerAssetId("models/barrel.fbx/Prefab/StackABarrel", "PREFAB_STACK_A_BARREL")
mod:registerAssetId("models/barrel.fbx/Prefab/StackBBarrel", "PREFAB_STACK_B_BARREL")

-- register building
mod:register({
	DataType = "BUILDING",
	Id = "BARREL",
	Name = "BARREL_NAME",
	Description = "BARREL_DESC",
	BuildingType = "DECORATION",
	BuildingPartSetList = {
        {
            Name = "DEFAULT",
            BuildingPartList = { "BARREL_PART" }
        }
    }
})

-- register building part
mod:register({
	DataType = "BUILDING_PART",
	Id = "BARREL_PART",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_BARREL"
	},
	Cost = {
		BuildRightTaxes = { { Resource = "BARREL", Quantity = 1 } }
	}
})

-- register prefab component
mod:registerPrefabComponent("models/barrel.fbx/Prefab/Barrel", {
	DataType = "COMP_BUILDING_PART",
	HasBuildingZone = true,
	BuildingZone = { 0.5, 0.5 }
})

-- ================================
--           SIDE BARREL
-- ================================

-- register building
mod:register({
	DataType = "BUILDING",
	Id = "SIDE_BARREL",
	Name = "SIDE_BARREL_NAME",
	Description = "SIDE_BARREL_DESC",
	BuildingType = "DECORATION",
	BuildingPartSetList = {
        {
            Name = "DEFAULT",
            BuildingPartList = { "SIDE_BARREL_PART" }
        }
    }
})

-- register building part
mod:register({
	DataType = "BUILDING_PART",
	Id = "SIDE_BARREL_PART",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_SIDE_BARREL"
	},
	Cost = {
		BuildRightTaxes = { { Resource = "BARREL", Quantity = 1 } }
	}
})

-- register prefab component
mod:registerPrefabComponent("models/barrel.fbx/Prefab/SideBarrel", {
	DataType = "COMP_BUILDING_PART",
	HasBuildingZone = true,
	BuildingZone = { 0.5, 0.5 }
})

-- ================================
--           STACK A BARREL
-- ================================

-- register building
mod:register({
	DataType = "BUILDING",
	Id = "STACK_A_BARREL",
	Name = "STACK_A_BARREL_NAME",
	Description = "STACK_A_BARREL_DESC",
	BuildingType = "DECORATION",
	BuildingPartSetList = {
        {
            Name = "DEFAULT",
            BuildingPartList = { "STACK_A_BARREL_PART" }
        }
    }
})

-- register building part
mod:register({
	DataType = "BUILDING_PART",
	Id = "STACK_A_BARREL_PART",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_STACK_A_BARREL"
	},
	Cost = {
		BuildRightTaxes = { { Resource = "BARREL", Quantity = 3 } }
	}
})

-- register prefab component
mod:registerPrefabComponent("models/barrel.fbx/Prefab/StackABarrel", {
	DataType = "COMP_BUILDING_PART",
	HasBuildingZone = true,
	BuildingZone = { 0.5, 1 }
})

-- ================================
--           STACK B BARREL
-- ================================

-- register building
mod:register({
	DataType = "BUILDING",
	Id = "STACK_B_BARREL",
	Name = "STACK_B_BARREL_NAME",
	Description = "STACK_B_BARREL_DESC",
	BuildingType = "DECORATION",
	BuildingPartSetList = {
        {
            Name = "DEFAULT",
            BuildingPartList = { "STACK_B_BARREL_PART" }
        }
    }
})

-- register building part
mod:register({
	DataType = "BUILDING_PART",
	Id = "STACK_B_BARREL_PART",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_STACK_B_BARREL"
	},
	Cost = {
		BuildRightTaxes = { { Resource = "BARREL", Quantity = 5 } }
	}
})

-- register prefab component
mod:registerPrefabComponent("models/barrel.fbx/Prefab/StackBBarrel", {
	DataType = "COMP_BUILDING_PART",
	HasBuildingZone = true,
	BuildingZone = { 0.5, 2 }
})