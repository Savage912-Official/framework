Config.Filters.Supplier = {
	item = {
        ["Flavored Syrup"] = true,
        ["Cocoa"] = true,
        ["English Breakfast Tea Bag"] = true,
        ["Jasmine Tea Bag"] = true,
        ["Peppermint Tea Bag"] = true,
        ["Earl Grey Tea Bag"] = true,
        ["Chai Tea Bag"] = true,
        ["Matcha Tea Bag"] = true,
        ["Iced Tea Bag"] = true,
        ["Pumpkin"] = true,
        ["Cinnamon"] = true,
        ["Lemon"] = true,
        ["Vanilla Ice Cream"] = true,
        ["Cheese Slice"] = true,
        ["Sliced Turkey"] = true,
        ["Lettuce"] = true,
        ["Cucumber"] = true,
        ["Bun"] = true,
        ["Cabbage"] = true,
        ["Raw Venison Patty"] = true,
        ["English Muffin"] = true,
        ["Black Pepper"] = true,
        ["Green Slush Syrup"] = true,
        ["Blue Slush Syrup"] = true,
        ["Cookie"] = true,
        ["Peanuts"] = true,
        ["Brown Sugar"] = true,
        ["Vanilla Bean Ice Cream"] = true,
        ["Banana"] = true,
        ["Vanilla Wafers"] = true,
        ["Dutch Cocoa"] = true,
	},
}

RegisterShop("SUPP_001", {
    Name = "Market Supplier",
    Factions = {
		["beanies"] = "restaurant",
		["burgershot"] = "restaurant",
		["sugarspice"] = "restaurant",
		["beanmachine"] = "restaurant",
	},
    Clerks = {
        {
            coords = vector4(-312.1892, 6106.942, 31.4949, 340.3176),
            model = "s_f_y_shop_low",
        },
    },
    Storage = {
        Coords = vector3(-312.1892, 6106.942, 31.4949),
        Radius = 2.0,
        Filters = Config.Filters.Supplier,
    },
})
