#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.SoundType;


var rad_ore = ["rad_iron","rad_gold","rad_copper","rad_tin","rad_lead","rad_silver","rad_aluminium","rad_iridium","rad_nickel","rad_platinum"
				,"rad_magnesium","rad_boron","rad_lithium","rad_thorium","rad_uranium"] as string[];
var ore_colour = ["7d7d7d","daa51f","ac5b2f","dadadd","414b59","8fafc1","c3b8c4","9f9fba","9b9575","7cb5d1","9b899b","565656","bababa","2c2c2c","405b40"] as string[];

for item in rad_ore {
		var material = VanillaFactory.createBlock(item, <blockmaterial:iron>);
		material.setLightOpacity(255);
		material.setBlockHardness(3);
		material.setBlockResistance(30);
		material.setToolClass("pickaxe");
		material.setToolLevel(1);
		material.register();
}
for i,name in rad_ore{
	var zsFluid = VanillaFactory.createFluid("reactive_"~name~"_borax", Color.fromHex(ore_colour[i]));
	zsFluid.setDensity(4000);
	zsFluid.setViscosity(40);
	zsFluid.setTemperature(400);
	zsFluid.register();
	}
for i,name in rad_ore{
	var zsFluid = VanillaFactory.createFluid(name~"_borax_slurry", Color.fromHex(ore_colour[i]));
	zsFluid.setDensity(4000);
	zsFluid.setViscosity(40);
	zsFluid.setTemperature(400);
	zsFluid.register();
	}
for i,name in rad_ore{
	var zsFluid = VanillaFactory.createFluid("liquidized_"~name, Color.fromHex(ore_colour[i]));
	zsFluid.setDensity(4000);
	zsFluid.setViscosity(40);
	zsFluid.setTemperature(400);
	zsFluid.register();
	}
for i,name in rad_ore{
	var zsFluid = VanillaFactory.createFluid("washed_"~name, Color.fromHex(ore_colour[i]));
	zsFluid.setDensity(4000);
	zsFluid.setViscosity(40);
	zsFluid.setTemperature(400);
	zsFluid.register();
	}

for name in rad_ore{
var ore_shards = VanillaFactory.createItem(name~"_shard");
ore_shards.maxStackSize = 64;
ore_shards.register();
}