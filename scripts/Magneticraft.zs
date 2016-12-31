#Name: Magneticraft.zs
#Author: Si_hen

import mods.nei.NEI;

print("Initializing 'Magneticraft.zs'...");

#ore fix
mods.magneticraft.CrushingTable.addRecipe(<Mekanism:OreBlock>, <Magneticraft:item.chunks:16>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:15>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:17>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:18>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:20>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:21>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:22>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.chunks:23>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:15>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:17>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:18>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:20>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:21>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:22>);
mods.magneticraft.Grinder.removeRecipe(<Magneticraft:item.rubble:23>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:15>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:17>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:18>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:20>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:21>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:22>);
mods.magneticraft.Sifter.removeRecipe(<Magneticraft:item.pebbles:23>);
furnace.remove(<*>, <Magneticraft:item.pebbles:23>);
mods.thermalexpansion.Furnace.removeRecipe(<Magneticraft:item.pebbles:23>);
NEI.hide(<Magneticraft:item.chunks:15>);
NEI.hide(<Magneticraft:item.chunks:17>);
NEI.hide(<Magneticraft:item.chunks:18>);
NEI.hide(<Magneticraft:item.chunks:20>);
NEI.hide(<Magneticraft:item.chunks:21>);
NEI.hide(<Magneticraft:item.chunks:22>);
NEI.hide(<Magneticraft:item.chunks:23>);
NEI.hide(<Magneticraft:item.rubble:15>);
NEI.hide(<Magneticraft:item.rubble:17>);
NEI.hide(<Magneticraft:item.rubble:18>);
NEI.hide(<Magneticraft:item.rubble:20>);
NEI.hide(<Magneticraft:item.rubble:21>);
NEI.hide(<Magneticraft:item.rubble:22>);
NEI.hide(<Magneticraft:item.rubble:23>);
NEI.hide(<Magneticraft:item.pebbles:15>);
NEI.hide(<Magneticraft:item.pebbles:17>);
NEI.hide(<Magneticraft:item.pebbles:18>);
NEI.hide(<Magneticraft:item.pebbles:20>);
NEI.hide(<Magneticraft:item.pebbles:21>);
NEI.hide(<Magneticraft:item.pebbles:22>);
NEI.hide(<Magneticraft:item.pebbles:23>);
NEI.hide(<Magneticraft:item.dust:15>);
NEI.hide(<Magneticraft:item.dust:17>);
NEI.hide(<Magneticraft:item.dust:18>);
NEI.hide(<Magneticraft:item.dust:20>);
NEI.hide(<Magneticraft:item.dust:21>);
NEI.hide(<Magneticraft:item.dust:22>);
NEI.hide(<Magneticraft:item.dust:23>);

#remove sulfur from OreDict
<ore:dustSulfur>.remove(<Magneticraft:item.dustSulfur>);
recipes.remove(<Magneticraft:item.dustSulfur>);

#machinehousing
recipes.remove(<Magneticraft:machine_housing>);


#pipe
recipes.remove(<Magneticraft:item.iron_pipe>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:item.iron_pipe> * 6, [[<ore:plateInvar>, null, <ore:plateInvar>],
                                                                      [<ore:plateInvar>, null, <ore:plateInvar>], 
                                                                      [<ore:plateInvar>, null, <ore:plateInvar>]], <liquid:invar.molten> * 288, 20);
#crusher control
recipes.remove (<Magneticraft:crusher_control>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:crusher_control> , [[<minecraft:piston>, null, <minecraft:piston>],
                                                                      [<ore:plateIron>, <Creator:chamberIron>, <ore:plateIron>], 
                                                                      [<ore:plateIron>, <Creator:motorDC>, <ore:plateIron>]], <liquid:iron.molten> * 288, 200);
#grinder control
recipes.remove (<Magneticraft:grinder_control>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:grinder_control> , [[<ore:plateIron>, <Forestry:thermionicTubes:3>, <ore:plateIron>],
                                                                      [<minecraft:piston>, <Creator:chamberIronG>, <minecraft:piston>], 
                                                                      [<ore:plateIron>, <Creator:motorDC>, <ore:plateIron>]], <liquid:iron.molten> * 288, 250);
