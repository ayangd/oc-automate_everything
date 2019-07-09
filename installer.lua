local fs = require('filesystem')
local sh = require('shell')
local cd = sh.getWorkingDirectory()

local dict = {'minecraft','111121111','paper','filled','wool','dyeYellow','stained','hardened','clay','glass','pane','111111','blockGlassYellow','blockGlassColorless','double','plant','yellow','flower','concrete','powder','122223333','sand','gravel','carpet','111222','plankWood','banner','111111020','stickWood','writable','book','dyeBlack','feather','wooden','sword','shovel','pressure','plate','pickaxe','111020020','110202','door','planks','button','111202','dyeWhite','blockGlassWhite','wheat','block','tripwire','hook','ingotIron','trapped','chest','chestWood','trapdoor','torch','coal','minecart','121212121','gunpowder','sugar','sugarcane','1111','string','stonebrick','stone','cobblestone','stairs','100110111','slab','brick','sticky','piston','slimeball','stick','spruce','fence','gate','121121','boat','101111','spectral','arrow','010121010','dustGlowstone','speckled','melon','gold','nugget','snow','layer','snowball','sandstone','slime','ball','111111111','sign','shield','121111010','shears','0110','lantern','121222121','gemPrismarine','dustPrismarine','repeater','121333','redstone','dustRedstone','lamp','glowstone','dyeRed','blockGlassRed','slab2','nether','1221','netherbrick','wart','beetroot','rail','101121101','rabbit','stew','010234050','cooked','carrot','baked','potato','mushroom','bowl','brown','quartz','purpur','pillar','chorus','fruit','popped','dyePurple','blockGlassPurple','purple','shulker','shell','dyeBlue','pumpkin','seeds','prismarine','stoneGranite','stoneDiorite','stoneAndesite','111232242','dyePink','blockGlassPink','painting','dyeOrange','blockGlassOrange','observer','111223111','noteblock','vine','wall','mossy','compass','magma','cream','blaze','dyeMagenta','blockGlassMagenta','1223','dyeLime','blockGlassLime','dyeGreen','light','weighted','ingotGold','dyeLightGray','blockGlassLightGray','dyeGray','dyeLightBlue','blockGlassLightBlue','lever','leather','leggings','111101101','helmet','111101','chestplate','101111111','boots','101101','hide','lead','110120001','lapis','ladder','101111101','jungle','jukebox','gemDiamond','item','frame','iron','ingot','bars','hopper','101121010','heavy','blockGlassGreen','blockGlassGray','golden','101121131','apple','bottle','101010','furnace','111101111','flint','steel','fishing','001012102','fire','charge','fermented','spider','ender','enderpearl','obsidian','crystal','111121131','ghast','tear','bricks','enchanting','table','010232333','emerald','gemEmerald','dropper','111101121','dispenser','diamond','detector','daylight','111222333','dark','log2','dyeCyan','blockGlassCyan','crafting','cookie','comparator','010121333','dirt','clock','cauldron','101101111','1002','cake','111232444','milk','bucket','dyeBrown','blockGlassBrown','brewing','stand','010222','bread','012102012','bookshelf','111222111','1112','bone','blockGlassBlue','blockGlassBlack','birch','soup','beacon','111121333','netherStar','armor','111010121','anvil','111020222','activator','121131121','acacia','extrautils2','snowglobe','12345678','blockGlass','treeSapling','doorWood','logWood','grass','pearl','wateringcan','1000','100121010','unstableingots','nuggetIron','itembuilderswand','001020200','decorativesolidwood','itemdestructionwand','011021200','soundmuffler','stairWood','trashcan','111232222','trashcanfluid','trashcanenergy','blockRedstone','angelblock','010232','passivegenerator','111232','gemLapis','decorativesolid','ingredients','111232111','111023111','121131141','121343151','star','redstoneclock','121232121','compressedcobblestone','compresseddirt','compressedsand','compressedgravel','compressednetherrack','netherrack','glasscutter','001021100','endershard','121121010','sickle','wood','011001211','resonator','121343333','blockCoal','suncrystal','12222','screen','1212','bricksStone','ingotUnstable','simpledecorative','magicapple','goldenlasso','angelring','nuggetGold','powermanager','012222','bagofholding','decorativeglass','ineffableglass','pipe','playerchest','wrench','012023200','boomerang','010101','written','contract','1234','filter','filterfluids','grocket','121343','010232010','indexer','indexerremote','crafter','scanner','miner','user','klein','drum','ingotDemonicMetal','machine','teleporter','powertransmitter','powerbattery','quarryproxy','121131444','quarry','magic','globe','spike','010121232','compressed1xCobblestone','blockIron','blockGold','blockDiamond','redstonelantern','121232141','largishchest','minichest','rainbowgenerator','trowel','001020300','biomemarker','terraformer','121343121','101232020','lava','water','mycelium','trashchest','opinium','experience','elytra','lawsword','flattransfernode','analogcrafter','compoundbow','012302012','fireaxe','interactionproxy','luxsaber','ironwood','storagedrawers','upgrade','void','template','drawerBasic','storage','status','121232424','stack','conversion','tape','quantify','drawer','personal','name','120203','shroud','keybutton','framingtable','drawerTrim','customtrim','customdrawers','slabWood','111020111','controllerslave','111232141','controller','compdrawers','trim','local','isRobotAcquired','robot','xpcall','require','debug','traceback','then','print','load','module','return','stringlib','resproc','rawdb','craftingdb','inventory','type','Command','class','start','usage','func','function','setmetatable','index','running','true','slot','changed','false','wrongUsage','command','Invalid','arguments','commands','help','else','such','cmdlist','pairs','insert','sort','printbuffer','ipairs','pagedPrint','exit','stdout','write','Changes','been','made','Would','like','save','before','exiting','userInput','stdin','read','lower','elseif','reload','Resources','loaded','successfully','rescan','scan','Inventory','scanned','saved','analyze','shaped','shapeless','ignoreMetadata','processor','processors','shape','Check','result','scanSlot','select','throw','Crafting','obstructed','Scan','pattern','craftingArea','scanPattern','slotScan','ignoreDamage','damage','Shrink','Craft','component','craft','width','height','scanCraftingArea','show','peek','look','lookup','Nothing','getmetatable','keep','Item','discard','Slot','cleared','remove','processing','Removed','removed','list','List','tostring','sortedCraftingPairs','traceraw','itemAdded','itemAvailable','trace','isCraftable','Crafted','failed','enough','items','clear','clearCraftingArea','Cleared','while','craftmgr','commandstr','split','commandname','unpack','unrecognized','PREINITIALIZATION','CLIENT','INFO','Current','loaders','after','merging','preinit','Loading','scripts','loader','with','names','SIDE','Skipping','file','crafttweaker','recipeStealer','currently','loading','different','Completed','script','INITIALIZATION','CraftTweaker','Building','registry','Successfully','built','recipeevent','Script','Stealing','recipes','fenceWood','fenceGateWood','sapling','treeLeaves','leaves','leaves2','oreGold','oreIron','oreLapis','oreDiamond','oreRedstone','oreEmerald','oreQuartz','oreCoal','ingotBrick','ingotBrickNether','gemQuartz','shard','crystals','dust','blockLapis','blockEmerald','blockQuartz','cropWheat','cropPotato','cropCarrot','cropNetherWart','reeds','blockCactus','cactus','record','blocks','chirp','mall','mellohi','stal','strad','ward','wait','endstone','workbench','blockSlime','blockPrismarine','blockPrismarineBrick','blockPrismarineDark','stoneGranitePolished','stoneDioritePolished','stoneAndesitePolished','paneGlassColorless','paneGlass','chestEnder','chestTrapped','paneGlassBlack','paneGlassRed','paneGlassGreen','paneGlassBrown','paneGlassBlue','paneGlassPurple','paneGlassCyan','paneGlassLightGray','paneGlassGray','paneGlassPink','paneGlassLime','paneGlassYellow','paneGlassLightBlue','paneGlassMagenta','paneGlassOrange','paneGlassWhite','nuggetUnstable','compressed2xCobblestone','compressed3xCobblestone','compressed4xCobblestone','compressed5xCobblestone','compressed6xCobblestone','compressed7xCobblestone','compressed8xCobblestone','compressed1xDirt','compressed2xDirt','compressed3xDirt','compressed4xDirt','compressed1xSand','compressed2xSand','compressed1xGravel','compressed2xGravel','compressed1xNetherrack','compressed2xNetherrack','compressed3xNetherrack','compressed4xNetherrack','compressed5xNetherrack','compressed6xNetherrack','gemRedstone','gearRedstone','eyeofredstone','dustLunar','coalPowered','gemMoon','xuUpgradeSpeed','xuUpgradeStack','xuUpgradeMining','xuUpgradeBlank','dropofevil','ingotEnchantedMetal','xuRedstoneCoil','xuUpgradeSpeedEnchanted','ingotEvilMetal','blockEnchantedMetal','blockDemonicMetal','blockEvilMetal','doorIron','blockMagicalWood','slabStone','dustIron','dustGold','oreCopper','dustCopper','dustTin','ingotCopper','oreTin','ingotTin','oreLead','dustLead','dustSilver','ingotLead','oreSilver','ingotSilver','oreNickel','dustNickel','dustPlatinum','ingotNickel','orePlatinum','ingotPlatinum','craftingPiston','torchRedstoneActive','materialEnderPearl','wlanCard','opencomputers','card','chipDiamond','material','stoneEndstone','basicdrawers','addShapeless','armordye','null','bookcloning','mapcloning','addShaped','mapextending','fireworks','repairitem','tippedarrow','bannerduplicate','banneraddpattern','shielddecoration','shulkerboxcoloring','from','sunflower','dandelion','white','smooth','tulip','rose','bush','poppy','polished','granite','diorite','andesite','pink','bonemeal','peony','orange','magenta','lilac','allium','lime','gray','oxeye','daisy','azure','bluet','blue','orchid','lazuli','nuggets','green','cyan','coarse','chiseled','meal','black','watering','unstable','stable','builders','wand','destruction','sound','muffler','diagonal','trash','fluid','energy','angel','mill','solar','lunar','wind','manual','dragon','compressed','uncompress','cutter','shortcut','borderstone','stonecross','stoneslab','sandy','truchet','gear','moon','speed','mining','demon','enchanted','super','evil','lasso','chicken','ring','chickenring','withTag','Animal','Place','byte','squid','convert','power','manager','holding','border','diamonds','ineffable','normal','reverse','transfer','pipes','player','chunk','chunkloader','ForgeData','Contracted','villager','fluids','node','retrieve','remote','flash','4096','65536','10000','base','Type','enchanter','crusher','generator','survivalist','survival','culinary','porkchop','beef','mutton','fish','potion','netherstar','skull','overclock','dragonsbreath','death','rotten','flesh','enchant','transmitter','battery','proxy','largist','mini','rainbow','bottom','biome','marker','antenna','heater','cooler','humidifier','dehumidifier','absorbtion','infuser','dehostilifier','kikoku','flatnode','analog','compound','porcupine','saber','burnt','level2','level1','combined','packing','concealment','framing','framed','half4','half2','full4','full2','full1','slave','compacting','fulldrawers1','fulldrawers2','fulldrawers4','halfdrawers2','halfdrawers4','Stolen','240ms','POSTINITIALIZATION','Removing','various','outputs','AVAILABLE','Fixed','RecipeBook','filesystem','args','path','resolve','exists','File','found','dofile','open','close','Crash','collected','attempt','concatenate','value','field','metamethod','concat','tail','calls','upvalue','foreach','craftingConvert','main','global','process','Format','output','quantity','recipe','array','metadata','121212','11111111','11122','1111111','case2','1213','keyboard','111123','1112324','screen1','121234121','allMatch','gmatch','notContains','find','bracketContent','bracket','stripped','gsub','bracketLevel','indexStart','childs','arrRange','tableConcat','next','useful','Normalize','converting','format','database','iNormalize','iname','match','check','more','than','fits','iNormExt','tableIndex','inTable','conditionalFilter','onlyDamaged','onlyWithTag','onlyStack','liquid','srec','Shapeless','shapedstr','itemc','itemAmount','tonumber','itemstr','itemArrangement','oredictConvert','orename','oredef','craftingdbf','oredictdbf','oredict','failedf','crafttweakerlog','craftingCount','oredictCount','failedCount','converted','160D','oredictdb','fails','Wrote','lines','parsed','itemarray','ingredient','ingredientarray','Class','Meta','Init','craftingdbpath','dimension','craftingParams','size','parse','npat','itemoutput','itemoutputq','itemshape','itemUsed','itemsNeeded','itemPattern','indexDamage','allitems','Functions','error','compareDamage','first','Override','original','otype','Missing','invctrl','slots','math','floor','inventorySize','getStackInInternalSlot','updateSlot','Scanning','Done','isInExcludedSlot','excludedSlots','isInCraftingArea','slotDest','amount','transferTo','itemSlots','count','pull','ignoreCraftingArea','destSlot','itemTypes','pulled','break','srcSlot','Fill','curSlot','maxSize','moveSize','Lastly','fill','empty','isAvailable','getinventorySize','isUpAvailable','getUpinventorySize','request','TODO','external','send','deposit','front','specific','selected','transferOut','exSlot','dropIntoSlot','transferIn','suckFromSlot','itemcompound','oredictdbpath','sorted','splitted','rawdbpath','rawCount','package','tablelib','ResProc','getItemRecipe','object','addItem','createdItem','tryTakeItem','minus','processItem','ceil','satisfiable','externalItem','Merge','allItems','addAll','Unsatisfied','unsatisfiedItems','Drain','populate','unsatisfied','until','unsatisfiedItem','popSingle','craftings','unsatisfiedCraftings','unsatisfiedCrafting','availability','allAvailable','this','singleItem','event','delim','screenWidth','screenHeight','getResolution','lineCount','brokeLines','stay','brokenTableBuffer','down','clone','Safety','Reduces','headache','Attempting','thing','other','newtable','cloneAll','splitter','make','needs','anything','into','beside','zero','itemsneeded','self','Metamethods','buff','Ingredient','content','Error','parsing','Ingredients','doesn','comparison','operation','IngredientArray','Empty','splits','expecting','argument','construction','compareTo','compare','Deprecated','deprecatrace','errors','here','Craftingdb','will','freak','number','Incompatible','scaling','completename','bnot','ItemArray','hasDamage','hasAll','hasAllDamage','removeDamage','unresolvedItem','incompatible','types','added','ItemCompound','itemCompoundString','itemCompound','OreDict','iComp','create'}

