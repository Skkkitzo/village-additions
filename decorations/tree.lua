local mod = ...

-- register tree asset
mod:registerAssetId("models/tree.fbx/Prefab/Tree", "PREFAB_VA_TREE_OAK")

-- register tree
mod:register({
	DataType = "BUILDING",
	Id = "TREE_OAK",
	Name = "TREE_OAK_NAME",
	Description = "TREE_OAK_DESC",
	BuildingType = "DECORATION",
	BuildingPartSetList = {
        {
            Name = "DEFAULT",
            BuildingPartList = { "TREE_OAK_PART" }
        }
    }
})

-- register tree part
mod:register({
	DataType = "BUILDING_PART",
	Id = "TREE_OAK_PART",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_VA_TREE_OAK"
	},
	Cost = {
		BuildRightTaxes = { { Resource = "WOOD", Quantity = 2 } }
	}
})