#stirling generator control
recipes.remove (<Magneticraft:stirling_generator>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:stirling_generator> , [[<ore:plateIron>, <Magneticraft:item.battery_small>, <ore:plateIron>],
                                                                      [<Magneticraft:item.heat_cable>, <Creator:generatorDC>, <Magneticraft:item.heat_cable>], 
                                                                      [<ore:plateIron>, <Creator:chamberIron>, <ore:plateIron>]], <liquid:iron.molten> * 288, 100);
#refinery control
recipes.remove(<Magneticraft:refinery_control>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:refinery_control> , [[<ore:plateIron>, <Magneticraft:mg_tank>, <ore:plateIron>],
                                                                      [<Magneticraft:item.heat_cable>, <Creator:chamberIron>, <Magneticraft:item.heat_cable>], 
                                                                      [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]], <liquid:iron.molten> * 288, 150);
#polymerizer control
recipes.remove(<Magneticraft:polimerizer_control>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:polimerizer_control> , [[<ore:plateIron>, <Forestry:thermionicTubes:3>, <ore:plateIron>],
                                                                      [<minecraft:glass_bottle>, <Creator:chamberIron>, <minecraft:glass_bottle>], 
                                                                      [<Creator:coilCopper>, <ore:plateIron>, <Creator:coilCopper>]], <liquid:iron.molten> * 288, 250);
#turbine control
recipes.remove(<Magneticraft:turbine_control>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:turbine_control> , [[<ore:plateSteel>, <Railcraft:part.turbine.blade>, <ore:plateSteel>],
                                                                      [<Railcraft:part.turbine.blade>, <Creator:generatorDCA>, <Railcraft:part.turbine.blade>], 
                                                                      [<ore:plateSteel>, <Railcraft:part.turbine.blade>, <ore:plateSteel>]], <liquid:steel.molten> * 288, 150);
#oil distillery control
recipes.remove(<Magneticraft:distillery_control>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:distillery_control> , [[<ore:plateIron>, <Forestry:thermionicTubes:3>, <ore:plateIron>],
                                                                      [<Creator:coilCopper>, <Magneticraft:mg_tank>, <Creator:coilCopper>], 
                                                                      [<ore:plateIron>, <Creator:chamberIron>, <ore:plateIron>]], <liquid:iron.molten> * 288, 150);
#sifter control
recipes.remove(<Magneticraft:sifter_control>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:sifter_control> , [[<Forestry:thermionicTubes:3>, <Magneticraft:refinery_gap>, <Forestry:thermionicTubes:3>],
                                                                      [<Magneticraft:inserter>, <Creator:chamberIron>, <Magneticraft:inserter>], 
                                                                      [<Creator:motorDC>, <Magneticraft:refinery_gap>, <Creator:motorDC>]], <liquid:iron.molten> * 288, 300);
#multiblocks
recipes.remove(<Magneticraft:chasis>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:chasis> * 9 , [[<ore:plateIron>, <ore:stickIron>, <ore:plateIron>],
                                                                      [<ore:stickIron>, null, <ore:stickIron>], 
                                                                      [<ore:plateIron>, <ore:stickIron>, <ore:plateIron>]], <liquid:iron.molten> * 144, 150);
recipes.remove(<Magneticraft:MB_EnergyIO>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:MB_EnergyIO> * 1 , [[<Magneticraft:item.cable_low>, null, null],
                                                                      [null, null, null], 
                                                                      [null, null, null]], <liquid:iron.molten> * 72, 20, <Magneticraft:chasis>);
recipes.remove(<Magneticraft:MB_Energy_medium>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:MB_Energy_medium> * 1 , [[<Magneticraft:item.cable_medium>, null, null],
                                                                      [null, null, null], 
                                                                      [null, null, null]], <liquid:iron.molten> * 72, 20, <Magneticraft:chasis>);