local files = {['crafting.db']= [==[��:map 1 sd 33 �� ��:�� ��:��_map|*
��:��|4 1 sl 00 12 ore:�� ��:��
��:��_��_��|4 8 sd 33 �� ��:��_�� ore:��
��:��_��_��|4 16 sd 32 �� ore:��
��:��_��|4 8 sd 33 �� ore:�� ore:��
��:dye|11 2 sl 00 1 ��:��_��
��:dye|11 1 sl 00 1 ��:��_��
��:��_��|4 8 sl 00 �� ore:�� ��:�� ��:��
��:��|4 3 sd 21 11 ��:��|4
��:bed|4 1 sl 00 12 ��:bed ore:��
��:bed|4 1 sd 32 �� ��:��|4 ore:��
��:��|11 1 sd 33 �� ��:��|4 ore:��
��:��_�� 1 sl 00 123 ��:�� ore:�� ore:��
��:��_�� 1 sd 13 112 ore:�� ore:��
��:��_�� 1 sd 13 122 ore:�� ore:��
��:��_��_�� 1 sd 21 11 ore:��
��:��_�� 1 sd 33 �� ore:�� ore:��
��:��_hoe 1 sd 23 �� ore:�� ore:��
��:��_�� 3 sd 23 �� ��:��
��:��_�� 1 sd 11 1 ore:��
��:��_axe 1 sd 23 �� ore:�� ore:��
��:��_��_�� 8 sd 33 �� ��:��_�� ore:��
��:��_��_�� 16 sd 32 �� ore:��
��:��_�� 8 sd 33 �� ore:�� ore:��
��:��_�� 8 sl 00 �� ore:�� ��:�� ��:��
��:�� 3 sd 21 11 ��:��
��:bed 1 sd 32 �� ��:�� ore:��
��:��|15 1 sd 33 �� ��:�� ore:��
��:�� 9 sd 11 1 ��:hay_��
��:��_�� 2 sd 13 123 ore:�� ore:�� ore:��
��:��_�� 1 sl 00 12 ore:�� ��:��_��
��:�� 2 sd 32 �� ore:��
��:�� 4 sd 12 12 ��:��,��:��|1 ore:��
��:tnt_�� 1 sd 12 12 ��:tnt ��:��
��:tnt 1 sd 33 �� ore:�� ��:��,��:��|1
��:�� 1 sd 11 1 ore:��
��:�� 1 sd 22 �� ore:��
��:�� 4 sd 22 �� ��:��
��:��_�� 1 sd 13 112 ore:�� ore:��
��:��_�� 4 sd 33 �� ��:��
��:��_�� 6 sd 31 111 ��:��
��:��_�� 1 sd 13 122 ore:�� ore:��
��:��_��_�� 1 sd 21 11 ore:��
��:��_�� 1 sd 33 �� ore:�� ore:��
��:��_hoe 1 sd 23 �� ore:�� ore:��
��:��_�� 1 sd 11 1 ore:��
��:��_��_�� 4 sd 33 �� ��:��,��:��|1,��:��|2,��:��|3
��:��_��|5 6 sd 31 111 ��:��,��:��|1,��:��|2,��:��|3
��:��_axe 1 sd 23 �� ore:�� ore:��
��:��_�� 1 sd 12 12 ore:�� ��:��
��:�� 4 sd 12 11 ore:��
��:��_��|1 6 sd 31 111 ��:��|1
��:��_�� 4 sd 33 �� ��:��|1
��:��|1 4 sd 11 1 ��:log|1
��:��_��_�� 1 sd 32 �� ��:�� ��:��|1
��:��_�� 3 sd 32 �� ��:��|1 ��:��
��:��_�� 3 sd 23 �� ��:��|1
��:��_�� 1 sd 32 �� ��:��|1
��:��_�� 2 sd 33 �� ore:�� ��:��
��:��_�� 1 sd 33 �� ��:��_�� ��:��
��:��_�� 6 sd 31 111 ��:��
��:�� 1 sd 22 �� ��:��
��:��|2 4 sd 22 �� ��:��
��:red_��|2 4 sd 22 �� ��:red_��
��:��_�� 9 sd 11 1 ��:��
��:�� 1 sd 33 �� ore:��
��:�� 3 sd 33 �� ore:�� ore:��
��:�� 1 sd 33 �� ore:�� ore:��
��:�� 1 sd 22 �� ore:��
��:sea_�� 1 sd 33 �� ore:�� ore:��
��:��_�� 4 sd 33 �� ��:��,��:��|1,��:��|2
��:��_��|1 6 sd 31 111 ��:��,��:��|1,��:��|2
��:�� 1 sd 22 �� ��:��
��:�� 1 sd 32 �� ��:��_�� ore:�� ore:��
��:��_�� 1 sd 12 12 ore:�� ore:��
��:��_�� 1 sd 33 �� ore:�� ore:��
��:��_�� 1 sd 33 �� ore:��
��:�� 9 sd 11 1 ��:��_��
��:��|14 1 sl 00 12 ore:�� ��:��
��:��_��_��|14 8 sd 33 �� ��:��_�� ore:��
��:��_��_��|14 16 sd 32 �� ore:��
��:��_��|14 8 sd 33 �� ore:�� ore:��
��:red_��_�� 4 sd 33 �� ��:red_��,��:red_��|1,��:red_��|2
��:��_�� 6 sd 31 111 ��:red_��,��:red_��|1,��:red_��|2
��:red_�� 1 sd 22 �� ��:��|1
��:red_��_�� 1 sd 22 �� ��:�� ��:��_��
��:dye|1 1 sl 00 1 ��:red_��|4
��:dye|1 2 sl 00 1 ��:��_��|4
��:dye|1 1 sl 00 1 ��:red_��
��:dye|1 1 sl 00 1 ��:��
��:��_��|14 8 sl 00 �� ore:�� ��:�� ��:��
��:��|14 3 sd 21 11 ��:��|14
��:bed|14 1 sl 00 12 ��:bed ore:��
��:bed|14 1 sd 32 �� ��:��|14 ore:��
��:��|1 1 sd 33 �� ��:��|14 ore:��
��:�� 16 sd 33 �� ore:�� ore:��
��:��_�� 1 sd 33 �� ��:��_�� ��:�� ��:��_�  ��:red_� ��:�
��:��_�� 1 sd 33 �� ��:��_�� ��:�� ��:��_�  ��:�_� ��:�
��:�_�� 4 sd 33 �� ��:�_��,��:�_��|1,��:�_��|2
��:��_��|7 6 sd 31 111 ��:�_��,��:�_��|1,��:�_��|2
��:�_�� 1 sd 22 �� ��:�
��:�_�� 4 sd 33 �� ��:�_��
��:�_�� 6 sd 31 111 ��:�_��
��:�_� 1 sd 12 11 ��:�_��
��:�_�� 4 sd 22 �� ��:�_�_�	
��:��|10 1 sl 00 12 ore:�
 ��:��
��:��_��_��|10 8 sd 33 �� ��:��_�� ore:�

��:��_��_��|10 16 sd 32 �� ore:�
��:��_��|10 8 sd 33 �� ore:�� ore:�

��:�_�_box 1 sd 13 121 ��:�_� ore:��
��:dye|5 2 sl 00 12 ore:� ore:��
��:��_��|10 8 sl 00 �� ore:�
 ��:�� ��:��
��:��|10 3 sd 21 11 ��:��|10
��:bed|10 1 sl 00 12 ��:bed ore:�

��:bed|10 1 sd 32 �� ��:��|10 ore:��
��:��|5 1 sd 33 �� ��:��|10 ore:��
��:�_� 4 sd 11 1 ��:�
��:�_pie 1 sl 00 123 ��:� ��:�� ore:egg
��:�|1 1 sd 33 �� ore:��
��:� 1 sd 22 �� ore:��
��:��|2 4 sd 22 �� ore:�
��:��|4 4 sd 22 �� ore:�
��:��|6 4 sd 22 �� ore:�
��:�� 1 sd 33 � ore:�� ore:�� ore:�� ore:��
��:��|6 1 sl 00 12 ore:� ��:��
��:��_��_��|6 8 sd 33 �� ��:��_�� ore:�
��:��_��_��|6 16 sd 32 �� ore:�
��:��_��|6 8 sd 33 �� ore:�� ore:�
��:dye|9 2 sl 00 12 ore:�� ore:��
��:dye|9 1 sl 00 1 ��:red_��|7
��:dye|9 2 sl 00 1 ��:��_��|5
��:��_��|6 8 sl 00 �� ore:� ��:�� ��:��
��:��|6 3 sd 21 11 ��:��|6
��:bed|6 1 sl 00 12 ��:bed ore:�
��:bed|6 1 sd 32 �� ��:��|6 ore:��
��:��|9 1 sd 33 �� ��:��|6 ore:��
��:�_��|2 2 sd 12 11 ��:�_��
��:�� 3 sd 31 111 ore:��
��:� 1 sd 33 �� ore:�� ��:��,��:��|1,��:��|2,��:��|3,��:��|4,��:��|5,��:��|6,��:��|7,��:��|8,��:��|9,��:��|10,��:��|11,��:��|12,��:��|13,��:��|14,��:��|15
��:��|1 1 sl 00 12 ore:� ��:��
��:��_��_��|1 8 sd 33 �� ��:��_�� ore:�
��:��_��_��|1 16 sd 32 �� ore:�
��:��_��|1 8 sd 33 �� ore:�� ore:�
��:dye|14 2 sl 00 12 ore:�� ore:��
��:dye|14 1 sl 00 1 ��:red_��|5
��:��_��|1 8 sl 00 �� ore:� ��:�� ��:��
��:��|1 3 sd 21 11 ��:��|1
��:bed|1 1 sl 00 12 ��:bed ore:�
��:bed|1 1 sd 32 �� ��:��|1 ore:��
��:��|14 1 sd 33 �� ��:��|1 ore:��
��:� 1 sd 33 � ore:�� ore:�� ��:�
��:��_�� 6 sd 31 111 ��:��
��:oak_�� 4 sd 33 �� ��:��
��:�� 4 sd 11 1 ��:log
��:� 1 sd 33 �� ore:�� ore:��
��:��_��_�� 1 sd 33 �� ��:��_��
��:��_��_�� 4 sd 33 �� ��:��_��
��:��_��|6 6 sd 31 111 ��:��_��
��:��_��_�� 6 sd 32 �� ��:��_��
��:��_�� 1 sd 22 �� ��:��
��:�_�� 1 sl 00 123 ��:�_� ��:red_� ��:�
��:��|1 1 sl 00 12 ��:�� ��:�
��:��_� |1 6 sd 32 �� ��:�!_��
��:�!_�� 1 sl 00 12 ore:�� ��:�
��:�� 1 sd 32 �� ore:��
��:��_� 1 sd 11 1 ��:��
��:��_�� 1 sd 33 �� ��:��
��:map 1 sd 33 �� ore:�� ��:�"
��:�#_�$ 1 sl 00 12 ��:�%_�� ore:��
��:�# 1 sd 22 �� ��:�#_�$
��:��|2 1 sl 00 12 ore:�& ��:��
��:��_��_��|2 8 sd 33 �� ��:��_�� ore:�&
��:��_��_��|2 16 sd 32 �� ore:�'
��:��_��|2 8 sd 33 �� ore:�� ore:�&
��:dye|13 2 sl 00 12 ore:�
 ore:�
��:dye|13 2 sl 00 1 ��:��_��|1
��:dye|13 3 sl 00 123 ore:� ore:�� ore:�
��:dye|13 4 sl 00 �( ore:� ore:�� ore:��
��:dye|13 1 sl 00 1 ��:red_��|2
��:��_��|2 8 sl 00 �� ore:�& ��:�� ��:��
��:��|2 3 sd 21 11 ��:��|2
��:bed|2 1 sl 00 12 ��:bed ore:�&
��:bed|2 1 sd 32 �� ��:��|2 ore:��
��:��|13 1 sd 33 �� ��:��|2 ore:��
��:lit_� 1 sd 12 12 ��:� ��:��
��:��|5 1 sl 00 12 ore:�) ��:��
��:��_��_��|5 8 sd 33 �� ��:��_�� ore:�)
��:��_��_��|5 16 sd 32 �� ore:�*
��:��_��|5 8 sd 33 �� ore:�� ore:�)
��:dye|10 2 sl 00 12 ore:�+ ore:��
��:��_��|5 8 sl 00 �� ore:�) ��:�� ��:��
��:��|5 3 sd 21 11 ��:��|5
��:bed|5 1 sl 00 12 ��:bed ore:�)
��:bed|5 1 sd 32 �� ��:��|5 ore:��
��:��|10 1 sd 33 �� ��:��|5 ore:��
��:�,_�-_��_�� 1 sd 21 11 ore:�.
��:��|8 1 sl 00 12 ore:�/ ��:��
��:��_��_��|8 8 sd 33 �� ��:��_�� ore:�/
��:��_��_��|8 16 sd 32 �� ore:�0
��:��_��|8 8 sd 33 �� ore:�� ore:�/
��:dye|7 1 sl 00 1 ��:red_��|6
��:dye|7 1 sl 00 1 ��:red_��|8
��:dye|7 3 sl 00 122 ore:�� ore:��
��:dye|7 2 sl 00 12 ore:�1 ore:��
��:dye|7 1 sl 00 1 ��:red_��|3
��:��_��|8 8 sl 00 �� ore:�/ ��:�� ��:��
��:��|8 3 sd 21 11 ��:��|8
��:bed|8 1 sl 00 12 ��:bed ore:�/
��:bed|8 1 sd 32 �� ��:��|8 ore:��
��:��|7 1 sd 33 �� ��:��|8 ore:��
��:��|3 1 sl 00 12 ore:�2 ��:��
��:��_��_��|3 8 sd 33 �� ��:��_�� ore:�2
��:��_��_��|3 16 sd 32 �� ore:�3
��:��_��|3 8 sd 33 �� ore:�� ore:�2
��:dye|12 2 sl 00 12 ore:� ore:��
��:dye|12 1 sl 00 1 ��:red_��|1
��:��_��|3 8 sl 00 �� ore:�2 ��:�� ��:��
��:��|3 3 sd 21 11 ��:��|3
��:bed|3 1 sl 00 12 ��:bed ore:�2
��:bed|3 1 sd 32 �� ��:��|3 ore:��
��:��|12 1 sd 33 �� ��:��|3 ore:��
��:�4 1 sd 12 12 ore:�� ore:��
��:�5_�6 1 sd 33 �7 ore:�5
��:�5_�8 1 sd 32 �9 ore:�5
��:�5_�: 1 sd 33 �; ore:�5
��:�5_�< 1 sd 32 �= ore:�5
��:�5 1 sd 22 �� ��:��_�>
��:�? 2 sd 33 �@ ore:�� ore:��
��:dye|4 9 sd 11 1 ��:�A_��
��:�A_�� 1 sd 33 �� ��:dye|4
��:�B 3 sd 33 �C ore:��
��:��_��|3 6 sd 31 111 ��:��|3
��:�D_�� 4 sd 33 �� ��:��|3
��:��|3 4 sd 11 1 ��:log|3
��:�D_��_�� 1 sd 32 �� ��:�� ��:��|3
��:�D_�� 3 sd 32 �� ��:��|3 ��:��
��:�D_�� 3 sd 23 �� ��:��|3
��:�D_�� 1 sd 32 �� ��:��|3
��:�E 1 sd 33 �� ore:�� ore:�F
��:�G_�H 1 sd 33 �� ore:�� ore:�5
��:�I_�� 1 sd 22 �� ore:��
��:�I_�� 1 sd 13 112 ore:�� ore:��
��:�I_�� 1 sd 13 122 ore:�� ore:��
��:�I_�� 1 sd 33 �� ore:�� ore:��
��:�I_�� 9 sd 11 1 ore:��
��:�I_�6 1 sd 33 �7 ore:��
��:�I_�J 1 sd 33 �� ��:�I_��
��:�I_�J 9 sd 11 1 ��:�I_��
��:�I_hoe 1 sd 23 �� ore:�� ore:��
��:�I_�8 1 sd 32 �9 ore:��
��:�I_�� 3 sd 23 �� ore:��
��:�I_�: 1 sd 33 �; ore:��
��:�I_�< 1 sd 32 �= ore:��
��:�I_�� 1 sd 33 �� ore:��
��:�I_�K 16 sd 32 �� ore:��
��:�I_axe 1 sd 23 �� ore:�� ore:��
��:�L_�� 1 sd 12 12 ��:�L ��:��
��:�L 1 sd 33 �M ore:�� ore:��
��:�N_�-_��_�� 1 sd 21 11 ore:��
��:hay_�� 1 sd 33 �� ��:��
��:��|13 1 sl 00 12 ore:�+ ��:��
��:��_��_��|13 8 sd 33 �� ��:��_�� ore:�+
��:��_��_��|13 16 sd 32 �� ore:�O
��:��_��|13 8 sd 33 �� ore:�� ore:�+
��:��_��|13 8 sl 00 �� ore:�+ ��:�� ��:��
��:��|13 3 sd 21 11 ��:��|13
��:bed|13 1 sl 00 12 ��:bed ore:�+
��:bed|13 1 sd 32 �� ��:��|13 ore:��
��:��|2 1 sd 33 �� ��:��|13 ore:��
��:��|7 1 sl 00 12 ore:�1 ��:��
��:��_��_��|7 8 sd 33 �� ��:��_�� ore:�1
��:��_��_��|7 16 sd 32 �� ore:�P
��:��_��|7 8 sd 33 �� ore:�� ore:�1
��:dye|8 2 sl 00 12 ore:�� ore:��
��:��_��|7 8 sl 00 �� ore:�1 ��:�� ��:��
��:��|7 3 sd 21 11 ��:��|7
��:bed|7 1 sl 00 12 ��:bed ore:�1
��:bed|7 1 sd 32 �� ��:��|7 ore:��
��:��|8 1 sd 33 �� ��:��|7 ore:��
��:��|1 1 sl 00 12 ore:� ��:�
��:�Q_�� 1 sd 13 112 ore:�. ore:��
��:�Q_�� 1 sd 13 122 ore:�. ore:��
��:�Q_�� 6 sd 33 �R ore:�. ore:�� ore:��
��:�Q_�� 1 sd 33 �� ore:�. ore:��
��:�Q_�6 1 sd 33 �7 ore:�.
��:�Q_hoe 1 sd 23 �� ore:�. ore:��
��:�Q_�8 1 sd 32 �9 ore:�.
��:�Q_�: 1 sd 33 �; ore:�.
��:�Q_�� 1 sd 33 �� ��:��_�� ��:��
��:�Q_�< 1 sd 32 �= ore:�.
��:�Q_axe 1 sd 23 �� ore:�. ore:��
��:�Q_�S 1 sd 33 �� ore:�. ��:�S
��:��_�� 9 sd 11 1 ore:�.
��:��_�J 1 sd 33 �� ��:��_��
��:��_�J 9 sd 11 1 ��:��_��
��:��_�� 1 sd 33 �� ore:�.
��:�� 1 sd 22 �� ore:��
��:��_�� 16 sd 32 �� ��:��
��:��_�T 3 sd 32 �U ore:��
��:�V_�� 1 sd 12 12 ��:�V ��:��
��:�V 1 sd 33 �W ore:��
��:��_pot 1 sd 32 �U ��:��
��:�X_and_�Y 1 sl 00 12 ore:�� ��:�X
��:�Z_rod 1 sd 33 �[ ore:�� ore:��
��:�\_�] 3 sl 00 123 ore:�� ��:�%_�� ��:��,��:��|1
��:�^_�__eye 1 sl 00 123 ��:�__eye ��:�_� ��:��
��:��_�� 1 sd 32 �� ��:�� ��:��
��:�� 3 sd 32 �� ��:�� ��:��
��:�`_eye 1 sl 00 12 ore:�a ��:�%_��
��:�`_�� 1 sd 33 �� ��:�b ��:�`_eye
��:end_rod 4 sd 12 12 ��:�%_rod ��:�_�_�	
��:end_�c 1 sd 33 �d ore:�� ��:�`_eye ��:�e_�f
��:end_�g 4 sd 22 �� ��:end_��
��:�h_�i 1 sd 33 �j ��:�� ore:�F ��:�b
��:�k_�� 1 sd 33 �� ore:�l
��:�k 9 sd 11 1 ��:�k_��
��:�m 1 sd 33 �n ore:�� ore:��
��:�o 1 sd 33 �d ore:�� ��:bow ore:��
��:��|3 2 sd 22 �� ore:�� ��:�
��:�p_�� 1 sd 13 112 ore:�F ore:��
��:�p_�� 1 sd 13 122 ore:�F ore:��
��:�p_�� 1 sd 33 �� ore:�F ore:��
��:�p_�6 1 sd 33 �7 ore:�F
��:�p_hoe 1 sd 23 �� ore:�F ore:��
��:�p_�8 1 sd 32 �9 ore:�F
��:�p_�: 1 sd 33 �; ore:�F
��:�p_�< 1 sd 32 �= ore:�F
��:�p_�� 1 sd 33 �� ore:�F
��:�p_axe 1 sd 23 �� ore:�F ore:��
��:�p 9 sd 11 1 ��:�p_��
��:�q_�� 6 sd 33 �R ore:�� ��:��_��_�� ore:��
��:�r_�q 1 sd 33 �s ore:�� ��:� ��:��_��,��:��_��|1,��:��_��|2,��:��_��|3,��:��_��|4,��:��_��|5
��:�|2 1 sd 33 �� ore:�� ore:��
��:��_��|5 6 sd 31 111 ��:��|5
��:�t_oak_�� 4 sd 33 �� ��:��|5
��:��|5 4 sd 11 1 ��:�u|1
��:�t_oak_��_�� 1 sd 32 �� ��:�� ��:��|5
��:�t_oak_�� 3 sd 32 �� ��:��|5 ��:��
��:�t_oak_�� 3 sd 23 �� ��:��|5
��:�t_oak_�� 1 sd 32 �� ��:��|5
��:��|9 1 sl 00 12 ore:�v ��:��
��:��_��_��|9 8 sd 33 �� ��:��_�� ore:�v
��:��_��_��|9 16 sd 32 �� ore:�w
��:��_��|9 8 sd 33 �� ore:�� ore:�v
��:dye|6 2 sl 00 12 ore:� ore:�+
��:��_��|9 8 sl 00 �� ore:�v ��:�� ��:��
��:��|9 3 sd 21 11 ��:��|9
��:bed|9 1 sl 00 12 ��:bed ore:�v
��:bed|9 1 sd 32 �� ��:��|9 ore:��
��:��|6 1 sd 33 �� ��:��|9 ore:��
��:�x_�i 1 sd 22 �� ore:��
��:�y 8 sd 31 121 ��:�� ��:dye|3
��:�" 1 sd 33 �� ore:�� ore:��
��:�z 1 sd 33 �{ ��:��_�� ��:� ore:��
��:��_�  6 sd 32 �� ��:��
��:��_��|3 6 sd 31 111 ��:��
��:�||1 4 sd 22 �� ��:�| ��:��
��:��_�� 1 sd 33 �� ��:��
��:�� 9 sd 11 1 ��:��_��
��:�} 1 sd 33 �� ore:�. ore:��
��:�� 1 sd 22 �� ��:��_��
��:��|3 1 sd 12 11 ��:��_��|5
��:��|1 1 sd 12 11 ��:��_��|1
��:red_��|1 1 sd 12 11 ��:��_��
��:�_��|1 1 sd 12 11 ��:��_��|7
��:��_�� 1 sd 12 12 ore:�� ��:��
��:�� 1 sd 33 �W ore:��
��:�~ 1 sd 33 � ore:��
��:��_on_a_�� 1 sd 22 �� ��:�Z_rod ��:��
��:�� 1 sd 33 �� ��:��_�� ��:�� ore:egg ��:��
��:�� 1 sd 32 �U ore:��
��:��|12 1 sl 00 12 ore:�� ��:��
��:��_��_��|12 8 sd 33 �� ��:��_�� ore:��
��:��_��_��|12 16 sd 32 �� ore:��
��:��_��|12 8 sd 33 �� ore:�� ore:��
��:��_��|12 8 sl 00 �� ore:�� ��:�� ��:��
��:��|12 3 sd 21 11 ��:��|12
��:bed|12 1 sl 00 12 ��:bed ore:��
��:bed|12 1 sd 32 �� ��:��|12 ore:��
��:��|3 1 sd 33 �� ��:��|12 ore:��
��:��_�� 4 sd 33 �� ��:��_��
��:��_��|4 6 sd 31 111 ��:��_��
��:��_�� 1 sd 22 �� ��:��
��:��_�� 1 sd 32 �� ��:�%_rod ore:��
��:�� 1 sd 31 111 ��:��
��:� 4 sd 32 �U ore:��
��:bow 1 sd 33 �� ore:�� ore:��
��:�� 1 sd 33 �� ore:�� ��:��
��:�� 1 sl 00 �� ore:�� ore:�5
��:dye|15 3 sl 00 1 ore:��
��:dye|15 9 sl 00 1 ��:��_��
��:��_�� 1 sd 33 �� ��:dye|15
��:�� 1 sd 32 �� ��:��
��:��|11 1 sl 00 12 ore:� ��:��
��:��_��_��|11 8 sd 33 �� ��:��_�� ore:�
��:��_��_��|11 16 sd 32 �� ore:��
��:��_��|11 8 sd 33 �� ore:�� ore:�
��:��_��|11 8 sl 00 �� ore:� ��:�� ��:��
��:��|11 3 sd 21 11 ��:��|11
��:bed|11 1 sl 00 12 ��:bed ore:�
��:bed|11 1 sd 32 �� ��:��|11 ore:��
��:��|4 1 sd 33 �� ��:��|11 ore:��
��:�%_�� 2 sl 00 1 ��:�%_rod
��:��|15 1 sl 00 12 ore:�� ��:��
��:��_��_��|15 8 sd 33 �� ��:��_�� ore:��
��:��_��_��|15 16 sd 32 �� ore:��
��:��_��|15 8 sd 33 �� ore:�� ore:��
��:��_��|15 8 sl 00 �� ore:�� ��:�� ��:��
��:��|15 3 sd 21 11 ��:��|15
��:bed|15 1 sl 00 12 ��:bed ore:��
��:bed|15 1 sd 32 �� ��:��|15 ore:��
��:�� 1 sd 33 �� ��:��|15 ore:��
��:��_��|2 6 sd 31 111 ��:��|2
��:��_�� 4 sd 33 �� ��:��|2
��:��|2 4 sd 11 1 ��:log|2
��:��_��_�� 1 sd 32 �� ��:�� ��:��|2
��:��_�� 3 sd 32 �� ��:��|2 ��:��
��:��_�� 3 sd 23 �� ��:��|2
��:��_�� 1 sd 32 �� ��:��|2
��:��_�� 1 sd 33 �� ��:�� ��:�
��:�� 1 sd 33 �� ore:�� ore:�� ��:�b
��:�� 4 sd 13 123 ��:�X ore:�� ore:��
��:��_�� 1 sd 33 �� ore:�� ��:��_��
��:�� 1 sd 33 �� ��:�I_�� ore:��
��:��|5 2 sl 00 12 ore:� ore:��
��:��_�� 6 sd 33 �� ore:�� ore:�� ��:��_��
��:��_��|4 6 sd 31 111 ��:��|4
��:��_�� 4 sd 33 �� ��:��|4
��:��|4 4 sd 11 1 ��:�u
��:��_��_�� 1 sd 32 �� ��:�� ��:��|4
��:��_�� 3 sd 32 �� ��:��|4 ��:��
��:��_�� 3 sd 23 �� ��:��|4
��:��_�� 1 sd 32 �� ��:��|4
��:�� 1 sl 00 �� ore:�� ore:�� ��:��|* ore:�� ore:�� ore:�� ��:�`_��|* ore:��
��:��|�� 1 sd 33 �� ��:��|* ��:�|*
��:��|1 1 sd 13 123 ore:�� ore:�� ore:�F
��:��|2 1 sd 33 �� ��:��|1
��:��|1 9 sl 00 1 ��:��|2
��:�� 1 sd 33 �� ore:�. ��:��|1
��:�� 1 sd 33 �� ore:�. ��:��|1
��:�� 1 sl 00 12 ��:��|* ��:�|*
��:�� 4 sl 00 1 ��:��|1
��:��|2 5 sd 22 �� ore:�� ore:��
��:�� 1 sd 33 �� ore:�� ore:�� ore:��
��:�� 1 sd 33 �� ore:�� ore:�� ��:��|*
��:�� 1 sd 33 �� ore:�� ore:�� ore:��
��:�� 1 sd 32 �� ore:�. ��:��|* ��:�b|*
��:�� 3 sd 32 �� ore:�� ��:��|2 ��:��
��:��|1 3 sd 32 �� ��:��|3 ��:��|2 ��:��
��:��|2 1 sd 33 �d ��:��|3 ��:�� ore:�.
��:��|3 1 sd 33 �� ��:��|3 ��:��|1 ��:��
��:��|4 1 sd 33 �� ��:��|3 ��:��|1 ��:��
��:��|5 1 sd 33 �� ��:��|3 ��:�� ��:��|1 ��:��_��_��|*
��:��|7 1 sd 32 �� ��:��|1 ��:��|2 ��:��
��:��|8 1 sd 33 �� ��:��|3 ��:�`_��|* ��:��_��|* ��:��|1 ��:��|2
��:�� 1 sd 33 �� ore:�� ore:�� ��:��_��|*
��:�� 1 sd 33 �� ��:��
��:�� 9 sl 00 1 ��:��
��:��|1 1 sd 33 �� ��:��
��:�� 9 sl 00 1 ��:��|1
��:��|2 1 sd 33 �� ��:��|1
��:��|1 9 sl 00 1 ��:��|2
��:��|3 1 sd 33 �� ��:��|2
��:��|2 9 sl 00 1 ��:��|3
��:��|4 1 sd 33 �� ��:��|3
��:��|3 9 sl 00 1 ��:��|4
��:��|5 1 sd 33 �� ��:��|4
��:��|4 9 sl 00 1 ��:��|5
��:��|6 1 sd 33 �� ��:��|5
��:��|5 9 sl 00 1 ��:��|6
��:��|7 1 sd 33 �� ��:��|6
��:��|6 9 sl 00 1 ��:��|7
��:�� 1 sd 33 �� ��:�|
��:�| 9 sl 00 1 ��:��
��:��|1 1 sd 33 �� ��:��
��:�� 9 sl 00 1 ��:��|1
��:��|2 1 sd 33 �� ��:��|1
��:��|1 9 sl 00 1 ��:��|2
��:��|3 1 sd 33 �� ��:��|2
��:��|2 9 sl 00 1 ��:��|3
��:�� 1 sd 33 �� ��:��
��:�� 9 sl 00 1 ��:��
��:��|1 1 sd 33 �� ��:��
��:�� 9 sl 00 1 ��:��|1
��:�� 1 sd 33 �� ��:��
��:�� 9 sl 00 1 ��:��
��:��|1 1 sd 33 �� ��:��
��:�� 9 sl 00 1 ��:��|1
��:�� 1 sd 33 �� ��:��
��:�� 9 sl 00 1 ��:��
��:��|1 1 sd 33 �� ��:��
��:�� 9 sl 00 1 ��:��|1
��:��|2 1 sd 33 �� ��:��|1
��:��|1 9 sl 00 1 ��:��|2
��:��|3 1 sd 33 �� ��:��|2
��:��|2 9 sl 00 1 ��:��|3
��:��|4 1 sd 33 �� ��:��|3
��:��|3 9 sl 00 1 ��:��|4
��:��|5 1 sd 33 �� ��:��|4
��:��|4 9 sl 00 1 ��:��|5
��:�� 1 sd 33 �� ore:�� ore:��
��:�� 8 sl 00 12 ��:�`_��|* ��:��|*
��:�� 4 sd 33 �W ore:��
��:�� 16 sd 12 11 ore:��
��:�L 1 sd 33 �� ore:�� ore:��
��:��_�� 1 sd 33 �� ore:�� ore:��
��:��_�� 1 sd 33 �� ore:�� ore:��
��:��_�I 1 sd 33 �� ore:�� ore:��
��:��_�� 1 sd 33 �� ore:�. ore:��
��:��_�p 1 sd 33 �� ore:�F ore:��
��:�� 1 sd 33 �� ore:�� ore:�� ore:�� ��:��
��:��|250 1 sl 00 �� ore:�F ore:��
��:�� 1 sd 32 �� ��:��|3 ��:�� ��:��
��:�� 4 sl 00 �� ore:�� ore:��
��:��|1 4 sl 00 �� ��:��
��:��|2 4 sd 22 �� ��:��|*
��:��|4 4 sl 00 �� ore:�� ore:��
��:��|5 4 sl 00 �� ��:��|2 ��:��
��:�� 1 sl 00 �� ��:��|* ore:��
��:��|1 1 sd 33 �� ��:��_��|* ore:��
��:��|2 1 sl 00 123 ��:�`_��|* ore:�� ��:��
��:��|5 1 sd 33 �� ��:��|3 ore:�F
��:��|5 9 sd 33 �� ��:��|3 ore:��
��:��|6 1 sl 00 123 ��:��|9 ore:�. ore:��
��:��|7 1 sl 00 123 ��:��|9 ore:�. ��:�p|*
��:��|8 1 sl 00 12 ��:��|9 ��:�Q_��
��:��|1 1 sd 33 �� ��:��|11
��:��|11 9 sl 00 1 ��:��|1
��:�� 1 sd 33 �� ��:��|12
��:��|12 9 sl 00 1 ��:��
��:��|15 1 sd 33 �� ��:�� ��:��|12 ��:��|6
��:��|16 1 sd 33 �� ��:��|10 ��:��|17 ��:��|15
��:��|2 1 sd 33 �� ��:��|17
��:��|17 9 sl 00 1 ��:��|2
��:��|1 1 sl 00 12 ��:�� ��:��|10
��:�� 1 sl 00 121 ore:�� ��:��|*
��:��|1 1 sl 00 121 ��:��|* ��:��|*
��:��|2 1 sl 00 123 ore:�
 ��:��|* ore:�
��:��|3 1 sl 00 121 ��:�5|* ��:��|*
��:��|4 1 sl 00 121 ore:�� ��:��|*
��:��|5 1 sl 00 123 ��:�� ��:��|* ��:��|1
��:�� 1 sd 23 �� ��:�� ore:��
��:�� 1 sd 33 �� ore:�. ore:�� ��:��|1
��:��|1 4 sd 22 �� ��:��
��:��|2 4 sd 22 �� ��:��|1
��:��|3 2 sl 00 121 ��:�� ore:��
��:��|4 2 sl 00 121 ��:�� ore:��
��:�� 8 sd 33 �� ore:�� ��:��|5
��:��|1 1 sl 00 12 ��:�� ��:��_��|*
��:��|2 8 sd 33 �� ��:�� ��:��|5
��:��|3 8 sd 33 �� ��:��|3 ��:��|5
��:�� 64 sd 33 �� ��:��_�� ore:�� ore:��
��:�� 1 sd 33 �d ��:��|3 ��:�`_��|* ��:��
��:�� 1 sd 33 �� ore:�� ore:�� ore:��
��:�� 1 sd 32 �� ��:��|1
��:�� 1 sl 00 123 ��:��|*,��:��_��|*,��:��_��|* ore:�. ��:�b|*
��:�� 1 sl 00 �� ��:��|* ��:��|* ��:��_�T|* ore:��
��:�� 1 sd 33 �� ore:�� ore:�� ore:��
��:�� 1 sd 33 �� ore:�� ore:�� ore:��
��:�� 4 sd 32 �� ore:�� ��:�� ore:�� ore:��
��:��|1 4 sd 32 �� ore:�� ��:�� ore:�� ��:��
��:��|5 4 sl 00 123 ��:�� ��:�� ore:��
��:��|2 4 sd 32 �� ore:�� ��:�� ore:�� ��:��|*
��:��|3 2 sd 33 �� ��:�`_��|* ��:�� ore:�l
��:��|4 2 sd 33 �� ��:�`_��|* ��:��|2 ore:�F
��:��|6 1 sd 32 �� ore:�� ��:�� ore:�. ��:��_��|*
��:�� 1 sd 33 �� ��:��|3 ��:�� ��:��
��:�� 1 sd 33 �� ore:�� ��:��|2 ��:��
��:�� 1 sl 00 123 ��:�m|* ��:�� ��:�x_�i|*
��:�� 1 sl 00 123 ��:�m|* ore:�� ��:�__eye|*
��:�� 1 sl 00 123 ��:�m|* ��:�� ��:�I_��|*
��:�� 1 sl 00 123 ��:�m|* ��:�� ��:�4|*
��:�� 1 sl 00 122 ��:��_�T|* ��:�`_��|*
��:�� 1 sd 33 �� ore:�� ��:��_��|3,��:��_�� ��:�|*
��:��|1 1 sd 33 �� ore:�� ��:�N_�-_��_��|* ��:�~|*
��:��|2 1 sd 33 �� ore:�F ��:�,_�-_��_��|* ��:��|1
��:��|3 1 sd 33 �� ore:�� ��:�� ��:��|2
��:�� 1 sl 00 1 ��:��
��:��|1 1 sl 00 1 ��:��|1
��:��|2 1 sl 00 1 ��:��|2
��:��|3 1 sl 00 1 ��:��|3
��:��|4 1 sl 00 1 ��:��|4
��:�� 4 sd 33 �� ore:�� ore:�� ore:��
��:��|1 1 sd 33 �W ��:��
��:�� 4 sd 12 12 ��:�� ��:��|3
��:�  1 sd 33 �� ��:��|3 ore:�� ��:��
��:� 1 sd 33 � ��:end_��|* ��:end_rod|* ��:�p_��|* ��:��|3
��:� 1 sd 33 �� ��:end_��|* ��:��|3 ore:�_��_�
��:�_�� 4 sd 33 � ��:��_��|* ��:�� ��:log
��:�_�� 4 sd 33 � ��:��_��|* ore:�� ore:�
��:�_�I 4 sd 33 � ��:�I_��|* ore:�� ore:�	
��:�_�� 4 sd 33 � ��:�Q_��|* ore:�. ore:�

