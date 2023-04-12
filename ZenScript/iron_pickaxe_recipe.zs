// Remove existing iron pickaxe recipe
recipes.remove(<minecraft:iron_pickaxe>);

// Add a new recipe for crafting an iron pickaxe
recipes.addShaped(<minecraft:iron_pickaxe>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
                                           [null, <minecraft:stick>, null],
                                           [null, <minecraft:stick>, null]]);