recipes.remove(<Magneticraft:multi_heat>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:multi_heat> * 1 , [[<Magneticraft:item.heat_cable>, null, null],
                                                                      [null, null, null], 
                                                                      [null, null, null]], <liquid:iron.molten> * 72, 20, <Magneticraft:chasis>);
recipes.remove(<Magneticraft:multi_io>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:multi_io> * 1 , [[<minecraft:chest>, null, null],
                                                                      [null, null, null], 
                                                                      [null, null, null]], <liquid:iron.molten> * 72, 20, <Magneticraft:chasis>);
recipes.remove(<Magneticraft:refinery_gap>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:refinery_gap> * 1 , [[null, <ore:plateIron>, null],
                                                                      [<ore:plateCopper>, <Magneticraft:chasis>, <ore:plateCopper>], 
                                                                      [null, <ore:plateIron>, null]], <liquid:iron.molten> * 72, 20);
recipes.remove(<Magneticraft:mg_tank>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:mg_tank> * 2 , [[<ore:plateCopper>, <ore:blockGlass>, <ore:plateCopper>],
                                                                      [<ore:blockGlass>, null, <ore:blockGlass>], 
                                                                      [<ore:plateCopper>, <ore:blockGlass>, <ore:plateCopper>]], <liquid:copper.molten> * 144, 20);
recipes.remove(<Magneticraft:refinery_tank>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:refinery_tank> * 3 , [[null, <Magneticraft:refinery_gap>, null],
                                                                      [<Magneticraft:refinery_gap>, <Magneticraft:mg_tank>, <Magneticraft:refinery_gap>], 
                                                                      [null, null, null]], <liquid:iron.molten> * 72, 20);
recipes.remove(<Magneticraft:mb_controls>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:mb_controls> * 1 , [[<ore:plateIron>, <minecraft:lever>, <ore:plateIron>],
                                                                      [<minecraft:lever>, <Magneticraft:chasis>, <minecraft:lever>], 
                                                                      [<ore:plateIron>, <minecraft:lever>, <ore:plateIron>]], <liquid:iron.molten> * 72, 20);

#electric furnace
recipes.remove(<Magneticraft:electricfurnace>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:electricfurnace> , [[<ore:plateIron>, <Forestry:thermionicTubes:3>, <ore:plateIron>],
                                                                      [<ore:plateIron>, <Creator:chamberIron>, <ore:plateIron>], 
                                                                      [<ore:plateIron>, <Magneticraft:item.cable_low>, <ore:plateIron>]], <liquid:iron.molten> * 288, 100);
recipes.remove(<Magneticraft:item.heatcoil_copper>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:item.heatcoil_copper> * 1 , [[<Creator:wireCopper>, <Creator:wireCopper>, null],
                                                                      [<Creator:wireCopper>, <Creator:wireCopper>, null], 
                                                                      [null, null, null]], <liquid:copper.molten> * 144, 40);
recipes.remove(<Magneticraft:item.heatcoil_iron>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:item.heatcoil_iron> * 1 , [[<Creator:wireSteel>, <Creator:wireSteel>, null],
                                                                      [<Creator:wireSteel>, <Creator:wireSteel>, null], 
                                                                      [null, null, null]], <liquid:iron.molten> * 144, 40);
recipes.remove(<Magneticraft:item.heatcoil_tungsten>);

#wire
recipes.remove(<Magneticraft:item.cable_low>);
recipes.addShaped (<Magneticraft:item.cable_low>, [[<ore:blockWool>,null,null],[<Creator:wireCopper>,null,null],[<ore:blockWool>,null,null]]);
recipes.addShaped (<Magneticraft:item.cable_low>, [[<ore:itemRubber>,null,null],[<Creator:wireCopper>,null,null],[null,null,null]]);

#steam & heat
recipes.remove(<Magneticraft:boiler>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:boiler> , [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
                                                                      [<ore:plateIron>, <Creator:chamberIron>, <ore:plateIron>], 
                                                                      [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]], <liquid:iron.molten> * 288, 100);