��:�_�p 4 sd 33 � ��:�p_��|* ore:�F ore:�
��:� 1 sd 33 � ore:�� ��:��|2 ��:��|* ��:�z|*
��:� 1 sd 33 �� ��:��|* ��:��|*
��:� 9 sl 00 1 ��:��|*
��:�� 1 sd 33 �� ��:�
��:� 1 sl 00 12 ��:�|1 ��:�|2
��:�� 8 sd 33 �� ��:�S|* ��:��|1
��:� 1 sd 33 � ore:�� ��:��_��|* ore:��
��:� 1 sd 33 �� ��:dye|13,��:��|3,��:dye|5 ore:�� ore:��
��:�|9 1 sd 33 � ore:�� ore:�F ore:�� ��:��
��:� 1 sd 32 �� ��:�`_��|* ��:�|9 ore:�� ��:�z|*
��:�|1 1 sd 33 � ��:end_rod|* ore:�� ore:��
��:�|4 1 sl 00 122 ��:�|9 ��:�_��|*
��:�|5 1 sl 00 122 ��:�|9 ��:��|*
��:�|2 1 sl 00 122 ��:�|9 ��:�_��|*
��:�|3 1 sl 00 122 ��:�|9 ore:��
��:�|7 1 sl 00 122 ��:�|9 ��:��|*
��:�|8 1 sl 00 122 ��:�|9 ��:�h_�i|*
��:�|6 1 sl 00 122 ��:�|9 ��:�|*
��:� 1 sl 00 123 ore:�� ��:�� ore:��
��:� 1 sd 33 �� ��:��|4 ��:�I_��
��:�|1 1 sd 33 �� ��:� ��:�I_�� ��:��_��
��:�|2 1 sd 33 �� ��:�|1 ��:��_�� ��:�p_��
��:�|3 1 sd 33 �� ��:�|2 ��:�p_�� ��:�k_��
��:�|4 1 sd 33 �� ��:�|3 ��:�k_�� ��:�_��
��:�|5 1 sd 33 �� ��:�|4 ��:�_�� ��:�_�T
��:�|6 1 sd 33 �� ��:�|5 ��:�_�T ��:�
��:�|7 1 sd 33 �� ��:�|6 ��:� ��:��_��
��:�|8 1 sd 33 �� ��:�|7 ��:��_�� ��:�I_�J
��:� 1 sd 13 112 ��:�|8 ��:��|*
��:� 8 sd 13 102 ��:��|* ��:��
��:�|1 8 sd 13 102 ��:��|* ��:��|2
��:�  1 sl 00 123 ��:�x_�i|* ore:�� ��:�4|*
��:�! 1 sd 33 �" ��:�|8 ore:�� ore:��
��:�# 1 sd 23 �� ��:�|8 ��:��|*
��:�$ 1 sd 33 �� ore:�� ��:�`_��|* ��:��
��:�% 1 sd 33 �� ��:��|17 ore:�� ��:�� ��:��
��:�%|1 1 sd 33 �� ��:��|17 ore:� ��:�� ��:��
��:�%|2 1 sd 33 �� ��:��|17 ore:�� ��:�� ��:��
��:�%|3 1 sd 33 �� ��:��|17 ore:�� ��:�� ��:��
��:�%|4 1 sd 33 �� ��:��|17 ore:�O ��:�� ��:��
��:�%|5 1 sd 33 �� ��:��|17 ore:�w ��:�� ��:��
��:�%|6 1 sd 33 �� ��:��|17 ore:�� ��:�� ��:��
��:�%|7 1 sd 33 �� ��:��|17 ore:�� ��:�� ��:��
��:�&_�� 4 sl 00 1 ��:�&_log
��:�&_��|1 4 sl 00 1 ��:�&_log|1
�':�(_�) 1 sd 33 �� ��:�b �':�(_�*
�':�(_�* 2 sd 33 �� ore:�� ore:�+
�':�(_�, 1 sd 33 �� ore:�� ��:�b �':�(_�*
�':�(_�,|1 1 sd 33 �� ore:�� ��:�I_�J �':�(_�*
�':�(_�,|2 1 sd 33 �� ore:�� ��:��_�J �':�(_�*
�':�(_�,|4 1 sd 33 �� ore:�� ��:�k �':�(_�*
�':�(_�,|3 1 sd 33 �� ore:�� ��:�p �':�(_�*
�':�(_�-|1 1 sd 33 �. ��:�z ore:�� �':�(_�* ��:��
�':�(_�- 1 sd 33 �. ��:��_�� ore:�� �':�(_�* ��:��
�':�(_��|2 1 sd 33 �� ore:�� �':�(_�* ��:��
�':�(_��|1 1 sd 33 �� ��:�� ore:�� �':�(_�*
�':�(_�� 1 sd 33 �� ��:�� ore:�� �':�(_�*
�':�(_one_�/ 1 sd 33 �� ore:�� ��:�X �':�(_�*
�':�(_�0 1 sd 33 �� ��:dye|4 ore:�� �':�(_�*
�':�1 1 sd 32 �� ore:�� ��:��
�':�2_key 1 sl 00 12 �':�3_key ��:��_��
�':�4_key 1 sl 00 12 �':�3_key ��:�5_tag
�':�3_key 1 sd 23 �6 ore:�� ore:�. �':�(_�*
�':�7_key 1 sl 00 12 �':�3_key ��:�`_eye
�':�8|3 1 sl 00 12 �':�2_key ��:��_��
�':�8|2 1 sl 00 12 �':�4_key ��:��_��
�':�8 1 sl 00 12 �':�3_key ��:��_��
�':�8|1 1 sl 00 12 �':�7_key ��:��_��
�':�9 1 sd 32 �9 ore:�:
�':�; 4 sd 33 �� ore:�� ore:��
�':�<|4 4 sd 33 �� ore:�� ore:�� ore:�=
�':�<|3 2 sd 33 �� ore:�� ore:�� ore:�=
�':�<|2 4 sd 33 �� ore:�� ore:�� ore:��
�':�<|1 2 sd 33 �� ore:�� ore:�� ore:��
�':�< 1 sd 33 �> ore:�� ore:��
�':�? 1 sd 33 �@ ��:�� ��:�z ore:�+ ore:�.
�':�A 1 sd 33 �@ ��:�� ��:�z ore:�+ ore:�F
�':�B 1 sd 33 �@ ��:�� ��:�� ore:�+ ore:��
�':�C 4 sd 33 �� ore:�� ��:��
�':�C|1 4 sd 33 �� ore:�� ��:��|1
�':�C|2 4 sd 33 �� ore:�� ��:��|2
�':�C|3 4 sd 33 �� ore:�� ��:��|3
�':�C|4 4 sd 33 �� ore:�� ��:��|4
�':�C|5 4 sd 33 �� ore:�� ��:��|5
]==],['craftmgr.lua']= [==[�D �E, �F = �G(�H, �I.�J, '�F')
if not �E �K
	�L('Can\'t �M �F �N.')
	�O
end

�D �P = �H('lib.�P')
�D �Q = �H('lib.�Q')
�D �R = �H('lib.�R')
�D �S = �H('lib.�S')
�D �T = �H('lib.�T')

�D �x = �H('lib.�U.�x')
�D �G = �H('lib.�U.�G')

-----------------------
-- �V �W �X
-----------------------
�D �V = {['�Y'] = '', ['�Z'] = nil}

�[ �V.new()
	�D o = {}
	�\(o, �V)
	�V.__�] = �V
	o.�Y = ''
	o.�Z = nil
	�O o
end
-----------------------
-- �V �W end
-----------------------

�D �^ = �_
�D �` = {}
�D �a = �b

�D �[ �c(�d)
	�L('�e �f!')
	�L(�d.�Y)
end

�D �g = {}

�g.�h = �V.new()
�g.�h.�Y = '�h'
�g.�h.�Z = �[(�d)
	if �d ~= nil �K
		if �g[�d] ~= nil �K
			�L(�g[�d].�Y)
			�O
		�i
			�L('No �j �d.')
		end
	end
	�D �k = {}
	for k, v in �l(�g) do
		�i.�m(�k, v.�Y)
	end
	�i.�n(�k)
	�D �o = ''
	for k, v in �p(�k) do
		�o = �o .. v .. '\n'
	end
	�P.�q(�o)
end

�g.�r = �V.new()
�g.�r.�Y = '�r'
�g.�r.�Z = �[()
	if �a �K
		io.�s:�t('�u has �v �w. �x you �y to �z all �{ �|? [y/n/C]')
		�D �} = io.�~:�('*l')
		if ��.��(�}) == 'y' �K
			�g.�z.�Z()
			�^ = �b
		�� ��.��(�}) == 'n' �K
			�^ = �b
		end
	�i
		�^ = �b
	end
end

�g.�� = �V.new()
�g.��.�Y = '��'
�g.��.�Z = �[()
	�Q.�M()
	�L('�� �� ��.')
end

�g.�� = �V.new()
�g.��.�Y = '��'
�g.��.�Z = �[()
	�T.��()
	�L('�� ��.')
end

�g.�z = �V.new()
�g.�z.�Y = '�z'
�g.�z.�Z = �[()
	�Q.�z()
	�L('�� �� ��.')
end

�g.�� = �V.new()
�g.��.�Y = '�� <�x> <��/��> [��]'
�g.��.�Z = �[(��, ...)
	if �� == nil �K
		�g.�h.�Z('��')
		�O
	end

	�D �� = {}
	��.�x = �[(��, ��)
		if �� == nil �K
			�g.�h.�Z('��')
			�O
		�� (�� ~= '��') and (�� ~= '��') �K
			�g.�h.�Z('��')
			�O
		end
		�D �� = (�� == '��') and �_ or �b
		
		-- �� �� �`
		if �T.��(8) ~= nil �K
			�T.��(8)
			if not �T.��() �K
				�L('�� ��.')
				�O
			end
		end
		
		-- �� ��
		�D �� = {1, 2, 3, 5, 6, 7, 9, 10, 11}
		�D �� = {}
		for k, v in �p(��) do
			�D �� = �T.��(v)
			if �� ~= nil �K
				��[k] = ~��
				if �� == �_ �K
					��[k]:��()
				�� �� == nil �K
					if ��[k].�� == 0 �K
						��[k]:��()
					end
				end
			end
		end
		
		�D �� = {}
		�D w, h, ox, oy
		if �� �K
			-- �� ��
			w, h, ox, oy = 3, 3, 0, 0
			�D �[ r(n)
				�D d = �b
				for i = (n-1)*3+1, n*3 do
					d = d or (��[i] ~= nil)
				end
				�O d
			end
			�D �[ c(n)
				�D d = �b
				for i = 0, 2 do
					d = d or (��[(i*3)+n] ~= nil)
				end
				�O d
			end
			
			if c(1) and c(3) �K
				w, ox = 3, 0
			�� (c(1) and c(2)) or (c(2) and c(3)) �K
				w, ox = 2, c(1) and 1 or 2
			�� c(1) or c(2) or c(3) �K
				w, ox = 1, c(1) and 1 or (c(2) and 2 or 3)
			�i
				w, ox = 0, 0
			end
			
			if r(1) and r(3) �K
				h, oy = 3, 0
			�� (r(1) and r(2)) or (r(2) and r(3)) �K
				h, oy = 2, r(1) and 1 or 2
			�� r(1) or r(2) or r(3) �K
				h, oy = 1, r(1) and 1 or (r(2) and 2 or 3)
			�i
				h, oy = 0, 0
			end
			
			�D �[ xy(x, y, w, h)
				�O x + y * w
			end
			for y = 1, h do
				for x = 1, w do
					��[xy(x-1, y-1, w, h)+1] = ��[xy(x+ox-2, y+oy-2, 3, 3)+2]
				end
			end
		�i
			w, h = 0, 0
			for k, v in �l(��) do
				��[#��+1] = v
			end
		end
		
		-- �� �G
		if not ��.�x.��(1) �K
			�L('Can\'t ��!')
			�O
		end
		�D �� = �T.��(8)
		
		-- Put �x in �`
		�` = �x.new({�� = w, �� = h}, ��, ��, ��)
		�L('Put �x in �`.')
	end
	
	if ��[��.��(��)] == nil �K
		�g.�h.�Z('��')
		�O
	�i
		��[��.��(��)](...)
	end
	
	�T.��()
end

�g.�� = �V.new()
�g.��.�Y = '��/see/��/�� <�`/�G>'
�g.��.�Z = �[(it)
	if it == nil �K
		�g.�h.�Z('��')
		�O
	end
	
	�D sit
	if it == '�`' �K
		sit = �`
	�i
		sit = �Q.��(~�G.new(it))
	end
	
	�D �� = {}
	��.�x = �[(ii)
		�L(ii)
	end
	
	if sit == nil �K
		�L('�� to ��.')
		�O
	�� ��(sit) == �x �K
		��.�x(sit)
	end
end

�g.see = �g.��
�g.�� = �g.��
�g.�� = �g.��

�g.�� = �V.new()
�g.��.�Y = '�� <�`/�G>'
�g.��.�Z = �[(it)
	if it == nil �K
		�g.�h.�Z('��')
		�O
	�� it == '�`' �K
		if �` == nil �K
			�L('�� to ��.')
			�O
		�i
			�Q.��(�`)
			if ��(�`) == �x �K
				�a = �_
				�L('�� ��.')
			end
		end
	�i
		�Q.��(~�G.new(it))
		�a = �_
		�L('�� �� to raw.')
	end
end

�g.�� = �V.new()
�g.��.�Y = '��'
�g.��.�Z = �[()
	�` = nil
	�L('�� ��.')
end

�g.�� = �V.new()
�g.��.�Y = '�� <�G>'
�g.��.�Z = �[(it)
	if it == nil �K
		�g.�h.�Z('��')
		�O
	end

	�D �� = �Q.��(�G.new(it))
	if ��(��) == �x �K
		�a = �_
		�L('�� �x.')
	�� ��(��) == �G �K
		�a = �_
		�L('Raw ��.')
	�i
		�L('�� ��.')
	end
end

�g.�� = �V.new()
�g.��.�Y = '�� <raw/�x>'
�g.��.�Z = �[(��)
	�D �o = ''
	if �� == 'raw' �K
		�o = '�� of raw:\n'
		for k, v in �p(�R.db) do
			�o = �o .. ��(v) .. '\n'
		end
	�� �� == '�x' �K
		�o = '�� of �x:\n'
		for k, v in �S.��() do
			�o = �o .. ��(~k) .. '\n'
		end
	�i
		�g.�h.�Z('��')
		�O
	end
	�P.�q(�o)
end

�g.�� = �V.new()
�g.��.�Y = '�� <�`>'
�g.��.�Z = �[(sl)
	�T.��(��(sl))
end

�g.�� = �V.new()
�g.��.�Y = '�� <�G>'
�g.��.�Z = �[(it)
	�D sit
	if it ~= nil �K
		sit = �G.new(it)
	�i
		�g.�h.�Z('��')
		�O
	end
	
	if �Q.��(sit) ~= nil �K
		if ��(�Q.��(sit)) ~= �G �K
			�D �o
			if ��(�Q.��(sit)) == �x �K
				�o = '��: ' .. ��(�Q.��(sit).��) .. '\n'
			end
			�D ��, �� = �Q.��(sit)
			for k, v in �p(��) do
				�o = �o .. ��(v) .. '\n'
			end
			�P.�q(�o)
		�i
			�L('It\'s an �G')
		end
	�i
		�L('Can\'t ��.')
	end
end

�g.�� = �V.new()
�g.��.�Y = '�� <�G>'
�g.��.�Z = �[(it)
	�D sit
	if it ~= nil �K
		sit = �G.new(it)
	�i
		�g.�h.�Z('��')
		�O
	end
	
	if �Q.��(sit) �K
		if �Q.��(sit) �K
			�L('�� ��.')
		�i
			�L('�� ��.')
		end
	�i
		�L('Not �� �� to ��.')
	end
end

�g.�� = �V.new()
�g.��.�Y = '��'
�g.��.�Z = �[(...)
	if �T.��() �K
		�L('��.')
	�i
		�L('Can\'t ��!')
	end
end

�� �^ do
	io.�s:�t('��>')
	�D �� = �P.��(io.�~:�('*l'))
	�D �� = ��.��(�i.��(��, 1))
	if �g[��] ~= nil �K
		�g[��].�Z(�i.��(��))
	�i
		�L('�V ��.')
	end
end]==],['crafttweaker.log']= [==[[��][��][��] �� �� �� ��: [[��]]
[��][��][��] �� �� for �� �� �� [��]
[��][��][��] [�� | ��_��]: �� �� {[0:��]: ��.zs} as we are �� �� �� a �� ��
[��][��][��] �� �� �� in: 2ms
[��][��][��] ��: �� ��
[��][��][��] ��: �� �� �G ��
[��][��][��] �� �� �� ��: [[��], [�� | ��]]
[��][��][��] �� �� for �� �� �� [�� | ��]
[��][��][��] [�� | ��_��]: �� ��: {[0:��]: ��.zs}
[��][��][��] ============================================================================
[��][��][��]     �� ��...
[��][��][��] ============================================================================
[��][��][��] =[ore]=><ore:��>=<��:log:*>|<��:�u:*>|<��:�&_log:*>;
[��][��][��] =[ore]=><ore:��>=<��:��:*>|<��:�&_��:*>;
[��][��][��] =[ore]=><ore:�=>=<��:��_��:*>;
[��][��][��] =[ore]=><ore:��>=<��:oak_��>|<��:��_��>|<��:��_��>|<��:�D_��>|<��:��_��>|<��:�t_oak_��>;
[��][��][��] =[ore]=><ore:��>=<��:��>|<��:��_��>|<��:��_��>|<��:�D_��>|<��:�t_oak_��>|<��:��_��>;
[��][��][��] =[ore]=><ore:��>=<��:��_��>|<��:��_��_��>|<��:��_��_��>|<��:�D_��_��>|<��:�t_oak_��_��>|<��:��_��_��>;
[��][��][��] =[ore]=><ore:��>=<��:��_��>|<��:��_��>|<��:�t_oak_��>|<��:��_��>|<��:�D_��>|<��:��_��>;
[��][��][��] =[ore]=><ore:��>=<��:��>;
[��][��][��] =[ore]=><ore:��>=<��:��:*>|<��:�&_��:*>;
[��][��][��] =[ore]=><ore:��>=<��:��:*>|<��:��:*>|<��:�&_��:*>;
[��][��][��] =[ore]=><ore:�>=<��:�>;
[��][��][��] =[ore]=><ore:��>=<��:��_ore>;
[��][��][��] =[ore]=><ore:��>=<��:�I_ore>;
[��][��][��] =[ore]=><ore:��>=<��:�A_ore>;
[��][��][��] =[ore]=><ore:��>=<��:�p_ore>;
[��][��][��] =[ore]=><ore:��>=<��:��_ore>;
[��][��][��] =[ore]=><ore:��>=<��:�k_ore>;
[��][��][��] =[ore]=><ore:��>=<��:�_ore>;
[��][��][��] =[ore]=><ore:��>=<��:��_ore>;
[��][��][��] =[ore]=><ore:��>=<��:�I_�J>;
[��][��][��] =[ore]=><ore:�.>=<��:��_�J>;
[��][��][��] =[ore]=><ore:��>=<��:��>;
[��][��][��] =[ore]=><ore:��>=<��:��>;
[��][��][��] =[ore]=><ore:��>=<��:��_��>;
[��][��][��] =[ore]=><ore:��>=<��:�I_��>;
[��][��][��] =[ore]=><ore:�F>=<��:�p>;
[��][��][��] =[ore]=><ore:�l>=<��:�k>;
[��][��][��] =[ore]=><ore:��>=<��:�>;
[��][��][��] =[ore]=><ore:��>=<��:�_��>;
[��][��][��] =[ore]=><ore:��>=<��:�_� >;
[��][��][��] =[ore]=><ore:��>=<��:��>;
[��][��][��] =[ore]=><ore:��>=<��:��_�>;
[��][��][��] =[ore]=><ore:��>=<��:dye:4>;
[��][��][��] =[ore]=><ore:�
>=<��:��_��>;
[��][��][��] =[ore]=><ore:�	>=<��:�I_��>;
[��][��][��] =[ore]=><ore:�>=<��:�A_��>;
[��][��][��] =[ore]=><ore:�>=<��:�p_��>;
[��][��][��] =[ore]=><ore:��>=<��:��_��>;
[��][��][��] =[ore]=><ore:�>=<��:�k_��>;
[��][��][��] =[ore]=><ore:�>=<��:�_��>;
[��][��][��] =[ore]=><ore:��>=<��:��_��>;
[��][��][��] =[ore]=><ore:�>=<��:��>;
[��][��][��] =[ore]=><ore:�>=<��:� >;
[��][��][��] =[ore]=><ore:�>=<��:��>;
[��][��][��] =[ore]=><ore:�>=<��:��_��>;
[��][��][��] =[ore]=><ore:��>=<��:�	>;
[��][��][��] =[ore]=><ore:�
>=<��:�>;
[��][��][��] =[ore]=><ore:dye>=<��:dye:*>|<��:��:14>;
[��][��][��] =[ore]=><ore:��>=<��:��>;
[��][��][��] =[ore]=><ore:��>=<��:��_��>;
[��][��][��] =[ore]=><ore:�a>=<��:�`_��>;
[��][��][��] =[ore]=><ore:��>=<��:��>;
[��][��][��] =[ore]=><ore:��>=<��:��>;
[��][��][��] =[ore]=><ore:��>=<��:��>;
[��][��][��] =[ore]=><ore:��>=<��:��_��>;
[��][��][��] =[ore]=><ore:�5>=<��:�5>;
[��][��][��] =[ore]=><ore:��>=<��:��>;
[��][��][��] =[ore]=><ore:egg>=<��:egg>;
[��][��][��] =[ore]=><ore:�>=<��:�_13>|<��:�_cat>|<��:�_�>|<��:�_�>|<��:�_far>|<��:�_�>|<��:�_�>|<��:�_�>|<��:�_�>|<��:�_�>|<��:�_11>|<��:�_�>;
[��][��][��] =[ore]=><ore:�|>=<��:�|>;
[��][��][��] =[ore]=><ore:��>=<��:��>;
[��][��][��] =[ore]=><ore:��>=<��:��>;
[��][��][��] =[ore]=><ore:��>=<��:��>;
[��][��][��] =[ore]=><ore:��>=<��:��>;
[��][��][��] =[ore]=><ore:��>=<��:��:*>;
[��][��][��] =[ore]=><ore:��>=<��:��:*>|<��:red_��:*>;
[��][��][��] =[ore]=><ore:��>=<��:��>;
[��][��][��] =[ore]=><ore:�b>=<��:�b>;
[��][��][��] =[ore]=><ore:��>=<��:��>;
[��][��][��] =[ore]=><ore:�>=<��:end_��>;
[��][��][��] =[ore]=><ore:��>=<��:��>;
[��][��][��] =[ore]=><ore:�>=<��:�x_�i>;
[��][��][��] =[ore]=><ore:�>=<��:��>;
[��][��][��] =[ore]=><ore:�>=<��:�>;
[��][��][��] =[ore]=><ore:�>=<��:�:1>;
[��][��][��] =[ore]=><ore:�>=<��:�:2>;
[��][��][��] =[ore]=><ore:�>=<��:��:1>;
[��][��][��] =[ore]=><ore:�>=<��:��:2>;
[��][��][��] =[ore]=><ore:�>=<��:��:3>;
[��][��][��] =[ore]=><ore:�>=<��:��:4>;
[��][��][��] =[ore]=><ore:�>=<��:��:5>;
[��][��][��] =[ore]=><ore:�>=<��:��:6>;
[��][��][��] =[ore]=><ore:��>=<��:��>;
[��][��][��] =[ore]=><ore:��>=<��:��>|<��:��_��:*>;
[��][��][��] =[ore]=><ore:�>=<��:��_��>;
[��][��][��] =[ore]=><ore:�>=<��:��_��>|<��:��_��_��:*>;
[��][��][��] =[ore]=><ore:��>=<��:��>|<��:�`_��>|<��:��_��>;
[��][��][��] =[ore]=><ore:��>=<��:��>|<��:��_��>;
[��][��][��] =[ore]=><ore:� >=<��:�`_��>;
[��][��][��] =[ore]=><ore:�!>=<��:��_��>;
[��][��][��] =[ore]=><ore:��>=<��:dye>;
[��][��][��] =[ore]=><ore:��>=<��:��_��:15>;
[��][��][��] =[ore]=><ore:�">=<��:��_��_��:15>;
[��][��][��] =[ore]=><ore:��>=<��:dye:1>;
[��][��][��] =[ore]=><ore:��>=<��:��_��:14>;
[��][��][��] =[ore]=><ore:�#>=<��:��_��_��:14>;
[��][��][��] =[ore]=><ore:�+>=<��:dye:2>;
[��][��][��] =[ore]=><ore:�O>=<��:��_��:13>;
[��][��][��] =[ore]=><ore:�$>=<��:��_��_��:13>;
[��][��][��] =[ore]=><ore:��>=<��:dye:3>;
[��][��][��] =[ore]=><ore:��>=<��:��_��:12>;
[��][��][��] =[ore]=><ore:�%>=<��:��_��_��:12>;
[��][��][��] =[ore]=><ore:�>=<��:dye:4>|<��:��:14>;
[��][��][��] =[ore]=><ore:��>=<��:��_��:11>;
[��][��][��] =[ore]=><ore:�&>=<��:��_��_��:11>;
[��][��][��] =[ore]=><ore:�
>=<��:dye:5>;
[��][��][��] =[ore]=><ore:�>=<��:��_��:10>;
[��][��][��] =[ore]=><ore:�'>=<��:��_��_��:10>;
[��][��][��] =[ore]=><ore:�v>=<��:dye:6>;
[��][��][��] =[ore]=><ore:�w>=<��:��_��:9>;
[��][��][��] =[ore]=><ore:�(>=<��:��_��_��:9>;
[��][��][��] =[ore]=><ore:�/>=<��:dye:7>;
[��][��][��] =[ore]=><ore:�0>=<��:��_��:8>;
[��][��][��] =[ore]=><ore:�)>=<��:��_��_��:8>;
[��][��][��] =[ore]=><ore:�1>=<��:dye:8>;
[��][��][��] =[ore]=><ore:�P>=<��:��_��:7>;
[��][��][��] =[ore]=><ore:�*>=<��:��_��_��:7>;
[��][��][��] =[ore]=><ore:�>=<��:dye:9>;
[��][��][��] =[ore]=><ore:�>=<��:��_��:6>;
[��][��][��] =[ore]=><ore:�+>=<��:��_��_��:6>;
[��][��][��] =[ore]=><ore:�)>=<��:dye:10>;
[��][��][��] =[ore]=><ore:�*>=<��:��_��:5>;
[��][��][��] =[ore]=><ore:�,>=<��:��_��_��:5>;
[��][��][��] =[ore]=><ore:��>=<��:dye:11>;
[��][��][��] =[ore]=><ore:��>=<��:��_��:4>;
[��][��][��] =[ore]=><ore:�->=<��:��_��_��:4>;
[��][��][��] =[ore]=><ore:�2>=<��:dye:12>;
[��][��][��] =[ore]=><ore:�3>=<��:��_��:3>;
[��][��][��] =[ore]=><ore:�.>=<��:��_��_��:3>;
[��][��][��] =[ore]=><ore:�&>=<��:dye:13>|<��:��:3>;
[��][��][��] =[ore]=><ore:�'>=<��:��_��:2>;
[��][��][��] =[ore]=><ore:�/>=<��:��_��_��:2>;
[��][��][��] =[ore]=><ore:�>=<��:dye:14>;
[��][��][��] =[ore]=><ore:�>=<��:��_��:1>;
[��][��][��] =[ore]=><ore:�0>=<��:��_��_��:1>;
[��][��][��] =[ore]=><ore:��>=<��:dye:15>;
[��][��][��] =[ore]=><ore:��>=<��:��_��>;
[��][��][��] =[ore]=><ore:�1>=<��:��_��_��>;
[��][��][��] =[ore]=><ore:�_��_�>=<��:��:1>;
[��][��][��] =[ore]=><ore:��>=<��:��>|<��:��:2>;
[��][��][��] =[ore]=><ore:�2>=<��:��:1>;
[��][��][��] =[ore]=><ore:�>=<��:��>;
[��][��][��] =[ore]=><ore:�3>=<��:��:1>;
[��][��][��] =[ore]=><ore:�4>=<��:��:2>;
[��][��][��] =[ore]=><ore:�5>=<��:��:3>;
[��][��][��] =[ore]=><ore:�6>=<��:��:4>;
[��][��][��] =[ore]=><ore:�7>=<��:��:5>;
[��][��][��] =[ore]=><ore:�8>=<��:��:6>;
[��][��][��] =[ore]=><ore:�9>=<��:��:7>;
[��][��][��] =[ore]=><ore:�:>=<��:��>;
[��][��][��] =[ore]=><ore:�;>=<��:��:1>;
[��][��][��] =[ore]=><ore:�<>=<��:��:2>;
[��][��][��] =[ore]=><ore:�=>=<��:��:3>;
[��][��][��] =[ore]=><ore:�>>=<��:��>;
[��][��][��] =[ore]=><ore:�?>=<��:��:1>;
[��][��][��] =[ore]=><ore:�@>=<��:��>;
[��][��][��] =[ore]=><ore:�A>=<��:��:1>;
[��][��][��] =[ore]=><ore:�B>=<��:��>;
[��][��][��] =[ore]=><ore:�C>=<��:��:1>;
[��][��][��] =[ore]=><ore:�D>=<��:��:2>;
[��][��][��] =[ore]=><ore:�E>=<��:��:3>;
[��][��][��] =[ore]=><ore:�F>=<��:��:4>;
[��][��][��] =[ore]=><ore:�G>=<��:��:5>;
[��][��][��] =[ore]=><ore:�H>=<��:��>;
[��][��][��] =[ore]=><ore:�I>=<��:��:1>;
[��][��][��] =[ore]=><ore:�J>=<��:��:2>;
[��][��][��] =[ore]=><ore:�K>=<��:��:3>;
[��][��][��] =[ore]=><ore:�L>=<��:��:4>;
[��][��][��] =[ore]=><ore:�M>=<��:��:5>;
[��][��][��] =[ore]=><ore:�N>=<��:��:6>;
[��][��][��] =[ore]=><ore:�O>=<��:��:7>;
[��][��][��] =[ore]=><ore:�P>=<��:��:8>;
[��][��][��] =[ore]=><ore:�Q>=<��:��:9>;
[��][��][��] =[ore]=><ore:�R>=<��:��:10>;
[��][��][��] =[ore]=><ore:��>=<��:��:11>;
[��][��][��] =[ore]=><ore:�S>=<��:��:12>;
[��][��][��] =[ore]=><ore:�T>=<��:��:13>;
[��][��][��] =[ore]=><ore:�U>=<��:��:15>|<��:��:16>;
[��][��][��] =[ore]=><ore:�V>=<��:��:17>;
[��][��][��] =[ore]=><ore:�W>=<��:��>;
[��][��][��] =[ore]=><ore:�X>=<��:��:1>;
[��][��][��] =[ore]=><ore:�Y>=<��:��:2>;
[��][��][��] =[ore]=><ore:�Z>=<��:�I_��>;
[��][��][��] =[ore]=><ore:�[>=<��:��:1>;
[��][��][��] =[ore]=><ore:��>=<��:��>;
[��][��][��] =[ore]=><ore:��>;
[��][��][��] =[ore]=><ore:�\>;
[��][��][��] =[ore]=><ore:�]>;
[��][��][��] =[ore]=><ore:�^>;
[��][��][��] =[ore]=><ore:�_>;
[��][��][��] =[ore]=><ore:�`>;
[��][��][��] =[ore]=><ore:�a>;
[��][��][��] =[ore]=><ore:�b>;
[��][��][��] =[ore]=><ore:�c>;
[��][��][��] =[ore]=><ore:�d>;
[��][��][��] =[ore]=><ore:�e>;
[��][��][��] =[ore]=><ore:�f>;
[��][��][��] =[ore]=><ore:�g>;
[��][��][��] =[ore]=><ore:�h>;
[��][��][��] =[ore]=><ore:�i>;
[��][��][��] =[ore]=><ore:�j>;
[��][��][��] =[ore]=><ore:�k>;
[��][��][��] =[ore]=><ore:�l>;
[��][��][��] =[ore]=><ore:�m>;
[��][��][��] =[ore]=><ore:�n>;
[��][��][��] =[ore]=><ore:�o>;
[��][��][��] =[ore]=><ore:�p>;
[��][��][��] =[ore]=><ore:�q>=<��:��>|<��:��_��>;
[��][��][��] =[ore]=><ore:�r>=<��:��_��>;
[��][��][��] =[ore]=><ore:�s>=<��:�`_��>;
[��][��][��] =[ore]=><ore:oc:�t>=<�u:�v:7>;
[��][��][��] =[ore]=><ore:�w>=<�u:�x:29>;
[��][��][��] =[ore]=><ore:oc:�y>=<��:end_��>;
[��][��][��] =[ore]=><ore:�+>=<�':�z:*>;
[��][��][��] =[ore]=><ore:�:>=<�':�C:*>;
[��][��][��] =[�x]=>��.�{("��:�|", �}, []);
[��][��][��] =[�x]=>��.�{("��:�~", �}, []);
[��][��][��] =[�x]=>��.�{("��:�", �}, []);
[��][��][��] =[�x]=>��.��("��:��", <��:map>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��_map:*>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.�{("��:��", �}, []);
[��][��][��] =[�x]=>��.�{("��:��", �}, []);
[��][��][��] =[�x]=>��.�{("��:��", �}, []);
[��][��][��] =[�x]=>��.�{("��:��", �}, []);
[��][��][��] =[�x]=>��.�{("��:��", �}, []);
[��][��][��] =[�x]=>��.�{("��:��", �}, []);
[��][��][��] =[�x]=>��.�{("��:��", �}, []);
[��][��][��] =[�x]=>��.�{("��:��_��", <��:��:4>, [<ore:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:4> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:4> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��:4> * 8, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_dye_��_��", <��:dye:11> * 2, [<��:��_��>]);
[��][��][��] =[�x]=>��.�{("��:��_dye_��_��", <��:dye:11>, [<��:��_��>]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��_��:4> * 8, [<ore:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:4> * 3, [[<��:��:4>, <��:��:4>]]);
[��][��][��] =[�x]=>��.�{("��:��_bed_��_��_bed", <��:bed:4>, [<��:bed>, <ore:��>]);
[��][��][��] =[�x]=>��.��("��:��_bed", <��:bed:4>, [[<��:��:4>, <��:��:4>, <��:��:4>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:11>, [[<��:��:4>, <��:��:4>, <��:��:4>], [<��:��:4>, <��:��:4>, <��:��:4>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.�{("��:��_��", <��:��_��>, [<��:��>, <ore:��>, <ore:��>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<ore:��>], [<ore:��>], [<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<ore:��>], [<ore:��>], [<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��_��>, [[<ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<ore:��>, <ore:��>, <ore:��>], [�}, <ore:��>, �}], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:��_hoe", <��:��_hoe>, [[<ore:��>, <ore:��>], [�}, <ore:��>], [�}, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 3, [[<��:��>, <��:��>], [<��:��>, <��:��>], [<��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_axe", <��:��_axe>, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>], [�}, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��> * 8, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��_��> * 8, [<ore:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��> * 3, [[<��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_bed", <��:bed>, [[<��:��>, <��:��>, <��:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:15>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��> * 9, [[<��:hay_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 2, [[<ore:��>], [<ore:��>], [<ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��", <��:��_��>, [<ore:��>, <��:��_��>]);
[��][��][��] =[�x]=>��.��("��:��", <��:��> * 2, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��> * 4, [[<��:��> | <��:��:1>], [<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:tnt_��", <��:tnt_��>, [[<��:tnt>], [<��:��>]]);
[��][��][��] =[�x]=>��.��("��:tnt", <��:tnt>, [[<ore:��>, <��:��> | <��:��:1>, <ore:��>], [<��:��> | <��:��:1>, <ore:��>, <��:��> | <��:��:1>], [<ore:��>, <��:��> | <��:��:1>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_to_��", <��:��>, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��> * 4, [[<��:��>, <��:��>], [<��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<ore:��>], [<ore:��>], [<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 4, [[<��:��>, �}, �}], [<��:��>, <��:��>, �}], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 6, [[<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<ore:��>], [<ore:��>], [<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��_��>, [[<ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<ore:��>, <ore:��>, <ore:��>], [�}, <ore:��>, �}], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:��_hoe", <��:��_hoe>, [[<ore:��>, <ore:��>], [�}, <ore:��>], [�}, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��_��> * 4, [[<��:��> | <��:��:1> | <��:��:2> | <��:��:3>, �}, �}], [<��:��> | <��:��:1> | <��:��:2> | <��:��:3>, <��:��> | <��:��:1> | <��:��:2> | <��:��:3>, �}], [<��:��> | <��:��:1> | <��:��:2> | <��:��:3>, <��:��> | <��:��:1> | <��:��:2> | <��:��:3>, <��:��> | <��:��:1> | <��:��:2> | <��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��:5> * 6, [[<��:��> | <��:��:1> | <��:��:2> | <��:��:3>, <��:��> | <��:��:1> | <��:��:2> | <��:��:3>, <��:��> | <��:��:1> | <��:��:2> | <��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:��_axe", <��:��_axe>, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>], [�}, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<ore:��>], [<��:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��> * 4, [[<ore:��>], [<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��:1> * 6, [[<��:��:1>, <��:��:1>, <��:��:1>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 4, [[<��:��:1>, �}, �}], [<��:��:1>, <��:��:1>, �}], [<��:��:1>, <��:��:1>, <��:��:1>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:1> * 4, [[<��:log:1>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��_��>, [[<��:��>, <��:��:1>, <��:��>], [<��:��>, <��:��:1>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 3, [[<��:��:1>, <��:��>, <��:��:1>], [<��:��:1>, <��:��>, <��:��:1>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 3, [[<��:��:1>, <��:��:1>], [<��:��:1>, <��:��:1>], [<��:��:1>, <��:��:1>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<��:��:1>, �}, <��:��:1>], [<��:��:1>, <��:��:1>, <��:��:1>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 2, [[�}, <ore:��>, �}], [<ore:��>, <��:��>, <ore:��>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <��:��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 6, [[<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<��:��>, <��:��>], [<��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:2> * 4, [[<��:��>, <��:��>], [<��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_red_��", <��:red_��:2> * 4, [[<��:red_��>, <��:red_��>], [<��:red_��>, <��:red_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 9, [[<��:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��> * 3, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[�}, <ore:��>], [<ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:sea_��", <��:sea_��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 4, [[<��:��> | <��:��:1> | <��:��:2>, �}, �}], [<��:��> | <��:��:1> | <��:��:2>, <��:��> | <��:��:1> | <��:��:2>, �}], [<��:��> | <��:��:1> | <��:��:2>, <��:��> | <��:��:1> | <��:��:2>, <��:��> | <��:��:1> | <��:��:2>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��:1> * 6, [[<��:��> | <��:��:1> | <��:��:2>, <��:��> | <��:��:1> | <��:��:2>, <��:��> | <��:��:1> | <��:��:2>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<��:��>, <��:��>], [<��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<��:��_��>, <ore:��>, <��:��_��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<ore:��>], [<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[�}, <ore:��>, �}], [<ore:��>, <ore:��>, <ore:��>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��> * 9, [[<��:��_��>]]);
[��][��][��] =[�x]=>��.�{("��:red_��", <��:��:14>, [<ore:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:red_��_��_��", <��:��_��_��:14> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:red_��_��_��", <��:��_��_��:14> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:red_��_��", <��:��_��:14> * 8, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:red_��_��", <��:red_��_��> * 4, [[<��:red_��> | <��:red_��:1> | <��:red_��:2>, �}, �}], [<��:red_��> | <��:red_��:1> | <��:red_��:2>, <��:red_��> | <��:red_��:1> | <��:red_��:2>, �}], [<��:red_��> | <��:red_��:1> | <��:red_��:2>, <��:red_��> | <��:red_��:1> | <��:red_��:2>, <��:red_��> | <��:red_��:1> | <��:red_��:2>]]);
[��][��][��] =[�x]=>��.��("��:red_��_��", <��:��_��> * 6, [[<��:red_��> | <��:red_��:1> | <��:red_��:2>, <��:red_��> | <��:red_��:1> | <��:red_��:2>, <��:red_��> | <��:red_��:1> | <��:red_��:2>]]);
[��][��][��] =[�x]=>��.��("��:red_��", <��:red_��>, [[<��:��:1>, <��:��:1>], [<��:��:1>, <��:��:1>]]);
[��][��][��] =[�x]=>��.��("��:red_��_��", <��:red_��_��>, [[<��:��>, <��:��_��>], [<��:��_��>, <��:��>]]);
[��][��][��] =[�x]=>��.�{("��:red_dye_��_��", <��:dye:1>, [<��:red_��:4>]);
[��][��][��] =[�x]=>��.�{("��:red_dye_��_��_��", <��:dye:1> * 2, [<��:��_��:4>]);
[��][��][��] =[�x]=>��.�{("��:red_dye_��_��", <��:dye:1>, [<��:red_��>]);
[��][��][��] =[�x]=>��.�{("��:red_dye_��_��", <��:dye:1>, [<��:��>]);
[��][��][��] =[�x]=>��.�{("��:red_��_��", <��:��_��:14> * 8, [<ore:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:red_��", <��:��:14> * 3, [[<��:��:14>, <��:��:14>]]);
[��][��][��] =[�x]=>��.�{("��:red_bed_��_��_bed", <��:bed:14>, [<��:bed>, <ore:��>]);
[��][��][��] =[�x]=>��.��("��:red_bed", <��:bed:14>, [[<��:��:14>, <��:��:14>, <��:��:14>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:red_��", <��:��:1>, [[<��:��:14>, <��:��:14>, <��:��:14>], [<��:��:14>, <��:��:14>, <��:��:14>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��> * 16, [[<ore:��>, �}, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �}, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��_red_�", <��:��_��>, [[�}, <��:��_��>, �}], [<��:��>, <��:��_� >, <��:red_�>], [�}, <��:�>, �}]]);
[��][��][��] =[�x]=>��.��("��:��_��_��_�_�", <��:��_��>, [[�}, <��:��_��>, �}], [<��:��>, <��:��_� >, <��:�_�>], [�}, <��:�>, �}]]);
[��][��][��] =[�x]=>��.��("��:�_��", <��:�_��> * 4, [[<��:�_��> | <��:�_��:1> | <��:�_��:2>, �}, �}], [<��:�_��> | <��:�_��:1> | <��:�_��:2>, <��:�_��> | <��:�_��:1> | <��:�_��:2>, �}], [<��:�_��> | <��:�_��:1> | <��:�_��:2>, <��:�_��> | <��:�_��:1> | <��:�_��:2>, <��:�_��> | <��:�_��:1> | <��:�_��:2>]]);
[��][��][��] =[�x]=>��.��("��:�_��", <��:��_��:7> * 6, [[<��:�_��> | <��:�_��:1> | <��:�_��:2>, <��:�_��> | <��:�_��:1> | <��:�_��:2>, <��:�_��> | <��:�_��:1> | <��:�_��:2>]]);
[��][��][��] =[�x]=>��.��("��:�_��", <��:�_��>, [[<��:�>, <��:�>], [<��:�>, <��:�>]]);
[��][��][��] =[�x]=>��.��("��:�_��", <��:�_��> * 4, [[<��:�_��>, �}, �}], [<��:�_��>, <��:�_��>, �}], [<��:�_��>, <��:�_��>, <��:�_��>]]);
[��][��][��] =[�x]=>��.��("��:�_��", <��:�_��> * 6, [[<��:�_��>, <��:�_��>, <��:�_��>]]);
[��][��][��] =[�x]=>��.��("��:�_�", <��:�_�>, [[<��:�_��>], [<��:�_��>]]);
[��][��][��] =[�x]=>��.��("��:�_��", <��:�_��> * 4, [[<��:�_�_�	>, <��:�_�_�	>], [<��:�_�_�	>, <��:�_�_�	>]]);
[��][��][��] =[�x]=>��.�{("��:�_��", <��:��:10>, [<ore:�
>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:�_��_��_��", <��:��_��_��:10> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�
>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:�_��_��_��", <��:��_��_��:10> * 16, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
[��][��][��] =[�x]=>��.��("��:�_��_��", <��:��_��:10> * 8, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:�
>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�_�_box", <��:�_�_box>, [[<��:�_�>], [<ore:��>], [<��:�_�>]]);
[��][��][��] =[�x]=>��.�{("��:�_dye", <��:dye:5> * 2, [<ore:�>, <ore:��>]);
[��][��][��] =[�x]=>��.�{("��:�_��_��", <��:��_��:10> * 8, [<ore:�
>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:�_��", <��:��:10> * 3, [[<��:��:10>, <��:��:10>]]);
[��][��][��] =[�x]=>��.�{("��:�_bed_��_��_bed", <��:bed:10>, [<��:bed>, <ore:�
>]);
[��][��][��] =[�x]=>��.��("��:�_bed", <��:bed:10>, [[<��:��:10>, <��:��:10>, <��:��:10>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�_��", <��:��:5>, [[<��:��:10>, <��:��:10>, <��:��:10>], [<��:��:10>, <��:��:10>, <��:��:10>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:�_�", <��:�_�> * 4, [[<��:�>]]);
[��][��][��] =[�x]=>��.�{("��:�_pie", <��:�_pie>, [<��:�>, <��:��>, <ore:egg>]);
[��][��][��] =[�x]=>��.��("��:�_�g", <��:�:1>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�", <��:�>, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:2> * 4, [[<ore:�>, <ore:�>], [<ore:�>, <ore:�>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:4> * 4, [[<ore:�>, <ore:�>], [<ore:�>, <ore:�>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:6> * 4, [[<ore:�>, <ore:�>], [<ore:�>, <ore:�>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��", <��:��:6>, [<ore:�>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:6> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:6> * 16, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��:6> * 8, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:�>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_dye_��_red_��", <��:dye:9> * 2, [<ore:��>, <ore:��>]);
[��][��][��] =[�x]=>��.�{("��:��_dye_��_��_��", <��:dye:9>, [<��:red_��:7>]);
[��][��][��] =[�x]=>��.�{("��:��_dye_��_��", <��:dye:9> * 2, [<��:��_��:5>]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��_��:6> * 8, [<ore:�>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:6> * 3, [[<��:��:6>, <��:��:6>]]);
[��][��][��] =[�x]=>��.�{("��:��_bed_��_��_bed", <��:bed:6>, [<��:bed>, <ore:�>]);
[��][��][��] =[�x]=>��.��("��:��_bed", <��:bed:6>, [[<��:��:6>, <��:��:6>, <��:��:6>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:9>, [[<��:��:6>, <��:��:6>, <��:��:6>], [<��:��:6>, <��:��:6>, <��:��:6>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:�_�_��", <��:�_��:2> * 2, [[<��:�_��>], [<��:�_��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��> * 3, [[<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�", <��:�>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��> | <��:��:1> | <��:��:2> | <��:��:3> | <��:��:4> | <��:��:5> | <��:��:6> | <��:��:7> | <��:��:8> | <��:��:9> | <��:��:10> | <��:��:11> | <��:��:12> | <��:��:13> | <��:��:14> | <��:��:15>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��", <��:��:1>, [<ore:�>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:1> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:1> * 16, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��:1> * 8, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:�>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_dye_��_red_��", <��:dye:14> * 2, [<ore:��>, <ore:��>]);
[��][��][��] =[�x]=>��.�{("��:��_dye_��_��_��", <��:dye:14>, [<��:red_��:5>]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��_��:1> * 8, [<ore:�>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:1> * 3, [[<��:��:1>, <��:��:1>]]);
[��][��][��] =[�x]=>��.�{("��:��_bed_��_��_bed", <��:bed:1>, [<��:bed>, <ore:�>]);
[��][��][��] =[�x]=>��.��("��:��_bed", <��:bed:1>, [[<��:��:1>, <��:��:1>, <��:��:1>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:14>, [[<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <��:��:1>, <��:��:1>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:�", <��:�>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <��:�>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:oak_��_��", <��:��_��> * 6, [[<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:oak_��", <��:oak_��> * 4, [[<��:��>, �}, �}], [<��:��>, <��:��>, �}], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:oak_��", <��:��> * 4, [[<��:log>]]);
[��][��][��] =[�x]=>��.��("��:�", <��:�>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��_��>, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��_��> * 4, [[<��:��_��>, �}, �}], [<��:��_��>, <��:��_��>, �}], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��:6> * 6, [[<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��_��> * 6, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<��:��>, <��:��>], [<��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.�{("��:�_��", <��:�_��>, [<��:�_�>, <��:red_�>, <��:�>]);
[��][��][��] =[�x]=>��.�{("��:�!_��", <��:��:1>, [<��:��>, <��:�>]);
[��][��][��] =[�x]=>��.��("��:�!_��_� ", <��:��_� :1> * 6, [[<��:�!_��>, <��:�!_��>, <��:�!_��>], [<��:�!_��>, <��:�!_��>, <��:�!_��>]]);
[��][��][��] =[�x]=>��.�{("��:�!_��", <��:�!_��>, [<ore:��>, <��:�>]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<ore:��>, �}, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_�", <��:��_�>, [[<��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:map", <��:map>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:�">, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:�#_�$", <��:�#_�$>, [<��:�%_��>, <ore:��>]);
[��][��][��] =[�x]=>��.��("��:�#", <��:�#>, [[<��:�#_�$>, <��:�#_�$>], [<��:�#_�$>, <��:�#_�$>]]);
[��][��][��] =[�x]=>��.�{("��:��_��", <��:��:2>, [<ore:�&>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:2> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�&>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:2> * 16, [[<ore:�'>, <ore:�'>, <ore:�'>], [<ore:�'>, <ore:�'>, <ore:�'>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��:2> * 8, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:�&>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_dye_��_�_and_��", <��:dye:13> * 2, [<ore:�
>, <ore:�>]);
[��][��][��] =[�x]=>��.�{("��:��_dye_��_��", <��:dye:13> * 2, [<��:��_��:1>]);
[��][��][��] =[�x]=>��.�{("��:��_dye_��_�A_red_��", <��:dye:13> * 3, [<ore:�>, <ore:��>, <ore:�>]);
[��][��][��] =[�x]=>��.�{("��:��_dye_��_�A_ink_��", <��:dye:13> * 4, [<ore:�>, <ore:��>, <ore:��>, <ore:��>]);
[��][��][��] =[�x]=>��.�{("��:��_dye_��_��", <��:dye:13>, [<��:red_��:2>]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��_��:2> * 8, [<ore:�&>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:2> * 3, [[<��:��:2>, <��:��:2>]]);
[��][��][��] =[�x]=>��.�{("��:��_bed_��_��_bed", <��:bed:2>, [<��:bed>, <ore:�&>]);
[��][��][��] =[�x]=>��.��("��:��_bed", <��:bed:2>, [[<��:��:2>, <��:��:2>, <��:��:2>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:13>, [[<��:��:2>, <��:��:2>, <��:��:2>], [<��:��:2>, <��:��:2>, <��:��:2>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:lit_�", <��:lit_�>, [[<��:�>], [<��:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��", <��:��:5>, [<ore:�)>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:5> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�)>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:5> * 16, [[<ore:�*>, <ore:�*>, <ore:�*>], [<ore:�*>, <ore:�*>, <ore:�*>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��:5> * 8, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:�)>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_dye", <��:dye:10> * 2, [<ore:�+>, <ore:��>]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��_��:5> * 8, [<ore:�)>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:5> * 3, [[<��:��:5>, <��:��:5>]]);
[��][��][��] =[�x]=>��.�{("��:��_bed_��_��_bed", <��:bed:5>, [<��:bed>, <ore:�)>]);
[��][��][��] =[�x]=>��.��("��:��_bed", <��:bed:5>, [[<��:��:5>, <��:��:5>, <��:��:5>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:10>, [[<��:��:5>, <��:��:5>, <��:��:5>], [<��:��:5>, <��:��:5>, <��:��:5>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:�,_�-_��_��", <��:�,_�-_��_��>, [[<ore:�.>, <ore:�.>]]);
[��][��][��] =[�x]=>��.�{("��:�,_��_��", <��:��:8>, [<ore:�/>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:�,_��_��_��_��", <��:��_��_��:8> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�/>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:�,_��_��_��_��", <��:��_��_��:8> * 16, [[<ore:�0>, <ore:�0>, <ore:�0>], [<ore:�0>, <ore:�0>, <ore:�0>]]);
[��][��][��] =[�x]=>��.��("��:�,_��_��_��", <��:��_��:8> * 8, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:�/>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:�,_��_dye_��_��_��", <��:dye:7>, [<��:red_��:6>]);
[��][��][��] =[�x]=>��.�{("��:�,_��_dye_��_��_��", <��:dye:7>, [<��:red_��:8>]);
[��][��][��] =[�x]=>��.�{("��:�,_��_dye_��_ink_��", <��:dye:7> * 3, [<ore:��>, <ore:��>, <ore:��>]);
[��][��][��] =[�x]=>��.�{("��:�,_��_dye_��_��_��", <��:dye:7> * 2, [<ore:�1>, <ore:��>]);
[��][��][��] =[�x]=>��.�{("��:�,_��_dye_��_��_��", <��:dye:7>, [<��:red_��:3>]);
[��][��][��] =[�x]=>��.�{("��:�,_��_��_��", <��:��_��:8> * 8, [<ore:�/>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:�,_��_��", <��:��:8> * 3, [[<��:��:8>, <��:��:8>]]);
[��][��][��] =[�x]=>��.�{("��:�,_��_bed_��_��_bed", <��:bed:8>, [<��:bed>, <ore:�/>]);
[��][��][��] =[�x]=>��.��("��:�,_��_bed", <��:bed:8>, [[<��:��:8>, <��:��:8>, <��:��:8>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�,_��_��", <��:��:7>, [[<��:��:8>, <��:��:8>, <��:��:8>], [<��:��:8>, <��:��:8>, <��:��:8>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.�{("��:�,_��_��", <��:��:3>, [<ore:�2>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:�,_��_��_��_��", <��:��_��_��:3> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�2>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:�,_��_��_��_��", <��:��_��_��:3> * 16, [[<ore:�3>, <ore:�3>, <ore:�3>], [<ore:�3>, <ore:�3>, <ore:�3>]]);
[��][��][��] =[�x]=>��.��("��:�,_��_��_��", <��:��_��:3> * 8, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:�2>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:�,_��_dye_��_�A_��", <��:dye:12> * 2, [<ore:�>, <ore:��>]);
[��][��][��] =[�x]=>��.�{("��:�,_��_dye_��_��_��", <��:dye:12>, [<��:red_��:1>]);
[��][��][��] =[�x]=>��.�{("��:�,_��_��_��", <��:��_��:3> * 8, [<ore:�2>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:�,_��_��", <��:��:3> * 3, [[<��:��:3>, <��:��:3>]]);
[��][��][��] =[�x]=>��.�{("��:�,_��_bed_��_��_bed", <��:bed:3>, [<��:bed>, <ore:�2>]);
[��][��][��] =[�x]=>��.��("��:�,_��_bed", <��:bed:3>, [[<��:��:3>, <��:��:3>, <��:��:3>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�,_��_��", <��:��:12>, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <��:��:3>, <��:��:3>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:�4", <��:�4>, [[<ore:��>], [<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�5_�6", <��:�5_�6>, [[<ore:�5>, <ore:�5>, <ore:�5>], [<ore:�5>, �}, <ore:�5>], [<ore:�5>, �}, <ore:�5>]]);
[��][��][��] =[�x]=>��.��("��:�5_�8", <��:�5_�8>, [[<ore:�5>, <ore:�5>, <ore:�5>], [<ore:�5>, �}, <ore:�5>]]);
[��][��][��] =[�x]=>��.��("��:�5_�:", <��:�5_�:>, [[<ore:�5>, �}, <ore:�5>], [<ore:�5>, <ore:�5>, <ore:�5>], [<ore:�5>, <ore:�5>, <ore:�5>]]);
[��][��][��] =[�x]=>��.��("��:�5_�<", <��:�5_�<>, [[<ore:�5>, �}, <ore:�5>], [<ore:�5>, �}, <ore:�5>]]);
[��][��][��] =[�x]=>��.��("��:�5", <��:�5>, [[<��:��_�>>, <��:��_�>>], [<��:��_�>>, <��:��_�>>]]);
[��][��][��] =[�x]=>��.��("��:�?", <��:�?> * 2, [[<ore:��>, <ore:��>, �}], [<ore:��>, <ore:��>, �}], [�}, �}, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�A_��", <��:dye:4> * 9, [[<��:�A_��>]]);
[��][��][��] =[�x]=>��.��("��:�A_��", <��:�A_��>, [[<��:dye:4>, <��:dye:4>, <��:dye:4>], [<��:dye:4>, <��:dye:4>, <��:dye:4>], [<��:dye:4>, <��:dye:4>, <��:dye:4>]]);
[��][��][��] =[�x]=>��.��("��:�B", <��:�B> * 3, [[<ore:��>, �}, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �}, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�D_��_��", <��:��_��:3> * 6, [[<��:��:3>, <��:��:3>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:�D_��", <��:�D_��> * 4, [[<��:��:3>, �}, �}], [<��:��:3>, <��:��:3>, �}], [<��:��:3>, <��:��:3>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:�D_��", <��:��:3> * 4, [[<��:log:3>]]);
[��][��][��] =[�x]=>��.��("��:�D_��_��", <��:�D_��_��>, [[<��:��>, <��:��:3>, <��:��>], [<��:��>, <��:��:3>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:�D_��", <��:�D_��> * 3, [[<��:��:3>, <��:��>, <��:��:3>], [<��:��:3>, <��:��>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:�D_��", <��:�D_��> * 3, [[<��:��:3>, <��:��:3>], [<��:��:3>, <��:��:3>], [<��:��:3>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:�D_��", <��:�D_��>, [[<��:��:3>, �}, <��:��:3>], [<��:��:3>, <��:��:3>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:�E", <��:�E>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:�F>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�G_�H", <��:�G_�H>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:�5>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�I_��", <��:�I_��>, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�I_��", <��:�I_��>, [[<ore:��>], [<ore:��>], [<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�I_��", <��:�I_��>, [[<ore:��>], [<ore:��>], [<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�I_��", <��:�I_��>, [[<ore:��>, <ore:��>, <ore:��>], [�}, <ore:��>, �}], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:�I_��", <��:�I_��> * 9, [[<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�I_�6", <��:�I_�6>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �}, <ore:��>], [<ore:��>, �}, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�I_�J_��_��", <��:�I_�J>, [[<��:�I_��>, <��:�I_��>, <��:�I_��>], [<��:�I_��>, <��:�I_��>, <��:�I_��>], [<��:�I_��>, <��:�I_��>, <��:�I_��>]]);
[��][��][��] =[�x]=>��.��("��:�I_�J_��_��", <��:�I_�J> * 9, [[<��:�I_��>]]);
[��][��][��] =[�x]=>��.��("��:�I_hoe", <��:�I_hoe>, [[<ore:��>, <ore:��>], [�}, <ore:��>], [�}, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�I_�8", <��:�I_�8>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �}, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�I_��", <��:�I_��> * 3, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>], [<ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�I_�:", <��:�I_�:>, [[<ore:��>, �}, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�I_�<", <��:�I_�<>, [[<ore:��>, �}, <ore:��>], [<ore:��>, �}, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�I_��", <��:�I_��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�I_�K", <��:�I_�K> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�I_axe", <��:�I_axe>, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>], [�}, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�L_��", <��:�L_��>, [[<��:�L>], [<��:��>]]);
[��][��][��] =[�x]=>��.��("��:�L", <��:�L>, [[<ore:��>, �}, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:�N_�-_��_��", <��:�N_�-_��_��>, [[<ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:hay_��", <��:hay_��>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��", <��:��:13>, [<ore:�+>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:13> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�+>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:13> * 16, [[<ore:�O>, <ore:�O>, <ore:�O>], [<ore:�O>, <ore:�O>, <ore:�O>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��:13> * 8, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:�+>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��_��:13> * 8, [<ore:�+>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:13> * 3, [[<��:��:13>, <��:��:13>]]);
[��][��][��] =[�x]=>��.�{("��:��_bed_��_��_bed", <��:bed:13>, [<��:bed>, <ore:�+>]);
[��][��][��] =[�x]=>��.��("��:��_bed", <��:bed:13>, [[<��:��:13>, <��:��:13>, <��:��:13>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:2>, [[<��:��:13>, <��:��:13>, <��:��:13>], [<��:��:13>, <��:��:13>, <��:��:13>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.�{("��:��_��", <��:��:7>, [<ore:�1>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:7> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�1>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:7> * 16, [[<ore:�P>, <ore:�P>, <ore:�P>], [<ore:�P>, <ore:�P>, <ore:�P>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��:7> * 8, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:�1>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_dye", <��:dye:8> * 2, [<ore:��>, <ore:��>]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��_��:7> * 8, [<ore:�1>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:7> * 3, [[<��:��:7>, <��:��:7>]]);
[��][��][��] =[�x]=>��.�{("��:��_bed_��_��_bed", <��:bed:7>, [<��:bed>, <ore:�1>]);
[��][��][��] =[�x]=>��.��("��:��_bed", <��:bed:7>, [[<��:��:7>, <��:��:7>, <��:��:7>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:8>, [[<��:��:7>, <��:��:7>, <��:��:7>], [<��:��:7>, <��:��:7>, <��:��:7>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.�{("��:��", <��:��:1>, [<ore:�>, <��:�>]);
[��][��][��] =[�x]=>��.��("��:�Q_��", <��:�Q_��>, [[<ore:�.>], [<ore:�.>], [<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�Q_��", <��:�Q_��>, [[<ore:�.>], [<ore:��>], [<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�Q_��", <��:�Q_��> * 6, [[<ore:�.>, �}, <ore:�.>], [<ore:�.>, <ore:��>, <ore:�.>], [<ore:�.>, <ore:��>, <ore:�.>]]);
[��][��][��] =[�x]=>��.��("��:�Q_��", <��:�Q_��>, [[<ore:�.>, <ore:�.>, <ore:�.>], [�}, <ore:��>, �}], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:�Q_�6", <��:�Q_�6>, [[<ore:�.>, <ore:�.>, <ore:�.>], [<ore:�.>, �}, <ore:�.>], [<ore:�.>, �}, <ore:�.>]]);
[��][��][��] =[�x]=>��.��("��:�Q_hoe", <��:�Q_hoe>, [[<ore:�.>, <ore:�.>], [�}, <ore:��>], [�}, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�Q_�8", <��:�Q_�8>, [[<ore:�.>, <ore:�.>, <ore:�.>], [<ore:�.>, �}, <ore:�.>]]);
[��][��][��] =[�x]=>��.��("��:�Q_�:", <��:�Q_�:>, [[<ore:�.>, �}, <ore:�.>], [<ore:�.>, <ore:�.>, <ore:�.>], [<ore:�.>, <ore:�.>, <ore:�.>]]);
[��][��][��] =[�x]=>��.��("��:�Q_��", <��:�Q_��>, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <��:��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:�Q_�<", <��:�Q_�<>, [[<ore:�.>, �}, <ore:�.>], [<ore:�.>, �}, <ore:�.>]]);
[��][��][��] =[�x]=>��.��("��:�Q_axe", <��:�Q_axe>, [[<ore:�.>, <ore:�.>], [<ore:�.>, <ore:��>], [�}, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�Q_�S", <��:�Q_�S>, [[<ore:�.>, <ore:�.>, <ore:�.>], [<ore:�.>, <��:�S>, <ore:�.>], [<ore:�.>, <ore:�.>, <ore:�.>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 9, [[<ore:�.>]]);
[��][��][��] =[�x]=>��.��("��:��_�J_��_��", <��:��_�J>, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_�J_��_��", <��:��_�J> * 9, [[<��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<ore:�.>, <ore:�.>, <ore:�.>], [<ore:�.>, <ore:�.>, <ore:�.>], [<ore:�.>, <ore:�.>, <ore:�.>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 16, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_�T", <��:��_�T> * 3, [[<ore:��>, �}, <ore:��>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:�V_��", <��:�V_��>, [[<��:�V>], [<��:��>]]);
[��][��][��] =[�x]=>��.��("��:�V", <��:�V>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �}, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_pot", <��:��_pot>, [[<��:��>, �}, <��:��>], [�}, <��:��>, �}]]);
[��][��][��] =[�x]=>��.�{("��:�X_and_�Y", <��:�X_and_�Y>, [<ore:��>, <��:�X>]);
[��][��][��] =[�x]=>��.��("��:�Z_rod", <��:�Z_rod>, [[�}, �}, <ore:��>], [�}, <ore:��>, <ore:��>], [<ore:��>, �}, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:�\_�]", <��:�\_�]> * 3, [<ore:��>, <��:�%_��>, <��:��> | <��:��:1>]);
[��][��][��] =[�x]=>��.�{("��:�^_�__eye", <��:�^_�__eye>, [<��:�__eye>, <��:�_�>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��> * 3, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.�{("��:�`_eye", <��:�`_eye>, [<ore:�a>, <��:�%_��>]);
[��][��][��] =[�x]=>��.��("��:�`_��", <��:�`_��>, [[<��:�b>, <��:�b>, <��:�b>], [<��:�b>, <��:�`_eye>, <��:�b>], [<��:�b>, <��:�b>, <��:�b>]]);
[��][��][��] =[�x]=>��.��("��:end_rod", <��:end_rod> * 4, [[<��:�%_rod>], [<��:�_�_�	>]]);
[��][��][��] =[�x]=>��.��("��:end_�c", <��:end_�c>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:�`_eye>, <ore:��>], [<ore:��>, <��:�e_�f>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:end_�g", <��:end_�g> * 4, [[<��:end_��>, <��:end_��>], [<��:end_��>, <��:end_��>]]);
[��][��][��] =[�x]=>��.��("��:�h_�i", <��:�h_�i>, [[�}, <��:��>, �}], [<ore:�F>, <��:�b>, <ore:�F>], [<��:�b>, <��:�b>, <��:�b>]]);
[��][��][��] =[�x]=>��.��("��:�k_��", <��:�k_��>, [[<ore:�l>, <ore:�l>, <ore:�l>], [<ore:�l>, <ore:�l>, <ore:�l>], [<ore:�l>, <ore:�l>, <ore:�l>]]);
[��][��][��] =[�x]=>��.��("��:�k", <��:�k> * 9, [[<��:�k_��>]]);
[��][��][��] =[�x]=>��.��("��:�m", <��:�m>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �}, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�o", <��:�o>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:bow>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��:3> * 2, [[<ore:��>, <��:�>], [<��:�>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�p_��", <��:�p_��>, [[<ore:�F>], [<ore:�F>], [<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�p_��", <��:�p_��>, [[<ore:�F>], [<ore:��>], [<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�p_��", <��:�p_��>, [[<ore:�F>, <ore:�F>, <ore:�F>], [�}, <ore:��>, �}], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:�p_�6", <��:�p_�6>, [[<ore:�F>, <ore:�F>, <ore:�F>], [<ore:�F>, �}, <ore:�F>], [<ore:�F>, �}, <ore:�F>]]);
[��][��][��] =[�x]=>��.��("��:�p_hoe", <��:�p_hoe>, [[<ore:�F>, <ore:�F>], [�}, <ore:��>], [�}, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�p_�8", <��:�p_�8>, [[<ore:�F>, <ore:�F>, <ore:�F>], [<ore:�F>, �}, <ore:�F>]]);
[��][��][��] =[�x]=>��.��("��:�p_�:", <��:�p_�:>, [[<ore:�F>, �}, <ore:�F>], [<ore:�F>, <ore:�F>, <ore:�F>], [<ore:�F>, <ore:�F>, <ore:�F>]]);
[��][��][��] =[�x]=>��.��("��:�p_�<", <��:�p_�<>, [[<ore:�F>, �}, <ore:�F>], [<ore:�F>, �}, <ore:�F>]]);
[��][��][��] =[�x]=>��.��("��:�p_��", <��:�p_��>, [[<ore:�F>, <ore:�F>, <ore:�F>], [<ore:�F>, <ore:�F>, <ore:�F>], [<ore:�F>, <ore:�F>, <ore:�F>]]);
[��][��][��] =[�x]=>��.��("��:�p_axe", <��:�p_axe>, [[<ore:�F>, <ore:�F>], [<ore:�F>, <ore:��>], [�}, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�p", <��:�p> * 9, [[<��:�p_��>]]);
[��][��][��] =[�x]=>��.��("��:�q_��", <��:�q_��> * 6, [[<ore:��>, �}, <ore:��>], [<ore:��>, <��:��_��_��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�r_�q", <��:�r_�q>, [[<ore:��>, <ore:��>, <ore:��>], [<��:�>, <��:�>, <��:�>], [<��:��_��> | <��:��_��:1> | <��:��_��:2> | <��:��_��:3> | <��:��_��:4> | <��:��_��:5>, <��:��_��> | <��:��_��:1> | <��:��_��:2> | <��:��_��:3> | <��:��_��:4> | <��:��_��:5>, <��:��_��> | <��:��_��:1> | <��:��_��:2> | <��:��_��:3> | <��:��_��:4> | <��:��_��:5>]]);
[��][��][��] =[�x]=>��.��("��:�t_�", <��:�:2>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�t_oak_��_��", <��:��_��:5> * 6, [[<��:��:5>, <��:��:5>, <��:��:5>]]);
[��][��][��] =[�x]=>��.��("��:�t_oak_��", <��:�t_oak_��> * 4, [[<��:��:5>, �}, �}], [<��:��:5>, <��:��:5>, �}], [<��:��:5>, <��:��:5>, <��:��:5>]]);
[��][��][��] =[�x]=>��.��("��:�t_oak_��", <��:��:5> * 4, [[<��:�u:1>]]);
[��][��][��] =[�x]=>��.��("��:�t_oak_��_��", <��:�t_oak_��_��>, [[<��:��>, <��:��:5>, <��:��>], [<��:��>, <��:��:5>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:�t_oak_��", <��:�t_oak_��> * 3, [[<��:��:5>, <��:��>, <��:��:5>], [<��:��:5>, <��:��>, <��:��:5>]]);
[��][��][��] =[�x]=>��.��("��:�t_oak_��", <��:�t_oak_��> * 3, [[<��:��:5>, <��:��:5>], [<��:��:5>, <��:��:5>], [<��:��:5>, <��:��:5>]]);
[��][��][��] =[�x]=>��.��("��:�t_oak_��", <��:�t_oak_��>, [[<��:��:5>, �}, <��:��:5>], [<��:��:5>, <��:��:5>, <��:��:5>]]);
[��][��][��] =[�x]=>��.�{("��:��_��", <��:��:9>, [<ore:�v>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:9> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�v>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:9> * 16, [[<ore:�w>, <ore:�w>, <ore:�w>], [<ore:�w>, <ore:�w>, <ore:�w>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��:9> * 8, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:�v>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_dye", <��:dye:6> * 2, [<ore:�>, <ore:�+>]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��_��:9> * 8, [<ore:�v>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:9> * 3, [[<��:��:9>, <��:��:9>]]);
[��][��][��] =[�x]=>��.�{("��:��_bed_��_��_bed", <��:bed:9>, [<��:bed>, <ore:�v>]);
[��][��][��] =[�x]=>��.��("��:��_bed", <��:bed:9>, [[<��:��:9>, <��:��:9>, <��:��:9>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:6>, [[<��:��:9>, <��:��:9>, <��:��:9>], [<��:��:9>, <��:��:9>, <��:��:9>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:�x_�i", <��:�x_�i>, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�y", <��:�y> * 8, [[<��:��>, <��:dye:3>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:�"", <��:�">, [[�}, <ore:��>, �}], [<ore:��>, <ore:��>, <ore:��>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:�z", <��:�z>, [[�}, <��:��_��>, �}], [<��:��_��>, <��:�>, <��:��_��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_� ", <��:��_� > * 6, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��:3> * 6, [[<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_�|", <��:�|:1> * 4, [[<��:�|>, <��:��>], [<��:��>, <��:�|>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��> * 9, [[<��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:�}", <��:�}>, [[�}, <ore:�.>, �}], [<ore:�.>, <ore:��>, <ore:�.>], [�}, <ore:�.>, �}]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<��:��_��>, <��:��_��>], [<��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:3>, [[<��:��_��:5>], [<��:��_��:5>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:1>, [[<��:��_��:1>], [<��:��_��:1>]]);
[��][��][��] =[�x]=>��.��("��:��_red_��", <��:red_��:1>, [[<��:��_��>], [<��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_�_��", <��:�_��:1>, [[<��:��_��:7>], [<��:��_��:7>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<ore:��>], [<��:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �}, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�~", <��:�~>, [[<ore:��>, �}, <ore:��>], [<ore:��>, �}, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_on_a_��", <��:��_on_a_��>, [[<��:�Z_rod>, �}], [�}, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��>, <ore:egg>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<ore:��>, �}, <ore:��>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.�{("��:�_��", <��:��:12>, [<ore:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:�_��_��_��", <��:��_��_��:12> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:�_��_��_��", <��:��_��_��:12> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�_��_��", <��:��_��:12> * 8, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:�_��_��", <��:��_��:12> * 8, [<ore:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:�_��", <��:��:12> * 3, [[<��:��:12>, <��:��:12>]]);
[��][��][��] =[�x]=>��.�{("��:�_bed_��_��_bed", <��:bed:12>, [<��:bed>, <ore:��>]);
[��][��][��] =[�x]=>��.��("��:�_bed", <��:bed:12>, [[<��:��:12>, <��:��:12>, <��:��:12>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�_��", <��:��:3>, [[<��:��:12>, <��:��:12>, <��:��:12>], [<��:��:12>, <��:��:12>, <��:��:12>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 4, [[<��:��_��>, �}, �}], [<��:��_��>, <��:��_��>, �}], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��:4> * 6, [[<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<��:��>, <��:��>], [<��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[�}, <��:�%_rod>, �}], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:�", <��:�> * 4, [[<ore:��>, �}, <ore:��>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:bow", <��:bow>, [[�}, <ore:��>, <ore:��>], [<ore:��>, �}, <ore:��>], [�}, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<��:��>, <��:��>, <��:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��", <��:��>, [<ore:��>, <ore:��>, <ore:��>, <ore:�5>]);
[��][��][��] =[�x]=>��.�{("��:��_��_��_��", <��:dye:15> * 3, [<ore:��>]);
[��][��][��] =[�x]=>��.�{("��:��_��_��_��", <��:dye:15> * 9, [<��:��_��>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<��:dye:15>, <��:dye:15>, <��:dye:15>], [<��:dye:15>, <��:dye:15>, <��:dye:15>], [<��:dye:15>, <��:dye:15>, <��:dye:15>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<��:��>, �}, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��", <��:��:11>, [<ore:�>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:11> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:11> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��:11> * 8, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:�>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��_��:11> * 8, [<ore:�>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:11> * 3, [[<��:��:11>, <��:��:11>]]);
[��][��][��] =[�x]=>��.�{("��:��_bed_��_��_bed", <��:bed:11>, [<��:bed>, <ore:�>]);
[��][��][��] =[�x]=>��.��("��:��_bed", <��:bed:11>, [[<��:��:11>, <��:��:11>, <��:��:11>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:4>, [[<��:��:11>, <��:��:11>, <��:��:11>], [<��:��:11>, <��:��:11>, <��:��:11>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.�{("��:�%_��", <��:�%_��> * 2, [<��:�%_rod>]);
[��][��][��] =[�x]=>��.�{("��:��_��", <��:��:15>, [<ore:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:15> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��_��_��:15> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��:15> * 8, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��_��:15> * 8, [<ore:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:15> * 3, [[<��:��:15>, <��:��:15>]]);
[��][��][��] =[�x]=>��.�{("��:��_bed_��_��_bed", <��:bed:15>, [<��:bed>, <ore:��>]);
[��][��][��] =[�x]=>��.��("��:��_bed", <��:bed:15>, [[<��:��:15>, <��:��:15>, <��:��:15>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>, [[<��:��:15>, <��:��:15>, <��:��:15>], [<��:��:15>, <��:��:15>, <��:��:15>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��:2> * 6, [[<��:��:2>, <��:��:2>, <��:��:2>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 4, [[<��:��:2>, �}, �}], [<��:��:2>, <��:��:2>, �}], [<��:��:2>, <��:��:2>, <��:��:2>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:2> * 4, [[<��:log:2>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��_��>, [[<��:��>, <��:��:2>, <��:��>], [<��:��>, <��:��:2>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 3, [[<��:��:2>, <��:��>, <��:��:2>], [<��:��:2>, <��:��>, <��:��:2>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 3, [[<��:��:2>, <��:��:2>], [<��:��:2>, <��:��:2>], [<��:��:2>, <��:��:2>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<��:��:2>, �}, <��:��:2>], [<��:��:2>, <��:��:2>, <��:��:2>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [�}, <��:�>, �}]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<��:�b>, <��:�b>, <��:�b>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��> * 4, [[<��:�X>], [<ore:��>], [<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<ore:��>, <ore:��>, <ore:��>], [�}, <ore:��>, �}], [<ore:��>, <��:��_��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<��:�I_��>, <��:�I_��>, <��:�I_��>], [�}, <ore:��>, �}], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��", <��:��:5> * 2, [<ore:�>, <ore:��>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 6, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��_��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��:4> * 6, [[<��:��:4>, <��:��:4>, <��:��:4>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 4, [[<��:��:4>, �}, �}], [<��:��:4>, <��:��:4>, �}], [<��:��:4>, <��:��:4>, <��:��:4>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:4> * 4, [[<��:�u>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��_��_��>, [[<��:��>, <��:��:4>, <��:��>], [<��:��>, <��:��:4>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 3, [[<��:��:4>, <��:��>, <��:��:4>], [<��:��:4>, <��:��>, <��:��:4>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��> * 3, [[<��:��:4>, <��:��:4>], [<��:��:4>, <��:��:4>], [<��:��:4>, <��:��:4>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[<��:��:4>, �}, <��:��:4>], [<��:��:4>, <��:��:4>, <��:��:4>]]);
[��][��][��] =[�x]=>��.�{("��:��_�", <��:��>, [<ore:��>, <ore:��>, <��:��:*>, <ore:��>, <ore:��>, <ore:��>, <��:�`_��:*>, <ore:��>]);
[��][��][��] =[�x]=>��.��("��:��_can", <��:��:��>, [[<��:��:*>, �}, �}], [<��:��:*>, <��:�:*>, <��:��:*>], [�}, <��:��:*>, �}]]);
[��][��][��] =[�x]=>��.�{("��:��_�J", <��:��>, []);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:1>, [[<ore:��>], [<ore:��>], [<ore:�F>]]);
[��][��][��] =[�x]=>��.��("��:��_��_�J", <��:��:2>, [[<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <��:��:1>, <��:��:1>]]);
[��][��][��] =[�x]=>��.�{("��:��_��", <��:��:1> * 9, [<��:��:2>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>, [[�}, �}, <ore:�.>], [�}, <��:��:1>, �}], [<��:��:1>, �}, �}]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>, [[�}, <ore:�.>, <ore:�.>], [�}, <��:��:1>, <ore:�.>], [<��:��:1>, �}, �}]]);
[��][��][��] =[�x]=>��.�{("��:��_��", <��:��>, [<��:��:*>, <��:�:*>]);
[��][��][��] =[�x]=>��.�{("��:�_��_��", <��:��> * 4, [<��:��:1>]);
[��][��][��] =[�x]=>��.�{("��:�_��", <��:��:1>, []);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:2> * 5, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_can", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_can_��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��:*>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_can_��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>, [[�}, <ore:�.>, �}], [<��:��:*>, <��:�b:*>, <��:��:*>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��> * 3, [[<ore:��>, <ore:��>, <ore:��>], [<��:��:2>, <��:��>, <��:��:2>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:1> * 3, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:2>, <��:��>, <��:��:2>]]);
[��][��][��] =[�x]=>��.��("��:��_�", <��:��:2>, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <��:��>, <��:��:3>], [<��:��:3>, <ore:�.>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:��_�", <��:��:3>, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:1>, <��:��>, <��:��:1>], [<��:��:3>, <��:��:3>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:4>, [[<��:��:3>, <��:��:3>, <��:��:3>], [�}, <��:��:1>, <��:��>], [<��:��:3>, <��:��:3>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:��_�\", <��:��:5>, [[<��:��:3>, <��:��>, <��:��:3>], [<��:��:3>, <��:��:1>, <��:��:3>], [<��:��:3>, <��:��_��_��:*>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:7>, [[�}, <��:��:1>, �}], [<��:��:2>, <��:��>, <��:��:2>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:8>, [[<��:��:3>, <��:�`_��:*>, <��:��:3>], [<��:��_��:*>, <��:��:1>, <��:��_��:*>], [<��:��:3>, <��:��:2>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:��_�}", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��_��:*>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��> * 9, [<��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��_1", <��:��:1>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_1_��", <��:��> * 9, [<��:��:1>]);
[��][��][��] =[�x]=>��.��("��:��_��_2", <��:��:2>, [[<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <��:��:1>, <��:��:1>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_2_��", <��:��:1> * 9, [<��:��:2>]);
[��][��][��] =[�x]=>��.��("��:��_��_3", <��:��:3>, [[<��:��:2>, <��:��:2>, <��:��:2>], [<��:��:2>, <��:��:2>, <��:��:2>], [<��:��:2>, <��:��:2>, <��:��:2>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_3_��", <��:��:2> * 9, [<��:��:3>]);
[��][��][��] =[�x]=>��.��("��:��_��_4", <��:��:4>, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <��:��:3>, <��:��:3>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_4_��", <��:��:3> * 9, [<��:��:4>]);
[��][��][��] =[�x]=>��.��("��:��_��_5", <��:��:5>, [[<��:��:4>, <��:��:4>, <��:��:4>], [<��:��:4>, <��:��:4>, <��:��:4>], [<��:��:4>, <��:��:4>, <��:��:4>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_5_��", <��:��:4> * 9, [<��:��:5>]);
[��][��][��] =[�x]=>��.��("��:��_��_6", <��:��:6>, [[<��:��:5>, <��:��:5>, <��:��:5>], [<��:��:5>, <��:��:5>, <��:��:5>], [<��:��:5>, <��:��:5>, <��:��:5>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_6_��", <��:��:5> * 9, [<��:��:6>]);
[��][��][��] =[�x]=>��.��("��:��_��_7", <��:��:7>, [[<��:��:6>, <��:��:6>, <��:��:6>], [<��:��:6>, <��:��:6>, <��:��:6>], [<��:��:6>, <��:��:6>, <��:��:6>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_7_��", <��:��:6> * 9, [<��:��:7>]);
[��][��][��] =[�x]=>��.��("��:��_�|", <��:��>, [[<��:�|>, <��:�|>, <��:�|>], [<��:�|>, <��:�|>, <��:�|>], [<��:�|>, <��:�|>, <��:�|>]]);
[��][��][��] =[�x]=>��.�{("��:��_�|_��", <��:�|> * 9, [<��:��>]);
[��][��][��] =[�x]=>��.��("��:��_�|_1", <��:��:1>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_�|_1_��", <��:��> * 9, [<��:��:1>]);
[��][��][��] =[�x]=>��.��("��:��_�|_2", <��:��:2>, [[<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <��:��:1>, <��:��:1>]]);
[��][��][��] =[�x]=>��.�{("��:��_�|_2_��", <��:��:1> * 9, [<��:��:2>]);
[��][��][��] =[�x]=>��.��("��:��_�|_3", <��:��:3>, [[<��:��:2>, <��:��:2>, <��:��:2>], [<��:��:2>, <��:��:2>, <��:��:2>], [<��:��:2>, <��:��:2>, <��:��:2>]]);
[��][��][��] =[�x]=>��.�{("��:��_�|_3_��", <��:��:2> * 9, [<��:��:3>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��> * 9, [<��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��_1", <��:��:1>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_1_��", <��:��> * 9, [<��:��:1>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��> * 9, [<��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��_1", <��:��:1>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_1_��", <��:��> * 9, [<��:��:1>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��> * 9, [<��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��_1", <��:��:1>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_1_��", <��:��> * 9, [<��:��:1>]);
[��][��][��] =[�x]=>��.��("��:��_��_2", <��:��:2>, [[<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <��:��:1>, <��:��:1>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_2_��", <��:��:1> * 9, [<��:��:2>]);
[��][��][��] =[�x]=>��.��("��:��_��_3", <��:��:3>, [[<��:��:2>, <��:��:2>, <��:��:2>], [<��:��:2>, <��:��:2>, <��:��:2>], [<��:��:2>, <��:��:2>, <��:��:2>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_3_��", <��:��:2> * 9, [<��:��:3>]);
[��][��][��] =[�x]=>��.��("��:��_��_4", <��:��:4>, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <��:��:3>, <��:��:3>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_4_��", <��:��:3> * 9, [<��:��:4>]);
[��][��][��] =[�x]=>��.��("��:��_��_5", <��:��:5>, [[<��:��:4>, <��:��:4>, <��:��:4>], [<��:��:4>, <��:��:4>, <��:��:4>], [<��:��:4>, <��:��:4>, <��:��:4>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_5_��", <��:��:4> * 9, [<��:��:5>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>, [[�}, �}, <ore:��>], [�}, <ore:��>, <ore:��>], [<ore:��>, �}, �}]]);
[��][��][��] =[�x]=>��.�{("��:�`_��", <��:��> * 8, [<��:�`_��:*>, <��:��:*>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��> * 4, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �}, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��> * 16, [[<ore:��>], [<ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_�L", <��:�L>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[�}, <ore:��>, <ore:��>], [�}, �}, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[�}, <ore:��>, <ore:��>], [�}, �}, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_�I", <��:��_�I>, [[�}, <ore:��>, <ore:��>], [�}, �}, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��_��>, [[�}, <ore:�.>, <ore:�.>], [�}, �}, <ore:�.>], [<ore:��>, <ore:�.>, <ore:�.>]]);
[��][��][��] =[�x]=>��.��("��:��_�p", <��:��_�p>, [[�}, <ore:�F>, <ore:�F>], [�}, �}, <ore:�F>], [<ore:��>, <ore:�F>, <ore:�F>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:sun_�c", <��:��:250>, [<ore:�F>, <ore:��>, <ore:��>, <ore:��>, <ore:��>]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.�{("��:��", <��:��> * 4, [<ore:��>, <ore:��>, <ore:��>, <ore:��>]);
[��][��][��] =[�x]=>��.�{("��:��", <��:��:1> * 4, [<��:��>, <��:��>, <��:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��", <��:��:2> * 4, [[<��:��:*>, <��:��:*>], [<��:��:*>, <��:��:*>]]);
[��][��][��] =[�x]=>��.�{("��:��_��", <��:��:4> * 4, [<ore:��>, <ore:��>, <ore:��>, <ore:��>]);
[��][��][��] =[�x]=>��.�{("��:��", <��:��:5> * 4, [<��:��:2>, <��:��>, <��:��:2>, <��:��>]);
[��][��][��] =[�x]=>��.�{("��:��_�c", <��:��>, [<��:��:*>, <ore:��>, <ore:��>, <ore:��>, <ore:��>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:1>, [[�}, <��:��_��:*>, �}], [<��:��_��:*>, <ore:��>, <��:��_��:*>], [�}, <��:��_��:*>, �}]]);
[��][��][��] =[�x]=>��.�{("��:��_eye", <��:��:2>, [<��:�`_��:*>, <ore:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:5>, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <ore:�F>, <��:��:3>], [<��:��:3>, <��:��:3>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:��_��_adv", <��:��:5> * 9, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <ore:��>, <��:��:3>], [<��:��:3>, <��:��:3>, <��:��:3>]]);
[��][��][��] =[�x]=>��.�{("��:�(_��", <��:��:6>, [<��:��:9>, <ore:�.>, <ore:��>]);
[��][��][��] =[�x]=>��.�{("��:�(_�/", <��:��:7>, [<��:��:9>, <ore:�.>, <��:�p:*>]);
[��][��][��] =[�x]=>��.�{("��:�(_��", <��:��:8>, [<��:��:9>, <��:�Q_��>]);
[��][��][��] =[�x]=>��.��("��:��_�J_to_��", <��:��:1>, [[<��:��:11>, <��:��:11>, <��:��:11>], [<��:��:11>, <��:��:11>, <��:��:11>], [<��:��:11>, <��:��:11>, <��:��:11>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_to_�J", <��:��:11> * 9, [<��:��:1>]);
[��][��][��] =[�x]=>��.��("��:��_�J_to_��", <��:��>, [[<��:��:12>, <��:��:12>, <��:��:12>], [<��:��:12>, <��:��:12>, <��:��:12>], [<��:��:12>, <��:��:12>, <��:��:12>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_to_�J", <��:��:12> * 9, [<��:��>]);
[��][��][��] =[�x]=>��.��("��:�(_��_��", <��:��:15>, [[<��:��>, <��:��:12>, <��:��>], [<��:��:12>, <��:��:6>, <��:��:12>], [<��:��>, <��:��:12>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:�(_��_��", <��:��:16>, [[<��:��:10>, <��:��:17>, <��:��:10>], [<��:��:17>, <��:��:15>, <��:��:17>], [<��:��:10>, <��:��:17>, <��:��:10>]]);
[��][��][��] =[�x]=>��.��("��:��_�J_to_��", <��:��:2>, [[<��:��:17>, <��:��:17>, <��:��:17>], [<��:��:17>, <��:��:17>, <��:��:17>], [<��:��:17>, <��:��:17>, <��:��:17>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_to_�J", <��:��:17> * 9, [<��:��:2>]);
[��][��][��] =[�x]=>��.�{("��:�Q_��", <��:��>, []);
[��][��][��] =[�x]=>��.�{("��:�Q_��_��", <��:��:1>, [<��:��>, <��:��:10>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��>.��({��: {id: "��:��"}, No_��: 1 as ��}), <ore:��>], [<��:��>, <ore:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:1>, [[<ore:��>, <ore:�F>, <ore:��>], [<��:��>.��({��: {id: "��:��"}, No_��: 1 as ��}), <��:��>, <��:�`_��:*>], [<ore:��>, <ore:�F>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_0", <��:��>, [[<ore:��>, <ore:�.>, <ore:��>], [<ore:�.>, <��:��:1>, <ore:�.>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:�.>, <��:��:1>.��({��: {id: "��:�e"}, No_��: 1 as ��})]]);
[��][��][��] =[�x]=>��.�{("��:��_��_��_0", <��:��>, [<ore:��>, <��:��:*>, <ore:��>]);
[��][��][��] =[�x]=>��.��("��:��_��_1", <��:��:1>, [[<��:��:*>, <ore:�.>, <��:��:*>], [<ore:�.>, <��:��:1>, <ore:�.>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:�.>, <��:��:1>.��({��: {id: "��:�e"}, No_��: 1 as ��})]]);
[��][��][��] =[�x]=>��.�{("��:��_��_��_1", <��:��:1>, [<��:��:*>, <��:��:*>, <��:��:*>]);
[��][��][��] =[�x]=>��.��("��:��_��_2", <��:��:2>, [[<ore:�
>, <ore:�.>, <ore:�>], [<ore:�.>, <��:��:1>, <ore:�.>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:�.>, <��:��:1>.��({��: {id: "��:�e"}, No_��: 1 as ��})]]);
[��][��][��] =[�x]=>��.�{("��:��_��_��_2", <��:��:2>, [<ore:�
>, <��:��:*>, <ore:�>]);
[��][��][��] =[�x]=>��.��("��:��_��_3", <��:��:3>, [[<��:�5:*>, <ore:�.>, <��:�5:*>], [<ore:�.>, <��:��:1>, <ore:�.>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:�.>, <��:��:1>.��({��: {id: "��:�e"}, No_��: 1 as ��})]]);
[��][��][��] =[�x]=>��.�{("��:��_��_��_3", <��:��:3>, [<��:�5:*>, <��:��:*>, <��:�5:*>]);
[��][��][��] =[�x]=>��.��("��:��_��_4", <��:��:4>, [[<ore:��>, <ore:�.>, <ore:��>], [<ore:�.>, <��:��:1>, <ore:�.>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:�.>, <��:��:1>.��({��: {id: "��:�e"}, No_��: 1 as ��})]]);
[��][��][��] =[�x]=>��.�{("��:��_��_��_4", <��:��:4>, [<ore:��>, <��:��:*>, <ore:��>]);
[��][��][��] =[�x]=>��.��("��:��_��_5", <��:��:5>, [[<��:��>, <ore:�.>, <��:��:1>], [<ore:�.>, <��:��:1>, <ore:�.>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:�.>, <��:��:1>.��({��: {id: "��:�e"}, No_��: 1 as ��})]]);
[��][��][��] =[�x]=>��.�{("��:��_��_��_5", <��:��:5>, [<��:��>, <��:��:*>, <��:��:1>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>, [[�}, <��:��>], [<ore:��>, <ore:��>], [<ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:bag_of_��", <��:��>, [[<ore:�.>, <ore:�.>, <ore:�.>], [<ore:��>, <��:��:1>, <ore:��>], [<ore:�.>, <ore:�.>, <ore:�.>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:1> * 4, [[<��:��>, <��:��>], [<��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:2> * 4, [[<��:��:1>, <��:��:1>], [<��:��:1>, <��:��:1>]]);
[��][��][��] =[�x]=>��.�{("��:��_�t", <��:��:3> * 2, [<��:��>, <ore:��>, <��:��>]);
[��][��][��] =[�x]=>��.�{("��:��_��", <��:��:4> * 2, [<��:��>, <ore:��>, <��:��>]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��> * 8, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��:5>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��:1>, [<��:��>, <��:��_��:*>]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��:2> * 8, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��:5>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_�t", <��:��:3> * 8, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <��:��:5>, <��:��:3>], [<��:��:3>, <��:��:3>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��> * 64, [[<��:��_��>, <��:��_��>, <��:��_��>], [<ore:��>, <ore:��>, <ore:��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <��:�`_��:*>, <��:��:3>], [<��:��:3>, <��:��>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[�}, <ore:��>, <ore:��>], [�}, <ore:��>, <ore:��>], [<ore:��>, �}, �}]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[�}, <��:��:1>, �}], [<��:��:1>, �}, <��:��:1>]]);
[��][��][��] =[�x]=>��.�{("��:��", <��:��>, [<��:��:*> | <��:��_��:*> | <��:��_��:*>, <ore:�.>, <��:�b:*>]);
[��][��][��] =[�x]=>��.�{("��:��", <��:��>, [<��:��:*>, <��:��:*>, <��:��_�T:*>, <ore:��>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>, [[<ore:��>, <��:��:2>, <ore:��>], [<ore:��>, <��:��>.��({��: {��: {��: 1 as ��}, id: "��:��"}, No_��: 1 as ��}), <ore:��>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��> * 4, [[<ore:��>, <��:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��:1> * 4, [[<ore:��>, <��:��>, <ore:��>], [<ore:��>, <��:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��:5> * 4, [<��:��>, <��:��>, <ore:��>]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��:2> * 4, [[<ore:��>, <��:��>, <ore:��>], [<ore:��>, <��:��:*>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��:3> * 2, [[�}, <��:�`_��:*>, �}], [<��:��>, <ore:�l>, <��:��>], [�}, <��:�`_��:*>, �}]]);
[��][��][��] =[�x]=>��.��("��:��_��_��_��", <��:��:4> * 2, [[�}, <��:�`_��:*>, �}], [<��:��:2>, <ore:�F>, <��:��:2>], [�}, <��:�`_��:*>, �}]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��:6>, [[<ore:��>, <��:��>, <ore:��>], [<ore:�.>, <��:��_��:*>, <ore:�.>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��>, [[<��:��:3>, <��:��>, <��:��:3>], [<��:��:3>, <��:��>, <��:��:3>], [<��:��:3>, <��:��>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>, [[<ore:��>, <��:��:2>, <ore:��>], [<ore:��>, <��:��>, <ore:��>], [<ore:��>, <��:��:2>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��", <��:��>, [<��:�m:*>, <��:��>, <��:�x_�i:*>]);
[��][��][��] =[�x]=>��.�{("��:��", <��:��>, [<��:�m:*>, <ore:��>, <��:�__eye:*>]);
[��][��][��] =[�x]=>��.�{("��:��", <��:��>, [<��:�m:*>, <��:��>, <��:�I_��:*>]);
[��][��][��] =[�x]=>��.�{("��:��", <��:��>, [<��:�m:*>, <��:��>, <��:�4:*>]);
[��][��][��] =[�x]=>��.�{("��:��_��", <��:��>, [<��:��_�T:*>, <��:�`_��:*>, <��:�`_��:*>]);
[��][��][��] =[�x]=>��.��("��:��_16", <��:��>, [[<ore:��>, <��:��_��:3> | <��:��_��>, <ore:��>], [<ore:��>, <��:�:*>, <ore:��>], [<ore:��>, <��:��_��:3> | <��:��_��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_256", <��:��:1>, [[<ore:��>, <��:�N_�-_��_��:*>, <ore:��>], [<ore:��>, <��:�~:*>, <ore:��>], [<ore:��>, <��:�N_�-_��_��:*>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:2>, [[<ore:�F>, <��:�,_�-_��_��:*>, <ore:�F>], [<ore:�F>, <��:��:1>, <ore:�F>], [<ore:�F>, <��:�,_�-_��_��:*>, <ore:�F>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:3>, [[<ore:��>, <��:��>, <ore:��>], [<ore:��>, <��:��:2>, <ore:��>], [<ore:��>, <��:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.�{("��:��_��_16", <��:��>, [<��:��>]);
[��][��][��] =[�x]=>��.�{("��:��_��_256", <��:��:1>, [<��:��:1>]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��:2>, [<��:��:2>]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��:3>, [<��:��:3>]);
[��][��][��] =[�x]=>��.�{("��:��_��_��", <��:��:4>, [<��:��:4>]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��> * 4, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_�V", <��:��>.��({��: "��:�V"}), [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>.��({��: "��:��"}), [[�}, <��:��_��:*>, �}], [<ore:�F>, <��:��>, <ore:�F>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>.��({��: "��:��"}), [[<ore:��>, <��:��:*> | <��:��_��:*>, <ore:��>], [<ore:��>, <��:��>, <ore:��>], [<ore:��>, <��:��:*> | <��:��_��:*>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_�V", <��:��>.��({��: "��:��"}), [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��>, <ore:��>], [<ore:��>, <��:�V:*>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>.��({��: "��:��_��"}), [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:�V:*>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��>.��({��: "��:��_��"}), [[<��:��> | <��:� > | <��:��>, <��:��> | <��:� > | <��:��>, <��:��> | <��:� > | <��:��>], [<��:��> | <��:� > | <��:��>, <��:��_��> | <��:��_��> | <��:��_��> | <��:��_��> | <��:��_��> | <��:��_��>, <��:��> | <��:� > | <��:��>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��>.��({��: "��:��_��"}), [[<��:�%_rod:*>, <��:�%_rod:*>, <��:�%_rod:*>], [<��:�%_rod:*>, <��:��_��:*>, <��:�%_rod:*>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_tnt", <��:��>.��({��: "��:��_tnt"}), [[<��:��:*>, <��:��:*>, <��:��:*>], [<��:��:*>, <��:tnt:*>, <��:��:*>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_�", <��:��>.��({��: "��:��_�"}), [[<ore:�.>, <ore:�.>, <ore:�.>], [<ore:�.>, <��:�_��:*>, <ore:�.>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��>.��({��: "��:��_��"}), [[<��:dye:9>, <��:dye:9>, <��:dye:9>], [<��:dye:9>, <��:��:6>, <��:dye:9>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_� ", <��:��>.��({��: "��:��_� "}), [[<��:�:1>, <��:�:1>, <��:�:1>], [<��:�:1>, <��:��_��:*>, <��:�:1>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_�`", <��:��>.��({��: "��:��_�`"}), [[<��:�`_��:*>, <��:�`_��:*>, <��:�`_��:*>], [<��:�`_��:*>, <��:�b:*>, <��:�`_��:*>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��>.��({��: "��:��_��"}), [[<��:��:*>, <��:��:*>, <��:��:*>], [<��:��:*>, <��:��_��:*>, <��:��:*>], [<ore:��>, <��:��>.��({��: "��:��_�"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_�", <��:��>.��({��: "��:��_�"}), [[<��:dye:4>, <��:dye:4>, <��:dye:4>], [<��:dye:4>, <��:��_��:*>, <��:dye:4>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_�", <��:��>.��({��: "��:��_�"}), [[<��:�_��:*>, <��:�_��:*>, <��:�_��:*>], [<��:�_��:*>, <��:end_rod:*>, <��:�_��:*>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_ice", <��:��>.��({��: "��:��_ice"}), [[<��:��:*>, <��:��:*>, <��:��:*>], [<��:��:*>, <��:ice:*>, <��:��:*>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_�", <��:��>.��({��: "��:��_�"}), [[<��:��> | <��:�_�>, <��:��> | <��:�_�>, <��:��> | <��:�_�>], [<��:��> | <��:�_�>, <��:�__eye>, <��:��> | <��:�_�>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_�", <��:��>.��({��: "��:��_�"}), [[<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <��:�h_�i:*>, <��:��:1>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��>.��({��: "��:��_��"}), [[<��:��_��:*>, <��:��_��:*>, <��:��_��:*>], [<��:��_��:*>, <��:��:*>, <��:��_��:*>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:��:1>, [[<��:��>, <��:��>, <��:��>], [<��:��>, �}, <��:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:�", <��:��> * 4, [[<��:��>], [<��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:�	", <��:� >, [[<��:��:3>, <��:��:3>, <��:��:3>], [<ore:��>, <��:��>, <ore:��>], [<��:��:3>, <��:��:3>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:�_�
", <��:�>, [[<��:end_��:*>, <��:end_rod:*>, <��:end_��:*>], [<��:end_��:*>, <��:�p_��:*>, <��:end_��:*>], [<��:��:3>, <��:��:3>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("��:�_��", <��:�>, [[<��:end_��:*>, <��:��:3>, <��:end_��:*>], [<��:��:3>, <ore:�_��_�>, <��:��:3>], [<��:end_��:*>, <��:��:3>, <��:end_��:*>]]);
[��][��][��] =[�x]=>��.��("��:�_��", <��:�_��> * 4, [[�}, <��:��_��:*>, �}], [<��:��_��:*>, <��:��>, <��:��_��:*>], [<��:��>, <��:log>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:�_��", <��:�_��> * 4, [[�}, <��:��_��:*>, �}], [<��:��_��:*>, <ore:��>, <��:��_��:*>], [<ore:��>, <ore:�>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�_�I", <��:�_�I> * 4, [[�}, <��:�I_��:*>, �}], [<��:�I_��:*>, <ore:��>, <��:�I_��:*>], [<ore:��>, <ore:�	>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�_��", <��:�_��> * 4, [[�}, <��:�Q_��:*>, �}], [<��:�Q_��:*>, <ore:�.>, <��:�Q_��:*>], [<ore:�.>, <ore:�
>, <ore:�.>]]);
[��][��][��] =[�x]=>��.��("��:�_�p", <��:�_�p> * 4, [[�}, <��:�p_��:*>, �}], [<��:�p_��:*>, <ore:�F>, <��:�p_��:*>], [<ore:�F>, <ore:�>, <ore:�F>]]);
[��][��][��] =[�x]=>��.��("��:��", <��:�>, [[<ore:��>, <��:��:2>, <ore:��>], [<��:��:2>, <��:��:*>, <��:��:2>], [<ore:��>, <��:�z:*>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�_��", <��:�>, [[<��:��:*>, <��:��:*>, <��:��:*>], [<��:��:*>, <��:��:*>, <��:��:*>], [<��:��:*>, <��:��:*>, <��:��:*>]]);
[��][��][��] =[�x]=>��.�{("��:�_��", <��:�> * 9, [<��:��:*>]);
[��][��][��] =[�x]=>��.��("��:�_��_to_��", <��:��>, [[<��:�>, <��:�>, <��:�>], [<��:�>, <��:�>, <��:�>], [<��:�>, <��:�>, <��:�>]]);
[��][��][��] =[�x]=>��.��("��:�_gen_�", <��:�:1>, [[<��:��>.��({��: "��:��_� "}), <��:��>.��({��: "��:��_�"}), <��:��>.��({��: "��:��_��"})], [<��:��>.��({��: "��:��_��"}), <��:��>, <��:��>.��({��: "��:��_��"})], [<��:��>.��({��: "��:��_��"}), <��:��>.��({��: "��:��_��"}), <��:��>.��({��: "��:��_tnt"})]]);
[��][��][��] =[�x]=>��.��("��:�_gen_top", <��:�:2>, [[<��:��>.��({��: "��:��_��"}), <��:��>.��({��: "��:��_�"}), <��:��>.��({��: "��:��_�"})], [<��:��>.��({��: "��:��_�"}), <��:��>, <��:��>.��({��: "��:��_�`"})], [<��:��>.��({��: "��:��"}), <��:��>.��({��: "��:��_ice"}), <��:��>.��({��: "��:��_�"})]]);
[��][��][��] =[�x]=>��.�{("��:�_gen", <��:�>, [<��:�:1>, <��:�:2>]);
[��][��][��] =[�x]=>��.��("��:�_�S", <��:��> * 8, [[<��:�S:*>, <��:�S:*>, <��:�S:*>], [<��:�S:*>, <��:��:1>, <��:�S:*>], [<��:�S:*>, <��:�S:*>, <��:�S:*>]]);
[��][��][��] =[�x]=>��.��("��:�", <��:�>, [[�}, �}, <ore:��>], [�}, <��:��_��:*>, �}], [<ore:��>, �}, �}]]);
[��][��][��] =[�x]=>��.��("��:�_�", <��:�>, [[<��:dye:13> | <��:��:3> | <��:dye:5>, <ore:��>, <��:dye:13> | <��:��:3> | <��:dye:5>], [<ore:��>, <ore:��>, <ore:��>], [<��:dye:13> | <��:��:3> | <��:dye:5>, <ore:��>, <��:dye:13> | <��:��:3> | <��:dye:5>]]);
[��][��][��] =[�x]=>��.��("��:�_��", <��:�:9>, [[<ore:��>, <ore:�F>, <ore:��>], [<ore:��>, <��:��>, <ore:��>], [<ore:��>, <ore:�F>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�_�A", <��:�>, [[<��:�`_��:*>, <��:�:9>, <��:�`_��:*>], [<ore:��>, <��:�z:*>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�_�", <��:�:1>, [[<��:end_rod:*>, �}, <��:end_rod:*>], [<ore:��>, <ore:��>, <ore:��>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.�{("��:�_�", <��:�:4>, [<��:�:9>, <��:�_��:*>, <��:�_��:*>]);
[��][��][��] =[�x]=>��.�{("��:�_�", <��:�:5>, [<��:�:9>, <��:��:*>, <��:��:*>]);
[��][��][��] =[�x]=>��.�{("��:�_�", <��:�:2>, [<��:�:9>, <��:�_��:*>, <��:�_��:*>]);
[��][��][��] =[�x]=>��.�{("��:�_�", <��:�:3>, [<��:�:9>, <ore:��>, <ore:��>]);
[��][��][��] =[�x]=>��.�{("��:�_�_�", <��:�:7>, [<��:�:9>, <��:��:*>, <��:��:*>]);
[��][��][��] =[�x]=>��.�{("��:�_�_�", <��:�:8>, [<��:�:9>, <��:�h_�i:*>, <��:�h_�i:*>]);
[��][��][��] =[�x]=>��.�{("��:�_�", <��:�:6>, [<��:�:9>, <��:�:*>, <��:�:*>]);
[��][��][��] =[�x]=>��.�{("��:��_��", <��:�>, [<ore:��>, <��:��>, <ore:��>]);
[��][��][��] =[�x]=>��.��("��:�_0", <��:�>, [[�}, <��:��:4>, �}], [<��:��:4>, <��:�I_��>, <��:��:4>], [�}, <��:��:4>, �}]]);
[��][��][��] =[�x]=>��.��("��:�_1", <��:�:1>, [[�}, <��:�>, �}], [<��:�I_��>, <��:��_��>, <��:�I_��>], [�}, <��:�>, �}]]);
[��][��][��] =[�x]=>��.��("��:�_2", <��:�:2>, [[�}, <��:�:1>, �}], [<��:��_��>, <��:�p_��>, <��:��_��>], [�}, <��:�:1>, �}]]);
[��][��][��] =[�x]=>��.��("��:�_3", <��:�:3>, [[�}, <��:�:2>, �}], [<��:�p_��>, <��:�k_��>, <��:�p_��>], [�}, <��:�:2>, �}]]);
[��][��][��] =[�x]=>��.��("��:�_4", <��:�:4>, [[�}, <��:�:3>, �}], [<��:�k_��>, <��:�_��>, <��:�k_��>], [�}, <��:�:3>, �}]]);
[��][��][��] =[�x]=>��.��("��:�_5", <��:�:5>, [[�}, <��:�:4>, �}], [<��:�_��>, <��:�_�T>, <��:�_��>], [�}, <��:�:4>, �}]]);
[��][��][��] =[�x]=>��.��("��:�_6", <��:�:6>, [[�}, <��:�:5>, �}], [<��:�_�T>, <��:�>, <��:�_�T>], [�}, <��:�:5>, �}]]);
[��][��][��] =[�x]=>��.��("��:�_7", <��:�:7>, [[�}, <��:�:6>, �}], [<��:�>, <��:��_��>, <��:�>], [�}, <��:�:6>, �}]]);
[��][��][��] =[�x]=>��.��("��:�_8", <��:�:8>, [[�}, <��:�:7>, �}], [<��:��_��>, <��:�I_�J>, <��:��_��>], [�}, <��:�:7>, �}]]);
[��][��][��] =[�x]=>��.��("��:�", <��:�>, [[<��:�:8>], [<��:�:8>], [<��:��:*>]]);
[��][��][��] =[�x]=>��.��("��:��_�_��", <��:�> * 8, [[<��:��:*>], [�}], [<��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_�_��", <��:�:1> * 8, [[<��:��:*>], [�}], [<��:��:2>]]);
[��][��][��] =[�x]=>��.�{("��:��_�", <��:� >, [<��:�x_�i:*>, <ore:��>, <��:�4:*>]);
[��][��][��] =[�x]=>��.��("��:�_bow", <��:�!>, [[�}, <��:�:8>, <ore:��>], [<ore:��>, �}, <ore:��>], [�}, <��:�:8>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�\_axe", <��:�#>, [[<��:�:8>, <��:�:8>], [<��:�:8>, <��:��:*>], [�}, <��:��:*>]]);
[��][��][��] =[�x]=>��.��("��:�", <��:�$>, [[<ore:��>, <��:�`_��:*>, <ore:��>], [<��:�`_��:*>, <��:��>, <��:�`_��:*>], [<ore:��>, <��:�`_��:*>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:lux_�_��", <��:�%>, [[<��:��:17>, <ore:��>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>]]);
[��][��][��] =[�x]=>��.��("��:lux_�_��", <��:�%:1>, [[<��:��:17>, <ore:�>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>]]);
[��][��][��] =[�x]=>��.��("��:lux_�_red", <��:�%:2>, [[<��:��:17>, <ore:��>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>]]);
[��][��][��] =[�x]=>��.��("��:lux_�_��", <��:�%:3>, [[<��:��:17>, <ore:��>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>]]);
[��][��][��] =[�x]=>��.��("��:lux_�_��", <��:�%:4>, [[<��:��:17>, <ore:�O>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>]]);
[��][��][��] =[�x]=>��.��("��:lux_�_��", <��:�%:5>, [[<��:��:17>, <ore:�w>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>]]);
[��][��][��] =[�x]=>��.��("��:lux_�_��", <��:�%:6>, [[<��:��:17>, <ore:��>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>]]);
[��][��][��] =[�x]=>��.��("��:lux_�_��", <��:�%:7>, [[<��:��:17>, <ore:��>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>]]);
[��][��][��] =[�x]=>��.�{("��:�&_log_to_��_raw", <��:�&_��> * 4, [<��:�&_log>]);
[��][��][��] =[�x]=>��.�{("��:�&_log_to_��_�", <��:�&_��:1> * 4, [<��:�&_log:1>]);
[��][��][��] =[�x]=>��.��("�':�(_�)", <�':�(_�)>, [[<��:�b>, <��:�b>, <��:�b>], [<��:�b>, <�':�(_�*>, <��:�b>], [<��:�b>, <��:�b>, <��:�b>]]);
[��][��][��] =[�x]=>��.��("�':�(_�*", <�':�(_�*> * 2, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:�+>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�(_�,_�b", <�':�(_�,>, [[<ore:��>, <ore:��>, <ore:��>], [<��:�b>, <�':�(_�*>, <��:�b>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�(_�,_�I", <�':�(_�,:1>, [[<ore:��>, <ore:��>, <ore:��>], [<��:�I_�J>, <�':�(_�*>, <��:�I_�J>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�(_�,_��", <�':�(_�,:2>, [[<ore:��>, <ore:��>, <ore:��>], [<��:��_�J>, <�':�(_�*>, <��:��_�J>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�(_�,_�k", <�':�(_�,:4>, [[<ore:��>, <ore:��>, <ore:��>], [<��:�k>, <�':�(_�*>, <��:�k>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�(_�,_�p", <�':�(_�,:3>, [[<ore:��>, <ore:��>, <ore:��>], [<��:�p>, <�':�(_�*>, <��:�p>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�(_�-_� ", <�':�(_�-:1>, [[<��:�z>, <ore:��>, <��:�z>], [<ore:��>, <�':�(_�*>, <ore:��>], [<��:��>, <ore:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("�':�(_�-_�!", <�':�(_�->, [[<��:��_��>, <ore:��>, <��:��_��>], [<ore:��>, <�':�(_�*>, <ore:��>], [<��:��>, <ore:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("�':�(_��_min", <�':�(_��:2>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <�':�(_�*>, <ore:��>], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("�':�(_��_max", <�':�(_��:1>, [[<��:��>, <��:��>, <��:��>], [<ore:��>, <�':�(_�*>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�(_��_�"", <�':�(_��>, [[<��:��>, <ore:��>, <��:��>], [<ore:��>, <�':�(_�*>, <ore:��>], [<��:��>, <ore:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("�':�(_one_�/", <�':�(_one_�/>, [[<ore:��>, <ore:��>, <ore:��>], [<��:�X>, <�':�(_�*>, <��:�X>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�(_�0", <�':�(_�0>, [[<��:dye:4>, <ore:��>, <��:dye:4>], [<ore:��>, <�':�(_�*>, <ore:��>], [<��:dye:4>, <ore:��>, <��:dye:4>]]);
[��][��][��] =[�x]=>��.��("�':�#_�1", <�':�1>, [[�}, <ore:��>, �}], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.�{("�':key_�2", <�':�2_key>, [<�':�3_key>, <��:��_��>]);
[��][��][��] =[�x]=>��.�{("�':key_�4", <�':�4_key>, [<�':�3_key>, <��:�5_tag>]);
[��][��][��] =[�x]=>��.��("�':key_�3", <�':�3_key>, [[<ore:��>, <ore:�.>], [�}, <ore:�.>], [�}, <�':�(_�*>]]);
[��][��][��] =[�x]=>��.�{("�':key_�$", <�':�7_key>, [<�':�3_key>, <��:�`_eye>]);
[��][��][��] =[�x]=>��.�{("�':�8_�2", <�':�8:3>, [<�':�2_key>, <��:��_��>]);
[��][��][��] =[�x]=>��.�{("�':�8_�4", <�':�8:2>, [<�':�4_key>, <��:��_��>]);
[��][��][��] =[�x]=>��.�{("�':�8_�3", <�':�8>, [<�':�3_key>, <��:��_��>]);
[��][��][��] =[�x]=>��.�{("�':�8_�$", <�':�8:1>, [<�':�7_key>, <��:��_��>]);
[��][��][��] =[�x]=>��.��("�':�%_�i", <�':�9>, [[<ore:�:>, <ore:�:>, <ore:�:>], [<ore:�:>, �}, <ore:�:>]]);
[��][��][��] =[�x]=>��.��("�':�&_�C", <�':�;> * 4, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�&_�3_�'", <�':�<:4> * 4, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:�=>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�&_�3_�(", <�':�<:3> * 2, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:�=>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�&_�3_�)", <�':�<:2> * 4, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�&_�3_�*", <�':�<:1> * 2, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�&_�3_�+", <�':�<>, [[<ore:��>, <ore:��>, <ore:��>], [�}, <ore:��>, �}], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�A_�,", <�':�?>, [[<��:��>, <��:��>, <��:��>], [<��:�z>, <ore:�+>, <��:�z>], [<��:��>, <ore:�.>, <��:��>]]);
[��][��][��] =[�x]=>��.��("�':�A", <�':�A>, [[<��:��>, <��:��>, <��:��>], [<��:�z>, <ore:�+>, <��:�z>], [<��:��>, <ore:�F>, <��:��>]]);
[��][��][��] =[�x]=>��.��("�':�-_�3", <�':�B>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <ore:�+>, <��:��>], [<��:��>, <ore:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�._oak", <�':�z>.��({�x: "oak"}), [[<��:��>, <��:��>, <��:��>], [�}, <ore:��>, �}], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�/_oak", <�':�z:1>.��({�x: "oak"}) * 2, [[<��:��>, <ore:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <ore:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�0_oak", <�':�z:2>.��({�x: "oak"}) * 4, [[<ore:��>, <��:��>, <ore:��>], [<��:��>, <��:��>, <��:��>], [<ore:��>, <��:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�1_oak", <�':�z:3>.��({�x: "oak"}) * 2, [[<��:��_��>, <ore:��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�2_oak", <�':�z:4>.��({�x: "oak"}) * 4, [[<ore:��>, <��:��_��>, <ore:��>], [<��:��_��>, <��:��_��>, <��:��_��>], [<ore:��>, <��:��_��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�C_oak", <�':�C> * 4, [[<ore:��>, <��:��>, <ore:��>], [<��:��>, <��:��>, <��:��>], [<ore:��>, <��:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�._��", <�':�z>.��({�x: "��"}), [[<��:��:1>, <��:��:1>, <��:��:1>], [�}, <ore:��>, �}], [<��:��:1>, <��:��:1>, <��:��:1>]]);
[��][��][��] =[�x]=>��.��("�':�z_�/_��", <�':�z:1>.��({�x: "��"}) * 2, [[<��:��:1>, <ore:��>, <��:��:1>], [<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <ore:��>, <��:��:1>]]);
[��][��][��] =[�x]=>��.��("�':�z_�0_��", <�':�z:2>.��({�x: "��"}) * 4, [[<ore:��>, <��:��:1>, <ore:��>], [<��:��:1>, <��:��:1>, <��:��:1>], [<ore:��>, <��:��:1>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�1_��", <�':�z:3>.��({�x: "��"}) * 2, [[<��:��_��:1>, <ore:��>, <��:��_��:1>], [<��:��_��:1>, <��:��_��:1>, <��:��_��:1>], [<��:��_��:1>, <ore:��>, <��:��_��:1>]]);
[��][��][��] =[�x]=>��.��("�':�z_�2_��", <�':�z:4>.��({�x: "��"}) * 4, [[<ore:��>, <��:��_��:1>, <ore:��>], [<��:��_��:1>, <��:��_��:1>, <��:��_��:1>], [<ore:��>, <��:��_��:1>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�C_��", <�':�C:1> * 4, [[<ore:��>, <��:��:1>, <ore:��>], [<��:��:1>, <��:��:1>, <��:��:1>], [<ore:��>, <��:��:1>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�._��", <�':�z>.��({�x: "��"}), [[<��:��:2>, <��:��:2>, <��:��:2>], [�}, <ore:��>, �}], [<��:��:2>, <��:��:2>, <��:��:2>]]);
[��][��][��] =[�x]=>��.��("�':�z_�/_��", <�':�z:1>.��({�x: "��"}) * 2, [[<��:��:2>, <ore:��>, <��:��:2>], [<��:��:2>, <��:��:2>, <��:��:2>], [<��:��:2>, <ore:��>, <��:��:2>]]);
[��][��][��] =[�x]=>��.��("�':�z_�0_��", <�':�z:2>.��({�x: "��"}) * 4, [[<ore:��>, <��:��:2>, <ore:��>], [<��:��:2>, <��:��:2>, <��:��:2>], [<ore:��>, <��:��:2>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�1_��", <�':�z:3>.��({�x: "��"}) * 2, [[<��:��_��:2>, <ore:��>, <��:��_��:2>], [<��:��_��:2>, <��:��_��:2>, <��:��_��:2>], [<��:��_��:2>, <ore:��>, <��:��_��:2>]]);
[��][��][��] =[�x]=>��.��("�':�z_�2_��", <�':�z:4>.��({�x: "��"}) * 4, [[<ore:��>, <��:��_��:2>, <ore:��>], [<��:��_��:2>, <��:��_��:2>, <��:��_��:2>], [<ore:��>, <��:��_��:2>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�C_��", <�':�C:2> * 4, [[<ore:��>, <��:��:2>, <ore:��>], [<��:��:2>, <��:��:2>, <��:��:2>], [<ore:��>, <��:��:2>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�._�D", <�':�z>.��({�x: "�D"}), [[<��:��:3>, <��:��:3>, <��:��:3>], [�}, <ore:��>, �}], [<��:��:3>, <��:��:3>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("�':�z_�/_�D", <�':�z:1>.��({�x: "�D"}) * 2, [[<��:��:3>, <ore:��>, <��:��:3>], [<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <ore:��>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("�':�z_�0_�D", <�':�z:2>.��({�x: "�D"}) * 4, [[<ore:��>, <��:��:3>, <ore:��>], [<��:��:3>, <��:��:3>, <��:��:3>], [<ore:��>, <��:��:3>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�1_�D", <�':�z:3>.��({�x: "�D"}) * 2, [[<��:��_��:3>, <ore:��>, <��:��_��:3>], [<��:��_��:3>, <��:��_��:3>, <��:��_��:3>], [<��:��_��:3>, <ore:��>, <��:��_��:3>]]);
[��][��][��] =[�x]=>��.��("�':�z_�2_�D", <�':�z:4>.��({�x: "�D"}) * 4, [[<ore:��>, <��:��_��:3>, <ore:��>], [<��:��_��:3>, <��:��_��:3>, <��:��_��:3>], [<ore:��>, <��:��_��:3>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�C_�D", <�':�C:3> * 4, [[<ore:��>, <��:��:3>, <ore:��>], [<��:��:3>, <��:��:3>, <��:��:3>], [<ore:��>, <��:��:3>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�._��", <�':�z>.��({�x: "��"}), [[<��:��:4>, <��:��:4>, <��:��:4>], [�}, <ore:��>, �}], [<��:��:4>, <��:��:4>, <��:��:4>]]);
[��][��][��] =[�x]=>��.��("�':�z_�/_��", <�':�z:1>.��({�x: "��"}) * 2, [[<��:��:4>, <ore:��>, <��:��:4>], [<��:��:4>, <��:��:4>, <��:��:4>], [<��:��:4>, <ore:��>, <��:��:4>]]);
[��][��][��] =[�x]=>��.��("�':�z_�0_��", <�':�z:2>.��({�x: "��"}) * 4, [[<ore:��>, <��:��:4>, <ore:��>], [<��:��:4>, <��:��:4>, <��:��:4>], [<ore:��>, <��:��:4>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�1_��", <�':�z:3>.��({�x: "��"}) * 2, [[<��:��_��:4>, <ore:��>, <��:��_��:4>], [<��:��_��:4>, <��:��_��:4>, <��:��_��:4>], [<��:��_��:4>, <ore:��>, <��:��_��:4>]]);
[��][��][��] =[�x]=>��.��("�':�z_�2_��", <�':�z:4>.��({�x: "��"}) * 4, [[<ore:��>, <��:��_��:4>, <ore:��>], [<��:��_��:4>, <��:��_��:4>, <��:��_��:4>], [<ore:��>, <��:��_��:4>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�C_��", <�':�C:4> * 4, [[<ore:��>, <��:��:4>, <ore:��>], [<��:��:4>, <��:��:4>, <��:��:4>], [<ore:��>, <��:��:4>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�._�t_oak", <�':�z>.��({�x: "�t_oak"}), [[<��:��:5>, <��:��:5>, <��:��:5>], [�}, <ore:��>, �}], [<��:��:5>, <��:��:5>, <��:��:5>]]);
[��][��][��] =[�x]=>��.��("�':�z_�/_�t_oak", <�':�z:1>.��({�x: "�t_oak"}) * 2, [[<��:��:5>, <ore:��>, <��:��:5>], [<��:��:5>, <��:��:5>, <��:��:5>], [<��:��:5>, <ore:��>, <��:��:5>]]);
[��][��][��] =[�x]=>��.��("�':�z_�0_�t_oak", <�':�z:2>.��({�x: "�t_oak"}) * 4, [[<ore:��>, <��:��:5>, <ore:��>], [<��:��:5>, <��:��:5>, <��:��:5>], [<ore:��>, <��:��:5>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�1_�t_oak", <�':�z:3>.��({�x: "�t_oak"}) * 2, [[<��:��_��:5>, <ore:��>, <��:��_��:5>], [<��:��_��:5>, <��:��_��:5>, <��:��_��:5>], [<��:��_��:5>, <ore:��>, <��:��_��:5>]]);
[��][��][��] =[�x]=>��.��("�':�z_�2_�t_oak", <�':�z:4>.��({�x: "�t_oak"}) * 4, [[<ore:��>, <��:��_��:5>, <ore:��>], [<��:��_��:5>, <��:��_��:5>, <��:��_��:5>], [<ore:��>, <��:��_��:5>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�C_�t_oak", <�':�C:5> * 4, [[<ore:��>, <��:��:5>, <ore:��>], [<��:��:5>, <��:��:5>, <��:��:5>], [<ore:��>, <��:��:5>, <ore:��>]]);
[��][��][��] ============================================================================
[��][��][��]     �3!
[��][��][��] ============================================================================
[��][��][��] �� �� �� in: �4
[�5][��][��] �6 �� for �7 �8
[�9][��][��] �: the �;
]==],['ct.lua']= [==[�D � = �H('�')
�D fs = �H('�<')

�D �= = {...}
�D �> = �.�?(�i.��(�=, 1))

if not fs.�@(�>) �K
	if fs.�@(�> .. '.lua') �K
		�> = �> .. '.lua'
	�i
		�L('�A not �B.')
		�O
	end
end

�D a, b = �G(�C, �I.�J, �>, �i.��(�=))
if not a �K
	�D f = io.�D('ct.txt', 'w')
	f:�t(b)
	f:�E()
	�L('�F �G.')
end]==],['ct.txt']= [==[/mnt/cf4/��.lua:78: �H to �I a nil �J (�K '?')
�/ �J:
	��:796: in �L '__�M'
	/mnt/cf4/��.lua:78: in �[ </mnt/cf4/��.lua:76>
	(...�N �O...)
	/mnt/cf4/��.lua:70: in �P '�Q'
	/mnt/cf4/��.lua:157: in �D '�R'
	/mnt/cf4/��.lua:183: in �S ��
	(...�N �O...)
	[C]: in �[ '�G'
	��:791: in �T '�G'
	/mnt/cf4/ct.lua:16: in �S ��
	(...�N �O...)
	[C]: in �[ '�G'
	��:791: in �T '�G'
	/lib/�U.lua:63: in �[ </lib/�U.lua:59>]==],['db']={['crafting.db']= [==[#�V:
#'�� �W �5' '�G �W �X' 'sd=��/sl=��' 'wh' '�G ��' '�G �Y �Z|�['
��:bow 1 sd 33 �\ ��:�� ��:�� 
��:�� 1 sd 33 �] ��:�� 
��:�x_�i 1 sd 22 �� ��:�� 
��:�p_axe 1 sd 23 �^ ��:�p ��:�� 
��:�p_�� 1 sd 33 �^ ��:�p ��:�� 
��:�V 1 sd 33 �] ��:�� 
��:��_�� 9 sd 00 1 ��:��_�J 
��:�I_axe 1 sd 23 �^ ��:�I_�J ��:�� 
��:�I_�K 16 sd 32 �� ��:�I_�J 
��:�I_�� 9 sd 00 1 ��:�I_�J 
��:�I_�� 1 sd 33 �^ ��:�I_�J ��:�� 
��:�B 3 sd 33 �_ ��:�� 
��:�� 3 sd 31 111 ��:�	 
��:��|0 4 sd 00 1 ��:log|0 
��:�� 4 sd 12 11 ��:�� 
��:��_axe 1 sd 23 �^ ��:�� ��:�� 
��:��_��|0 1 sd 00 1 ��:��|0 
��:��_�� 1 sd 00 1 ��:��|0 
��:��_�� 1 sd 33 �^ ��:�� ��:�� 
��:��_�� 1 sd 33 �^ ��:�� ��:�� 
�u:�` 1 sd 33 �� ��:��_�J �u:�x|8 ��:�I_�K ��:�� �u:�x|4 
�u:��|7 1 sd 32 �a �u:�x|7 �u:�x|8 �u:�x|4 
�u:��|1 1 sd 33 �� ��:��_�� ��:�� �u:�x|8 �u:�x|11 �u:�x|10 
�u:�b 1 sd 32 �c �u:�x|14 �u:�x|15 �u:�x|16 
�u:�x|15 1 sd 32 �� ��:��_�� 
�u:�x|14 1 sd 32 �� ��:��_�� 
�u:�x|8 4 sd 33 �� ��:��_�� ��:�� �u:�x|6 
�u:�x|7 8 sd 33 �� ��:�I_�� ��:�� �u:�x|6 
�u:�x|16 1 sd 33 �� ��:��_�� 
�u:�x|6 8 sd 33 �d ��:�I_�J ��:��_�� ��:�� ��:�� 
�u:�e 1 sd 33 �f ��:�I_�J ��:�� �u:�x|7 ��:�� 
]==],['raw.db']= [==[��:��
��:�p
��:��
��:��_�J
��:�I_�J
��:�I_��
��:log|0
��:��
��:�	
��:��
��:��|0
��:��
�u:�x|4
]==]},['failed.txt']= [==[[��][��][��] =[ore]=><ore:��>;
[��][��][��] =[ore]=><ore:�\>;
[��][��][��] =[ore]=><ore:�]>;
[��][��][��] =[ore]=><ore:�^>;
[��][��][��] =[ore]=><ore:�_>;
[��][��][��] =[ore]=><ore:�`>;
[��][��][��] =[ore]=><ore:�a>;
[��][��][��] =[ore]=><ore:�b>;
[��][��][��] =[ore]=><ore:�c>;
[��][��][��] =[ore]=><ore:�d>;
[��][��][��] =[ore]=><ore:�e>;
[��][��][��] =[ore]=><ore:�f>;
[��][��][��] =[ore]=><ore:�g>;
[��][��][��] =[ore]=><ore:�h>;
[��][��][��] =[ore]=><ore:�i>;
[��][��][��] =[ore]=><ore:�j>;
[��][��][��] =[ore]=><ore:�k>;
[��][��][��] =[ore]=><ore:�l>;
[��][��][��] =[ore]=><ore:�m>;
[��][��][��] =[ore]=><ore:�n>;
[��][��][��] =[ore]=><ore:�o>;
[��][��][��] =[ore]=><ore:�p>;
[��][��][��] =[�x]=>��.�{("��:�|", �}, []);
[��][��][��] =[�x]=>��.�{("��:�~", �}, []);
[��][��][��] =[�x]=>��.�{("��:�", �}, []);
[��][��][��] =[�x]=>��.�{("��:��", �}, []);
[��][��][��] =[�x]=>��.�{("��:��", �}, []);
[��][��][��] =[�x]=>��.�{("��:��", �}, []);
[��][��][��] =[�x]=>��.�{("��:��", �}, []);
[��][��][��] =[�x]=>��.�{("��:��", �}, []);
[��][��][��] =[�x]=>��.�{("��:��", �}, []);
[��][��][��] =[�x]=>��.�{("��:��", �}, []);
[��][��][��] =[�x]=>��.�{("��:��_�J", <��:��>, []);
[��][��][��] =[�x]=>��.�{("��:�_��", <��:��:1>, []);
[��][��][��] =[�x]=>��.�{("��:�Q_��", <��:��>, []);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��>.��({��: {id: "��:��"}, No_��: 1 as ��}), <ore:��>], [<��:��>, <ore:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��:1>, [[<ore:��>, <ore:�F>, <ore:��>], [<��:��>.��({��: {id: "��:��"}, No_��: 1 as ��}), <��:��>, <��:�`_��:*>], [<ore:��>, <ore:�F>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_0", <��:��>, [[<ore:��>, <ore:�.>, <ore:��>], [<ore:�.>, <��:��:1>, <ore:�.>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:�.>, <��:��:1>.��({��: {id: "��:�e"}, No_��: 1 as ��})]]);
[��][��][��] =[�x]=>��.��("��:��_��_1", <��:��:1>, [[<��:��:*>, <ore:�.>, <��:��:*>], [<ore:�.>, <��:��:1>, <ore:�.>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:�.>, <��:��:1>.��({��: {id: "��:�e"}, No_��: 1 as ��})]]);
[��][��][��] =[�x]=>��.��("��:��_��_2", <��:��:2>, [[<ore:�
>, <ore:�.>, <ore:�>], [<ore:�.>, <��:��:1>, <ore:�.>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:�.>, <��:��:1>.��({��: {id: "��:�e"}, No_��: 1 as ��})]]);
[��][��][��] =[�x]=>��.��("��:��_��_3", <��:��:3>, [[<��:�5:*>, <ore:�.>, <��:�5:*>], [<ore:�.>, <��:��:1>, <ore:�.>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:�.>, <��:��:1>.��({��: {id: "��:�e"}, No_��: 1 as ��})]]);
[��][��][��] =[�x]=>��.��("��:��_��_4", <��:��:4>, [[<ore:��>, <ore:�.>, <ore:��>], [<ore:�.>, <��:��:1>, <ore:�.>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:�.>, <��:��:1>.��({��: {id: "��:�e"}, No_��: 1 as ��})]]);
[��][��][��] =[�x]=>��.��("��:��_��_5", <��:��:5>, [[<��:��>, <ore:�.>, <��:��:1>], [<ore:�.>, <��:��:1>, <ore:�.>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:�.>, <��:��:1>.��({��: {id: "��:�e"}, No_��: 1 as ��})]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>, [[<ore:��>, <��:��:2>, <ore:��>], [<ore:��>, <��:��>.��({��: {��: {��: 1 as ��}, id: "��:��"}, No_��: 1 as ��}), <ore:��>], [�}, <ore:��>, �}]]);
[��][��][��] =[�x]=>��.��("��:��_�V", <��:��>.��({��: "��:�V"}), [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>.��({��: "��:��"}), [[�}, <��:��_��:*>, �}], [<ore:�F>, <��:��>, <ore:�F>], [<ore:��>, <ore:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>.��({��: "��:��"}), [[<ore:��>, <��:��:*> | <��:��_��:*>, <ore:��>], [<ore:��>, <��:��>, <ore:��>], [<ore:��>, <��:��:*> | <��:��_��:*>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_�V", <��:��>.��({��: "��:��"}), [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��>, <ore:��>], [<ore:��>, <��:�V:*>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��", <��:��>.��({��: "��:��_��"}), [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:�V:*>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��>.��({��: "��:��_��"}), [[<��:��> | <��:� > | <��:��>, <��:��> | <��:� > | <��:��>, <��:��> | <��:� > | <��:��>], [<��:��> | <��:� > | <��:��>, <��:��_��> | <��:��_��> | <��:��_��> | <��:��_��> | <��:��_��> | <��:��_��>, <��:��> | <��:� > | <��:��>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��>.��({��: "��:��_��"}), [[<��:�%_rod:*>, <��:�%_rod:*>, <��:�%_rod:*>], [<��:�%_rod:*>, <��:��_��:*>, <��:�%_rod:*>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_tnt", <��:��>.��({��: "��:��_tnt"}), [[<��:��:*>, <��:��:*>, <��:��:*>], [<��:��:*>, <��:tnt:*>, <��:��:*>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_�", <��:��>.��({��: "��:��_�"}), [[<ore:�.>, <ore:�.>, <ore:�.>], [<ore:�.>, <��:�_��:*>, <ore:�.>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��>.��({��: "��:��_��"}), [[<��:dye:9>, <��:dye:9>, <��:dye:9>], [<��:dye:9>, <��:��:6>, <��:dye:9>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_� ", <��:��>.��({��: "��:��_� "}), [[<��:�:1>, <��:�:1>, <��:�:1>], [<��:�:1>, <��:��_��:*>, <��:�:1>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_�`", <��:��>.��({��: "��:��_�`"}), [[<��:�`_��:*>, <��:�`_��:*>, <��:�`_��:*>], [<��:�`_��:*>, <��:�b:*>, <��:�`_��:*>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��>.��({��: "��:��_��"}), [[<��:��:*>, <��:��:*>, <��:��:*>], [<��:��:*>, <��:��_��:*>, <��:��:*>], [<ore:��>, <��:��>.��({��: "��:��_�"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_�", <��:��>.��({��: "��:��_�"}), [[<��:dye:4>, <��:dye:4>, <��:dye:4>], [<��:dye:4>, <��:��_��:*>, <��:dye:4>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_�", <��:��>.��({��: "��:��_�"}), [[<��:�_��:*>, <��:�_��:*>, <��:�_��:*>], [<��:�_��:*>, <��:end_rod:*>, <��:�_��:*>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_ice", <��:��>.��({��: "��:��_ice"}), [[<��:��:*>, <��:��:*>, <��:��:*>], [<��:��:*>, <��:ice:*>, <��:��:*>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_�", <��:��>.��({��: "��:��_�"}), [[<��:��> | <��:�_�>, <��:��> | <��:�_�>, <��:��> | <��:�_�>], [<��:��> | <��:�_�>, <��:�__eye>, <��:��> | <��:�_�>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_�", <��:��>.��({��: "��:��_�"}), [[<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <��:�h_�i:*>, <��:��:1>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:��_��_��", <��:��>.��({��: "��:��_��"}), [[<��:��_��:*>, <��:��_��:*>, <��:��_��:*>], [<��:��_��:*>, <��:��:*>, <��:��_��:*>], [<ore:��>, <��:��>.��({��: "��:��"}), <ore:��>]]);
[��][��][��] =[�x]=>��.��("��:�_gen_�", <��:�:1>, [[<��:��>.��({��: "��:��_� "}), <��:��>.��({��: "��:��_�"}), <��:��>.��({��: "��:��_��"})], [<��:��>.��({��: "��:��_��"}), <��:��>, <��:��>.��({��: "��:��_��"})], [<��:��>.��({��: "��:��_��"}), <��:��>.��({��: "��:��_��"}), <��:��>.��({��: "��:��_tnt"})]]);
[��][��][��] =[�x]=>��.��("��:�_gen_top", <��:�:2>, [[<��:��>.��({��: "��:��_��"}), <��:��>.��({��: "��:��_�"}), <��:��>.��({��: "��:��_�"})], [<��:��>.��({��: "��:��_�"}), <��:��>, <��:��>.��({��: "��:��_�`"})], [<��:��>.��({��: "��:��"}), <��:��>.��({��: "��:��_ice"}), <��:��>.��({��: "��:��_�"})]]);
[��][��][��] =[�x]=>��.��("�':�z_�._oak", <�':�z>.��({�x: "oak"}), [[<��:��>, <��:��>, <��:��>], [�}, <ore:��>, �}], [<��:��>, <��:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�/_oak", <�':�z:1>.��({�x: "oak"}) * 2, [[<��:��>, <ore:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <ore:��>, <��:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�0_oak", <�':�z:2>.��({�x: "oak"}) * 4, [[<ore:��>, <��:��>, <ore:��>], [<��:��>, <��:��>, <��:��>], [<ore:��>, <��:��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�1_oak", <�':�z:3>.��({�x: "oak"}) * 2, [[<��:��_��>, <ore:��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:��>, <��:��_��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�2_oak", <�':�z:4>.��({�x: "oak"}) * 4, [[<ore:��>, <��:��_��>, <ore:��>], [<��:��_��>, <��:��_��>, <��:��_��>], [<ore:��>, <��:��_��>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�._��", <�':�z>.��({�x: "��"}), [[<��:��:1>, <��:��:1>, <��:��:1>], [�}, <ore:��>, �}], [<��:��:1>, <��:��:1>, <��:��:1>]]);
[��][��][��] =[�x]=>��.��("�':�z_�/_��", <�':�z:1>.��({�x: "��"}) * 2, [[<��:��:1>, <ore:��>, <��:��:1>], [<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <ore:��>, <��:��:1>]]);
[��][��][��] =[�x]=>��.��("�':�z_�0_��", <�':�z:2>.��({�x: "��"}) * 4, [[<ore:��>, <��:��:1>, <ore:��>], [<��:��:1>, <��:��:1>, <��:��:1>], [<ore:��>, <��:��:1>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�1_��", <�':�z:3>.��({�x: "��"}) * 2, [[<��:��_��:1>, <ore:��>, <��:��_��:1>], [<��:��_��:1>, <��:��_��:1>, <��:��_��:1>], [<��:��_��:1>, <ore:��>, <��:��_��:1>]]);
[��][��][��] =[�x]=>��.��("�':�z_�2_��", <�':�z:4>.��({�x: "��"}) * 4, [[<ore:��>, <��:��_��:1>, <ore:��>], [<��:��_��:1>, <��:��_��:1>, <��:��_��:1>], [<ore:��>, <��:��_��:1>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�._��", <�':�z>.��({�x: "��"}), [[<��:��:2>, <��:��:2>, <��:��:2>], [�}, <ore:��>, �}], [<��:��:2>, <��:��:2>, <��:��:2>]]);
[��][��][��] =[�x]=>��.��("�':�z_�/_��", <�':�z:1>.��({�x: "��"}) * 2, [[<��:��:2>, <ore:��>, <��:��:2>], [<��:��:2>, <��:��:2>, <��:��:2>], [<��:��:2>, <ore:��>, <��:��:2>]]);
[��][��][��] =[�x]=>��.��("�':�z_�0_��", <�':�z:2>.��({�x: "��"}) * 4, [[<ore:��>, <��:��:2>, <ore:��>], [<��:��:2>, <��:��:2>, <��:��:2>], [<ore:��>, <��:��:2>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�1_��", <�':�z:3>.��({�x: "��"}) * 2, [[<��:��_��:2>, <ore:��>, <��:��_��:2>], [<��:��_��:2>, <��:��_��:2>, <��:��_��:2>], [<��:��_��:2>, <ore:��>, <��:��_��:2>]]);
[��][��][��] =[�x]=>��.��("�':�z_�2_��", <�':�z:4>.��({�x: "��"}) * 4, [[<ore:��>, <��:��_��:2>, <ore:��>], [<��:��_��:2>, <��:��_��:2>, <��:��_��:2>], [<ore:��>, <��:��_��:2>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�._�D", <�':�z>.��({�x: "�D"}), [[<��:��:3>, <��:��:3>, <��:��:3>], [�}, <ore:��>, �}], [<��:��:3>, <��:��:3>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("�':�z_�/_�D", <�':�z:1>.��({�x: "�D"}) * 2, [[<��:��:3>, <ore:��>, <��:��:3>], [<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <ore:��>, <��:��:3>]]);
[��][��][��] =[�x]=>��.��("�':�z_�0_�D", <�':�z:2>.��({�x: "�D"}) * 4, [[<ore:��>, <��:��:3>, <ore:��>], [<��:��:3>, <��:��:3>, <��:��:3>], [<ore:��>, <��:��:3>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�1_�D", <�':�z:3>.��({�x: "�D"}) * 2, [[<��:��_��:3>, <ore:��>, <��:��_��:3>], [<��:��_��:3>, <��:��_��:3>, <��:��_��:3>], [<��:��_��:3>, <ore:��>, <��:��_��:3>]]);
[��][��][��] =[�x]=>��.��("�':�z_�2_�D", <�':�z:4>.��({�x: "�D"}) * 4, [[<ore:��>, <��:��_��:3>, <ore:��>], [<��:��_��:3>, <��:��_��:3>, <��:��_��:3>], [<ore:��>, <��:��_��:3>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�._��", <�':�z>.��({�x: "��"}), [[<��:��:4>, <��:��:4>, <��:��:4>], [�}, <ore:��>, �}], [<��:��:4>, <��:��:4>, <��:��:4>]]);
[��][��][��] =[�x]=>��.��("�':�z_�/_��", <�':�z:1>.��({�x: "��"}) * 2, [[<��:��:4>, <ore:��>, <��:��:4>], [<��:��:4>, <��:��:4>, <��:��:4>], [<��:��:4>, <ore:��>, <��:��:4>]]);
[��][��][��] =[�x]=>��.��("�':�z_�0_��", <�':�z:2>.��({�x: "��"}) * 4, [[<ore:��>, <��:��:4>, <ore:��>], [<��:��:4>, <��:��:4>, <��:��:4>], [<ore:��>, <��:��:4>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�1_��", <�':�z:3>.��({�x: "��"}) * 2, [[<��:��_��:4>, <ore:��>, <��:��_��:4>], [<��:��_��:4>, <��:��_��:4>, <��:��_��:4>], [<��:��_��:4>, <ore:��>, <��:��_��:4>]]);
[��][��][��] =[�x]=>��.��("�':�z_�2_��", <�':�z:4>.��({�x: "��"}) * 4, [[<ore:��>, <��:��_��:4>, <ore:��>], [<��:��_��:4>, <��:��_��:4>, <��:��_��:4>], [<ore:��>, <��:��_��:4>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�._�t_oak", <�':�z>.��({�x: "�t_oak"}), [[<��:��:5>, <��:��:5>, <��:��:5>], [�}, <ore:��>, �}], [<��:��:5>, <��:��:5>, <��:��:5>]]);
[��][��][��] =[�x]=>��.��("�':�z_�/_�t_oak", <�':�z:1>.��({�x: "�t_oak"}) * 2, [[<��:��:5>, <ore:��>, <��:��:5>], [<��:��:5>, <��:��:5>, <��:��:5>], [<��:��:5>, <ore:��>, <��:��:5>]]);
[��][��][��] =[�x]=>��.��("�':�z_�0_�t_oak", <�':�z:2>.��({�x: "�t_oak"}) * 4, [[<ore:��>, <��:��:5>, <ore:��>], [<��:��:5>, <��:��:5>, <��:��:5>], [<ore:��>, <��:��:5>, <ore:��>]]);
[��][��][��] =[�x]=>��.��("�':�z_�1_�t_oak", <�':�z:3>.��({�x: "�t_oak"}) * 2, [[<��:��_��:5>, <ore:��>, <��:��_��:5>], [<��:��_��:5>, <��:��_��:5>, <��:��_��:5>], [<��:��_��:5>, <ore:��>, <��:��_��:5>]]);
[��][��][��] =[�x]=>��.��("�':�z_�2_�t_oak", <�':�z:4>.��({�x: "�t_oak"}) * 4, [[<ore:��>, <��:��_��:5>, <ore:��>], [<��:��_��:5>, <��:��_��:5>, <��:��_��:5>], [<ore:��>, <��:��_��:5>, <ore:��>]]);
]==],['filter.lua']= [==[�D �[ �g(s, p)
	t = {}
	for x in s:�h(p) do
		�i.�m(t, x)
	end
	�O t
end

�D �[ �i(s, mt)
	for k, v in �p(mt) do
		if s:�j(v) ~= nil �K
			�O �b
		end
	end
	�O �_
end

�D �[ �k(bs)
	�D �[ bro(s) -- �l �D
		�O (s == '[') or (s == '(') or (s == '<') or (s == '{')
	end
	�D �[ brc(s) -- �l �E
		�O (s == ']') or (s == ')') or (s == '>') or (s == '}')
	end

	�D �m = bs:sub(2, #bs - 1):�n(', ', ',')
	�D �o = 0
	�D �p = 1
	�D �q = {}
	for i = 1, #�m do
		if bro(�m:sub(i,i)) �K
			�o = �o + 1
		�� brc(�m:sub(i,i)) �K
			�o = �o - 1
		�� �m:sub(i,i) == ',' �K
			if �o == 0 �K
				�D st = �m:sub(�p, i - 1):�n(',', ', ')
				�i.�m(�q, st)
				�p = i + 1
			end
		end
	end
	�D st = �m:sub(�p, #bs):�n(',', ', ')
	�i.�m(�q, st)
	�O �q
end

�D �[ �r(arr, f, t)
	�D tb = {}
	for i = f, t do
		�i.�m(tb, arr[i])
	end
	�O tb
end

�D �[ �s(t, s)
	�D buf = ''
	for k, v in �p(t) do
		buf = buf .. ��(v) .. ((�t(t, k) == nil) and '' or s)
	end
	�O buf
end

-- Old �i �Q, so �u.
�D �[ �Q(t, f, ...)
	�D res = {}
	for k, v in �p(t) do
		res[k] = f(v, ...)
	end
	�O res
end

-- �� �v, �w �G �x to the �y �x.
�D �[ �z(�{)
	�D p = �g(�{:�n('[<>]', ''), '[^:]+')
	�O p[1] .. ':' .. p[2] .. ((p[3] == nil) and '' or (((�{:�|('ore:') == nil) and '|' or ':') .. p[3]))
end

-- �� �v too, but �} if �~ � one �G ��.
�D �[ ��(�{)
	if �{:�j('|') == nil �K
		�O �z(�{)
	�i
		�O �s(�Q(�g(�{:�n(' | ', '|'), '[^|]+'), �z), ',')
	end
end

�D �[ ��(t, obj)
	for k, v in �p(t) do
		if obj == v �K
			�O k
		end
	end
	�O nil
end

�D �[ ��(t, obj)
	�O ��(t, obj) ~= nil
end

-- '�� �W �5' '�G �W �X' 'sd=��/sl=��' 'wh' '�G ��' '�G �Y �Z|�['
�D �� = {'.��', '.��', '.��', '.��', '��:'}
�D �[ �R(��)
	if ��:�|('��%..-%(.+%);') == nil �K
		�O �b, ��
	end
	�D �� = ��:�j('��') == nil
	�D �� = �� and 'sd' or 'sl'
	�D c = ��:�|('��%..-%(.+%);'):�|('%(.-,.-,.+%)')
	�D c = '(' .. �s(�r(�k(c), 2, 3), ', ') .. ')'
	�D �= = �k(c)
	if �k(�=[2])[1] == '' �K
		�O �b, ��
	end
	if �i(c, ��) and �=[1] ~= "�}" �K
		�D �� = �g(�=[1]:�n(' * ','*'), '[^%*]+')
		�D �G = �z(��[1])
		�D �� = ��(��[2]) or 1
		�D wh = ''
		�D �� = ''
		if �� �K
			wh = ��(#�k(�k(�=[2])[1])) .. ��(#�k(�=[2]))
			�D �� = {}
			for yi, y in �p(�k(�=[2])) do
				for xi, x in �p(�k(y)) do
					if not ��(��, x) �K
						if x ~= '�}' �K
							�i.�m(��, x)
						end
					end
				end
			end
			�D �� = ''
			for yi, y in �p(�k(�=[2])) do
				for xi, x in �p(�k(y)) do
					�� = �� .. (��(��, x) or '0')
				end
			end
			�� = �� .. ' ' .. �s(�Q(��, ��), ' ')
		�i
			wh = '00'
			�D �� = {}
			for ii, i in �p(�k(�=[2])) do
				if not ��(��, i) �K
					if i ~= '�}' �K
						�i.�m(��, i)
					end
				end
			end
			�D �� = ''
			for ii, i in �p(�k(�=[2])) do
				�� = �� .. (��(��, i) or '0')
			end
			�� = �� .. ' ' .. �s(�Q(��, ��), ' ')
		end
		�O �_, ��.�x("%s %s %s %s %s", �G, ��, ��, wh, ��)
	�i
		�O �b, ��
	end
end

�D �[ ��(sod)
	if sod:�|('<ore:.->=.+') == nil �K
		�O �b, sod
	end
	�D ore = sod:�|('<ore:.->=.+')
	�D ore = ore:sub(1, #ore - 1)
	�D �� = �z(�g(ore, '[^=]+')[1])
	�D �� = ��(�g(ore, '[^=]+')[2])
	�O �_, ��.�x('%s=%s', ��, ��)
end

�D �� = io.�D('�x.db', 'w')
�D �� = io.�D('��.db', 'w')
�D �� = io.�D('��.txt', 'w')
�D �� = io.�D('��.log', 'r')
�D �} = ''
�D ��, ��, �� = 0, 0, 0
�� �} ~= nil do
	if �}:�j('=%[�x%]=>') ~= nil �K
		�D ��, �� = �R(�})
		if �� �K
			��:�t(�� .. '\n')
			�� = �� + 1
		�i
			��:�t(�� .. '\n')
			�� = �� + 1
		end
	�� �}:�j('=%[ore%]=>') �K
		�D ��, �� = ��(�})
		if �� �K
			��:�t(�� .. '\n')
			�� = �� + 1
		�i
			��:�t(�� .. '\n')
			�� = �� + 1
		end
	end
	�} = ��:�('*l')
	--�L(�})
	io.�t('\x1b[��' .. ��.�x('�S: %d, ��: %d, ��: %d.', ��, ��, ��))
end
�L('\x1b[��' .. ��.�x('�� %d �� of �S, %d �� of ��, and %d �� �� to be ��.', ��, ��, ��))
]==],['lib']={['craftingdb.lua']= [==[�D �G = �H('lib.�U.�G')
�D �� = �H('lib.�U.��')
�D �x = �H('lib.�U.�x')
�D �� = �H('lib.�U.��')
�D �� = �H('lib.�U.��')

�D �P = �H('lib.�P')

-- �� ��
�D �S = {
	db = {}
}

-- �� ��
�D �� = 'db/�x.db'
�[ �S.�M()
	�D f = io.�D(��, 'r')
	�D l = f:�('*l')
	�� l ~= nil do
		if (l:sub(1,1) ~= '#') and (l ~= '') �K
			�D �� = {�� = 0, �� = 0}
			�D �� = {}
			�D �� = �_
			�D �� = {}
			�D �� = �P.��(l)
			�� = �G.new(��[1])
			��.�� = ��(��[2])
			�� = (��[3] == 'sd')
			��.��, ��.�� = ��(��[4]:sub(1,1)), ��(��[4]:sub(2,2))
			�D pat = ��[5]
			�D �� = ��.new()
			for i = 6, #�� do
				��:add(��.��(��[i]))
			end
			for �� = 1, #pat do
				��[��] = ��[��(pat:sub(��, ��))]
			end
			�S.db[��] = �x.new(��, ��, ��, ��)
		end
		l = f:�('*l')
	end
	f:�E()
end
io.�t('�� �S... ')
�S.�M()
�D �� = 0
for k, v in �l(�S.db) do
	�� = �� + 1
end
io.�t (��.�x('%d ��.\n', ��))

�[ �S.��()
	�D a = {}
	for n in �l(�S.db) do �i.�m(a, n) end
	�i.�n(a, �[(a, b) if a.�5 == nil or b.�5 == nil �K �L(a,b) end; �O a.�5 < b.�5 end)
	�D i = 0
	�O �[()
		i = i + 1
		if a[i] == nil �K
			�O nil
		�i
			�O a[i], �S.db[a[i]]
		end
	end
end

�[ �S.�z()
	-- �V: '�� �W �5' '�G �W �X' 'sd=��/sl=��' 'wh' '�G ��' '�G �Y �Z|�['
	�D f = io.�D(��, 'w')
	f:�t("#�V:\n#'�� �W �5' '�G �W �X' 'sd=��/sl=��' 'wh' '�G ��' '�G �Y �Z|�['\n")
	for k, v in �S.��() do
		�D �� = ��(~k)
		�D �� = ��(k.��)
		�D �� = v and 'sd' or 'sl'
		�D dim = ��(v.��.��) .. ��(v.��.��)
		�D �� = v:��()
		�D �� = ''
		for k, v in �l(v.��) do
			�� = �� .. ��:��(v) or '0'
		end
		�D �� = ''
		for k, v in �p(��) do
			�� = �� .. ��(~v) .. ' '
		end
		�� = ��:sub(1, #��)
		f:�t(�� .. ' ' .. �� .. ' ' .. �� .. ' ' .. dim .. ' ' .. �� .. ' ' .. �� .. '\n')
	end
	f:�E()
end

-- �� ��
�[ �S.get(i)
	for k, v in �l(�S.db) do
		if i == k �K
			�O v
		end
	end
	�O nil
end

�[ �S.set(�x)
	if �x == nil �K
		��('Can\'t add nil to �S!')
	end
	�S.db[�x.��] = �x
	�O �S.db[�x.��]
end

�[ �S.��(i)
	for k, v in �l(�S.db) do
		if i:��(k) �K
			�D tmp = �S.db[k]
			�S.db[k] = nil
			�O tmp
		end
	end
	�O nil
end

�O craftingdb]==],['init.lua']= [==[-- Lib ��. Run ��.

-- �� �U
�D ��_�U = �U
�[ �U(v)
	�D �� = ��_�U(v)
	if �� == '�i' �K
		if v.�U ~= nil �K
			�O v.�U
		end
	end
	�O ��
end]==],['inventory.lua']= [==[�D �E, �F = �G(�H, �I.�J, '�F')
if not �E �K
	�L('Can\'t �M �F �N.')
	�O
end

�D �� = �H('��')
if ��.�T_�A == nil �K
	�L('�� �T �A!')
	�O
end
�D �� = ��.�T_�A

�D �G = �H('lib.�U.�G')
�D �� = �H('lib.�U.��')

-- �� ��
�D �� = {
	�� = {},
	�� = ��.��(�F.��()),
	ex = {}
}

-- �� ��
�[ ��.��(�`)
	�O �F.��(�`)
end

�[ ��.��(�`)
	�D t = ��.��(�`)
	if t == nil �K
		�O nil
	end
	�O �G.new(t)
end

�[ ��.��(�`)
	��.��[�`] = ��.��(�`)
	�O ��.��[�`]
end

�[ ��.��()
	for i = 1, ��.�� do
		��.��(i)
	end
end
io.�t('�� �T... 00')
for i = 1, ��.�� do
	��.��(i)
	io.�t('\8\8' .. ��.�x('%02d', i))
end
io.�t(' ��.\n')

�[ ��.��()
	�D �� = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	for k, v in �p(��) do
		��.��(v)
	end
end

�[ ��.��(�`, ��)
	for k, v in �p(��) do
		if �` == v �K
			�O �_
		end
	end
	�O �b
end

�[ ��.��(�`)
	�O ��.��(�`, {1, 2, 3, 5, 6, 7, 8, 9, 10, 11})
end

�[ ��.��(��, ��)
	�D res = �F.��(��, ��)
	��.��(��.��())
	��.��(��)
	�O res
end

�[ ��.�j(i)
	�D �� = {}
	for �` = 1, ��.�� do
		if ��.��[�`] ~= nil �K
			if i == ��.��[�`] �K
				�i.�m(��, �`)
			end
		end
	end
	�O ��
end

�[ ��.��(i)
	�D c = 0
	for k, v in �p(��.�j(i)) do
		c = c + ��.��[v].��
	end
	�O c
end

�[ ��.��(i, ��)
	�D �� = i.��
	�D �� = ��
	if �� == nil �K �� = �_ end
	�D �� = ��.��()
	�D �� = ��.new()
	for k, v in �l(��.�j(i)) do
		��:add(��.��[v])
	end
	for k, v in �p(��) do
		if ��.��(v) >= �� �K
			for kf, vf in �p(��.�j(v)) do
				 if not (�� or ��.��(vf)) �K
					if �� > 0 �K
						��.��(vf)
						�D �� = ��.��[vf].��
						if not ��.��(��, ��) �K
							�O �b
						end
						�� = �� - ��
					�i
						��.��(��)
						�O �_
					end
				 end
			end
			��
		end
	end
	��.��(��)
	�O �_
end

�[ ��.��(��, ��, ��)
	�D �� = ��.��()
	�D �� = �� or ��.��[��].��
	�D �� = ��
	if �� == nil �K �� = �_ end
	�D �� = �� or {}
	
	-- �� �� ��
	for k, v in �l(��.�j(��.��[��])) do
		if not (�� or ��.��(v)) and not ��.��(v, ��) �K
			�D �� = ��.��[v]
			if ��.�� < ��.�� �K
				�D �� = ��.min(��.�� - ��.��, ��)
				if not ��.��(v, ��) �K
					�O �b
				end
				�� = �� - ��
				if �� == 0 �K
					�O �_
				end
			end
		end
	end
	
	-- ��, �� �� ��
	for �� = 1, ��.�� do
		if not (�� or ��.��(��)) and not ��.��(��, ��) �K
			if ��.��[��] == nil �K
				if not ��.��(��, ��) �K
					�O �b
				end
				�O �_
			end
		end
	end
	
	�O �_
end

�[ ��.��()
	for k, v in �p({1, 2, 3, 5, 6, 7, 8, 9, 10, 11}) do
		if ��.��[v] ~= nil �K
			��.��(v)
			if not ��.��(��.��[v].��, �b) �K
				�O �b
			end
		end
	end
	�O �_
end

�[ ��.ex.��()
	�O ��.ex.��() ~= nil
end

�[ ��.ex.��()
	�O ��.ex.��() ~= nil
end

�[ ��.ex.��()
	�O ��.��(3)
end

�[ ��.ex.��()
	�O ��.��(1)
end

�[ ��.ex.��(�`)
	�D t = ��.��(3, �`)
	if t == nil �K
		�O nil
	end
	�O �G.new(t)
end

�[ ��.ex.��(i, ��)
	-- ��: �� �� �G
end

�[ ��.ex.��(i, ��)
	-- ��: �� �G to �T in ��
end

�[ ��.ex.��(�`, ��)
	-- ��: �� �� �� of �� �` in ��
end

�[ ��.ex.��(��, ��)
	�O ��.��(3, ��, ��)
end

�[ ��.ex.��(��, ��)
	�O ��.��(3, ��, ��)
end

�O Inventory]==],['oredictdb.lua']= [==[�D �P = �H('lib.�P')
�D �� = �H('lib.�U.��')
�D �� = �H('lib.�U.��')

-- �� ��
�D �� = {
	db = {}
}

-- �� ��
�D �� = 'db/��.db'

�[ ��:��()
	�D a = {}
	for n in �l(��.db) do �i.�m(a, n) end
	�i.�n(a)
	�D i = 0
	�O �[()
		i = i + 1
		if a[i] == nil �K
			�O nil
		�i
			�O a[i], �S.db[a[i]]
		end
	end
end

�[ ��.�M()
	�D f = io.�D(��, 'r')
	�D l = f:�('*l')
	�� l ~= nil do
		if l ~= '' �K
			�D �� = �P.��('=')
			��.db[��[1]] = ��.new(��[1], ��.��(��[2]))
		end
		l = f:�('*l')
	end
end
io.�t('�� ��... ')
��.�M()
�D �� = 0
for k, v in �l(��.db) do
	�� = �� + 1
end
io.�t(��.�x('%d ��.\n', ��))

�[ ��.�z()
	�D f = io.�D(��, 'w')
	for k, v in ��:��() do
		f:�t(k .. '=' .. ��(v) .. '\n')
	end
	f:�E()
end

�[ ��.get(�5)
	for k, v in �l(��.db) do
		if k == �5 �K
			�O v
		end
	end
	�O nil
end

�[ ��.add(od)
	��.db[od.�5] = od
end

�[ ��.��(�5)
	�D �� = ��.db[�5]
	��.db[�5] = nil
	�O ��
end

�O oredictdb]==],['rawdb.lua']= [==[�D �G = �H('lib.�U.�G')
�D �� = �H('lib.�U.��')

�D �P = �H('lib.�P')

-- �� ��
�D �R = {
	db = {}
}

-- �� ��
�D �� = 'db/raw.db'

�[ �R.�n()
	�i.�n(�R.db, �[(a, b) �O a.�5 < b.�5 end)
end

�[ �R.�M()
	�R.db = {}
	�D f = io.�D(��, 'r')
	�D l = f:�('*l')
	�� l ~= nil do
		�i.�m(�R.db, ~�G.new(l))
		l = f:�('*l')
	end
	�R.�n()
	f:�E()
end
io.�t('�� �R... ')
�R.�M()
�D �� = 0
for k, v in �p(�R.db) do
	�� = �� + 1
end
io.�t(��.�x('%d ��.\n', ��))

�[ �R.�z()
	�R.�n()
	�D f = io.�D(��, 'w')
	for k, v in �p(�R.db) do
		f:�t(��(v) .. '\n')
	end
	f:�E()
end

-- �� ��
�[ �R.get(i)
	if ��(i) ~= �G �K
		��('Can\'t �j ' .. �U(�G) .. ' �� �R.')
	end
	for k, v in �p(�R.db) do
		if i:��(v) �K
			�O v
		end
	end
	�O nil
end

�[ �R.has(i)
	�O �R.get(i) ~= nil
end

�[ �R.add(i)
	if ��(i) ~= �G �K
		��('Can\'t add ' .. �U(�G) .. ' to �R.')
	end
	for k, v in �p(�R.db) do
		if i:��(v) �K
			�O i
		end
	end
	�i.�m(�R.db, i)
	�R.�n()
	�O i
end

�[ �R.��(i)
	for k, v in �p(�R.db) do
		if i:��(v) �K
			�O �i.��(�R.db, k)
		end
	end
	�O nil
end

�O rawdb]==],['reset.lua']= [==[��.��['lib.�S'] = nil
��.��['lib.�R'] = nil
��.��['lib.�T'] = nil
��.��['lib.�P'] = nil
��.��['lib.��'] = nil
��.��['lib.�Q'] = nil
��.��['lib.�U.�G'] = nil
��.��['lib.�U.�x'] = nil
��.��['lib.�U.��'] = nil]==],['resproc.lua']= [==[�D �E, �F = �G(�H, �I.�J, '�F')
if not �E �K
	�L('Can\'t �M �F �N.')
	�O
end

�D �G = �H('lib.�U.�G')
�D �� = �H('lib.�U.��')
�D �R = �H('lib.�R')
�D �S = �H('lib.�S')
�D �x = �H('lib.�U.�x')
�D �T = �H('lib.�T')

-- �� ��
�D �� = {}

-- �� ��
�[ ��.�M()
	�R.�M()
	�S.�M()
end

�[ ��.�z()
	�R.�z()
	�S.�z()
end

�[ ��.��(i)
	if �S.get(i) ~= nil �K
		�O �S.get(i)
	end
	�O nil
end

�[ ��.��(it)
	if �U(it) == '�i' �K
		if ��(it) ~= �G �K
			��('Can\'t �� non-�G ��.')
		end
	�i
		��('Can\'t �� ' .. �U(it) .. '.')
	end

	�D �� = ��.new()
	�D �� = ��.new()
	
	�D �[ ��(i)
		��:add(i)
		��:add(i)
	end
	
	�D �[ ��(i)
		��:add(i)
	end
	
	�D �[ ��(i)
		if ��:has(i) �K
			��:��(i)
			�O �_
		end
		�O �b
	end
	
	�D �[ ��(i)
		if �R.has(i) �K
			��(i)
		�� ��.��(i) ~= nil �K
			for ite = 1, ��.��(i.�� / ��.��(i).��.��) do
				for k, v in �l(��.��(i):��()) do
					�� not ��(v) do
						��(v)
					end
				end
				��(��.��(i).��)
			end
		�i
			��(i)
		end
	end
	
	��(it)
	��:�n()
	��:�n()
	�O ��, ��
end

�[ ��.��()
	�D �� = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	for k, v in �p(��) do
		if �T.��[v] ~= nil �K
			�T.��(v)
			if not �T.��() �K
				�O �b
			end
		end
	end
end

�[ ��.��(it)
	if �S.get(it) ~= nil �K
		�O �S.get(it)
	�� �R.get(it) ~= nil �K
		�O �R.get(it)
	�i
		�O nil
	end
end

�[ ��.��(��)
	if ��(��) == �x �K
		�O �S.set(��)
	�� ��(��) == �G �K
		�O �R.add(��)
	�i
		�O nil
	end
end

�[ ��.��(it)
	if �S.get(it) ~= nil �K
		�O �S.��(it)
	�� �R.get(it) ~= nil �K
		�O �R.��(it)
	�i
		�O nil
	end
end

�[ ��.� (�G, �)
	-- � �T �� �� �� ��
	�D � = ��.new()
	for k, v in �l(�T.��) do
		�:add(v)
	end
	if � ~= nil �K
		�:�(�)
	end
	
	-- � ��
	�D � = ��.new()
	�:add(�G)
	
	-- � and � �	 �� �
 it's ��
	�� #� ~= 0 do
		�D � = �i.��(�, 1)
		if not �:has(�) �K
			if (��.��(�) == nil) or �R.has(�) �K
				�O �b
			�i
				�:�(��.��(�):��() * �.��)
			end
		end
	end
	�O �_
end

�[ ��.��(�G, �)
	-- � �T �� �� �� ��
	�D � = ��.new()
	for k, v in �l(�T.��) do
		�:add(v)
	end
	if � ~= nil �K
		�:�(�)
	end
	
	-- � ��
	�D � = ��.new()
	�:add(�G)
	
	-- � and � �	 �� �
 it's ��
	�� #� ~= 0 do
		�D � = �:�()
		if not �:has(�) �K
			if (�S.get(�) == nil) or �R.has(�) �K
				�O �b
			�i
				�:�(�S.get(�):��())
				�:add(�S.get(�).��)
			end
		�i
			�:��(�)
		end
	end
	�O �_
end

�[ ��.��(�G)
	if �S.get(�G) == nil �K
		��('Can\'t �� ' .. ��(�G) .. '.')
	end
	
	-- � �
	�D � = {}
	�i.�m(�, �S.get(�G))
	
	�� #� ~= 0 do
		�D � = �[#�]
		
		-- �� �� �
		�D � = �_
		for k, v in �p(�:��()) do
			if �T.��(v) < v.�� �K
				� = �b
				if (�S.get(v) == nil) or �R.has(v) �K
					�L('� 1')
					�O �b
				�i
					for kc, vc in �p(�) do
						if vc == �S.get(v) �K
							�i.��(�, kc)
						end
					end
					�i.�m(�, �S.get(v))
				end
			end
		end
		
		if � �K
			if not �T.��() �K
				�L('� 2')
				�O �b
			end
			�L('��')
			if �.�� �K
				�D �� = {{1, 2, 3}, {5, 6, 7}, {9, 10, 11}}
				for y = 1, �.��.�� do
					for x = 1, �.��.�� do
						if �.��[(y - 1) * �.��.�� + x] ~= nil �K
							�T.��(��[y][x])
							�T.��(�.��[(y - 1) * �.��.�� + x]:�(), �b)
						end
					end
				end
			�i
				�D �� = {1, 2, 3, 5, 6, 7, 9, 10, 11}
				for k = 1, #�.�� do
					�T.��(��[k])
					�T.��(�.��[k]:�(), �b)
				end
			end
			�T.��(8)
			if not ��.�x.��(1) �K
				�L('� 3')
				�O �b
			end
			�T.��()
			�i.��(�)
		end
	end
	
	�O �_
end

�O ResProc]==],['stringlib.lua']= [==[�D � = �H('�')
�D �� = �H('��')
if ��.gpu == nil �K
	�L('�� gpu!')
	�O
end
�D gpu = ��.gpu

-- �� ��
�D �P = {}

-- �� ��
�[ �P.��(s, �)
	� = � or '%s'
	�D t = {}
	for str in ��.�h(s, '([^'..�..']+)') do
		�i.�m(t, str)
	end
	�O t
end

�[ �P.�q(s)
	�D �, � = gpu.�()
	�D �[ �(str)
		�� = 1
		for i = 1, #str do
			if str:sub(i, i) == '\n' �K
				�� = �� + 1
			end
		end
		�O ��
	end
	�D �[ �(str)
		�D t = {}
		�D l = ''
		for i = 1, #str do
			if str:sub(i, i) == '\n' �K
				t[#t+1] = l
				l = ''
			�� #l == � - 1 �K
				t[#t+1] = l .. str:sub(i, i)
				l = ''
			�i
				l = l .. str:sub(i, i)
			end
		end
		if l ~= '' �K t[#t+1] = l end
		�O t
	end
	�D �[ mod(a, b)
		�O a - ��.��(a / b) * b
	end

	�D � = �_
	�D � = �(s)
	for k, v in �l(�) do
		if � �K
			io.�t(v)
			� = �b
		�i
			io.�t('\n' .. v)
			if (#v == �) �K � = �_ end
		end
		if mod(k, �) == 0 �K
			�.��('key_�', nil, 32.0)
		end
	end
	io.�t('\n')
end

�O stringlib]==],['tablelib.lua']= [==[�D �� = {}

�[ ��.�(t)
	-- � �}. �  �!.
	if �U(t) ~= '�i' �K
		��('�" to � �# �$ � �i.')
	end

	�D �% = {}
	for k, v in �l(t) do
		�%[k] = v
	end
	
	�O �%
end

�[ ��.�&(t)
	-- � �}. �  �!.
	if �U(t) ~= '�i' �K
		��('�" to � �# �$ � �i.')
	end

	�D �% = {}
	for k, v in �l(t) do
		if �U(v) == '�i' �K
			�%[k] = ��.�&(v)
		�i
			�%[k] = v
		end
	end
	
	�O �%
end

�[ ��.�M(t, �')
	�D buf = ''
	for k, v in �p(t) do
		buf = buf .. ��(v)
		if �t(t, k) ~= nil �K
			buf = buf .. �'
		end
	end
	�O buf
end

�O tablelib]==],['type']={['crafting.lua']= [==[�D �P = �H('lib.�P')
�D �G = �H('lib.�U.�G')
�D �� = �H('lib.�U.��')

-- �� ��
�D �� = {
	�� = { �� = 0, �� = 0 },
	�� = {},
	�� = �_,
	�� = {}
}

-- �� ��
�[ ��.new(��, ��, ��, ��)
	-- � �}. �  �!.
	if (�� == nil) or (�� == nil) or (�� == nil) �K
		��('Can\'t �( nil �x.')
	end
	if (��.�� == nil) or (��.�� == nil) �K
		��('�� �) ��!')
	end
	if (��(��) ~= �G) �K
		��('Can\'t put �* �i �+ �� �, �G!')
	end
	if (��.�� == 0) �K
		��('Can\'t �( �- �G!')
	end
	
	�D o = {}
	�\(o, ��)
	��.__�] = ��
	o.�� = ��
	o.�� = ��
	o.�� = ��
	o.�� = ��
	�O o
end

�[ ��:��()
	�D �. = ��.new()
	for k, v in �l(�/.��) do
		if v ~= nil �K
			�.:add(v:�())
		end
	end
	�O �.
end

-- �0
�[ ��.__��(cr)
	�D �1 = ��.�x('(%dx%d) ', cr.��.��, cr.��.��) .. (cr.�� and '�� ' or '�� ') .. ��(cr.��) .. ':\n'
	
	if cr.�� �K
		for c = 1, cr.��.�� * cr.��.�� do
			�1 = �1 .. ��.�x('[%d] %s\n', c, cr.��[c])
		end
	�i
		for c = 1, #cr.�� do
			�1 = �1 .. ��.�x('[%d] %s\n', c, cr.��[c])
		end
	end
	�1 = �1:sub(1, #�1 - 1)
	
	�O �1
end

�O Crafting]==],['ingredient.lua']= [==[�D �G = �H('lib.�U.�G')
�D �� = �H('lib.�U.��')
�D �� = �H('lib.�U.��')
�D �� = �H('lib.��')

-- �� ��
�D �2 = {
	�3 = {}
}

-- �� ��
�[ �2.��(str)
	�D a = {}
	�\(a, �2)
	�2.__�] = �2

	if str:�j('ore:') ~= nil �K
		�D od = ��.get(str)
		if od == nil �K
			��('�4 �5 ' .. str .. ' as ��.')
		end
		a.�3 = od
	�� str:�j(',') ~= nil �K
		�D ic = ��.��(str)
		a.�3 = ic
	�i
		�D i = �G.new(str)
		a.�3(i)
	end
	
	�O a
end

�[ �2:�}(i)
	-- � �}. �  �!.
	if ��(i) ~= �G �K
		��('�6 �7\'t �} ' .. �U(i) .. '.')
	end
	
	if ��(�/.�3) == �� �K
		�O �/.�3.�}(i)
	�� ��(�/.�3) == �� �K
		�O �/.�3.�}(i)
	�� ��(�/.�3) == �G �K
		�O �/.�3 == i
	end
end

-- �0
�[ �2.__eq(a, b)
	-- � �}. �  �!.
	if not (((��(a) == �G) and (��(b) == �2)) or
			((��(a) == �2) and (��(b) == �G))) �K
		if (��(a) == �2) and (��(b) == �2) �K
			�O a.�3 == b.�3
		end
		��(��.�x('�" to do �8 �9 �� �� �� �U. (%s, %s)', �U(a), �U(b)))
	end
	
	if ��(a) == �G �K
		�O b:�}(a)
	�i
		�O a:�}(b)
	end
end

�O Ingredient]==],['ingredientarray.lua']= [==[�D �� = �H('lib.�U.��')

-- �� ��
�D �: = {}

-- �� ��
�[ �:.new()
	�D a = {}
	�\(a, �:)
	�:.__�] = �:
	�O a
end

�[ �::�](i)
	for k, v in �p(�/) do
		if v == i �K
			�O k
		end
	end
	�O nil
end

�[ �::add(i)
	for k, v in �p(�/) do
		if v == i �K
			�O i
		end
	end
	�O �i.�m(�/, i)
end

�O IngredientArray]==],['item.lua']= [==[�D �P = �H('lib.�P')

-- �� ��
�D �� = {
	�5 = '',
	�� = -1,
	�� = 1,
	�� = 1
}

-- �� ��
�[ ��.new(...)
	�D �= = {...}
	�D i = {}
	�\(i, ��)
	��.__�] = ��
	
	if �U(�=[1]) == '��' �K
		if �=[1] == '' �K
			��('�; �G �5.')
		end
		�D �< = �P.��(�=[1], '|')
		i.�5 = �<[1]
		i.�� = ((�<[2] == '*') and -1 or ��(�<[2])) or 0
		i.�� = 1
		i.�� = 1
	�� �U(�=[1]) == '�i' �K
		i.�5 = �=[1].�5
		if �=[1].�� ~= nil �K
			i.�� = ��.��(�=[1].��)
		end
		i.�� = ��.��(�=[1].��) or 1
		i.�� = ��.��(�=[1].��) or 1
	�� #�= == 0 �K
		��('Not �= nil or �� �>.')
	�i
		��('�e �? �>.')
	end
	
	�O i
end

�[ ��:��()
	�/.�� = -1
	�O �/
end

�[ ��:�()
	�D icl = �/:�()
	icl.�� = 1
	�O icl
end

�[ ��:�()
	�O ��.new(�/)
end

�[ ��:�@(i)
	-- � �}. �  �!.
	if ��(i) ~= �� �K
		��('�" to �A �� ' .. �U(i) .. '.')
	end

	if (�/.�� == -1) or (i.�� == -1) �K
		�O �/.�5 == i.�5
	�i
		�O (�/.�5 == i.�5) and (�/.�� == i.��)
	end
end

�[ ��:��(i)
	-- �B.
	�D f = io.�D('�C.log', 'w')
	f:�t(�I.�J() .. '\n')
	f:�E()
	
	�O ��:�@(i)
end

-- �0
�[ ��.__eq(a, b)
	-- Don't do �D �E. �F �G �H out.
	if (��(a) ~= ��) or (��(b) ~= ��) �K
		if not (((��(a) == �G) and (��(b) == �2)) or
				((��(a) == �2) and (��(b) == �G))) �K
			�O �b
		�i
			if ��(a) == �G �K
				�O b:�}(a)
			�i
				�O a:�}(b)
			end
		end
		�O �b
	end

	�O a:�@(b)
end

�[ ��.__add(a, b)
	-- � �}. �  �!.
	if (��(a) ~= ��) or (��(b) ~= ��) �K
		��('�" to do �8 �9 �� �� �� �U.')
	end

	�D n = a:�()
	if (a.�5 == b.�5) and (a.�� == b.��) �K
		n.�� = a.�� + b.��
	�i
		��(��.�x('Can\'t add �� ��.'))
	end
	�O n
end

�[ ��.__sub(a, b)
	-- � �}. �  �!.
	if (��(a) ~= ��) and (��(b) ~= ��) �K
		��('�" to do �8 �9 �� �� �� �U.')
	end

	�D n = a:�()
	if (a.�5 == b.�5) and (a.�� == b.��) �K
		n.�� = a.�� - b.��
	�i
		��('Can\'t sub �� ��.')
	end
	�O n
end

�[ ��.__mul(a, b)
	-- � �}. �  �!.
	if (��(a) ~= ��) and (�U(b) ~= '�I') �K
		��(��.�x('�J �G �� �K: %s * %s.', �U(a), �U(b)))
	end
	
	�D n = a:�()
	n.�� = n.�� * b
	�O n
end

�[ ��.__unm(a)
	�D icl = a:�()
	icl = a.�� - a.��
	�O icl
end

�[ ��.__len(a)
	�O a.��;
end

�[ ��.__��(a)
	�D �L = a.�5
	if a.�� ~= nil �K
		�L = �L .. '|' .. ��(a.��)
	end

	if a.�� ~= 0 �K
		�O ��.�x('%d %s', a.��, �L)
	end
	�O �L
end

�[ ��.__�M(a)
	�D icl = a:�()
	icl.�� = 0
	�O icl
end

�O Item]==],['itemarray.lua']= [==[�D �G = �H('lib.�U.�G')

-- �� ��
�D �N = {}

-- �� ��
�[ �N.new()
	�D o = {}
	�\(o, �N)
	�N.__�] = �N
	�O o
end

�[ �N:has(i)
	for k, v in �p(�/) do
		if i == v �K
			�O (i.�� == 0) or (i.�� <= v.��)
		end
	end
	�O �b
end

�[ �N:�O(i)
	for k, v in �p(�/) do
		if v:��(i) �K
			�O v.�� >= i.��
		end
	end
	�O �b
end

�[ �N:�P(ia)
	for k, v in �p(ia) do
		if not �/:has(v) �K
			�O �b
		end
	end
	�O �_
end

�[ �N:�Q(ia)
	for k, v in �p(ia) do
		if not �/:�O(v) �K
			�O �b
		end
	end
	�O �_
end

�[ �N:��(i)
	�D c = 0
	for k, v in �p(�/) do
		if i == v �K
			c = c + v.��
		end
	end
	�O c
end

�[ �N:add(i)
	for k, v in �p(�/) do
		if v:��(i) �K
			�/[k].�� = �/[k].�� + i.��
			�O �/[k]
		end
	end
	�i.�m(�/, i:�())
	�O i
end

�[ �N:�(ia)
	if �U(ia) == '�i' �K
		if ��(ia) ~= �N �K
			��('Can\'t add non-�� ��.')
		end
	�i
		��('Can\'t add ' .. �U(ia) .. '.')
	end
	
	for k, v in �p(ia) do
		�/:add(v)
	end
	�O ia
end

�[ �N:��(i)
	for k, v in �p(�/) do
		if i == v �K
			�O �i.��(�/, k)
		end
	end
	�O nil
end

�[ �N:�R(i)
	for k, v in �p(�/) do
		if i:��(v) �K
			�O �i.��(�/, k)
		end
	end
	�O nil
end

�[ �N:��(i)
	�D �S = i:�()
	for k, v in �p(�/) do
		if i == v �K
			�S.�� = v.�� - �S.��
			if �S.�� < 0 �K
				�/:��(v)
				�S.�� = -�S.��
			�i
				v.�� = �S.��
				�O nil
			end
		end
	end
	�O �S
end

�[ �N:pop()
	�O �i.��(�/)
end

�[ �N:�()
	if �/[#�/].�� <= 1 �K
		�O �i.��(�/)
	�i
		�/[#�/].�� = �/[#�/].�� - 1
		�O �/[#�/]:�()
	end
end

�[ �N:�](i)
	for k, v in �p(�/) do
		if i == v �K
			�O k
		end
	end
	�O nil
end

�[ �N:get(i)
	�O �/[�/:�](i)]
end

�[ �N:��(i)
	for k, v in �p(�/) do
		if i:��(v) �K
			�O k
		end
	end
	�O nil
end

�[ �N:�n()
	�i.�n(�/, �[(a, b) �O a.�5 < b.�5 end)
	�O �/
end

-- �0
�[ �N.__add(a, b)
	-- � �}. �  �!.
	if not ((��(a) == �N) or (��(a) == �G)) or not ((��(b) == �N) or (��(b) == �G)) �K
		��('�" to add �T �U �$ � �N and ��. [' .. �U(b) .. ']')
	end
	
	�D o = �N.new()
	if (��(a) == �G) �K
		�D �V = �b
		for k, v in �p(o) do
			if a:��(v) �K
				o[k] = o[k] + a
				�V = �_
				��
			end
		end
		if not �V �K
			o:add(a:�())
		end
	�i
		for ks, vs in �p(a) do
			�D �V = �b
			for kd, vd in �p(o) do
				if vs:��(vd) �K
					o[kd] = o[kd] + vs
				end
			end
		end
	end
	if (��(b) == �G) �K
		�D �V = �b
		for k, v in �p(o) do
			if b:��(v) �K
				o[k] = o[k] + b
				�V = �_
				��
			end
		end
		if not �V �K
			o:add(b:�())
		end
	�i
		for ks, vs in �l(b) do
			�D �V = �b
			for kd, vd in �p(o) do
				if vs:��(vd) �K
					o[kd] = o[kd] + vs
				end
			end
		end
	end
	�O o
end

�[ �N.__mul(a, b)
	-- � �}. �  �!.
	if (��(a) ~= �N) or (�U(b) ~= '�I') �K
		��(��.�x('�J �� �� �K: %s * %s.', �U(a), �U(b)))
	end
	
	�D o = �N.new()
	for k, v in �p(a) do
		o[k] = a[k] * b
	end
	�O o
end

�O ItemArray]==],['itemcompound.lua']= [==[�D �G = �H('lib.�U.�G')
�D �P = �H('lib.�P')
�D �� = �H('lib.��')

-- �� ��
�D �W = {
	�� = {}
}

-- �� ��
�[ �W.��(�X)
	�D ic = {}
	�\(i, �W)
	�W.__�] = �W
	
	for k, v in �p(�P.��(�X)) do
		�i.�m(ic.��, �G.new(v))
	end
	
	�O ic
end

�[ �W:�}(i)
	-- � �}. �  �!.
	if ��(i) ~= �G �K
		��('Can\'t add ' .. �U(i) .. ' to �G �.')
	end
	
	for k, v in �p(�/.��) do
		if i == v �K
			�O �_
		end
	end
	�O �b
end

�[ �W:add(i)
	-- � �}. �  �!.
	if ��(i) ~= �G �K
		��('Can\'t add ' .. �U(i) .. ' to �G �.')
	end
	
	for k, v in �p(�/.��) do
		if i == v �K
			�O v
		end
	end
	�O �i.�m(�/.��, ~i:�())
end

�[ �W:��(i)
	-- � �}. �  �!.
	if ��(i) ~= �G �K
		��('Can\'t add ' .. �U(i) .. ' to �G �.')
	end
	
	for k, v in �p(�/.��) do
		if i == v �K
			�i.��(�/.��, v)
			�O �_
		end
	end
	�O �b
end

-- �0
�[ �W.__��(�Y)
	�i.�n(�Y.��, �[(a, b) �O a.�5 < b.�5 end)
	�O ��.�M(�Y.��, ',')
end

�[ �W.__eq(a, b)
	-- Don't do �D �E. �F �G �H out.
	if (��(a) ~= �W) and (��(b) ~= �W) �K
		�O �b
	end
	
	�O ��(a) == ��(b)
end

�O ItemCompound]==],['oredict.lua']= [==[�D �G = �H('lib.�U.�G')
�D �� = �H('lib.�U.��')

-- �� ��
�D �Z = {
	�5 = '',
	�[ = {}
}

-- �� ��
�[ �Z.new(�5, �[)
	-- � �}. �  �!.
	if ��(�[) ~= �� �K
		��('Can\'t �\ �� �� ' .. �U(�[) .. '.')
	end

	�D od = {}
	�\(od, �Z)
	�Z.__�] = �Z
	od.�5 = �5
	od.�[ = �[ or {}
	�O od
end

�[ �Z:�}(i)
	�O �[:�}(i)
end

-- �0
�[ �Z.__��(od)
	�O �5
end

�[ �Z.__eq(a, b)
	-- Don't do �D �E. �F �G �H out.
	if (��(a) ~= �Z) and (��(b) ~= �Z) �K
		�O �b
	end
	
	�O (a.�5 == b.�5) and (a.�[ == b.�[)
end

�O OreDict]==]}},['oredict.db']= [==[ore:��=��:log|*,��:�u|*,��:�&_log|*
ore:��=��:��|*,��:�&_��|*
ore:�==��:��_��|*
ore:��=��:oak_��,��:��_��,��:��_��,��:�D_��,��:��_��,��:�t_oak_��
ore:��=��:��,��:��_��,��:��_��,��:�D_��,��:�t_oak_��,��:��_��
ore:��=��:��_��,��:��_��_��,��:��_��_��,��:�D_��_��,��:�t_oak_��_��,��:��_��_��
ore:��=��:��_��,��:��_��,��:�t_oak_��,��:��_��,��:�D_��,��:��_��
ore:��=��:��
ore:��=��:��|*,��:�&_��|*
ore:��=��:��|*,��:��|*,��:�&_��|*
ore:�=��:�
ore:��=��:��_ore
ore:��=��:�I_ore
ore:��=��:�A_ore
ore:��=��:�p_ore
ore:��=��:��_ore
ore:��=��:�k_ore
ore:��=��:�_ore
ore:��=��:��_ore
ore:��=��:�I_�J
ore:�.=��:��_�J
ore:��=��:��
ore:��=��:��
ore:��=��:��_��
ore:��=��:�I_��
ore:�F=��:�p
ore:�l=��:�k
ore:��=��:�
ore:��=��:�_��
ore:��=��:�_� 
ore:��=��:��
ore:��=��:��_�
ore:��=��:dye|4
ore:�
=��:��_��
ore:�	=��:�I_��
ore:�=��:�A_��
ore:�=��:�p_��
ore:��=��:��_��
ore:�=��:�k_��
ore:�=��:�_��
ore:��=��:��_��
ore:�=��:��
ore:�=��:� 
ore:�=��:��
ore:�=��:��_��
ore:��=��:�	
ore:�
=��:�
ore:dye=��:dye|*,��:��|14
ore:��=��:��
ore:��=��:��_��
ore:�a=��:�`_��
ore:��=��:��
ore:��=��:��
ore:��=��:��
ore:��=��:��_��
ore:�5=��:�5
ore:��=��:��
ore:egg=��:egg
ore:�=��:�_13,��:�_cat,��:�_�,��:�_�,��:�_far,��:�_�,��:�_�,��:�_�,��:�_�,��:�_�,��:�_11,��:�_�
ore:�|=��:�|
ore:��=��:��
ore:��=��:��
ore:��=��:��
ore:��=��:��
ore:��=��:��|*
ore:��=��:��|*,��:red_��|*
ore:��=��:��
ore:�b=��:�b
ore:��=��:��
ore:�=��:end_��
ore:��=��:��
ore:�=��:�x_�i
ore:�=��:��
ore:�=��:�
ore:�=��:�|1
ore:�=��:�|2
ore:�=��:��|1
ore:�=��:��|2
ore:�=��:��|3
ore:�=��:��|4
ore:�=��:��|5
ore:�=��:��|6
ore:��=��:��
ore:��=��:��,��:��_��|*
ore:�=��:��_��
ore:�=��:��_��,��:��_��_��|*
ore:��=��:��,��:�`_��,��:��_��
ore:��=��:��,��:��_��
ore:� =��:�`_��
ore:�!=��:��_��
ore:��=��:dye
ore:��=��:��_��|15
ore:�"=��:��_��_��|15
ore:��=��:dye|1
ore:��=��:��_��|14
ore:�#=��:��_��_��|14
ore:�+=��:dye|2
ore:�O=��:��_��|13
ore:�$=��:��_��_��|13
ore:��=��:dye|3
ore:��=��:��_��|12
ore:�%=��:��_��_��|12
ore:�=��:dye|4,��:��|14
ore:��=��:��_��|11
ore:�&=��:��_��_��|11
ore:�
=��:dye|5
ore:�=��:��_��|10
ore:�'=��:��_��_��|10
ore:�v=��:dye|6
ore:�w=��:��_��|9
ore:�(=��:��_��_��|9
ore:�/=��:dye|7
ore:�0=��:��_��|8
ore:�)=��:��_��_��|8
ore:�1=��:dye|8
ore:�P=��:��_��|7
ore:�*=��:��_��_��|7
ore:�=��:dye|9
ore:�=��:��_��|6
ore:�+=��:��_��_��|6
ore:�)=��:dye|10
ore:�*=��:��_��|5
ore:�,=��:��_��_��|5
ore:��=��:dye|11
ore:��=��:��_��|4
ore:�-=��:��_��_��|4
ore:�2=��:dye|12
ore:�3=��:��_��|3
ore:�.=��:��_��_��|3
ore:�&=��:dye|13,��:��|3
ore:�'=��:��_��|2
ore:�/=��:��_��_��|2
ore:�=��:dye|14
ore:�=��:��_��|1
ore:�0=��:��_��_��|1
ore:��=��:dye|15
ore:��=��:��_��
ore:�1=��:��_��_��
ore:�_��_�=��:��|1
ore:��=��:��,��:��|2
ore:�2=��:��|1
ore:�=��:��
ore:�3=��:��|1
ore:�4=��:��|2
ore:�5=��:��|3
ore:�6=��:��|4
ore:�7=��:��|5
ore:�8=��:��|6
ore:�9=��:��|7
ore:�:=��:��
ore:�;=��:��|1
ore:�<=��:��|2
ore:�==��:��|3
ore:�>=��:��
ore:�?=��:��|1
ore:�@=��:��
ore:�A=��:��|1
ore:�B=��:��
ore:�C=��:��|1
ore:�D=��:��|2
ore:�E=��:��|3
ore:�F=��:��|4
ore:�G=��:��|5
ore:�H=��:��
ore:�I=��:��|1
ore:�J=��:��|2
ore:�K=��:��|3
ore:�L=��:��|4
ore:�M=��:��|5
ore:�N=��:��|6
ore:�O=��:��|7
ore:�P=��:��|8
ore:�Q=��:��|9
ore:�R=��:��|10
ore:��=��:��|11
ore:�S=��:��|12
ore:�T=��:��|13
ore:�U=��:��|15,��:��|16
ore:�V=��:��|17
ore:�W=��:��
ore:�X=��:��|1
ore:�Y=��:��|2
ore:�Z=��:�I_��
ore:�[=��:��|1
ore:��=��:��
ore:�q=��:��,��:��_��
ore:�r=��:��_��
ore:�s=��:�`_��
ore:oc:�t=�u:�v|7
ore:�w=�u:�x|29
ore:oc:�y=��:end_��
ore:�+=�':�z|*
ore:�:=�':�C|*
]==]}

local function extractFiles(foldername, filetable)
	if not fs.isDirectory(foldername) then
		print('make folder "' .. foldername .. '"')
		fs.makeDirectory(foldername)
	end
	
	for filename, filecontent in pairs(filetable) do
		if type(filecontent) == 'table' then
			extractFiles(foldername .. '/' .. filename, filecontent)
		else
			print('extract "' .. filename .. '"')
			local f = io.open(foldername .. '/' .. filename, 'w')
			local filebuf = ''
			i = 1
			while i <= #filecontent do
				if string.byte(filecontent:sub(i,i)) >= 0x80 then
					local dictnum = (string.byte(filecontent:sub(i,i)) - 0x80) * 0x100 + string.byte(filecontent:sub(i+1,i+1)) - 0x80
					filebuf = filebuf .. dict[dictnum + 1]
					i = i + 1
				else
					filebuf = filebuf .. filecontent:sub(i,i)
				end
				i = i + 1
			end
			f:write(filebuf)
			f:close()
		end
	end
end

extractFiles(cd, files)

print('Done.')