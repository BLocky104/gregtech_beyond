import mods.gregtech.recipe.PBFRecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlock;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import crafttweaker.item.IItemCondition;
import mods.gtadditions.recipe.GARecipeMaps.ADV_FUSION_RECIPES;
import mods.gregtech.recipe.CokeOvenRecipeBuilder;
import mods.gtadditions.recipe.Utils;


val packer = mods.gregtech.recipe.RecipeMap.getByName("packer");
val unpacker = mods.gregtech.recipe.RecipeMap.getByName("unpacker");
val brewery = mods.gregtech.recipe.RecipeMap.getByName("brewer");
val extruder = mods.gregtech.recipe.RecipeMap.getByName("extruder");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val implosion = mods.gregtech.recipe.RecipeMap.getByName("implosion_compressor");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("solidifier");
val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val forgeHammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");
val fluidExtractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val extractor = mods.gregtech.recipe.RecipeMap.getByName("extractor");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val electrolyzer = mods.gregtech.recipe.RecipeMap.getByName("electrolyzer");
val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val ebf = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val wiremill = mods.gregtech.recipe.RecipeMap.getByName("wiremill");
var fusion_reactor = mods.gregtech.recipe.RecipeMap.getByName("fusion_reactor");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val lathe = mods.gregtech.recipe.RecipeMap.getByName("lathe");
val cracker = mods.gregtech.recipe.RecipeMap.getByName("cracker");
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val vacfreezer = mods.gregtech.recipe.RecipeMap.getByName("vacuum_freezer");
val thermal = mods.gregtech.recipe.RecipeMap.getByName("thermal_centrifuge");
val cutting_saw = mods.gregtech.recipe.RecipeMap.getByName("cutting_saw");
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
val distillery = mods.gregtech.recipe.RecipeMap.getByName("distillery");
val distillation_tower = mods.gregtech.recipe.RecipeMap.getByName("distillation_tower");
val alloy_smelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val metal_bender = mods.gregtech.recipe.RecipeMap.getByName("metal_bender");
val fluid_solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
val orewasher = mods.gregtech.recipe.RecipeMap.getByName("orewasher");
val lcr = mods.gregtech.recipe.RecipeMap.getByName("large_chemical_reactor");
val forming_press = mods.gregtech.recipe.RecipeMap.getByName("forming_press");
val lmixer = mods.gregtech.recipe.RecipeMap.getByName("large_mixer");
val blastalloy = mods.gregtech.recipe.RecipeMap.getByName("blast_alloy");
val stellar = mods.gregtech.recipe.RecipeMap.getByName("stellar_forge");
val dehydrator = mods.gregtech.recipe.RecipeMap.getByName("chemical_dehydrator");
val plasma_condenser = mods.gregtech.recipe.RecipeMap.getByName("plasma_condenser");
val circuit_assembly_line = mods.gregtech.recipe.RecipeMap.getByName("circuit_assembly_line");
val bio = mods.gregtech.recipe.RecipeMap.getByName("bio_reactor");
val fluidheater = mods.gregtech.recipe.RecipeMap.getByName("fluid_heater");
val cas = mods.gregtech.recipe.RecipeMap.getByName("circuit_assembler");
val engraver = mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");
val lengraver = mods.gregtech.recipe.RecipeMap.getByName("large_engraver");
val adv = mods.gregtech.recipe.RecipeMap.getByName("ADVFusion");
val chemical_plant = mods.gregtech.recipe.RecipeMap.getByName("chemical_plant");
val canning = mods.gregtech.recipe.RecipeMap.getByName("canner");
val lcentrifuge = mods.gregtech.recipe.RecipeMap.getByName("large_centrifuge");
val fcanning = mods.gregtech.recipe.RecipeMap.getByName("fluid_canner");
val sifter = mods.gregtech.recipe.RecipeMap.getByName("sifter");
val cluster_mill = mods.gregtech.recipe.RecipeMap.getByName("cluster_mill");
val pyro = mods.gregtech.recipe.RecipeMap.getByName("pyro");











distillery.recipeBuilder()
    .fluidInputs(<liquid:xenoxene>*1000)
    .inputs(<gregtech:meta_item_1:2310>*12)
    .fluidOutputs(<liquid:rawradox>*500)
    .duration(8000)
    .EUt(260000)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:rawradox>*5000)
    .fluidOutputs(<liquid:oil_heavy>*200,<liquid:distilled_water>*500,<liquid:waterplasma>*50,<liquid:biomass>*200,<liquid:oil_light>*400,<liquid:xenoxene>*100,<liquid:lightradox>*1000,<liquid:heavyradox>*500)
    .outputs(<gregtech:meta_item_1:2331>)
    .duration(400)
    .EUt(52000)
    .buildAndRegister();

cracker.recipeBuilder()
    .fluidInputs(<liquid:plasma.iron>*25,<liquid:lightradox>*100)
    .fluidOutputs(<liquid:crackedlightradox>*100)
    .duration(800)
    .EUt(524000)
    .buildAndRegister();

cracker.recipeBuilder()
    .fluidInputs(<liquid:plasma.nickel>*25,<liquid:heavyradox>*100)
    .fluidOutputs(<liquid:crackedheavyradox>*100)
    .duration(800)
    .EUt(524000)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:crackedheavyradox>*1000)
    .outputs(<gregtech:meta_item_1:2109>)
    .fluidOutputs(<liquid:rawradox>*750,<liquid:purifiedradox>*250)
    .duration(500)
    .EUt(34000)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:crackedlightradox>*1000)
    .outputs(<gregtech:meta_item_1:2189>)
    .fluidOutputs(<liquid:rawradox>*900,<liquid:purifiedradox>*100)
    .duration(500)
    .EUt(34000)
    .buildAndRegister();

fusion_reactor.recipeBuilder()
    .fluidInputs(<liquid:purifiedradox>*125,<liquid:plasma.neutronium>*125)
    .fluidOutputs(<liquid:radoxpolymer>*125)
    .property("eu_to_start", 640000000)
    .duration(500)
    .EUt(500000)
    .buildAndRegister();