recipes.remove(<Magneticraft:cooler>);
recipes.addShaped (<Magneticraft:cooler>, [[null,<ore:plateIron>,null],[<ore:plateIron>,<Magneticraft:item.heat_cable>,<ore:plateIron>],[null,<ore:plateIron>,null]]);
recipes.remove(<Magneticraft:fluid_hopper>);
recipes.remove(<Magneticraft:mirror>);
mods.railcraft.Rolling.addShaped(<Magneticraft:mirror>*2, [[<ore:plateIron>, <ore:blockGlass>, null], 
                                                        [<ore:plateIron>, <ore:blockGlass>, null],
                                                        [<ore:plateIron>, <ore:blockGlass>, null]]);
recipes.remove(<Magneticraft:biomassburner>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:biomassburner> , [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
                                                                      [<minecraft:furnace>, <Magneticraft:item.heat_cable>, <minecraft:furnace>], 
                                                                      [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]], <liquid:iron.molten> * 288, 150);
recipes.remove(<Magneticraft:InfiniteWater>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:InfiniteWater> , [[<ore:plateIron>, <minecraft:water_bucket>, <ore:plateIron>],
                                                                      [<minecraft:water_bucket>, <Creator:chamberIron>, <minecraft:water_bucket>], 
                                                                      [<ore:plateIron>, <minecraft:water_bucket>, <ore:plateIron>]], <liquid:iron.molten> * 288, 200);
recipes.remove(<Magneticraft:solar_tower_core>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:solar_tower_core> , [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
                                                                      [<ore:plateIron>, <Magneticraft:item.heat_cable>, <ore:plateIron>], 
                                                                      [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]], <liquid:iron.molten> * 288, 500);
#electrical age
recipes.remove(<Magneticraft:solarpanel>);
recipes.remove(<Magneticraft:item.battery_small>);
recipes.remove(<Magneticraft:item.battery>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:item.battery_small> , [[null, <Magneticraft:item.cable_low>, null],
                                                                      [<ore:plateBronze>, null, <ore:plateBronze>], 
                                                                      [null, <ore:plateBronze>, null]], <liquid:sulfurousacid> * 125, 20);
mods.forestry.Carpenter.addRecipe(<Magneticraft:item.battery> , [[<ore:plateBronze>, <Magneticraft:item.cable_low>, <ore:plateBronze>],
                                                                      [<ore:plateBronze>, null, <ore:plateBronze>], 
                                                                      [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>]], <liquid:sulfurousacid> * 1000, 20);
recipes.remove(<Magneticraft:transformer_lm>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:transformer_lm> , [[null, <Creator:coilCopper>, null],
                                                                      [<Magneticraft:item.cable_low>, <Creator:coilCopper>, <Magneticraft:item.cable_medium>], 
                                                                      [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]], <liquid:iron.molten> * 288, 100);
recipes.remove(<Magneticraft:transformer_mh>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:transformer_mh> , [[null, <Creator:coilCopper>, null],
                                                                      [<Magneticraft:item.cable_medium>, <Creator:coilCopper>, <Magneticraft:item.cable_high>], 
                                                                      [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]], <liquid:iron.molten> * 288, 150);
recipes.remove(<Magneticraft:basic_generator>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:basic_generator> , [[<Magneticraft:item.cable_low>, <Creator:generatorDC>, <Magneticraft:item.cable_low>],
                                                                      [<Magneticraft:item.heat_cable>, <Magneticraft:mg_tank>, <Magneticraft:item.heat_cable>], 
                                                                      [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]], <liquid:iron.molten> * 144, 100);
recipes.remove(<Magneticraft:steam_engine>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:steam_engine> , [[<ore:plateIron>, <Magneticraft:item.cable_low>, <ore:plateIron>],
                                                                      [<Railcraft:part.turbine.blade>, <Creator:generatorDC>, <Railcraft:part.turbine.blade>], 
                                                                      [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]], <liquid:iron.molten> * 144, 100);
