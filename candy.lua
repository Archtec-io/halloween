local S = halloween.S

-- Candy base
minetest.register_craftitem("halloween:caramelized_sugar", {
	description = S("Caramelized Sugar"),
	inventory_image = "halloween_caramelized_sugar.png"
})

minetest.register_craft({
	type = "cooking",
	output = "halloween:caramelized_sugar",
	recipe = "farming:sugar",
	cooktime = 14
})

-- Candies
minetest.register_craftitem("halloween:candycorn", {
	description = S("Candycorn"),
	inventory_image = "halloween_candycorn.png",
	on_use = minetest.item_eat(3)
})

minetest.register_craft({
	type = "shapeless",
	output = "halloween:candycorn 3",
	recipe = {"halloween:caramelized_sugar", "dye:orange", "dye:yellow", "dye:white"}
})

minetest.register_craftitem("halloween:halloween_chocolate", {
	description = S("Halloween Chocolate"),
	inventory_image = "halloween_chocolate.png",
	on_use = minetest.item_eat(5)
})

minetest.register_craft({
	type = "shapeless",
	output = "halloween:halloween_chocolate",
	recipe = {"halloween:caramelized_sugar", "farming:chocolate_dark", "dye:orange", "default:paper"}
})

minetest.register_craftitem("halloween:lolipop", {
	description = S("Lolipop"),
	inventory_image = "halloween_lolipop.png",
	on_use = minetest.item_eat(2)
})

minetest.register_craft({
	output = "halloween:lolipop 2",
	recipe = {
		{"", "dye:orange", ""},
		{"default:paper", "halloween:caramelized_sugar", "default:paper"},
		{"", "default:stick", ""}
	}
})

minetest.register_craftitem("halloween:caramel_apple", {
	description = S("Caramel Apple"),
	inventory_image = "halloween_caramel_apple.png",
	on_use = minetest.item_eat(4)
})

minetest.register_craft({
	output = "halloween:caramel_apple",
	recipe = {
		{"halloween:caramelized_sugar"},
		{"default:apple"},
		{"default:stick"}
	}
})