local mod = ...

-- register icon image
mod:registerAssetId("icons/potion.png", "ICON_POTION")

mod:registerAssetId("icons/cattle.png", "ICON_CATTLE")
mod:registerAssetId("icons/pig.png", "ICON_PIG")

mod:registerAssetId("icons/beef.png", "ICON_BEEF")
mod:registerAssetId("icons/pork.png", "ICON_PORK")

mod:registerAssetId("icons/tallow.png", "ICON_TALLOW")
mod:registerAssetId("icons/candle.png", "ICON_CANDLE")

-- register potion resource
mod:register({
	DataType = "RESOURCE",
	Id = "POTION",
	ResourceName = "POTION_RESOURCE",
	Icon = "ICON_POTION",
	ResourceTypeList = { "LUXURY" },
	IsTradable = true,
	ResourceLayoutType = "CRATES",
	-- removed this for now as don't have a texture
	--Prefab = "PIPSTANKA",
	VillagerBuyingPrice = { Resource = "GOLD", Quantity = 200 },
	SellingPrice = 50.0,
	DisplayInInventory = true
})

-- register cattle resource
mod:register({
	DataType = "RESOURCE",
	Id = "CATTLE",
	ResourceName = "CATTLE_RESOURCE",
	Icon = "ICON_CATTLE",
	ResourceTypeList = { "RESOURCE" },
	IsTradable = false,
	ResourceLayoutType = "CRATES",
	VillagerBuyingPrice = { Resource = "GOLD", Quantity = 0 },
	DisplayInInventory = true
})

-- register pig resource
mod:register({
	DataType = "RESOURCE",
	Id = "PIG",
	ResourceName = "PIG_RESOURCE",
	Icon = "ICON_PIG",
	ResourceTypeList = { "RESOURCE" },
	IsTradable = false,
	ResourceLayoutType = "CRATES",
	VillagerBuyingPrice = { Resource = "GOLD", Quantity = 0 },
	DisplayInInventory = true
})

-- register beef
mod:register({
	DataType = "RESOURCE",
	Id = "BEEF",
	ResourceName = "BEEF_RESOURCE",
	Icon = "ICON_BEEF",
	ResourceTypeList = { "FOOD" },
	IsTradable = true,
	ResourceLayoutType = "CRATES",
	VillagerBuyingPrice = { Resource = "GOLD", Quantity = 5 },
	DisplayInInventory = true
})

-- register pork
mod:register({
	DataType = "RESOURCE",
	Id = "PORK",
	ResourceName = "PORK_RESOURCE",
	Icon = "ICON_PORK",
	ResourceTypeList = { "FOOD" },
	IsTradable = true,
	ResourceLayoutType = "CRATES",
	VillagerBuyingPrice = { Resource = "GOLD", Quantity = 5 },
	DisplayInInventory = true
})

-- register tallow
mod:register({
	DataType = "RESOURCE",
	Id = "TALLOW",
	ResourceName = "TALLOW_RESOURCE",
	Icon = "ICON_TALLOW",
	ResourceTypeList = { "RESOURCE" },
	IsTradable = true,
	ResourceLayoutType = "CRATES",
	VillagerBuyingPrice = { Resource = "GOLD", Quantity = 0 },
	DisplayInInventory = true
})

-- register candle
mod:register({
	DataType = "RESOURCE",
	Id = "CANDLE",
	ResourceName = "CANDLE_RESOURCE",
	Icon = "ICON_CANDLE",
	ResourceTypeList = { "GOODS" },
	IsTradable = true,
	ResourceLayoutType = "CRATES",
	VillagerBuyingPrice = { Resource = "GOLD", Quantity = 20 }
})