recipes.remove(<Magneticraft:geothermal_pump>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:geothermal_pump> , [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
                                                                      [<ore:plateIron>, <Magneticraft:item.heat_cable>, <ore:plateIron>], 
                                                                      [<ore:plateIron>, <Magneticraft:item.drill>, <ore:plateIron>]], <liquid:iron.molten> * 288, 150);
recipes.remove(<Magneticraft:teslacoil>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:teslacoil> , [[<Creator:coilCopper>, <ore:plateIron>, <Creator:coilCopper>],
                                                                      [<Creator:coilCopper>, <ore:plateIron>, <Creator:coilCopper>], 
                                                                      [<ore:plateCopper>, <ore:plateIron>, <ore:plateCopper>]], <liquid:iron.molten> * 288, 200);
recipes.remove(<Magneticraft:airlock>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:airlock> , [[<ore:blockGlass>, <Creator:motorDC>, <ore:blockGlass>],
                                                                      [<minecraft:bucket>, <Creator:chamberIron>, <minecraft:bucket>], 
                                                                      [<ore:blockGlass>, <minecraft:bucket>, <ore:blockGlass>]], <liquid:iron.molten> * 288, 200);
recipes.remove(<Magneticraft:crafter>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:crafter> , [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
                                                                      [<Magneticraft:inserter>, <Creator:chamberIron>, <Magneticraft:inserter>], 
                                                                      [<ore:plateIron>, <minecraft:redstone>, <ore:plateIron>]], <liquid:iron.molten> * 288, 300);
recipes.remove(<Magneticraft:heater>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:heater> , [[<ore:plateIron>, <Magneticraft:item.heatcoil_iron>, <ore:plateIron>],
                                                                      [<Magneticraft:item.heatcoil_iron>, <Creator:chamberIron>, <Magneticraft:item.heatcoil_iron>], 
                                                                      [<ore:plateIron>, <Magneticraft:item.heatcoil_iron>, <ore:plateIron>]], <liquid:iron.molten> * 288, 100);
recipes.remove(<Magneticraft:kinetic_generator>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:kinetic_generator> , [[<ore:plateIron>, <Creator:motorDC>, <ore:plateIron>],
                                                                      [<Forestry:thermionicTubes:3>, <Creator:chamberIron>, <Forestry:thermionicTubes:3>], 
                                                                      [<ore:plateIron>, <Creator:generatorACSP>, <ore:plateIron>]], <liquid:iron.molten> * 288, 300);
recipes.remove(<Magneticraft:pumpjack_1>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:pumpjack_1> , [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
                                                                      [<Forestry:thermionicTubes:3>, <Creator:chamberIron>, <Forestry:thermionicTubes:3>], 
                                                                      [<Magneticraft:item.cable_low>, <Creator:motorDC>, <Magneticraft:item.drill>]], <liquid:iron.molten> * 288, 200);
