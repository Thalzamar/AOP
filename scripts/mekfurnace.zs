#modloaded mekanism

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Enricher;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.Electrolyzer;
import mods.nuclearcraft.ChanceItemIngredient;
import mods.nuclearcraft.RockCrusher;
import mods.nuclearcraft.Crystallizer;
import mods.nuclearcraft.FuelReprocessor;
import mods.nuclearcraft.FissionIrradiator;
import mods.nuclearcraft.SaltMixer;
import mods.nuclearcraft.Centrifuge;
import mods.nuclearcraft.ChemicalReactor;
import mods.qmd.ore_leacher;


var shard_ore = [<contenttweaker:rad_iron_shard>,<contenttweaker:rad_gold_shard>,<contenttweaker:rad_copper_shard>,<contenttweaker:rad_tin_shard>,<contenttweaker:rad_lead_shard>,<contenttweaker:rad_silver_shard>,
				<contenttweaker:rad_aluminium_shard>,<contenttweaker:rad_iridium_shard>,<contenttweaker:rad_nickel_shard>,<contenttweaker:rad_platinum_shard>,
				<contenttweaker:rad_magnesium_shard>,<contenttweaker:rad_boron_shard>,<contenttweaker:rad_lithium_shard>,<contenttweaker:rad_thorium_shard>,<contenttweaker:rad_uranium_shard>] as IIngredient[];	

var stack = [<minecraft:iron_ingot>,<minecraft:gold_ingot>,<thermalfoundation:material:128>,<thermalfoundation:material:129>,<thermalfoundation:material:131>,
				<thermalfoundation:material:130>,<thermalfoundation:material:132>,<thermalfoundation:material:135>,<thermalfoundation:material:133>,<thermalfoundation:material:134>,
				<nuclearcraft:ingot:7>,<nuclearcraft:ingot:5>,<nuclearcraft:ingot:6>,<nuclearcraft:ingot:3>,<nuclearcraft:ingot:4>] as IItemStack[];

for i,item in shard_ore{
mods.mekanism.smelter.addRecipe(item,stack[i]);
}