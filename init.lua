halloween = {
	S = minetest.get_translator("halloween"),
	MP = minetest.get_modpath("halloween")
}

local MP = halloween.MP

dofile(MP .. "/candy.lua")

-- Cat mask
local S = halloween.S

armor:register_armor("halloween:mask_cat", {
	description = S("Cat Mask"),
	inventory_image = "halloween_inv_mask_cat.png",
	groups = {armor_head=1, armor_use=1000}
})

minetest.register_craft({
	output = "halloween:mask_cat",
	recipe = {
		{"wool:black", "", "wool:black"},
		{"wool:dark_green", "wool:pink", "wool:dark_green"},
		{"", "wool:black", ""}
	}
})