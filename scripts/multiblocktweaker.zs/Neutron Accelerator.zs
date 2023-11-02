import crafttweaker.world.IFacing;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.IBlockMatcher;
import mods.gregtech.multiblock.MultiblockAbility;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import mods.gregtech.multiblock.IBlockWorldState;
import mods.gregtech.multiblock.Multiblock;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.MetaTileEntities;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.render.ITextureArea;
import mods.gregtech.render.MoveType;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.Textures;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


var loc = "neutron_accelerator";
var meta = 10002;
val neutron_accelerator = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CNMNC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCSCC")
                .aisle(
                    "F~~~F",
                    "~~~~~",
                    "~~P~~",
                    "~~~~~",
                    "F~~~F")
                .aisle(
                    "F~~~F",
                    "~~~~~",
                    "~~P~~",
                    "~~~~~",
                    "F~~~F")
                .aisle(
                    "F~~~F",
                    "~~~~~",
                    "~~P~~",
                    "~~~~~",
                    "F~~~F")
                .aisle(
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC")

                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:5>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("N", <metastate:contenttweaker:neutronaccelerator>)
                .where("M", <metastate:contenttweaker:neutronsensor>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("P", <metastate:gregtech:boiler_casing:3>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "CCCCC",
                    "F   F",
                    "F   F",
                    "F   F",
                    "CCCCC")
                .aisle(
                    "CCCCN",
                    "     ",
                    "     ",
                    "     ",
                    "CCCCC")
                .aisle(
                    "SCCCM",
                    "  P  ",
                    "  P  ",
                    "  P  ",
                    "CCCCC")
                .aisle(
                    "CCCCN",
                    "     ",
                    "     ",
                    "     ",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "F   F",
                    "F   F",
                    "F   F",
                    "CCCCC")
                                   
                .where("C", <metastate:gregtech:metal_casing:5>)
                .where("S", IBlockInfo.controller(loc))
                .where("N", <metastate:contenttweaker:neutronaccelerator>)
                .where("M", <metastate:contenttweaker:neutronsensor>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("P", <metastate:gregtech:boiler_casing:3>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[2], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(2)
                        .maxOutputs(4)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;