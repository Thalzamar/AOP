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



var rad_ore = [<contenttweaker:rad_iron>,<contenttweaker:rad_gold>,<contenttweaker:rad_copper>,<contenttweaker:rad_tin>,<contenttweaker:rad_lead>,<contenttweaker:rad_silver>,
				<contenttweaker:rad_aluminium>,<contenttweaker:rad_iridium>,<contenttweaker:rad_nickel>,<contenttweaker:rad_platinum>,
				<contenttweaker:rad_magnesium>,<contenttweaker:rad_boron>,<contenttweaker:rad_lithium>,<contenttweaker:rad_thorium>,<contenttweaker:rad_uranium>] as IIngredient[];
var norm_ore = [<ore:oreIron>,<ore:oreGold>,<ore:oreCopper>,<ore:oreTin>,<ore:oreLead>,<ore:oreSilver>,<ore:oreAluminium>,<ore:oreIridium>,<ore:oreNickel>,
				<ore:orePlatinum>,<ore:oreMagnesium>,<ore:oreBoron>,<ore:oreLithium>,<ore:oreThorium>,<ore:oreUranium>] as IIngredient[];				
var shard_ore = [<contenttweaker:rad_iron_shard>,<contenttweaker:rad_gold_shard>,<contenttweaker:rad_copper_shard>,<contenttweaker:rad_tin_shard>,<contenttweaker:rad_lead_shard>,<contenttweaker:rad_silver_shard>,
				<contenttweaker:rad_aluminium_shard>,<contenttweaker:rad_iridium_shard>,<contenttweaker:rad_nickel_shard>,<contenttweaker:rad_platinum_shard>,
				<contenttweaker:rad_magnesium_shard>,<contenttweaker:rad_boron_shard>,<contenttweaker:rad_lithium_shard>,<contenttweaker:rad_thorium_shard>,<contenttweaker:rad_uranium_shard>] as IIngredient[];				
var reactive_ore = [<liquid:reactive_rad_iron_borax>,<liquid:reactive_rad_gold_borax>,<liquid:reactive_rad_copper_borax>,<liquid:reactive_rad_tin_borax>,<liquid:reactive_rad_lead_borax>,<liquid:reactive_rad_silver_borax>,
					<liquid:reactive_rad_aluminium_borax>,<liquid:reactive_rad_iridium_borax>,<liquid:reactive_rad_nickel_borax>,<liquid:reactive_rad_platinum_borax>,
					<liquid:reactive_rad_magnesium_borax>,<liquid:reactive_rad_boron_borax>,<liquid:reactive_rad_lithium_borax>,<liquid:reactive_rad_thorium_borax>,<liquid:reactive_rad_uranium_borax>] as ILiquidStack[];						
var borax_slurry = [<liquid:rad_iron_borax_slurry>,<liquid:rad_gold_borax_slurry>,<liquid:rad_copper_borax_slurry>,<liquid:rad_tin_borax_slurry>,<liquid:rad_lead_borax_slurry>,<liquid:rad_silver_borax_slurry>,
					<liquid:rad_aluminium_borax_slurry>,<liquid:rad_iridium_borax_slurry>,<liquid:rad_nickel_borax_slurry>,<liquid:rad_platinum_borax_slurry>,
					<liquid:rad_magnesium_borax_slurry>,<liquid:rad_boron_borax_slurry>,<liquid:rad_lithium_borax_slurry>,<liquid:rad_thorium_borax_slurry>,<liquid:rad_uranium_borax_slurry>] as ILiquidStack[];	
var liquid_ore = [<liquid:liquidized_rad_iron>,<liquid:liquidized_rad_gold>,<liquid:liquidized_rad_copper>,<liquid:liquidized_rad_tin>,<liquid:liquidized_rad_lead>,<liquid:liquidized_rad_silver>,
				<liquid:liquidized_rad_aluminium>,<liquid:liquidized_rad_iridium>,<liquid:liquidized_rad_nickel>,<liquid:liquidized_rad_platinum>,
				<liquid:liquidized_rad_magnesium>,<liquid:liquidized_rad_boron>,<liquid:liquidized_rad_lithium>,<liquid:liquidized_rad_thorium>,<liquid:liquidized_rad_uranium>] as ILiquidStack[];
var washed_ore = [<liquid:washed_rad_iron>,<liquid:washed_rad_gold>,<liquid:washed_rad_copper>,<liquid:washed_rad_tin>,<liquid:washed_rad_lead>,<liquid:washed_rad_silver>,
				<liquid:washed_rad_aluminium>,<liquid:washed_rad_iridium>,<liquid:washed_rad_nickel>,<liquid:washed_rad_platinum>,
				<liquid:washed_rad_magnesium>,<liquid:washed_rad_boron>,<liquid:washed_rad_lithium>,<liquid:washed_rad_thorium>,<liquid:washed_rad_uranium>] as ILiquidStack[];
var ingot = [<ore:ingotIron>,<ore:ingotGold>,<ore:ingotCopper>,<ore:ingotTin>,<ore:ingotLead>,
				<ore:ingotSilver>,<ore:ingotAluminium>,<ore:ingotIridium>,<ore:ingotNickel>,<ore:ingotPlatinum>,
				<ore:ingotMagnesium>,<ore:ingotBoron>,<ore:ingotLithium>,<ore:ingotThorium>,<ore:ingotUranium>] as IIngredient[];	
