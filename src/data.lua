local dust_ammount = 50
local molten_ammount = 500



data:extend({
{
	type = "recipe",
	name = "iron-dust-melting",
	icons = {
		{icon = "__ev-assets__/graphics/icons/iron-dust.png", scale = 0.4, shift = {-6, -8}},
		{icon = "__space-age__/graphics/icons/calcite.png", scale = 0.4, shift = {12, -8}},
		{icon = "__space-age__/graphics/icons/fluid/molten-iron.png", scale = 0.6, shift = {0, 6}},
	},
	icon_size = 64,
	category = "metallurgy",
	subgroup = "vulcanus-processes",
	order = "a[molten]-g[molten-iron]",
	allow_productivity = true,
	enabled = false,
	energy_required = 24,
	ingredients = {
		{ type = "item", name = "iron-dust", amount = dust_ammount },
		{ type = "item", name = "calcite", amount = 1 }
	},
	results = {
		{ type = "fluid", name = "molten-iron", amount = molten_ammount},
	}
},
{
	type = "recipe",
	name = "copper-dust-melting",
	icons = {
		{icon = "__ev-assets__/graphics/icons/copper-dust.png", scale = 0.4, shift = {-6, -8}},
		{icon = "__space-age__/graphics/icons/calcite.png", scale = 0.4, shift = {12, -8}},
		{icon = "__space-age__/graphics/icons/fluid/molten-copper.png", scale = 0.6, shift = {0, 6}},
	},
	icon_size = 64,
	category = "metallurgy",
	subgroup = "vulcanus-processes",
	order = "a[molten]-h[molten-copper]",
	allow_productivity = true,
	enabled = false,
	energy_required = 24,
	ingredients = {
		{ type = "item", name = "copper-dust", amount = dust_ammount },
		{ type = "item", name = "calcite", amount = 1 }
	},
	results = {
		{ type = "fluid", name = "molten-copper", amount = molten_ammount},
	}
},
})



local tech = data.raw.technology["advanced-ore-processing"].effects
table.insert(tech, {type = "unlock-recipe", recipe ="iron-dust-melting"})
table.insert(tech, {type = "unlock-recipe", recipe ="copper-dust-melting"})

if mods["Krastorio2-spaced-out"] then
	data:extend({
{
	type = "recipe",
	name = "rare-metals-dust-melting",
	icons = {
		{icon = "__ev-assets__/graphics/icons/rare-metals-dust.png", scale = 0.4, shift = {-6, -8}},
		{icon = "__space-age__/graphics/icons/calcite.png", scale = 0.4, shift = {12, -8}},
		{icon = "__k2so-assets__/icons/fluids/molten-rare-metals.png", scale = 0.6, shift = {0, 6}},
	},
	icon_size = 64,
	category = "metallurgy",
	subgroup = "vulcanus-processes",
	order = "a[molten]-i[molten-rare-metals]",
	allow_productivity = true,
	enabled = false,
	energy_required = 24,
	ingredients = {
		{ type = "item", name = "rare-metals-dust", amount = dust_ammount },
		{ type = "item", name = "calcite", amount = 1 }
	},
	results = {
		{ type = "fluid", name = "kr-molten-rare-metals", amount = molten_ammount},
	}
}
})
table.insert(tech, {type = "unlock-recipe", recipe ="rare-metals-dust-melting"})
end

--[[
for _, effect in ipairs(tech) do
	if effect.recipe == "iron-ore-alternative-enriching" or effect.recipe == "copper-ore-alternative-enriching" then
		effect = nil
	end 
end
--]]