recipes.remove(<Magneticraft:conveyor_low>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:conveyor_low>*32 , [[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
                                                                      [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], 
                                                                      [null,null,null]], <liquid:iron.molten> * 72, 30);
recipes.remove(<Magneticraft:inserter>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:inserter>*16 , [[null, null, <ore:stickWood>],
                                                                      [null, <ore:stickWood>, null], 
                                                                      [<ore:stone>,<ore:gearCopper>,<ore:stone>]], <liquid:copper.molten> * 72, 30);
recipes.remove(<Magneticraft:combustion_engine>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:combustion_engine> , [[<Magneticraft:heat_sink>, null, <Magneticraft:heat_sink>],
                                                                      [<ore:plateIron>, <Creator:generatorDC>, <ore:plateIron>], 
                                                                      [<Magneticraft:item.plastic>,<Magneticraft:item.cable_low>,<Magneticraft:item.plastic>]], <liquid:iron.molten> * 144, 150);
recipes.remove(<Magneticraft:heat_sink>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:heat_sink> , [[<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>],
                                                                      [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], 
                                                                      [null,null,null]], <liquid:iron.molten> * 144, 75);
recipes.remove(<Magneticraft:item.oil_prospector>);
recipes.addShaped (<Magneticraft:item.oil_prospector>, [[<Magneticraft:item.battery_small>,null,null],[<Forestry:thermionicTubes>,null,null],[<ore:ingotIron>,null,null]]);

recipes.remove(<Magneticraft:electric_switch>);
recipes.addShaped (<Magneticraft:electric_switch>, [[null,<minecraft:lever>,null],[<Magneticraft:item.cable_low>,<Creator:chamberIron>,<Magneticraft:item.cable_low>],[null,null,null]]);

#sth else
recipes.remove(<Magneticraft:permanent_magnet>);
recipes.addShaped (<Magneticraft:permanent_magnet>*2, [[null,<Creator:magnetIron>,null],[<Creator:magnetIron>,<Creator:magnetIron>,<Creator:magnetIron>],[null,<Creator:magnetIron>,null]]);

recipes.remove(<Magneticraft:item.jack_hammer>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:item.jack_hammer> , [[<ore:plateIron>, <Magneticraft:item.battery_small>, <ore:plateIron>],
                                                                      [<Forestry:thermionicTubes>, <Creator:motorDC>, <Forestry:thermionicTubes>], 
                                                                      [null,<Magneticraft:item.drill>,null]], <liquid:iron.molten> * 288, 150);
recipes.remove(<Magneticraft:item.inserter_item_speed_upgrade>);
recipes.addShaped (<Magneticraft:item.inserter_item_speed_upgrade>, [[<Magneticraft:item.plastic>,<Magneticraft:item.plastic>,<Magneticraft:item.plastic>],[<Magneticraft:item.plastic>,<Creator:coilCopper>,<Magneticraft:item.plastic>],[<Magneticraft:item.plastic>,<Magneticraft:item.plastic>,<Magneticraft:item.plastic>]]);

recipes.remove(<Magneticraft:item.inserter_item_slow_upgrade>);
recipes.addShaped (<Magneticraft:item.inserter_item_slow_upgrade>, [[<Magneticraft:item.plastic>,<Magneticraft:item.plastic>,<Magneticraft:item.plastic>],[<Magneticraft:item.plastic>,<Creator:magnetIron>,<Magneticraft:item.plastic>],[<Magneticraft:item.plastic>,<Magneticraft:item.plastic>,<Magneticraft:item.plastic>]]);

recipes.remove(<Magneticraft:item.inserter_item_suck_upgrade>);
recipes.addShaped (<Magneticraft:item.inserter_item_suck_upgrade>, [[<Magneticraft:item.plastic>,<Magneticraft:item.plastic>,<Magneticraft:item.plastic>],[<Magneticraft:item.plastic>,<ore:ingotIron>,<Magneticraft:item.plastic>],[<Magneticraft:item.plastic>,<Magneticraft:item.plastic>,<Magneticraft:item.plastic>]]);

recipes.remove(<Magneticraft:item.chainsaw>);
mods.forestry.Carpenter.addRecipe(<Magneticraft:item.chainsaw> , [[<ore:plateIron>, <ore:plateIron>, null],
                                                                      [<ore:plateIron>, <ore:plateIron>, <Forestry:thermionicTubes>], 
                                                                      [null,<Creator:motorDC>,<Magneticraft:item.battery_small>]], <liquid:iron.molten> * 288, 150);

#those abandoned kids :\
recipes.remove(<Magneticraft:item.motor>);
recipes.remove(<Magneticraft:item.alternator>);
recipes.remove(<Magneticraft:item.copper_coil>);
recipes.remove(<Magneticraft:item.ingotCarbide>);

recipes.remove(<Magneticraft:windturbine>);
recipes.remove(<Magneticraft:thermopile>);
recipes.remove(<Magneticraft:miner>);
recipes.remove(<Magneticraft:crushing_table>);
recipes.remove(<Magneticraft:ShelvingUnit>);
recipes.remove(<Magneticraft:rf_alternator>);
recipes.remove(<Magneticraft:rc_alternator>);
<Magneticraft:miner>.addTooltip(format.red("U want 2 use it? Use dat SLOWWWWW BC Quarry instead!"));

print("Initialized 'Magneticraft.zs'");