var stack = [<minecraft:iron_ingot>,<minecraft:gold_ingot>,<thermalfoundation:material:128>,<thermalfoundation:material:129>,<thermalfoundation:material:131>,
				<thermalfoundation:material:130>,<thermalfoundation:material:132>,<thermalfoundation:material:135>,<thermalfoundation:material:133>,<thermalfoundation:material:134>,
				<nuclearcraft:ingot:7>,<nuclearcraft:ingot:5>,<nuclearcraft:ingot:6>,<nuclearcraft:ingot:3>,<nuclearcraft:ingot:4>] as IItemStack[];
var sulfur	= <liquid:sulfuric_acid>;
var nitric 	= <liquid:nitric_acid>;
var chlor 	= <liquid:hydrochloric_acid>;	
var dust	= [<ore:dustIron>,<ore:dustGold>,<ore:dustCopper>,<ore:dustTin>,<ore:dustLead>,
				<ore:dustSilver>,<ore:dustAluminum>,<ore:dustIridium>,<ore:dustNickel>,<ore:dustPlatinum>,
				<ore:dustMagnesium>,<ore:dustBoron>,<ore:dustLithium>,<ore:dustThorium>,<ore:dustUranium>] as IIngredient[];	
				
//iron,gold,copper,tin,lead,
//silver,aluminium,iridium,nickel,platinum,
//magnesium, boron , lithium , Thorium , Uranium
var secondary = [ChanceItemIngredient.create(<ore:dustChromium>*5, 60),ChanceItemIngredient.create(<ore:dustSilver>, 50),ChanceItemIngredient.create(<ore:dustZinc>, 25),ChanceItemIngredient.create(<ore:dustZirconium>*5,25),ChanceItemIngredient.create(<ore:dustNickel>,50),
				ChanceItemIngredient.create(<ore:dustNickel>,50),ChanceItemIngredient.create(<ore:dustTitanium>,50),ChanceItemIngredient.create(<ore:dustPlatinum>,5),ChanceItemIngredient.create(<ore:dustTungsten>, 20),ChanceItemIngredient.create(<ore:dustIridium>,5),
				ChanceItemIngredient.create(<ore:dustCalcium>,50),ChanceItemIngredient.create(<ore:dustCalcium>,50),ChanceItemIngredient.create(<ore:dustAluminium>,50),ChanceItemIngredient.create(<ore:dustTitanium>,50),ChanceItemIngredient.create(<ore:dustThorium>,50)] as IIngredient[];
				
var tertiary = [ChanceItemIngredient.create(<ore:dustManganese>, 25),ChanceItemIngredient.create(<ore:dustElectrum>, 50),ChanceItemIngredient.create(<ore:dustIridium>,5),ChanceItemIngredient.create(<ore:dustTungsten>,50),ChanceItemIngredient.create(<ore:dustCobalt>,25),
				ChanceItemIngredient.create(<ore:dustCobalt>,25),<ore:gemSilicon>,ChanceItemIngredient.create(<ore:dustOsmium>,10),ChanceItemIngredient.create(<ore:dustHafnium>, 25),ChanceItemIngredient.create(<ore:dustOsmium>,10),
				ChanceItemIngredient.create(<ore:dustPotassium>,25),ChanceItemIngredient.create(<ore:dustPotassium>,25),ChanceItemIngredient.create(<ore:dustSodium>,25),ChanceItemIngredient.create(<ore:dustHafnium>, 25),ChanceItemIngredient.create(<ore:dustNiobium>,50)] as IIngredient[];			
		
for i,item in rad_ore{		
FissionIrradiator.addRecipe(norm_ore[i],item, 250000, 10.0 , 0.01, 1.0e-6);
Enricher.addRecipe(item,<liquid:borax_solution>,reactive_ore[i]*1000,0.5,2.5);
}
for i,item in reactive_ore{
SaltMixer.addRecipe(item*500,<liquid:sodium_hydroxide_solution>*666,borax_slurry[i]*1000,0.5,2.5);
SaltMixer.addRecipe(item*500,<liquid:potassium_hydroxide_solution>*666,borax_slurry[i]*810,0.5,2.5);
}
for i, item in borax_slurry{
Centrifuge.addRecipe(item*1000,liquid_ore[i]*810,<liquid:diborane>*1000,<liquid:fluorine>*500,<liquid:naoh>*333,null,null,0.5,2.5);
}
for i,item in norm_ore{
Enricher.addRecipe(item,<liquid:sodium_hydroxide_solution>*666,liquid_ore[i]*1296,0.5,2.5);
}
for i,item in liquid_ore{
ChemicalReactor.addRecipe(item*432,<liquid:hydrofluoric_acid>*1000,washed_ore[i],<liquid:fluorine>*500,0.5,2.5);
}
for i,item in washed_ore{
Crystallizer.addRecipe(item*432,shard_ore[i],0.5,2.5);
}

for i,item in shard_ore{
furnace.addRecipe(stack[i],item);
if ((loadedMods has "mekanism")){
mods.mekanism.smelter.addRecipe(item,stack[i]);
	}
if ((loadedMods has "immersiveengineering")){
mods.immersiveengineering.ArcFurnace.addRecipe(stack[i],item, null, 40, 200);
	}
}
for i,item in shard_ore{
ore_leacher.addRecipe(item*4,nitric*16,chlor*16,sulfur*16,dust[i]*5,secondary[i],tertiary[i],0.5,2.5);
}