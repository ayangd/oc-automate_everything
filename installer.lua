local fs = require('filesystem')
local sh = require('shell')
local cd = sh.getWorkingDirectory()

local dict = {'opencomputers','card','123040','nuggetGold','cpu1','circuitChip3','materialCard','chipDiamond','cpu2','ram5','minecraft','iron','nugget','materialALU','circuitChip2','yellow','flower','golden','rail','101121131','ingotGold','stickWood','dustRedstone','wool','dyeRed','rabbit','stew','010234050','cooked','carrot','baked','potato','brown','mushroom','bowl','stick','logWood','123045','materialInterweb','torchRedstoneActive','obsidian','101232404','ender','lanCard','120030','cable','circuitChip1','materialEnderPearl','relay','121232141','ingotIron','materialCircuitBoardPrinted','bone','block','111111111','extrautils2','ingredients','diamond','ram1','filter','121232121','string','blockRedstone','ram3','birch','fence','121121','planks','passivegenerator','121131141','decorativesolid','nether','brick','storagedrawers','upgrade','template','111121111','drawerBasic','wart','minichest','chest','banner','111111020','cobblestone','wall','111111','dyeMagenta','stained','glass','pane','blockGlassLime','dyeBlack','dyeWhite','coal','dyeCyan','hardened','clay','spike','stone','010121232','sword','compressed1xCobblestone','slime','ball','spruce','gate','leather','chestplate','101111111','010232','111222','plankWood','slimeball','unstableingots','dark','door','writable','book','feather','helmet','111101','apple','emerald','gemEmerald','101010','pickaxe','111020020','gemDiamond','1212','redstone','111232222','blockGlassMagenta','raid','121343151','cpu3','diskDrive','stairs','100110111','trim','121222121','dyePurple','decorativeglass','1111','dyeBrown','hologram2','121343565','blockGlass','blaze','powder','blockGlassColorless','dyeGreen','pumpkin','torch','rack','121343567','wlanCard2','bars','powerDistributor','compressedcobblestone','gold','blockGold','dyeOrange','filterfluids','gemLapis','111101111','terraformer','enchanting','table','dirt','compresseddirt','redstoneCard1','dyeYellow','boots','101101','acacia','ineffableglass','grocket','121343','pipe','concrete','122223333','sand','gravel','mycelium','sticky','piston','110202','fire','charge','gunpowder','luxsaber','blockGlassYellow','suncrystal','wooden','drum','121131121','ingotDemonicMetal','klein','glasscutter','001021100','button','stonebrick','dyeBlue','lava','bucket','netsplitter','craftingPiston','carpetedcapacitor','carpet','capacitor','indexerremote','screen','sandstone','jungle','ingot','comparator','010121333','quartz','repeater','121333','slab','written','purpur','chorus','fruit','popped','water','fishing','001012102','leggings','111101101','boat','101111','noteblock','dyeGray','miner','dropper','dyeLightBlue','screen1','121234121','microcontroller','storage','itembuilderswand','001020200','decorativesolidwood','beetroot','drawer','120203','beacon','111121333','netherStar','121212121','flint','steel','dyePink','compressednetherrack','blockGlassBlack','prismarine','gemPrismarine','crafter','crafting','111232111','paper','filled','1221','netherbrick','keyboard','111123','materialButtonGroup','materialArrowKey','materialNumPad','dyeLightGray','blockGlassWhite','111202','blockGlassLightBlue','111232','double','plant','personal','name','flattransfernode','anvil','quarry','magic','snow','globe','bricks','1223','snowball','clock','010121010','speckled','melon','sickle','011001211','powertransmitter','fireaxe','opinium','goldenlasso','resonator','121343333','blockCoal','compressedsand','chameliumblock','chamelium','ladder','101111101','biomemarker','treeSapling','quantify','furnace','minecart','pressure','plate','cake','111232444','milk','sugar','wheat','111023111','armor','stand','111010121','quarryproxy','121131444','blockGlassPink','dyeLime','blockGlassRed','keybutton','shroud','vine','redstoneclock','bottle','pearl','1112','shovel','simpledecorative','cauldron','101101111','status','121232424','soundmuffler','stairWood','disassembler','123405676','materialCU','paneGlass','analyzer','analogcrafter','chestWood','lever','purple','shulker','shell','screen3','glowstone','dust','101121101','light','weighted','material','framingtable','drawerTrim','trashcanfluid','case1','nuggetIron','star','printer','hopper','case3','blockGlassGreen','endershard','powerconverter','powerbattery','case2','blockGlassLightGray','spectral','arrow','dustGlowstone','log2','ingotUnstable','rainbowgenerator','sugarcane','111232242','materialTransistor','crystal','111121131','ghast','tear','blockIron','dispenser','blockGlassCyan','daylight','detector','111222333','angelring','indexer','tripwire','hook','trapped','101121010','component','blockDiamond','compressedgravel','010232010','121345121','componentBus2','graphicsCard2','121234151','wlanCard','121030','soup','trapdoor','geolyzer','compass','ram6','componentBus3','componentBus1','graphicsCard1','ram2','ram4','stoneEndstone','microcontrollerCase2','controller','111232141','microcontrollerCase1','12345','inkCartridgeEmpty','magma','cream','12222','stoneDiorite','121340151','121343121','experience','elytra','teleporter','largishchest','trashchest','trashcan','robot','compdrawers','itemdestructionwand','011021200','mossy','pillar','heavy','controllerslave','hologram1','angelblock','111101121','lamp','materialCuttingWire','powerdistributor','stack','magicapple','bread','scanner','spider','121121010','shield','121111010','screen2','121345161','snowglobe','12345678','doorWood','grass','painting','sign','misc','interactionproxy','powermanager','111020222','playerchest','compoundbow','012302012','endstone','chameliumBlock','user','assembler','workbench','machine','trowel','001020300','11250603','1002','123425123','materialDisk','121343131','cookie','lapis','shears','0110','ironwood','blockGlassOrange','motionsensor','012102012','wood','customdrawers','slabWood','blockGlassBlue','item','frame','012222','wrench','101020010','lead','potion','111232454','blockLapis','seeds','contract','1234','linkedCard','adapter','slab2','blockGlassGray','tool','100230430','solarGeneratorUpgrade','123456789','tape','010222','brewing','materialAcid','transposer','inventoryControllerUpgrade','tankControllerUpgrade','lawsword','charger','bookshelf','111222111','blockGlassBrown','enderpearl','101232141','jukebox','trashcanenergy','hdd2','lantern','dustPrismarine','hdd1','hdd3','fermented','101232020','layer','bricksStone','blockGlassPurple','stoneGranite','wateringcan','1000','100121010','111020111','hide','bagofholding','waypoint','netherrack','conversion','diskdrive','activator','hoverboots','hoverUpgrade2','droneCase1','012023200','111232040','100120130','redstonelantern','customtrim','boomerang','010101','123456173','010111','010101010','010232333','110120001','void','observer','111223111','stoneAndesite','local','isRobotAcquired','xpcall','require','debug','traceback','then','print','load','module','return','stringlib','resproc','rawdb','oredictdb','craftingdb','inventory','type','Command','class','start','usage','func','function','setmetatable','index','running','true','slot','changed','false','wrongUsage','command','Invalid','arguments','commands','help','else','such','cmdlist','pairs','insert','sort','printbuffer','ipairs','pagedPrint','exit','stdout','write','Changes','been','made','Would','like','save','before','exiting','userInput','stdin','read','lower','elseif','reload','Resources','loaded','successfully','rescan','scan','Inventory','scanned','saved','analyze','shaped','shapeless','ignoreMetadata','processor','processors','shape','Check','result','scanSlot','select','throw','Crafting','obstructed','Scan','pattern','craftingArea','scanPattern','slotScan','ignoreDamage','damage','Shrink','Craft','craft','width','height','scanCraftingArea','show','peek','look','lookup','Nothing','getmetatable','keep','Item','discard','Slot','cleared','remove','processing','Removed','removed','list','List','tostring','sortedCraftingPairs','traceraw','itemAdded','itemAvailable','trace','isCraftable','Crafted','failed','enough','items','clear','clearCraftingArea','Cleared','while','craftmgr','commandstr','split','commandname','unpack','unrecognized','PREINITIALIZATION','CLIENT','INFO','Current','loaders','after','merging','preinit','Loading','scripts','loader','with','names','Completed','script','loading','INITIALIZATION','CraftTweaker','Building','registry','Successfully','built','recipeevent','crafttweaker','POSTINITIALIZATION','Removing','recipes','various','outputs','AVAILABLE','Fixed','RecipeBook','Recipes','addShaped','card91','null','card92','card90','addShapeless','from','dandelion','shortcut','card88','card89','card86','card87','relay21','card81','card84','card85','card82','card83','mill','basicdrawers','halfdrawers4','withTag','mini','magenta','white','lime','gray','cyan','enchanter','Type','enchanted','black','meal','fulldrawers2','manual','lootcycling','tippedarrow','unstable','blue','oxeye','daisy','truchet','raid19','border','hologram213','green','rack25','compressed','bonemeal','chunk','chunkloader','Animal','ForgeData','Contracted','byte','villager','Place','generator','netherstar','skull','orange','fluids','infuser','uncompress','redstone20','ineffable','transfer','node','energy','stable','dehostilifier','rainbow','bottom','overclock','pink','survival','saber','65536','cutter','stoneslab','heater','netsplitter28','carpetedcapacitor30','remote','card184','humidifier','dehumidifier','fulldrawers4','screen122','microcontroller151','tulip','builders','wand','culinary','death','dragonsbreath','enchant','sandy','mapextending','keyboard14','solar','sunflower','survivalist','diorite','flatnode','base','cooler','absorbtion','transmitter','lasso','evil','shulkerboxcoloring','nuggets','chiseled','chameliumblock7','allium','biome','marker','normal','wind','proxy','stonecross','concealment','halfdrawers2','flash','demon','level1','level2','poppy','sound','muffler','diagonal','disassembler9','analog','screen323','fulldrawers1','print182','lightLevel','noclipOff','isBeaconBase','pressurePlate','noclipOn','isButtonMode','stateOn','redstoneLevel','stateOff','print183','4096','material156','framing','colorizeboots','print173','print174','print175','print176','trash','fluid','shielddecoration','case14','smooth','dragon','repairitem','printer18','speed','super','colorizecable','azure','bluet','case35','reverse','pipes','powerconverter16','battery','case26','armordye','moon','bannerduplicate','10000','capacitor3','angel','ring','convert','component80','component78','component79','component72','component73','component70','component71','geolyzer11','component76','material54','component77','component74','component75','material51','material50','material53','material52','component69','polished','component67','component68','upgrade94','component62','upgrade93','upgrade96','upgrade95','component65','upgrade98','component66','upgrade97','component63','component64','upgrade99','lilac','largist','robot154','compacting','squid','chickenring','destruction','lunar','slave','hologram112','material131','powerdistributor17','combined','orchid','shard','chicken','screen224','misc152','misc155','porcupine','ingotBrick','player','gear','compound','endstone27','assembler1','cable2','storage129','storage128','storage127','storage126','storage125','chameliumblock158','chameliumblock159','lazuli','chameliumblock157','chameliumblock161','chameliumblock162','chameliumblock160','chameliumblock165','chameliumblock166','chameliumblock163','chameliumblock164','burnt','banneraddpattern','diamonds','motionsensor15','chameliumblock169','chameliumblock167','chameliumblock168','crusher','chameliumblock172','chameliumblock170','chameliumblock171','framed','half2','storage153','storage150','color','half4','upgrade111','upgrade110','power','manager','upgrade117','wrench59','upgrade116','upgrade119','upgrade118','upgrade113','upgrade112','upgrade115','upgrade114','upgrade120','upgrade122','granite','upgrade121','upgrade124','upgrade123','storage132','data','label','openos','display','Name','OpenOS','Operating','System','lootFactory','floppy','storage130','readonly','eeprom','EEPROM','BIOS','retrieve','storage139','tool55','storage138','tool56','storage137','tool57','storage136','tool58','storage135','storage133','oppm','OPPM','Package','Manager','andesite','mapcloning','packing','upgrade134','storage143','storage142','storage141','storage140','tool61','storage149','storage148','storage147','transposer29','storage146','fireworks','storage145','storage144','decolorizecable','kikoku','charger8','storage179','storage178','storage177','upgrade109','storage181','storage180','upgrade100','coarse','upgrade106','decolorizeboots','upgrade105','upgrade108','upgrade107','upgrade102','upgrade101','upgrade104','upgrade103','rose','bush','antenna','rotten','flesh','borderstone','mining','porkchop','beef','mutton','fish','watering','full1','adapter0','full2','full4','holding','waypoint26','diskdrive10','hoverboots60','material37','material36','material39','material38','material33','material32','material35','material34','material31','material48','material47','material49','material44','material43','material46','material45','material40','material42','material41','bookcloning','peony','entries','fenceWood','fenceGateWood','sapling','treeLeaves','leaves','leaves2','oreGold','oreIron','oreLapis','oreDiamond','oreRedstone','oreEmerald','oreQuartz','oreCoal','ingotBrickNether','gemQuartz','crystals','blockEmerald','blockQuartz','cropWheat','cropPotato','cropCarrot','cropNetherWart','reeds','blockCactus','cactus','record','blocks','chirp','mall','mellohi','stal','strad','ward','wait','blockSlime','blockPrismarine','blockPrismarineBrick','blockPrismarineDark','stoneGranitePolished','stoneDioritePolished','stoneAndesitePolished','paneGlassColorless','chestEnder','chestTrapped','paneGlassBlack','paneGlassRed','paneGlassGreen','paneGlassBrown','paneGlassBlue','paneGlassPurple','paneGlassCyan','paneGlassLightGray','paneGlassGray','paneGlassPink','paneGlassLime','paneGlassYellow','paneGlassLightBlue','paneGlassMagenta','paneGlassOrange','paneGlassWhite','nuggetUnstable','compressed2xCobblestone','compressed3xCobblestone','compressed4xCobblestone','compressed5xCobblestone','compressed6xCobblestone','compressed7xCobblestone','compressed8xCobblestone','compressed1xDirt','compressed2xDirt','compressed3xDirt','compressed4xDirt','compressed1xSand','compressed2xSand','compressed1xGravel','compressed2xGravel','compressed1xNetherrack','compressed2xNetherrack','compressed3xNetherrack','compressed4xNetherrack','compressed5xNetherrack','compressed6xNetherrack','gemRedstone','gearRedstone','eyeofredstone','dustLunar','coalPowered','gemMoon','xuUpgradeSpeed','xuUpgradeStack','xuUpgradeMining','xuUpgradeBlank','dropofevil','ingotEnchantedMetal','xuRedstoneCoil','xuUpgradeSpeedEnchanted','ingotEvilMetal','blockEnchantedMetal','blockDemonicMetal','blockEvilMetal','doorIron','blockMagicalWood','motionSensor','powerConverter','netSplitter','carpetedCapacitor','materialCircuitBoardRaw','materialCircuitBoard','tabletCase1','tabletCase2','droneCase2','inkCartridge','terminal','texturePicker','hoverBoots','nanomachines','server1','server2','server3','apu1','apu2','terminalServer','diskDriveMountable','graphicsCard3','redstoneCard2','internetCard','dataCard1','dataCard2','dataCard3','angelUpgrade','batteryUpgrade1','batteryUpgrade2','batteryUpgrade3','chunkloaderUpgrade','cardContainer1','cardContainer2','cardContainer3','upgradeContainer1','upgradeContainer2','upgradeContainer3','craftingUpgrade','databaseUpgrade1','databaseUpgrade2','databaseUpgrade3','experienceUpgrade','generatorUpgrade','inventoryUpgrade','navigationUpgrade','pistonUpgrade','signUpgrade','tankUpgrade','tractorBeamUpgrade','leashUpgrade','hoverUpgrade1','tradingUpgrade','wlanCard1','filesystem','args','path','resolve','exists','File','found','executable','loadfile','open','close','Crash','collected','attempt','concatenate','value','metamethod','concat','field','main','global','tail','calls','process','Format','output','quantity','recipe','array','metadata','121212','11111111','11122','1111111','1213','1112324','method','compareDamage','processItem','Fire','Forget','debugging','Automatically','unloads','library','package','find','allMatch','gmatch','notContains','bracketContent','bracket','stripped','gsub','bracketLevel','indexStart','childs','arrRange','tableConcat','next','foreach','useful','Normalize','converting','format','database','iNormalize','iname','match','check','more','than','fits','Note','delimiter','iNormExt','tableIndex','inTable','conditionalFilter','onlyDamaged','onlyWithTag','onlyStack','liquid','craftingConvert','srec','Shapeless','shapedstr','itemc','itemAmount','tonumber','itemstr','itemArrangement','oredictConvert','Removes','orename','oredef','craftingdbf','oredictdbf','oredict','failedf','crafttweakerlog','curOre','oreContent','craftingCount','oredictCount','failedCount','convertOredict','converted','sentries','160D','fails','Wrote','lines','parsed','criteria','itemarray','ingredient','ingredientarray','Class','Meta','Init','craftingdbpath','dimension','craftingParams','size','parse','npat','itemoutput','itemoutputq','itemshape','itemUsed','itemsNeeded','itemPattern','indexDamage','allitems','Functions','error','first','Override','original','otype','Missing','invctrl','slots','math','floor','inventorySize','getStackInInternalSlot','updateSlot','Scanning','Done','isInExcludedSlot','excludedSlots','isInCraftingArea','slotDest','amount','transferTo','itemSlots','count','pull','ignoreCraftingArea','destSlot','itemTypes','pulled','break','srcSlot','Fill','curSlot','maxSize','moveSize','Lastly','fill','empty','isAvailable','getinventorySize','isUpAvailable','getUpinventorySize','request','TODO','external','send','deposit','front','specific','selected','transferOut','exSlot','dropIntoSlot','transferIn','suckFromSlot','itemcompound','oredictdbpath','sorted','splitted','rawdbpath','rawCount','tablelib','ResProc','getItemRecipe','object','addItem','createdItem','tryTakeItem','minus','ceil','satisfiable','externalItem','Merge','allItems','addAll','Unsatisfied','unsatisfiedItems','Drain','populate','unsatisfied','until','unsatisfiedItem','popSingle','craftings','unsatisfiedCraftings','unsatisfiedCrafting','availability','allAvailable','this','singleItem','event','delim','Splitting','screenWidth','screenHeight','getResolution','lineCount','brokeLines','stay','brokenTableBuffer','down','clone','Safety','Reduces','headache','Attempting','thing','other','newtable','cloneAll','splitter','tabulation','tableLength','createTable','make','needs','anything','into','beside','zero','itemsneeded','self','Metamethods','buff','Ingredient','content','Error','parsing','Ingredients','doesn','comparison','operation','different','IngredientArray','Empty','splits','expecting','argument','construction','compareTo','compare','Deprecated','deprecatrace','errors','here','Craftingdb','will','freak','number','Incompatible','scaling','completename','bnot','ItemArray','hasDamage','hasAll','hasAllDamage','removeDamage','unresolvedItem','incompatible','types','added','ItemCompound','itemCompoundString','itemCompound','OreDict','iComp','create'}

local files = {['a.txt']= [==[]==],['crafting.db']= [==[��:��|11 1 sd 32 �� ore:�� ore:oc:�� ore:oc:�� ore:oc:��
��:��|12 1 sd 32 �� ore:�� ore:oc:�� ore:oc:�� ore:oc:��
��:��|10 1 sd 32 �� ��:��_�� ore:oc:�� ore:oc:�� ore:oc:��
��:dye|11 1 sl 00 1 ��:��_��
��:��_�� 6 sd 33 �� ore:�� ore:�� ore:��
��:��|14 1 sl 00 12 ore:�� ��:��
��:��_�� 1 sd 33 �� ��:��_�� ��:�� ��:��_�� ��:��_�� ��:��
��:�� 16 sd 12 11 ore:��
��:��|8 1 sd 32 �� ore:oc:�� ore:oc:�� ore:�� ore:oc:�� ore:��
��:��|9 2 sd 33 �� ��:��_eye ore:oc:�� ore:oc:�� ore:oc:��
��:��|6 1 sd 32 �� ore:oc:�� ore:oc:�� ore:oc:��
��:��|7 1 sd 32 �� ore:�� ore:oc:�� ore:oc:��
��:�� 1 sd 33 �� ore:�� ore:oc:�� ore:oc:�� ore:oc:��
��:��_�� 1 sd 33 �� ��:dye|15
��:��|7 1 sl 00 123 ��:��|9 ore:�� ��:��|*
��:��|1 1 sd 32 �� ore:oc:�� ore:oc:�� ore:oc:�� ore:oc:��
��:��|4 1 sd 32 �� ore:�� ore:oc:�� ore:oc:��
��:�� 1 sd 33 �� ore:�� ore:�� ore:��
��:��|5 1 sd 32 �� ore:�� ore:oc:�� ore:�� ore:oc:��
��:��_�� 9 sd 11 1 ore:��
��:��|2 1 sd 32 �� ore:oc:�� ore:oc:�� ore:oc:�� ore:oc:��
��:��|3 1 sd 32 �� ore:oc:�� ore:oc:�� ore:oc:�� ore:oc:��
��:��_�� 3 sd 32 �� ��:��|2 ��:��
��:��|5 1 sd 33 �� ��:��|3 ��:�� ��:��|1 ��:��_��_��|*
��:��_�� 2 sd 33 �� ore:�� ore:��
��:��_��_�� 1 sd 33 �� ��:��_��
��:�� 9 sl 00 1 ��:��|*
��:��|13 1 sd 33 �� ��:��|2 ore:��
��:bed|14 1 sl 00 12 ��:bed ore:��
��:��_�� 6 sd 32 �� ��:��
��:��|2 1 sl 00 12 ore:�� ��:��
��:��_��_��|5 16 sd 32 �� ore:��
��:dye|8 2 sl 00 12 ore:�� ore:��
��:��_�� 1 sd 33 �� ��:��
��:bed|9 1 sl 00 12 ��:bed ore:��
��:��_��_��|2 8 sd 33 �� ��:��_�� ore:��
��:��_�� 4 sd 33 �� ��:��_��|* ore:�� ore:��
��:��|15 1 sl 00 12 ore:�� ��:��
��:��_�� 9 sd 11 1 ��:��
��:dye|15 9 sl 00 1 ��:��_��
��:��_��_�� 1 sd 32 �� ��:�� ��:��|1
��:��_�� 1 sd 33 �� ore:��
��:��|7 1 sd 32 �� ��:��|1 ��:��|2 ��:��
��:bed|4 1 sd 32 �� ��:��|4 ore:��
��:�� 1 sd 33 �� ore:��
��:��_�� 1 sd 33 �� ore:��
��:��|1 9 sl 00 1 ��:��|2
��:��_oak_�� 3 sd 23 �� ��:��|5
��:��_�� 1 sl 00 123 ��:�� ore:�� ore:��
��:��_�� 1 sd 32 �� ore:��
��:bed|3 1 sd 32 �� ��:��|3 ore:��
��:��_�� 1 sd 33 �� ore:�� ��:��
��:��_�� 1 sd 33 �� ore:��
��:��_pot 1 sd 32 �� ��:��
��:��_�� 1 sd 33 �� ore:�� ore:��
��:dye|7 1 sl 00 1 ��:red_��|8
��:��|5 4 sl 00 �  ��:��|2 ��:��
��:��_�|1 1 sd 33 � ��:� ore:�� ��:��_��
��:��_��_��|2 16 sd 32 �� ore:�
��:� 1 sd 33 � ��:��_�� ore:oc:� ore:oc:�� ore:oc:� ore:oc:��
��:��_��_� 4 sd 33 �	 ��:��_��
��:�
|5 4 sd 33 � ore:�� ��:��|5
��:��|10 1 sl 00 12 ore:� ��:��
��:�|1 4 sd 22 � ��:�
��:��_��_��|12 8 sd 33 �� ��:��_�� ore:�
��:� 1 sd 33 � ore:oc:�� ore:� ore:oc:�� ore:�� ore:�� ��:�_�
��:bed|2 1 sd 32 �� ��:��|2 ore:��
��:��_�� 1 sd 13 112 ore:�� ore:��
��:��_�� 3 sd 32 �� ��:��|1 ��:��
��:��_��|13 8 sd 33 �� ore:� ore:�
��:lit_� 1 sd 12 12 ��:� ��:�
��:� 1 sd 33 � ore:�� ore:oc:� ��:��_� ore:�� ore:oc:�� ore:oc:�� ore:oc:�
��:�|7 1 sd 33 �� ��:�|6
��:�|6 1 sd 33 �� ��:�|5
��:��_� 4 sd 33 �� ��:��_��|* ore:�� ore:� 
��:dye|7 3 sl 00 122 ore:�� ore:��
��:�|1 1 sd 33 �� ��:�
��:�|5 1 sd 33 �� ��:�|4
��:�|4 1 sd 33 �� ��:�|3
��:�|3 1 sd 33 �� ��:�|2
��:�|2 1 sd 33 �� ��:�|1
��:��_��|1 8 sd 33 �� ore:� ore:�!
��:�" 1 sd 33 �� ore:�# ore:�� ore:��
��:�� 4 sd 33 �$ ore:��
��:�%|8 1 sl 00 122 ��:�%|9 ��:�&_�'|*
��:�( 9 sl 00 1 ��:�)
��:�|1 9 sl 00 1 ��:�|2
��:� 1 sd 33 � ore:�� ore:oc:�� ore:�� ore:oc:�* ore:oc:��
��:bed|4 1 sl 00 12 ��:bed ore:�+
��:��_�, 1 sd 32 �- ore:��
��:�._�� 3 sd 23 �� ��:��|4
��:�/|3 8 sd 33 �� ��:�|3 ��:��|5
��:�0|6 1 sd 32 �1 ore:�� ��:�2 ore:�� ��:�_��|*
��:��|2 1 sd 33 �� ��:��|1
��:�3_�|9 8 sl 00 �4 ore:�� ��:�5 ��:�6
��:�%|6 1 sl 00 122 ��:�%|9 ��:�7|*
��:�8_�9 1 sd 12 12 ore:�� ��:�9
��:��_hoe 1 sd 23 �: ore:�� ore:��
��:�;_�< 3 sl 00 123 ore:�= ��:�_� ��:��,��:��|1
��:��_��_��|15 8 sd 33 �� ��:��_�� ore:��
��:� 9 sd 11 1 ��:�_��
��:�� 9 sd 11 1 ��:��_��
��:�>|3 1 sd 33 �� ��:��|17 ore:�? ��:�@ ��:��
��:�A_�� 1 sd 33 �� ore:�� ore:��
��:�B|3 1 sd 33 �C ore:�D ��:�E ��:�B|2
��:�F 1 sd 33 �G ore:�� ore:��
��:�3_�|13 8 sl 00 �4 ore:� ��:�5 ��:�6
��:oak_� 4 sd 33 �	 ��:��
��:��_�H 1 sd 11 1 ore:��
��:��|2 4 sd 22 � ��:�I|*
��:dye|12 2 sl 00 12 ore:�J ore:��
��:��_��|12 8 sd 33 �� ore:� ore:�
��:�%|4 1 sl 00 122 ��:�%|9 ��:�K_�L|*
��:�M 1 sd 33 �� ore:�� ore:oc:�� ore:�N ore:oc:��
��:�O 1 sl 00 12 ��:�P ore:oc:�Q
��:�R 1 sd 33 �C ore:�� ��:��|2 ��:�S
��:�T 1 sd 22 � ��:�5
��:�3_�|4 8 sl 00 �4 ore:�+ ��:�5 ��:�6
��:�U_��_�� 1 sd 32 �� ��:�� ��:��|3
��:�_�V 9 sd 11 1 ��:�_��
��:��|9 2 sl 00 11 ��:��|9
��:�W 1 sd 33 �X ��:�_� ��:�Y ore:��
��:�Z 1 sd 32 �[ ��:�_� ore:�� ore:��
��:�3_�|14 8 sl 00 �4 ore:�� ��:�5 ��:�6
��:�)|2 9 sl 00 1 ��:�)|3
��:�A_�\|2 6 sd 31 111 ��:��|2
��:�� 1 sl 00 123 ��:��|*,��:��_��|*,��:�]_��|* ore:�� ��:��|*
��:�^_�� 4 sd 22 � ��:�__�`_�a
��:�%|2 1 sl 00 122 ��:�%|9 ��:�b_�L|*
��:�A_�H 1 sd 11 1 ore:��
��:��_� 4 sd 33 �	 ��:��
��:�c_rod 1 sd 33 �d ore:�� ore:��
��:��_�e 1 sd 33 �f ore:��
��:�%|3 1 sl 00 122 ��:�%|9 ore:�5
��:�g 1 sd 32 �h ��:��
��:�P|9 3 sd 21 11 ��:��|9
��:dye|9 2 sl 00 12 ore:�� ore:��
��:�i 1 sd 33 �� ore:�� ore:��
��:�) 1 sd 33 �� ��:�(
��:�3_�|7 8 sl 00 �4 ore:�j ��:�5 ��:�6
��:�k 1 sl 00 123 ��:�l|* ��:�� ��:��_��|*
��:�3_�|3 8 sl 00 �4 ore:�m ��:�5 ��:�6
��:�n 1 sd 33 �o ore:�� ��:� ore:oc:�� ore:�
��:�p 1 sl 00 12 ��:�p ��:�q
��:�A_�\|4 6 sd 31 111 ��:��|4
��:bed|7 1 sl 00 12 ��:bed ore:�j
��:��_�� 1 sl 00 123 ��:��_�� ��:red_�� ��:��
��:dye|1 1 sl 00 1 ��:red_��|4
��:�r 1 sd 33 �s ore:�� ��:�t|1
��:dye|1 1 sl 00 1 ��:�u
��:�v_key 1 sd 23 �w ore:�� ore:�� ��:��_��
��:�x 1 sd 33 �y ore:� ore:�z ��:��
��:tnt 1 sd 33 �{ ore:�= ��:�5,��:�5|1
��:bed|8 1 sd 32 �� ��:��|8 ore:��
��:�|_and_�} 1 sl 00 12 ore:�� ��:�|
��:dye|14 1 sl 00 1 ��:red_��|5
��:bed|6 1 sl 00 12 ��:bed ore:�~
��:��_�|2 1 sd 33 �y ore:�� ��:��_�� ��:�
��:�P|12 3 sd 21 11 ��:��|12
��:�U_�� 3 sd 23 �� ��:��|3
��:�|3 9 sl 00 1 ��:�|4
��:��_��_��|15 16 sd 32 �� ore:��
��:��|4 4 sl 00 �  ore:�5 ore:�
��:��|1 1 sd 33 �� ore:��
��:�P|11 3 sd 21 11 ��:��|11
��:��_�� 1 sd 33 �� ore:��
��:�� 1 sl 00 123 ��:�l|* ��:�� ��:��_�'|*
��:� 9 sl 00 1 ��:�|1
��:��_�q 1 sd 33 �� ore:�� ��:�� ��:��_��
��:map 1 sd 33 �� ��:�� ��:��_map|*
��:red_��_�� 1 sd 22 �� ��:�� ��:��_��
��:�� 1 sd 32 �� ore:oc:�� ore:oc:�� ore:oc:��
��:��_� 4 sd 33 �	 ��:��|2
��:��_��|8 8 sd 33 �� ore:� ore:��
��:��_��_�� 16 sd 32 �� ore:��
��:��_axe 1 sd 23 �� ore:�� ore:��
��:��_��_��|3 16 sd 32 �� ore:��
��:�3_�|12 8 sl 00 �4 ore:� ��:�5 ��:�6
��:��_��|9 8 sd 33 �� ore:� ore:��
��:�� 3 sd 32 �� ore:�# ��:��|2 ��:��
��:dye|11 2 sl 00 1 ��:��_��
��:��_�� 1 sd 13 112 ore:�� ore:��
��:��_��_� 4 sd 33 �	 ��:�I,��:�I|1,��:�I|2,��:�I|3
��:��_key 1 sl 00 12 ��:�v_key ��:��_tag
��:��|3 2 sd 22 �� ore:�� ��:�Y
��:�._�� 3 sd 32 �� ��:��|4 ��:��
��:��|1 8 sd 13 102 ��:��|* ��:�0|2
��:�� 1 sd 33 �� ��:end_��|* ��:��|3 ore:��_��_��
��:end_�� 4 sd 22 � ��:end_��
��:bed|1 1 sl 00 12 ��:bed ore:�!
��:��|6 1 sd 33 �� ��:��|9 ore:��
��:�|4 9 sl 00 1 ��:�|5
��:dye|13 4 sl 00 �� ore:�J ore:�� ore:��
��:��_hoe 1 sd 23 �: ore:�� ore:��
��:�� 1 sd 22 � ��:��
��:��|3 4 sd 11 1 ��:log|3
��:�._��_�� 1 sd 32 �� ��:�� ��:��|4
��:�� 1 sd 33 �� ore:�� ore:��
��:�P|2 3 sd 21 11 ��:��|2
��:�%|5 1 sl 00 122 ��:�%|9 ��:��|*
��:�%|7 1 sl 00 122 ��:�%|9 ��:��|*
��:��|4 1 sl 00 12 ore:�+ ��:��
��:��_��_��|13 8 sd 33 �� ��:��_�� ore:�
��:��_�� 1 sd 33 �� ��:�_�� ��:��
��:��_� 1 sd 33 �� ore:�� ore:��
��:�� 4 sd 12 12 ��:�� ��:��|3
��:�� 1 sd 23 �� ��:��|8 ��:��|*
��:��_�� 16 sd 32 �� ��:��
��:��_�e 1 sd 33 �f ore:��
��:��|1 1 sl 00 12 ��:�� ��:��|10
��:�� 1 sd 22 � ore:��
��:�� 1 sd 33 �� ore:�� ore:�� ore:�� ��:��
��:��_�� 1 sd 13 112 ore:�� ore:��
��:��_��|10 8 sd 33 �� ore:� ore:�
��:��_�V 1 sd 33 �� ��:��_��
��:�T|1 1 sd 12 11 ��:��_�\|1
��:�� 9 sl 00 1 ��:��|1
��:��_�� 1 sd 33 �� ore:�� ore:��
��:�� 1 sd 22 � ��:��_��
��:��_�� 1 sd 32 �� ��:�� ��:��
��:�� 1 sd 33 �� ore:oc:��
��:dye|13 1 sl 00 1 ��:red_��|2
��:�A_�\|1 6 sd 31 111 ��:��|1
��:�� 3 sd 33 �� ore:��
��:�� 1 sd 33 �� ��:dye|13,��:��|3,��:dye|5 ore:�� ore:��
��:��_key 1 sl 00 12 ��:�v_key ��:��_��
��:�_� 1 sd 12 12 ore:�� ore:��
��:��_�� 1 sd 12 12 ��:�� ��:��
��:�A_��_�� 1 sd 21 11 ore:��
��:�3_� 8 sl 00 �4 ore:�� ��:�5 ��:�6
��:��|7 1 sl 00 12 ore:�j ��:��
��:�/ 8 sd 33 �� ore:� ��:��|5
��:�P|1 3 sd 21 11 ��:��|1
��:�) 9 sl 00 1 ��:�)|1
��:bed|7 1 sd 32 �� ��:��|7 ore:��
��:�� 1 sd 33 �� ��:��_�L ��:�� ore:egg ��:��
��:��_�� 1 sd 33 �� ore:�� ore:��
��:��|14 1 sd 33 �� ��:��|1 ore:��
��:��_�, 1 sd 32 �- ore:��
��:��|4 1 sd 33 �� ��:��|3 ��:��|1 ��:��
��:��_�� 1 sd 33 �� ore:�� ��:��_�\
��:�t 4 sl 00 1 ��:�t|1
��:�� 1 sd 33 �� ��:end_��|* ��:end_rod|* ��:��_��|* ��:��|3
��:��_��_��|6 16 sd 32 �� ore:��
��:�3_�|5 8 sl 00 �4 ore:�� ��:�5 ��:�6
��:�� 8 sd 13 102 ��:��|* ��:�0
��:��_�e 1 sd 33 �f ore:��
��:�A_�\|3 6 sd 31 111 ��:��|3
��:��|1 4 sl 00 � ��:��
��:�>|2 1 sd 33 �� ��:��|17 ore:�� ��:�@ ��:��
��:��|1 1 sl 00 12 ��:��_key ��:��_�H
��:��|3 1 sd 33 �� ��:��|12 ore:��
��:��_��_��|4 8 sd 33 �� ��:��_�� ore:�+
��:�I|1 1 sl 00 12 ��:�I ��:��
��:�� 1 sd 33 �� ore:�� ore:�� ��:�_�|*
��:�E 1 sl 00 122 ��:��_��|* ��:��_��|*
��:�� 1 sl 00 �� ore:�� ore:��
��:�A_�� 1 sd 13 122 ore:�� ore:��
��:bed|13 1 sd 32 �� ��:��|13 ore:��
��:��|11 9 sl 00 1 ��:��|1
��:��|3 1 sl 00 12 ��:��_key ��:��_�H
��:�3_�|6 8 sl 00 �4 ore:�~ ��:�5 ��:�6
��:�� 1 sd 33 �� ore:��
��:��_�� 1 sd 33 �� ��:�_� ore:�� ��:��_�� ��:�
��:��_��|1 1 sd 33 �� ��:�W ore:�� ��:��_�� ��:�
��:dye|1 1 sl 00 1 ��:red_��
��:�3_�|2 8 sl 00 �4 ore:�� ��:�5 ��:�6
��:�� 1 sl 00 12 ��:��|* ��:�i|*
��:�t|2 5 sd 22 �� ore:�� ore:��
��:��_�� 1 sd 13 122 ore:�� ore:��
��:�� 1 sd 33 �� ore:oc:�� ore:�� ore:oc:�� ore:�N ore:�� ore:�� ��:�K_�L
��:��_�\|1 6 sd 31 111 ��:�T,��:�T|1,��:�T|2
��:hay_�� 1 sd 33 �� ��:��
��:��_�\|3 6 sd 31 111 ��:��
��:�� 1 sl 00 123 ��:��_�'|* ore:�� ��:��|*
��:��_��_box 1 sd 13 121 ��:��_�� ore:��
��:��|8 1 sd 33 �� ��:��|7 ore:��
��:��_��_��|3 8 sd 33 �� ��:��_�� ore:�m
��:��_�� 1 sd 33 �� ore:�� ore:��
��:�� 1 sd 33 �o ore:�� ��:��_�� ore:oc:�� ore:�
��:�|4 9 sl 00 1 ��:�|5
��:�� 1 sd 32 �h ore:��
��:�|3 9 sl 00 1 ��:�|4
��:�� 1 sd 33 �$ ore:��
��:��_��|7 8 sd 33 �� ore:� ore:�j
��:�� 16 sd 33 �� ore:�� ore:��
��:��_��_��|5 8 sd 33 �� ��:��_�� ore:��
��:��_�� 1 sd 13 112 ore:�� ore:��
��:��|11 1 sd 33 �� ��:��|4 ore:��
��:�B|2 1 sd 33 �C ore:�� ��:��_��_��_��|* ��:�B|1
��:bed|14 1 sd 32 �� ��:��|14 ore:��
��:��_oak_�� 3 sd 32 �� ��:��|5 ��:��
��:��|28 9 sl 00 1 ��:��
��:��_�� 1 sd 13 122 ore:�� ore:��
��:�� 1 sd 32 �� ore:��
��:�� 1 sd 33 � ore:�� ore:�� ��:�L|*
��:��_�q|1 1 sd 33 �� ore:�� ��:��_�V ��:��_��
��:��_��_��|14 8 sd 33 �� ��:��_�� ore:��
��:��_�� 1 sd 33 �� ��:��
��:�� 1 sl 00 12 ��:�v_key ��:��_�H
��:�_� 2 sl 00 1 ��:�_rod
��:�3_�|11 8 sl 00 �4 ore:�J ��:�5 ��:�6
��:��_��|11 8 sd 33 �� ore:� ore:�J
��:��_�� 1 sd 33 �� ��:��_�� ��:�� ��:��_�� ��:red_�� ��:��
��:��_�, 1 sd 32 �- ore:��
��:��_�� 1 sd 33 �� ore:��
��:��_�� 1 sd 33 �� ore:��
��:�� 1 sd 33 � ore:�� ore:oc:�� ��:��_� ore:�� ore:oc:��
��:red_�T|2 4 sd 22 � ��:red_�T
��:��|1 1 sd 13 123 ore:�� ore:�� ore:��
��:�0|5 4 sl 00 123 ��:�2 ��:�� ore:��
��:bed|2 1 sl 00 12 ��:bed ore:��
��:��|8 1 sd 33 � ��:��|3 ��:��_��|* ��:��_��|* ��:��|1 ��:��|2
��:�� 1 sd 33 � ore:�� ��:�� ore:�N ore:oc:�� ore:oc:��
��:��|16 1 sd 33 �� ��:��|10 ��:��|17 ��:��|15
��:dye|14 2 sl 00 12 ore:�� ore:�+
��:��_� 4 sd 33 �	 ��:��|1
��:bed|15 1 sd 32 �� ��:��|15 ore:��
��:dye|7 1 sl 00 1 ��:red_��|3
��:�� 1 sd 33 � ore:�� ore:oc:�� ��:��_� ore:�� ore:oc:��
��:dye|7 1 sl 00 1 ��:red_��|6
��:�/|1 1 sl 00 12 ��:�/ ��:�_�|*
��:��_�� 1 sd 22 � ��:��
��:�2 64 sd 33 �� ��:��_�\ ore:� ore:��
��:�� 4 sd 32 �� ore:��
��:�� 1 sd 22 � ore:��
��:�� 9 sd 11 1 ��:��_��
��:��_��_��|13 16 sd 32 �� ore:��
��:bed|13 1 sl 00 12 ��:bed ore:�
��:�S 1 sd 32 �� ��:��|3 ��:�� ��:��
��:�� 1 sd 33 � ore:�� ore:oc:�� ore:�� ore:oc:�� ore:oc:��
��:�3_�|15 8 sl 00 �4 ore:�� ��:�5 ��:�6
��:�� 1 sd 33 �� ��:��|3 ore:�� ��:��
��:�3_�|10 8 sl 00 �4 ore:� ��:�5 ��:�6
��:��|5 1 sd 33 �� ��:��|10 ore:��
��:�P|5 3 sd 21 11 ��:��|5
��:�� 1 sd 33 � ore:�� ore:oc:�� ��:��_� ore:�� ore:oc:��
��:��|2 4 sd 11 1 ��:log|2
��:��_��_��|8 16 sd 32 �� ore:��
��:��_�� 2 sd 33 �� ore:�� ��:��
��:tnt_�� 1 sd 12 12 ��:tnt ��:��
��:��_�� 8 sd 33 �� ore:� ore:��
��:�P|14 3 sd 21 11 ��:��|14
��:��|4 4 sd 11 1 ��:��
��:�A_hoe 1 sd 23 �: ore:�� ore:��
��:��|5 9 sd 33 �� ��:��|3 ore:��
��:�|6 9 sl 00 1 ��:�|7
��:��|6 1 sl 00 123 ��:��|9 ore:�� ore:��
��:bed|8 1 sl 00 12 ��:bed ore:��
��:�^_� 4 sd 33 �	 ��:�^_��
��:�B|1 1 sl 00 1 ��:�B|1
��:�B|4 1 sl 00 1 ��:�B|4
��:��|11 1 sl 00 12 ore:�J ��:��
��:�� 1 sd 33 �� ��:��|12
��:�� 1 sl 00 12 ��:��|1 ��:��|2
��:�� 1 sd 11 1 ore:��
��:�9 1 sd 33 �� ore:�� ore:�� ore:�� ore:��
��:�Q 1 sd 33 � ore:�� ore:oc:�  ore:�� ore:�� ore:oc:��
��:bed|12 1 sd 32 �� ��:��|12 ore:��
��:bed|11 1 sd 32 �� ��:��|11 ore:��
��:�P|8 3 sd 21 11 ��:��|8
��:��|15 1 sd 33 �� ��:�� ore:��
��:�T|2 4 sd 22 � ��:�T
��:end_� 1 sd 33 � ore:� ��:��_eye ��:�_�
��:��|7 1 sd 33 �� ��:��|8 ore:��
��:��_�� 1 sd 33 �� ore:�� ore:��
��:��_�� 4 sd 33 �� ��:��_��|* ore:�� ore:�
��:�A_axe 1 sd 23 �� ore:�� ore:��
��:� 1 sd 33 � ore:�� ��:bow ore:��
��:��|1 1 sd 33 �� ��:��
��:��_��_��|9 16 sd 32 �� ore:�
��:�_�	 1 sd 33 �
 ore:� ��:�Y ��:�A_�\,��:�A_�\|1,��:�A_�\|2,��:�A_�\|3,��:�A_�\|4,��:�A_�\|5
��:�Y_� 4 sd 33 �	 ��:�Y_��,��:�Y_��|1,��:�Y_��|2
��:�P 3 sd 21 11 ��:��
��:��|1 4 sd 11 1 ��:log|1
��:�B 1 sl 00 1 ��:�B
��:��_��|14 8 sd 33 �� ore:� ore:��
��:�/|2 8 sd 33 �� ��:� ��:��|5
��:�^_�\ 6 sd 31 111 ��:�^_��
��:�P|13 3 sd 21 11 ��:��|13
��:�|1 9 sl 00 1 ��:�|2
��:� 1 sl 00 121 ore:� ��:�|*
��:� 1 sd 33 �C ��:��|3 ��:�� ��:�S
��:�|1 1 sl 00 121 ��:��|* ��:�|*
��:�_� 2 sd 13 123 ore:�� ore:�� ore:��
��:�_�� 1 sl 00 12 ore:�� ��:�_�
��:�|4 1 sl 00 121 ore:�� ��:�|*
��:�� 1 sd 33 � ore:�� ore:��
��:�|5 1 sl 00 123 ��:�� ��:�|* ��:��|1
��:�|20 1 sd 33 � ore:�� ore:oc:�� ��:��_� ore:oc:� ore:oc:��
��:�|2 1 sl 00 123 ore:� ��:�|* ore:�~
��:�|3 1 sl 00 121 ��:��|* ��:�|*
��:��_�� 4 sd 33 �� ��:��_��|* ore:�� ore:�
��:�6 9 sl 00 1 ��:�
��:��|1 1 sd 33 � ��:�� ��:��_�� ��:�_��
��:��|2 1 sd 33 �� ��:��|13 ore:��
��:��|2 1 sd 33 � ��:��|1 ��:�_�� ��:��_��
��:��|3 1 sd 33 � ��:��|2 ��:��_�� ��:��_��
��:�|17 1 sd 33 � ore:�� ore:oc:�� ore:oc:� ore:oc:� ore:oc:�
��:��|4 1 sd 33 � ��:��|3 ��:��_�� ��:�__��
��:��_�q|3 1 sd 33 �� ore:�� ��:�� ��:��_��
��:�|19 1 sd 33 � ore:�� ore:oc:� ore:oc:�� ore:oc:� ore:oc:��
��:��_��|2 8 sd 33 �� ore:� ore:��
��:��_�� 1 sd 33 �� ��:�� ��:��_eye
��:�|1 1 sd 33 �� ��:�
��:�_�� 9 sd 11 1 ore:��
��:�|2 1 sd 33 �� ��:�|1
��:�� 1 sd 33 �� ��:��|4 ��:��_��
��:��_� 16 sd 32 �� ore:��
��:�|3 1 sd 33 �� ��:�|2
��:�|10 1 sd 32 � ore:oc:�� ��:��_�� ore:oc:��
��:�u_� 1 sd 33 �� ��:�u ��:��
��:�|4 1 sd 33 �� ��:�|3
��:�|11 1 sd 32 �� ore:oc:�� ore:oc:�� ore:oc:��
��:�|5 1 sd 33 �� ��:�|4
��:�|8 1 sd 32 � ore:oc:�� ��:��_�� ore:oc:��
��:��_� 1 sd 22 � ore:��
��:�|9 1 sd 32 � ore:oc:�� ore:oc:�� ore:oc:��
��:� 1 sd 33 � ore:�� ��:� ��:��_eye ore:oc:�� ore:oc:��
��:�|15 1 sd 33 � ore:�� ore:oc:� ore:oc:�� ore:oc:�  ore:�� ore:oc:��
��:��|28 16 sd 33 �� ore:�6 ��:� ��:��|1 ��:�b_�L
��:�|16 1 sd 33 � ore:�� ore:oc:�� ore:oc:�� ore:oc:�! ore:oc:�"
��:�|13 1 sd 33 � ore:�� ore:oc:�# ore:oc:�� ore:oc:�! ore:�� ore:oc:��
��:�|14 1 sd 33 � ore:�� ore:oc:�$ ore:oc:�� ore:oc:� ore:�� ore:oc:��
��:�� 1 sd 33 �� ��:�5
��:��|24 1 sd 33 � ore:oc:�% ��:� ore:oc:�� ore:oc:�& ore:oc:� 
��:�' 1 sd 33 �( ��:�� ��:�W ore:�� ore:��
��:��|23 1 sd 33 � ore:oc:�% ��:� ore:oc:�� ore:oc:�) ore:oc:�
��:��|27 1 sl 00 �* ore:�� ore:�� ore:�+ ore:�� ore:oc:�+
��:��|26 1 sd 33 � ��:��_�� ��:� ore:oc:�  ��:�L ore:oc:��
��:dye|13 3 sl 00 123 ore:�J ore:�� ore:�~
��:��_�� 1 sd 32 �� ore:��
��:��_axe 1 sd 23 �� ore:�� ore:��
��:��_��_��|11 8 sd 33 �� ��:��_�� ore:�J
��:�, 1 sd 22 � ��:�,_�-
��:bed|5 1 sl 00 12 ��:bed ore:��
��:�� 1 sl 00 �. ��:��|* ore:��
��:�|7 1 sd 32 � ore:oc:�� ore:oc:�� ore:oc:��
��:��|4 4 sd 22 � ore:�/
��:�|5 1 sd 33 �0 ore:�� ��:� ore:oc:�� ore:oc:�� ore:oc:��
��:�|6 1 sd 32 � ore:oc:�� ��:��_�� ore:oc:��
��:��_�\ 6 sd 31 111 ��:��
��:bed|5 1 sd 32 �� ��:��|5 ore:��
��:��|1 1 sd 33 �1 ��:��_�� ore:�� ��:��_� ore:oc:�Q
��:� 1 sd 33 � ��:��_�� ��:� ore:oc:�� ore:oc:�� ore:oc:��
��:�� 1 sd 33 �1 ore:�� ore:�� ore:oc:�� ��:�8_�9
��:��|3 1 sd 33 �� ��:��_�� ore:oc:�Q ore:��
��:��|2 1 sd 33 �1 ��:��_�� ore:oc:�Q ��:��_� ore:��
��:��|5 1 sd 33 � ��:��|4 ��:�__�� ��:�2_��
��:�|3 1 sd 33 �0 ��:��_�� ��:� ore:oc:�� ore:oc:�� ore:oc:��
��:��|5 1 sd 33 �0 ore:�� ore:oc:�� ore:�N ore:�� ore:oc:��
��:��|6 1 sd 33 � ��:��|5 ��:�2_�� ��:�3
��:�|4 1 sd 33 �0 ore:�� ��:� ore:oc:�� ore:oc:�� ore:oc:��
��:��|4 1 sd 33 � ore:�� ore:� ore:oc:�� ��:��_eye ore:�� ore:oc:��
��:��|7 1 sd 33 � ��:��|6 ��:�3 ��:��_��
��:�|1 1 sd 33 � ore:�� ��:� ore:oc:�� ore:oc:�� ore:oc:��
��:��|8 1 sd 33 � ��:��|7 ��:��_�� ��:��_�V
��:�|2 1 sd 33 � ore:�� ��:� ore:oc:�� ore:oc:�� ore:oc:��
��:��|6 1 sd 33 �0 ore:�� ore:oc:�� ore:�N ore:�� ore:oc:��
��:�U_� 4 sd 33 �	 ��:��|3
��:�)|1 9 sl 00 1 ��:�)|2
��:�
 4 sd 33 � ore:�� ��:��
��:��|2 1 sd 33 �� ��:��|17
��:dye|13 2 sl 00 1 ��:��_��|1
��:�4|1 1 sd 33 �$ ��:�
��:bed|10 1 sl 00 12 ��:bed ore:�
��:��|5 1 sl 00 12 ore:�� ��:��
��:��|8 1 sl 00 12 ore:�� ��:��
��:�P|3 3 sd 21 11 ��:��|3
��:�5 1 sd 33 �� ��:��|* ��:��|*
��:�6 1 sl 00 123 ore:�� ��:�7 ore:��
��:�8 1 sl 00 12 ��:�8 ��:�q
��:�9 1 sd 33 �( ��:�� ��:�9 ore:�� ore:��
��:�B|3 1 sl 00 1 ��:�B|3
��:��|12 1 sd 33 �� ��:��|3 ore:��
��:�: 1 sd 33 �; ore:�� ��:�t|1
��:��_��|1 6 sd 32 �� ��:�<_��
��:dye|13 2 sl 00 12 ore:� ore:�~
��:��|1 3 sd 32 �� ��:��|3 ��:��|2 ��:��
��:��|1 1 sd 33 �� ��:��|14 ore:��
��:�^_�= 1 sd 12 11 ��:�^_�\
��:�>_��_��_�� 1 sd 21 11 ore:��
��:��_�� 1 sd 13 122 ore:�� ore:��
��:��_��|6 8 sd 33 �� ore:� ore:�~
��:��_�e 1 sd 33 �f ore:��
��:�? 1 sd 33 �( ��:�� ��:�W ore:�� ore:��
��:�@ 1 sd 33 � ore:oc:�� ore:�� ore:oc:�� ore:�� ore:�� ��:��_��
��:��|10 1 sd 33 �� ��:��|5 ore:��
��:�A 1 sd 32 �� ore:�� ��:��|* ��:��|*
��:��_��_�� 1 sd 21 11 ore:��
��:�l 1 sd 33 �B ore:�� ore:��
��:��_��_��|4 16 sd 32 �� ore:�?
��:�_�C 1 sd 33 �� ore:�� ore:��
��:�P|15 3 sd 21 11 ��:��|15
��:��|29 6 sl 00 12 ore:oc:�D ore:��
��:end_rod 4 sd 12 12 ��:�_rod ��:�__�`_�a
��:��_key 1 sl 00 12 ��:�v_key ��:��_eye
��:�E 1 sd 33 � ore:�� ore:�� ore:oc:�� ore:oc:�� ore:oc:��
��:��_� 1 sd 33 �� ��:� ore:�� ��:��_��
��:�% 1 sd 32 �1 ��:��_��|* ��:�%|9 ore:�� ��:�W|*
��:�<_�� 1 sl 00 12 ore:�� ��:��
��:��_�� 1 sd 32 �� ore:��
��:� 2 sd 32 �� ore:��
��:dye|12 1 sl 00 1 ��:red_��|1
��:�0 4 sd 32 �1 ore:�� ��:�2 ore:�� ore:��
��:��_one_�F 1 sd 33 �� ore:�� ��:�| ��:��_��
��:�G 8 sd 33 �� ��:��|* ��:�t|1
��:�H 1 sd 31 111 ��:��
��:�I 1 sl 00 123 ��:�l|* ore:�� ��:�J_eye|*
��:� 4 sd 12 12 ��:��,��:��|1 ore:��
��:�._�g 1 sd 32 �h ��:��|4
��:�� 1 sd 12 12 ore:�� ore:��
��:�� 8 sl 00 12 ��:��_��|* ��:�F|*
��:�� 1 sd 33 �K ore:�� ore:��
��:�>|1 1 sd 33 �� ��:��|17 ore:�� ��:�@ ��:��
��:dye|7 2 sl 00 12 ore:�j ore:��
��:��_��_�� 8 sd 33 �� ��:��_�� ore:��
��:map 1 sd 33 �� ore:�� ��:�
��:�	_�� 6 sd 33 �� ore:�� ��:��_��_�� ore:��
��:bed|6 1 sd 32 �� ��:��|6 ore:��
��:�L 1 sd 33 �M ore:�� ore:��
��:�N 1 sd 33 �O ore:�� ore:�� ore:� ore:oc:�� ore:� ore:�J
��:�P 1 sl 00 �Q ore:� ore:�� ��:��|* ore:�R ore:�� ore:�S ��:��_��|* ore:�z
��:�� 1 sd 33 �� ��:��|15 ore:��
��:�5 9 sl 00 1 ��:��
��:�T 1 sd 33 �� ore:�� ��:��,��:��|1,��:��|2,��:��|3,��:��|4,��:��|5,��:��|6,��:��|7,��:��|8,��:��|9,��:��|10,��:��|11,��:��|12,��:��|13,��:��|14,��:��|15
��:��_�� 1 sd 13 122 ore:�� ore:��
��:��_�\|5 6 sd 31 111 ��:�I,��:�I|1,��:�I|2,��:�I|3
��:�U 3 sd 33 �� ore:�� ore:��
��:�I 4 sd 22 � ��:��
��:dye|15 3 sl 00 1 ore:��
��:�>|5 1 sd 33 �� ��:��|17 ore:� ��:�@ ��:��
��:�V|1 1 sl 00 12 ��:�V|1 ��:�q
��:��_�' 1 sd 22 � ore:��
��:�V 1 sl 00 12 ��:�V ��:�q
��:��|2 1 sd 33 � ��:��|3 ��:�� ore:��
��:��|3 1 sl 00 12 ore:�m ��:��
��:�B 1 sd 33 �C ore:�� ��:��_�\|3,��:��_�\ ��:��|*
��:�W 1 sd 33 �� ore:�� ��:��_��|* ��:�X
��:��|1 1 sl 00 12 ore:�! ��:��
��:bed|15 1 sl 00 12 ��:bed ore:��
��:�P|6 3 sd 21 11 ��:��|6
��:�A_�\|5 6 sd 31 111 ��:��|5
��:��_��_��|1 8 sd 33 �� ��:��_�� ore:�!
��:�._� 4 sd 33 �	 ��:��|4
��:��_�� 3 sd 23 �� ��:��|2
��:�� 1 sd 33 �Y ��:��_�� ore:��
��:�_�V 1 sd 33 �� ��:�_��
��:��_�V 9 sd 11 1 ��:��_��
��:�Z 1 sd 33 � ��:��|3 ��:��_��|* ��:��
��:� 9 sl 00 1 ��:�|1
��:��|1 1 sd 33 �� ��:�_�|* ore:��
��:�[ 1 sd 33 �\ ��:��|8 ore:�� ore:��
��:bed|1 1 sd 32 �� ��:��|1 ore:��
��:�] 4 sd 33 �{ ore:�� ore:oc:�^
��:�_ 1 sl 00 123 ��:�l|* ��:�� ��:��|*
��:��_�� 1 sd 22 � ��:��
��:�` 1 sd 33 � ore:�� ore:�a ore:�N ore:oc:�� ore:oc:��
��:�A_�� 1 sd 13 112 ore:�� ore:��
��:��_��_�� 1 sd 32 �� ��:�� ��:��|2
��:�%|9 1 sd 33 �1 ore:�� ore:�� ore:�� ��:�b
��:�c 1 sd 33 �d ore:�� ��:��_�H|* ore:��
��:��|�e 4 sd 33 �� ��:��_�� ��:�
��:�>|7 1 sd 33 �� ��:��|17 ore:�� ��:�@ ��:��
��:��_�� 3 sd 23 �� ��:��|1
��:bed|9 1 sd 32 �� ��:��|9 ore:��
��:��_on_a_�� 1 sd 22 �f ��:�c_rod ��:��
��:��_��_��|14 16 sd 32 �� ore:��
��:��|12 1 sl 00 12 ore:� ��:��
��:�q|4 1 sd 33 �g ore:oc:�� ore:oc:�h ore:�� ore:oc:�� ore:�N
��:�q|3 1 sd 33 �g ore:oc:�� ore:oc:�h ore:�� ore:oc:�� ore:�N
��:�q|2 1 sd 33 �g ore:oc:�� ore:oc:�h ore:�� ore:oc:�� ore:�N
��:�q|1 1 sd 33 �i ��:��_�� ��:�� ore:�� ore:oc:�h
��:�q 1 sd 33 � ore:�� ore:oc:�  ore:�� ore:oc:�� ore:��
��:bed|10 1 sd 32 �� ��:��|10 ore:��
��:�
|3 4 sd 33 � ore:�� ��:��|3
��:��|2 1 sd 33 �� ore:�� ore:��
��:�j 8 sd 31 121 ��:�� ��:dye|3
��:��|2 1 sl 00 123 ��:��_��|* ore:�� ��:��
��:��|1 1 sl 00 12 ��:��|* ore:��
��:��|2 1 sl 00 12 ��:��|* ore:�
��:dye|4 9 sd 11 1 ��:�k_��
��:��|5 4 sd 11 1 ��:��|1
��:�� 1 sl 00 12 ��:��|* ore:��
��:�3_�|1 8 sl 00 �4 ore:�! ��:�5 ��:�6
��:�_�� 1 sd 33 �� ore:��
��:��|4 1 sl 00 12 ��:��|* ore:�J
��:��|5 1 sl 00 12 ��:��|* ore:�
��:�l 1 sd 22 �m ore:��
��:��|3 1 sl 00 12 ��:��|* ore:�
��:�� 9 sd 11 1 ��:hay_��
��:��|8 1 sl 00 12 ��:��|* ore:�j
��:��|9 1 sl 00 12 ��:��|* ore:�~
��:��|6 1 sl 00 12 ��:��|* ore:��
��:��|7 1 sl 00 12 ��:��|* ore:��
��:�n_��|1 4 sl 00 1 ��:�n_log|1
��:��_��_��|1 16 sd 32 �� ore:�o
��:�
|1 4 sd 33 � ore:�� ��:��|1
��:�Y_�� 1 sd 22 � ��:�Y
��:�|2 4 sd 22 � ��:�|1
��:�p 1 sd 33 �� ore:�� ��:�_�	 ore:oc:�� ore:oc:��
��:�0|2 4 sd 32 �1 ore:�� ��:�2 ore:�� ��:�L|*
��:��|12 1 sl 00 12 ��:��|* ore:�m
��:��|10 1 sl 00 12 ��:��|* ore:��
��:��_�� 1 sd 32 �� ore:��
��:��|11 1 sl 00 12 ��:��|* ore:�+
��:bed|3 1 sl 00 12 ��:bed ore:�m
��:bow 1 sd 33 �q ore:�� ore:��
��:��|15 1 sl 00 12 ��:��|* ore:��
��:��|13 1 sl 00 12 ��:��|* ore:��
��:��|14 1 sl 00 12 ��:��|* ore:�!
��:��_oak_��_�� 1 sd 32 �� ��:�� ��:��|5
��:�� 9 sd 11 1 ��:��_��
��:��_�r 1 sd 33 �� ore:�� ore:��
��:� 1 sd 33 �� ore:�� ore:��
��:�s|3 2 sd 33 �C ore:�� ore:�� ore:�t
��:�q 2 sl 00 11 ��:�q
��:��_��_��|8 8 sd 33 �� ��:��_�� ore:��
��:�s|4 4 sd 33 �� ore:�� ore:�� ore:�t
��:�> 1 sd 33 �� ��:��|17 ore:�u ��:�@ ��:��
��:�v_�w 1 sd 33 �� ore:�� ore:��
��:��|18 1 sd 33 �O ore:�� ore:oc:�� ��:�l ore:oc:�� ore:�N ore:oc:��
��:��|17 1 sd 33 �O ore:�� ��:�� ��:�l ore:�� ore:�N ore:oc:��
��:�X 1 sd 23 �x ��:�� ore:��
��:��|2 1 sl 00 12 ��:��_key ��:��_�H
��:��|24 1 sd 33 �O ore:�� ��:��_�� ��:� ore:oc:�� ore:�N ore:oc:��
��:�y 1 sd 33 �z ore:�� ore:oc:��
��:��|23 1 sd 33 �O ore:�� ��:��_� ��:� ��:�� ore:�N ore:oc:��
��:�|5 9 sl 00 1 ��:�|6
��:��|26 1 sd 33 �� ore:�� ��:�{ ore:oc:��
��:��|25 1 sd 33 � ore:�� ore:�N ore:�� ore:oc:�Q ore:oc:��
��:��|20 1 sd 33 � ore:�� ore:�N ore:�� ore:oc:�� ore:oc:��
��:��|19 1 sd 33 � ore:�� ��:� ore:oc:�� ��:��_map|* ��:�|
��:��_oak_�g 1 sd 32 �h ��:��|5
��:��|22 1 sd 33 �} ore:� ore:oc:�� ore:�~ ore:�� ore:oc:��
��:��|21 1 sd 33 � ore:�� ore:�� ore:oc:�� ore:�� ��:�8_�9
��:dye|9 1 sl 00 1 ��:red_��|7
��:�� 4 sd 13 123 ��:�| ore:�� ore:��
��:�A_�� 3 sd 23 �� ��:��
��:�|1 1 sd 33 �� ��:�
��:�� 1 sd 33 �� ��:��
��:��|27 1 sd 33 � ore:�� ore:oc:�� ��:��_�� ore:�� ore:oc:��
��:��|29 1 sd 33 � ore:�� ore:�� ��:�� ore:oc:�� ��:�l ore:oc:�� ore:�N
��:��_� 1 sd 11 1 ��:��
��:��|1 1 sl 00 12 ore:�/ ��:�Y
��:��|28 1 sd 33 � ore:oc:�% ore:oc:�� ore:�� ore:�� ore:oc:��
��:�� 9 sl 00 1 ��:�
��:�� 1 sl 00 �� ��:��|* ��:��|* ��:��_��|* ore:��
��:��_�\|4 6 sd 31 111 ��:��_��
��:�� 3 sd 32 �� ��:�� ��:��
��:��|31 1 sd 32 � ore:�� ore:oc:�� ore:oc:��
��:��|30 1 sd 33 �1 ore:oc:�� ore:�# ore:oc:�� ore:oc:��
��:red_�T_� 4 sd 33 �	 ��:red_�T,��:red_�T|1,��:red_�T|2
��:��_��_��|9 8 sd 33 �� ��:��_�� ore:��
��:��_��_��|10 8 sd 33 �� ��:��_�� ore:�
��:��_�� 6 sd 31 111 ��:red_�T,��:red_�T|1,��:red_�T|2
��:�0|4 2 sd 33 � ��:��_��|* ��:�0|2 ore:��
��:��_��_��|7 16 sd 32 �� ore:��
��:�� 1 sd 33 �� ore:�� ore:oc:�  ore:�� ore:oc:��
��:�P|7 3 sd 21 11 ��:��|7
��:��|2 1 sd 33 �O ��:��_�� ore:oc:�� ore:oc:�� ore:oc:�N ore:oc:� ore:oc:��
��:��|3 1 sd 33 �� ore:�� ore:�� ore:� ore:�J ore:oc:�� ore:� ore:�+ ore:�� ore:��
��:��|4 1 sl 00 12 ��:�� ore:oc:��
��:��|13 1 sl 00 12 ore:� ��:��
��:��_�, 1 sd 32 �- ore:��
��:��|5 2 sl 00 12 ore:�/ ore:��
��:�� 1 sd 32 �� ore:�� ��:��
��:��|19 1 sl 00 12 ��:��|19 ��:��_map|*
��:�� 4 sd 12 11 ore:��
��:�I|3 1 sd 12 11 ��:��_�\|5
��:�B|2 1 sl 00 1 ��:�B|2
��:��_oak_� 4 sd 33 �	 ��:��|5
��:��_�� 1 sd 32 �� ��:�_rod ore:��
��:��|5 1 sd 33 �O ore:oc:�� ore:oc:� ore:oc:�� ore:oc:�� ore:oc:�� ore:oc:�Q
��:��_�r 4 sd 33 �� ��:�A_��|* ��:�� ��:log
��:�� 4 sd 33 � ore:�� ore:oc:�� ��:�� ��:�L ore:oc:��
��:�n_�� 4 sl 00 1 ��:�n_log
��:��|3 1 sd 33 �� ��:��|3 ��:��|1 ��:��
��:��_axe 1 sd 23 �� ore:�� ore:��
��:��_�� 1 sd 33 �� ��:�_�� ��:��
��:�@|250 1 sl 00 �. ore:�� ore:��
��:��|4 1 sd 33 �� ��:��|11 ore:��
��:�� 1 sd 13 112 ��:��|8 ��:��|*
��:��_�� 1 sd 33 �� ore:��
��:�7 1 sd 33 � ore:�� ore:�� ore:��
��:��_��|4 8 sd 33 �� ore:� ore:�+
��:�� 1 sd 33 � ore:�� ore:�� ore:oc:�Q ore:oc:�� ore:oc:��
��:��_��|3 8 sd 33 �� ore:� ore:�m
��:�A_�\ 6 sd 31 111 ��:��
��:� 9 sl 00 1 ��:�|1
��:�� 1 sd 22 � ore:��
��:�|4 2 sl 00 121 ��:� ore:��
��:�_� 4 sd 11 1 ��:�
��:�
|2 4 sd 33 � ore:�� ��:��|2
��:red_�T|1 1 sd 12 11 ��:��_��
��:��_��_�� 6 sd 32 �� ��:��_��
��:�,_�- 1 sl 00 12 ��:�_� ore:��
��:��|5 1 sd 33 �� ��:��|3 ore:��
��:�� 1 sd 33 �� ore:�� ��:��
��:��|12 9 sl 00 1 ��:��
��:�|2 9 sl 00 1 ��:�|3
��:�k_�� 1 sd 33 �� ��:dye|4
��:�q|3 1 sl 00 1 ��:�q|3
��:�P|10 3 sd 21 11 ��:��|10
��:�q|2 1 sl 00 1 ��:�q|2
��:�q|1 1 sl 00 1 ��:�q|1
��:��_��_��|6 8 sd 33 �� ��:��_�� ore:�~
��:��_��_��|12 16 sd 32 �� ore:��
��:bed|12 1 sl 00 12 ��:bed ore:�
��:��_axe 1 sd 23 �� ore:�� ore:��
��:��|9 1 sl 00 12 ore:�� ��:��
��:�>|4 1 sd 33 �� ��:��|17 ore:�� ��:�@ ��:��
��:�T_� 4 sd 33 �	 ��:�T,��:�T|1,��:�T|2
��:��_eye 1 sl 00 12 ore:�� ��:�_�
��:��|16 1 sd 33 �� ore:�� ore:oc:�� ore:�N ore:oc:��
��:�� 1 sd 33 �� ore:�� ore:��
��:�q 1 sl 00 1 ��:�q
��:�q|4 1 sl 00 1 ��:�q|4
��:bed 1 sd 32 �� ��:�� ore:��
��:�>|6 1 sd 33 �� ��:��|17 ore:�� ��:�@ ��:��
��:�� 1 sd 33 � ore:�� ore:�� ore:��
��:��|7 1 sd 33 �0 ore:�� ore:oc:�� ore:�N ore:�� ore:oc:��
��:�(|1 4 sd 22 �� ��:�( ��:�6
��:��_�� 1 sd 12 12 ore:�� ��:��
��:��|13 1 sd 33 � ore:�� ore:oc:�� ore:oc:�� ore:oc:�� ore:oc:��
��:�P|4 3 sd 21 11 ��:��|4
��:sea_�� 1 sd 33 � ore:�� ore:��
��:��|12 1 sd 33 � ore:�� ore:oc:�� ore:oc:�� ore:oc:�� ore:oc:��
��:��|15 1 sd 33 �� ore:�� ore:oc:�� ��:�� ore:oc:��
��:��|14 1 sd 33 � ore:�� ore:oc:�� ore:oc:�� ore:oc:�� ore:oc:��
��:��|9 1 sd 33 �0 ore:�� ore:oc:�� ore:�N ore:�� ore:oc:��
��:��|8 1 sd 33 �0 ore:�� ore:oc:�� ore:�N ore:�� ore:oc:��
��:��|11 1 sd 33 �� ore:�� ore:oc:�� ore:�a ore:oc:��
��:��|10 1 sd 33 �0 ore:�� ore:oc:�� ore:�N ore:�� ore:oc:��
��:dye|1 2 sl 00 1 ��:��_��|4
��:��_�J_eye 1 sl 00 123 ��:�J_eye ��:��_�� ��:��
��:�|2 9 sl 00 1 ��:�|3
��:�%|1 1 sd 33 �� ��:end_rod|* ore:�� ore:��
��:��_hoe 1 sd 23 �: ore:�� ore:��
��:�U_�g 1 sd 32 �h ��:��|3
��:��_hoe 1 sd 23 �: ore:�� ore:��
��:�_pie 1 sl 00 123 ��:� ��:�� ore:egg
��:��_�� 6 sd 31 111 ��:��
��:�� 4 sl 00 �  ore:�� ore:��
��:��|8 1 sl 00 12 ��:��|9 ��:��_��
��:�U_�� 3 sd 32 �� ��:��|3 ��:��
��:��_��_��_�� 1 sd 21 11 ore:��
��:��_�� 3 sd 32 �� ore:�
��:��_�� 3 sd 23 �� ore:��
��:��|17 9 sl 00 1 ��:��|2
��:��_��_��|10 16 sd 32 �� ore:��
��:��|2 4 sd 22 � ore:��
��:��|�� 1 sd 33 �� ��:��|* ��:��|*
��:��_�� 1 sd 12 12 ��:�� ��:��
��:��_��_��|11 16 sd 32 �� ore:�u
��:��|9 1 sd 33 �� ��:��|6 ore:��
��:�Y_��|1 1 sd 12 11 ��:��_�\|7
��:bed|11 1 sl 00 12 ��:bed ore:�J
��:�b 4 sd 33 �� ore:�� ore:�� ore:��
��:�s 1 sd 33 �� ore:�� ore:��
��:�� 1 sd 33 �� ore:�� ore:oc:�� ore:oc:�� ore:oc:��
��:�s|1 2 sd 33 �C ore:�� ore:�� ore:��
��:�s|2 4 sd 33 �� ore:�� ore:�� ore:��
��:��|6 1 sl 00 12 ore:�~ ��:��
��:�� 1 sd 22 � ��:��_��
��:�� 1 sd 33 �� ore:�� ore:�� ��:�t|1
��:�� 1 sd 33 � ore:�� ore:oc:�� ore:oc:�  ore:oc:�� ore:oc:��
��:� 1 sd 33 �� ��:�6
��:��_�q|2 1 sd 33 �� ore:�� ��:�_�V ��:��_��
��:�� 9 sl 00 1 ��:�
��:�3_�|8 8 sl 00 �4 ore:�� ��:�5 ��:�6
��:�� 1 sd 33 �$ ore:��
��:� 1 sd 33 �� ��:��
��:�)|2 1 sd 33 �� ��:�)|1
��:�)|1 1 sd 33 �� ��:�)
��:��_�� 1 sd 33 �� ��:dye|4 ore:�� ��:��_��
��:�B|1 1 sd 33 �C ore:�� ��:�>_��_��_��|* ��:��|*
��:�
|4 4 sd 33 � ore:�� ��:��|4
��:�� 1 sd 33 �0 ore:�� ore:oc:�� ore:�N ore:�� ore:oc:��
��:�)|3 1 sd 33 �� ��:�)|2
��:��_�� 6 sd 33 �C ore:�� ore:�� ��:�_�
��:�0|3 2 sd 33 � ��:��_��|* ��:�0 ore:��
��:dye|10 2 sl 00 12 ore:� ore:��
��:�� 1 sd 33 � ��:��_�� ore:oc:�� ore:�� ore:oc:�� ore:oc:�Q
��:�� 4 sd 11 1 ��:log
��:��|8 4 sd 33 �� ore:�� ��:� ore:oc:� 
��:�y 1 sd 33 �� ore:�� ore:�� ore:��
��:��|7 8 sd 33 �� ��:��_�� ��:� ore:oc:� 
��:��|10 1 sd 33 �i ��:��_�� ��:� ore:oc:�  ore:oc:��
��:��|9 2 sd 33 �� ore:�� ��:� ore:oc:� 
��:��|2 8 sl 00 123 ore:�� ��:�� ore:�
��:��|1 1 sl 00 �* ��:�b_�L ��:�� ore:�� ��:��_�J_eye ore:��
��:��|6 8 sd 33 �� ore:�� ore:�� ore:�� ��:�
��:��_�q|4 1 sd 33 �� ore:�� ��:�� ��:��_��
��:��|5 1 sd 33 �� ��:��_�� ore:oc:�� ore:��
��:�� 1 sd 33 �� ore:�� ��:��|2 ��:��|* ��:�W|*
��:�� 4 sd 33 �{ ore:�� ore:��
��:�� 1 sd 31 121 ore:�� ore:��
��:�|3 2 sl 00 121 ��:� ore:��
��:� 1 sd 33 �� ��:��
��:�� 1 sd 32 �� ��:�t|1
��:dye|5 2 sl 00 12 ore:�J ore:��
��:red_�T 1 sd 22 � ��:�5|1
��:��_�� 1 sd 33 �� ore:�� ore:��
��:��_�\|7 6 sd 31 111 ��:�Y_��,��:�Y_��|1,��:�Y_��|2
��:��|20 1 sd 33 � ��:��_�� ore:oc:�� ��:� ore:�� ore:oc:��
��:��|18 1 sd 33 �� ore:oc:�� ��:��_�H ore:�� ore:oc:�  ore:oc:�N ore:oc:�� ore:oc:��
��:��|21 1 sd 33 � ore:�� ore:oc:�� ore:�� ore:�� ore:oc:��
��:��|15 1 sd 32 �� ��:��_�H
��:��|14 1 sd 32 �� ��:��_�H
��:��|17 1 sd 33 �O ore:�� ��:��_�H ore:oc:�! ore:oc:�N ore:oc:�� ore:oc:��
��:��|16 1 sd 33 �� ��:��_�H
��:��|11 1 sd 33 �i ore:�� ��:� ore:oc:�  ��:��
��:��|13 1 sd 33 �� ore:�� ore:��
��:��|12 1 sd 33 �� ��:��_��
��:��_�\|6 6 sd 31 111 ��:��_��
��:dye|6 2 sl 00 12 ore:�J ore:�
��:��_��_��|7 8 sd 33 �� ��:��_�� ore:�j
��:�&_�' 1 sd 33 �� ��:�� ore:�� ��:��
��:�Y_��|2 2 sd 12 11 ��:�Y_��
��:�{ 2 sd 33 �� ore:�� ore:��
��:��|15 1 sd 33 �� ��:�G ��:��|12 ��:��|6
��:��_�g 1 sd 32 �h ��:��|1
��:�_�� 1 sd 33 �� ore:��
��:��_�g 1 sd 32 �h ��:��|2
��:��_�� 1 sd 33 �� ��:�� ��:��_��
��:�� 1 sd 33 �� ore:�� ore:�� ��:�Y
��:�� 3 sd 31 111 ore:��
��:��_� 4 sd 33 �	 ��:��_��
��:��_��|5 8 sd 33 �� ore:� ore:��
��:��_�� 1 sd 33 �� ore:�� ore:��
��:dye|9 2 sl 00 1 ��:��_��|5
��:��|1 1 sd 33 �� ��:��|11
��:�0|1 4 sd 32 �1 ore:�� ��:�� ore:�� ��:�2
��:�L 1 sd 32 �� ore:��
��:��|6 4 sd 22 � ore:��
��:��_��|15 8 sd 33 �� ore:� ore:��
]==],['craftmgr.lua']= [==[�� ��, �8 = ��(��, ��.��, '�8')
if not �� ��
	��('Can\'t �� �8 ��.')
	��
end

�� �� = ��('lib.��')
�� �� = ��('lib.��')
�� �� = ��('lib.��')
�� �� = ��('lib.��')
�� �� = ��('lib.��')
�� �� = ��('lib.��')

�� �� = ��('lib.��.��')
�� �v = ��('lib.��.�v')

-----------------------
-- �� �� ��
-----------------------
�� �� = {['��'] = '', ['��'] = nil}

�� ��.new()
	�� o = {}
	��(o, ��)
	��.__�� = ��
	o.�� = ''
	o.�� = nil
	�� o
end
-----------------------
-- �� �� end
-----------------------

�� �� = ��
�� �� = {}
�� �� = ��

�� �� ��(��)
	��('�� ��!')
	��(��.��)
end

�� �� = {}

��.�� = ��.new()
��.��.�� = '��'
��.��.�� = ��(��)
	if �� ~= nil ��
		if ��[��] ~= nil ��
			��(��[��].��)
			��
		��
			��('No �� ��.')
		end
	end
	�� �� = {}
	for k, v in ��(��) do
		�'.��(��, v.��)
	end
	�'.��(��)
	�� �� = ''
	for k, v in ��(��) do
		�� = �� .. v .. '\n'
	end
	��.��(��)
end

��.�� = ��.new()
��.��.�� = '��'
��.��.�� = ��()
	if �� ��
		io.��:��('�� has �� ��. �� you �� to �� all �� ��? [y/n/C]')
		�� �� = io.��:��('*l')
		if ��.��(��) == 'y' ��
			��.��.��()
			�� = ��
		�  ��.��(��) == 'n' ��
			�� = ��
		end
	��
		�� = ��
	end
end

��.� = ��.new()
��.�.�� = '�'
��.�.�� = ��()
	��.��()
	��('� � �.')
end

��.� = ��.new()
��.�.�� = '�'
��.�.�� = ��()
	��.�()
	��('� �.')
end

��.�� = ��.new()
��.��.�� = '��'
��.��.�� = ��()
	��.��()
	��('� �	 �.')
end

��.�
 = ��.new()
��.�
.�� = '�
 <��> <�/�> [�]'
��.�
.�� = ��(�, ...)
	if � == nil ��
		��.��.��('�
')
		��
	end

	�� � = {}
	�.�� = ��(�, �)
		if � == nil ��
			��.��.��('�
')
			��
		�  (� ~= '�') and (� ~= '�') ��
			��.��.��('�
')
			��
		end
		�� � = (� == '�') and �� or ��
		
		-- � � ��
		if ��.�(8) ~= nil ��
			��.�(8)
			if not ��.�() ��
				��('� �.')
				��
			end
		end
		
		-- � �
		�� � = {1, 2, 3, 5, 6, 7, 9, 10, 11}
		�� � = {}
		for k, v in ��(�) do
			�� � = ��.�(v)
			if � ~= nil ��
				�[k] = ~�
				if � == �� ��
					�[k]:�()
				�  � == nil ��
					if �[k].� == 0 ��
						�[k]:�()
					end
				end
			end
		end
		
		�� � = {}
		�� w, h, ox, oy
		if � ��
			-- � �
			w, h, ox, oy = 3, 3, 0, 0
			�� �� r(n)
				�� d = ��
				for i = (n-1)*3+1, n*3 do
					d = d or (�[i] ~= nil)
				end
				�� d
			end
			�� �� c(n)
				�� d = ��
				for i = 0, 2 do
					d = d or (�[(i*3)+n] ~= nil)
				end
				�� d
			end
			
			if c(1) and c(3) ��
				w, ox = 3, 0
			�  (c(1) and c(2)) or (c(2) and c(3)) ��
				w, ox = 2, c(1) and 1 or 2
			�  c(1) or c(2) or c(3) ��
				w, ox = 1, c(1) and 1 or (c(2) and 2 or 3)
			��
				w, ox = 0, 0
			end
			
			if r(1) and r(3) ��
				h, oy = 3, 0
			�  (r(1) and r(2)) or (r(2) and r(3)) ��
				h, oy = 2, r(1) and 1 or 2
			�  r(1) or r(2) or r(3) ��
				h, oy = 1, r(1) and 1 or (r(2) and 2 or 3)
			��
				h, oy = 0, 0
			end
			
			�� �� xy(x, y, w, h)
				�� x + y * w
			end
			for y = 1, h do
				for x = 1, w do
					�[xy(x-1, y-1, w, h)+1] = �[xy(x+ox-2, y+oy-2, 3, 3)+2]
				end
			end
		��
			w, h = 0, 0
			for k, v in ��(�) do
				�[#�+1] = v
			end
		end
		
		-- �  �v
		if not �.��.�!(1) ��
			��('Can\'t �!!')
			��
		end
		�� � = ��.�(8)
		
		-- Put �� in ��
		�� = ��.new({�" = w, �# = h}, �, �, �)
		��('Put �� in ��.')
	end
	
	if �[��.��(�)] == nil ��
		��.��.��('�
')
		��
	��
		�[��.��(�)](...)
	end
	
	��.�$()
end

��.�% = ��.new()
��.�%.�� = '�%/see/�&/�' <��/�v>'
��.�%.�� = ��(it)
	if it == nil ��
		��.��.��('�%')
		��
	end
	
	�� sit
	if it == '��' ��
		sit = ��
	��
		sit = ��.�((~�v.new(it))
	end
	
	�� � = {}
	�.�� = ��(ii)
		��(ii)
	end
	
	if sit == nil ��
		��('�) to �%.')
		��
	�  �*(sit) == �� ��
		�.��(sit)
	end
end

��.see = ��.�%
��.�& = ��.�%
��.�' = ��.�%

��.�+ = ��.new()
��.�+.�� = '�+ <��/�v>'
��.�+.�� = ��(it)
	if it == nil ��
		��.��.��('�+')
		��
	�  it == '��' ��
		if �� == nil ��
			��('�) to �+.')
			��
		��
			��.�+(��)
			if �*(��) == �� ��
				�� = ��
				��('� �+.')
			end
		end
	��
		��.�+(~�v.new(it))
		�� = ��
		��('�, �+ to raw.')
	end
end

��.�- = ��.new()
��.�-.�� = '�-'
��.�-.�� = ��()
	�� = nil
	��('�. �/.')
end

��.�0 = ��.new()
��.�0.�� = '�0 <�v>'
��.�0.�� = ��(it)
	if it == nil ��
		��.��.��('�0')
		��
	end

	�� �1 = ��.�0(�v.new(it))
	if �*(�1) == �� ��
		�� = ��
		��('�2 ��.')
	�  �*(�1) == �v ��
		�� = ��
		��('Raw �3.')
	��
		��('�) �3.')
	end
end

��.�4 = ��.new()
��.�4.�� = '�4 <raw/��>'
��.�4.�� = ��(�)
	�� �� = ''
	if � == 'raw' ��
		�� = '�5 of raw:\n'
		for k, v in ��(��.db) do
			�� = �� .. �6(v) .. '\n'
		end
	�  � == '��' ��
		�� = '�5 of ��:\n'
		for k, v in ��.�7() do
			�� = �� .. �6(~k) .. '\n'
		end
	��
		��.��.��('�4')
		��
	end
	��.��(��)
end

��.� = ��.new()
��.�.�� = '� <��>'
��.�.�� = ��(sl)
	��.�(�6(sl))
end

��.�8 = ��.new()
��.�8.�� = '�8 <�v>'
��.�8.�� = ��(it)
	�� sit
	if it ~= nil ��
		sit = �v.new(it)
	��
		��.��.��('�8')
		��
	end
	
	if ��.�((sit) ~= nil ��
		if �*(��.�((sit)) ~= �v ��
			�� ��
			if �*(��.�((sit)) == �� ��
				�� = '�: ' .. �6(��.�((sit).�) .. '\n'
			end
			�� �9, �: = ��.�8(sit)
			for k, v in ��(�9) do
				�� = �� .. �6(v) .. '\n'
			end
			��.��(��)
		��
			��('It\'s an �v')
		end
	��
		��('Can\'t �;.')
	end
end

��.�! = ��.new()
��.�!.�� = '�! <�v>'
��.�!.�� = ��(it)
	�� sit
	if it ~= nil ��
		sit = �v.new(it)
	��
		��.��.��('�!')
		��
	end
	
	if ��.�<(sit) ��
		if ��.�!(sit) ��
			��('�= �.')
		��
			��('� �>.')
		end
	��
		��('Not �? �@ to �!.')
	end
end

��.�A = ��.new()
��.�A.�� = '�A'
��.�A.�� = ��(...)
	if ��.�B() ��
		��('�C.')
	��
		��('Can\'t �A!')
	end
end

�D �� do
	io.��:��('�E>')
	�� �F = ��.�G(io.��:��('*l'))
	�� �H = ��.��(�'.�0(�F, 1))
	if ��[�H] ~= nil ��
		��[�H].��(�'.�I(�F))
	��
		��('�� �J.')
	end
end]==],['crafttweaker.log']= [==[[�K][�L][�M] �N �O �P �Q: [[�R]]
[�K][�L][�M] �S �T for �U �V �W [�R]
[�K][�L][�M] �X �Y �Z in: 0ms
[�[][�L][�M] �\: �] �^
[�[][�L][�M] �\: �_ �` �v �^
[�[][�L][�M] �N �O �P �Q: [[�R], [�a | �b]]
[�[][�L][�M] �S �T for �U �V �W [�b | �a]
[�[][�L][�M] �X �Y �Z in: 0ms
[�c][�L][�M] �d �e for �f �g
[�h][�L][�M] �i the �j
�k:
�e.�l("��:�m", <��:��:11>, [[<ore:��>, <ore:oc:��>, <ore:oc:��>], [�n, <ore:oc:��>, �n]]);
�e.�l("��:�o", <��:��:12>, [[<ore:��>, <ore:oc:��>, <ore:oc:��>], [�n, <ore:oc:��>, �n]]);
�e.�l("��:�p", <��:��:10>, [[<��:��_��>, <ore:oc:��>, <ore:oc:��>], [�n, <ore:oc:��>, �n]]);
�e.�q("��:��_dye_�r_�s", <��:dye:11>, [<��:��_��>]);
�e.�l("��:��_��", <��:��_��> * 6, [[<ore:��>, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:red_��", <��:��:14>, [<ore:��>, <��:��>]);
�e.�l("��:��_��_�r_��_��", <��:��_��>, [[�n, <��:��_��>, �n], [<��:��>, <��:��_��>, <��:��_��>], [�n, <��:��>, �n]]);
�e.�l("��:�t_��", <��:��> * 16, [[<ore:��>], [<ore:��>]]);
�e.�l("��:�u", <��:��:8>, [[<ore:oc:��>, <ore:oc:��>, <ore:��>], [�n, <ore:oc:��>, <ore:��>]]);
�e.�l("��:�v", <��:��:9> * 2, [[<��:��_eye>, �n, <��:��_eye>], [<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [<ore:oc:��>, �n, <ore:oc:��>]]);
�e.�l("��:�w", <��:��:6>, [[<ore:oc:��>, <ore:oc:��>, �n], [�n, <ore:oc:��>, �n]]);
�e.�l("��:�x", <��:��:7>, [[<ore:��>, <ore:oc:��>, �n], [�n, <ore:oc:��>, �n]]);
�e.�l("��:�y", <��:��>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��_��", <��:��_��>, [[<��:dye:15>, <��:dye:15>, <��:dye:15>], [<��:dye:15>, <��:dye:15>, <��:dye:15>], [<��:dye:15>, <��:dye:15>, <��:dye:15>]]);
�e.�q("��:��_�F", <��:��:7>, [<��:��:9>, <ore:��>, <��:��:*>]);
�e.�l("��:�z", <��:��:1>, [[<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [�n, <ore:oc:��>, �n]]);
�e.�l("��:�{", <��:��:4>, [[<ore:��>, <ore:oc:��>, �n], [�n, <ore:oc:��>, �n]]);
�e.�l("��:��_�@", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�|", <��:��:5>, [[<ore:��>, <ore:oc:��>, <ore:��>], [�n, <ore:oc:��>, �n]]);
�e.�l("��:��_��", <��:��_��> * 9, [[<ore:��>]]);
�e.�l("��:�}", <��:��:2>, [[<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [�n, <ore:oc:��>, �n]]);
�e.�l("��:�~", <��:��:3>, [[<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [�n, <ore:oc:��>, �n]]);
�e.�l("��:��_��", <��:��_��> * 3, [[<��:��:2>, <��:��>, <��:��:2>], [<��:��:2>, <��:��>, <��:��:2>]]);
�e.�l("��:�_�;", <��:��:5>, [[<��:��:3>, <��:��>, <��:��:3>], [<��:��:3>, <��:��:1>, <��:��:3>], [<��:��:3>, <��:��_��_��:*>, <��:��:3>]]);
�e.�l("��:��_��", <��:��_��> * 2, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��_��", <��:��_��_��>, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:��_��_�U", <��:��:4>.��({��: "�U"}) * 4, [[<ore:��>, <��:�A_�\:3>, <ore:��>], [<��:�A_�\:3>, <��:�A_�\:3>, <��:�A_�\:3>], [<ore:��>, <��:�A_�\:3>, <ore:��>]]);
�e.�q("��:��_��", <��:��> * 9, [<��:��:*>]);
�e.�l("��:��_��", <��:��:13>, [[<��:��:2>, <��:��:2>, <��:��:2>], [<��:��:2>, <��:��:2>, <��:��:2>], [�n, <ore:��>, �n]]);
�e.�q("��:red_bed_�r_��_bed", <��:bed:14>, [<��:bed>, <ore:��>]);
�e.�l("��:��_��", <��:��_��> * 6, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
�e.�q("��:��_��", <��:��:2>, [<ore:��>, <��:��>]);
�e.�l("��:��_��_��_��", <��:��_��_��:5> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��_dye", <��:dye:8> * 2, [<ore:��>, <ore:��>]);
�e.�l("��:��_��", <��:��_��>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
�e.�q("��:��_bed_�r_��_bed", <��:bed:9>, [<��:bed>, <ore:��>]);
�e.�l("��:�b_��", <��:�b>.��({��: "��:��"}), [[�n, <��:��_��:*>, �n], [<ore:��>, <��:�b>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��_��_��", <��:��_��_��:2> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:��_��", <��:��_��> * 4, [[�n, <��:��_��:*>, �n], [<��:��_��:*>, <ore:��>, <��:��_��:*>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��_��", <��:��:15>, [<ore:��>, <��:��>]);
�e.�l("��:��_��", <��:��_��> * 9, [[<��:��>]]);
�e.�q("��:��_��_�r_��", <��:dye:15> * 9, [<��:��_��>]);
�e.�l("��:��_��_��_oak", <��:��:1>.��({��: "��_oak"}) * 2, [[<��:��:5>, <ore:��>, <��:��:5>], [<��:��:5>, <��:��:5>, <��:��:5>], [<��:��:5>, <ore:��>, <��:��:5>]]);
�e.�l("��:��_��_��", <��:��_��_��>, [[<��:��>, <��:��:1>, <��:��>], [<��:��>, <��:��:1>, <��:��>]]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�_��", <��:��:7>, [[�n, <��:��:1>, �n], [<��:��:2>, <��:��>, <��:��:2>]]);
�e.�q("��:��", �n, []);
�e.�l("��:��_bed", <��:bed:4>, [[<��:��:4>, <��:��:4>, <��:��:4>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��", �n, []);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��_�I", <��:��:1> * 9, [<��:��:2>]);
�e.�l("��:��_oak_��", <��:��_oak_��> * 3, [[<��:��:5>, <��:��:5>], [<��:��:5>, <��:��:5>], [<��:��:5>, <��:��:5>]]);
�e.�q("��:��_��", <��:��_��>, [<��:��>, <ore:��>, <ore:��>]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �n, <ore:��>]]);
�e.�l("��:��_��_bed", <��:bed:3>, [[<��:��:3>, <��:��:3>, <��:��:3>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_pot", <��:��_pot>, [[<��:��>, �n, <��:��>], [�n, <��:��>, �n]]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>, <ore:��>, <ore:��>], [�n, <ore:��>, �n], [�n, <ore:��>, �n]]);
�e.�q("��:��_��_dye_�r_��_��", <��:dye:7>, [<��:red_��:8>]);
�e.�q("��:��", <��:��:5> * 4, [<��:��:2>, <��:��>, <��:��:2>, <��:��>]);
�e.�l("��:��_�_max", <��:��_�:1>, [[<��:�>, <��:�>, <��:�>], [<ore:��>, <��:��_��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��_��_��", <��:��_��_��:2> * 16, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
�e.�l("��:��", <��:�>, [[<��:��_��>, <ore:oc:�>, <��:��_��>], [<ore:oc:��>, <ore:oc:�>, <ore:oc:��>], [<��:��_��>, <ore:oc:��>, <��:��_��>]]);
�e.�l("��:��_��_�", <��:��_��_�> * 4, [[<��:��_��>, �n, �n], [<��:��_��>, <��:��_��>, �n], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:�
_��_oak", <��:�
:5> * 4, [[<ore:��>, <��:��:5>, <ore:��>], [<��:��:5>, <��:��:5>, <��:��:5>], [<ore:��>, <��:��:5>, <ore:��>]]);
�e.�q("��:��_��", <��:��:10>, [<ore:�>, <��:��>]);
�e.�l("��:��_��", <��:�:1> * 4, [[<��:�>, <��:�>], [<��:�>, <��:�>]]);
�e.�l("��:��_��_��_��", <��:��_��_��:12> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:��", <��:�>, [[<ore:oc:��>, <ore:�>, <ore:oc:��>], [<ore:oc:��>, <ore:��>, <ore:oc:��>], [<ore:��>, <��:�_�>, <ore:��>]]);
�e.�l("��:��_bed", <��:bed:2>, [[<��:��:2>, <��:��:2>, <��:��:2>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>], [<ore:��>], [<ore:��>]]);
�e.�l("��:��_��", <��:��_��> * 3, [[<��:��:1>, <��:��>, <��:��:1>], [<��:��:1>, <��:��>, <��:��:1>]]);
�e.�l("��:��_��_��", <��:��_��:13> * 8, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
�e.�l("��:lit_�", <��:lit_�>, [[<��:�>], [<��:�>]]);
�e.�l("��:��", <��:�>, [[<ore:��>, <ore:oc:�>, <ore:��>], [<��:��_�>, <ore:��>, <��:��_�>], [<ore:oc:��>, <ore:oc:��>, <ore:oc:�>]]);
�e.�l("��:��_��_7", <��:�:7>, [[<��:�:6>, <��:�:6>, <��:�:6>], [<��:�:6>, <��:�:6>, <��:�:6>], [<��:�:6>, <��:�:6>, <��:�:6>]]);
�e.�l("��:��_��_6", <��:�:6>, [[<��:�:5>, <��:�:5>, <��:�:5>], [<��:�:5>, <��:�:5>, <��:�:5>], [<��:�:5>, <��:�:5>, <��:�:5>]]);
�e.�l("��:��_�", <��:��_�> * 4, [[�n, <��:��_��:*>, �n], [<��:��_��:*>, <ore:��>, <��:��_��:*>], [<ore:��>, <ore:� >, <ore:��>]]);
�e.�q("��:��_��_dye_�r_ink_��", <��:dye:7> * 3, [<ore:��>, <ore:��>, <ore:��>]);
�e.�l("��:��_��_1", <��:�:1>, [[<��:�>, <��:�>, <��:�>], [<��:�>, <��:�>, <��:�>], [<��:�>, <��:�>, <��:�>]]);
�e.�l("��:��_��_5", <��:�:5>, [[<��:�:4>, <��:�:4>, <��:�:4>], [<��:�:4>, <��:�:4>, <��:�:4>], [<��:�:4>, <��:�:4>, <��:�:4>]]);
�e.�l("��:��_��_4", <��:�:4>, [[<��:�:3>, <��:�:3>, <��:�:3>], [<��:�:3>, <��:�:3>, <��:�:3>], [<��:�:3>, <��:�:3>, <��:�:3>]]);
�e.�l("��:��_�U", <��:��>, [[<ore:��>, <��:��:2>, <ore:��>], [<ore:��>, <��:��>.��({��: {��: {��: 1 as ��}, id: "��:��"}, No_��: 1 as ��}), <ore:��>], [�n, <ore:��>, �n]]);
�e.�l("��:��_��_3", <��:�:3>, [[<��:�:2>, <��:�:2>, <��:�:2>], [<��:�:2>, <��:�:2>, <��:�:2>], [<��:�:2>, <��:�:2>, <��:�:2>]]);
�e.�l("��:��_��_2", <��:�:2>, [[<��:�:1>, <��:�:1>, <��:�:1>], [<��:�:1>, <��:�:1>, <��:�:1>], [<��:�:1>, <��:�:1>, <��:�:1>]]);
�e.�l("��:��_��_��", <��:�b>.��({��: "��:��_��"}), [[<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <��:��_��:*>, <��:��:1>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:��_��_��", <��:��_��:1> * 8, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:�!>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
�e.�l("��:��_��", <��:�">, [[<ore:�#>, <ore:��>, <ore:�#>], [<ore:��>, <ore:��>, <ore:��>], [<ore:�#>, <ore:��>, <ore:�#>]]);
�e.�l("��:�t_��", <��:��> * 4, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:�%_��_��", <��:�%:8>, [<��:�%:9>, <��:�&_�':*>, <��:�&_�':*>]);
�e.�q("��:��_�(_��", <��:�(> * 9, [<��:�)>]);
�e.�q("��:��_��_2_��", <��:�:1> * 9, [<��:�:2>]);
�e.�l("��:��", <��:�>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:��>, <ore:oc:�*>, <ore:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�q("��:��_bed_�r_��_bed", <��:bed:4>, [<��:bed>, <ore:�+>]);
�e.�l("��:��_�,", <��:��_�,>, [[<ore:��>, �n, <ore:��>], [<ore:��>, �n, <ore:��>]]);
�e.�l("��:�._��", <��:�._��> * 3, [[<��:��:4>, <��:��:4>], [<��:��:4>, <��:��:4>], [<��:��:4>, <��:��:4>]]);
�e.�l("��:��_��_��", <��:�/:3> * 8, [[<��:�:3>, <��:�:3>, <��:�:3>], [<��:�:3>, <��:��:5>, <��:�:3>], [<��:�:3>, <��:�:3>, <��:�:3>]]);
�e.�l("��:��_��_��", <��:�0:6>, [[<ore:��>, <��:�2>, <ore:��>], [<ore:��>, <��:�_��:*>, <ore:��>]]);
�e.�l("��:��_��_�V", <��:��:2>, [[<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <��:��:1>, <��:��:1>]]);
�e.�q("��:��_�3_�", <��:�3_�:9> * 8, [<ore:��>, <��:�5>, <��:�5>, <��:�5>, <��:�5>, <��:�6>, <��:�6>, <��:�6>, <��:�6>]);
�e.�q("��:�%_��", <��:�%:6>, [<��:�%:9>, <��:�7:*>, <��:�7:*>]);
�e.�l("��:��_gen_��", <��:��:1>, [[<��:�b>.��({��: "��:��_��"}), <��:�b>.��({��: "��:��_��"}), <��:�b>.��({��: "��:��_��"})], [<��:�b>.��({��: "��:��_�|"}), <��:��>, <��:�b>.��({��: "��:��_�"})], [<��:�b>.��({��: "��:��_��"}), <��:�b>.��({��: "��:��_��"}), <��:�b>.��({��: "��:��_tnt"})]]);
�e.�l("��:�8_�9", <��:�8_�9>, [[<ore:��>], [<��:�9>]]);
�e.�l("��:��_hoe", <��:��_hoe>, [[<ore:��>, <ore:��>], [�n, <ore:��>], [�n, <ore:��>]]);
�e.�q("��:�;_�<", <��:�;_�<> * 3, [<ore:�=>, <��:�_�>, <��:��> | <��:��:1>]);
�e.�l("��:��_��_��_��", <��:��_��_��:15> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:�", <��:�> * 9, [[<��:�_��>]]);
�e.�l("��:��", <��:��> * 9, [[<��:��_��>]]);
�e.�l("��:lux_��_��", <��:�>:3>, [[<��:��:17>, <ore:�?>, <��:��:17>], [<��:��:17>, <��:�@>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>]]);
�e.�l("��:�A_��", <��:�A_��>, [[<ore:��>, <ore:��>, <ore:��>], [�n, <ore:��>, �n], [�n, <ore:��>, �n]]);
�e.�l("��:�B_��", <��:�B:3>, [[<ore:�D>, <��:�E>, <ore:�D>], [<ore:�D>, <��:�B:2>, <ore:�D>], [<ore:�D>, <��:�E>, <ore:�D>]]);
�e.�l("��:��_��", <��:�F>, [[�n, �n, <ore:��>], [�n, <ore:��>, <ore:��>], [<ore:��>, �n, �n]]);
�e.�q("��:��_�3_�", <��:�3_�:13> * 8, [<ore:�>, <��:�5>, <��:�5>, <��:�5>, <��:�5>, <��:�6>, <��:�6>, <��:�6>, <��:�6>]);
�e.�l("��:oak_�", <��:oak_�> * 4, [[<��:��>, �n, �n], [<��:��>, <��:��>, �n], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:��_�H", <��:��_�H>, [[<ore:��>]]);
�e.�l("��:��_��_ice", <��:�b>.��({��: "��:��_ice"}), [[<��:��:*>, <��:��:*>, <��:��:*>], [<��:��:*>, <��:ice:*>, <��:��:*>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:��", <��:��:2> * 4, [[<��:�I:*>, <��:�I:*>], [<��:�I:*>, <��:�I:*>]]);
�e.�q("��:��_��_dye_�r_�k_��", <��:dye:12> * 2, [<ore:�J>, <ore:��>]);
�e.�l("��:��_��_��", <��:��_��:12> * 8, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
�e.�q("��:�%_��", <��:�%:4>, [<��:�%:9>, <��:�K_�L:*>, <��:�K_�L:*>]);
�e.�l("��:��", <��:�M>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:oc:��>, <ore:�N>, <ore:oc:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�q("��:��", <��:�O>, [<��:�P>, <ore:oc:�Q>]);
�e.�l("��:�_��", <��:�R>, [[<ore:��>, <��:��:2>, <ore:��>], [<ore:��>, <��:�S>, <ore:��>], [<ore:��>, <��:��:2>, <ore:��>]]);
�e.�l("��:�T", <��:�T>, [[<��:�5>, <��:�5>], [<��:�5>, <��:�5>]]);
�e.�q("��:��_�3_�", <��:�3_�:4> * 8, [<ore:�+>, <��:�5>, <��:�5>, <��:�5>, <��:�5>, <��:�6>, <��:�6>, <��:�6>, <��:�6>]);
�e.�l("��:�U_��_��", <��:�U_��_��>, [[<��:��>, <��:��:3>, <��:��>], [<��:��>, <��:��:3>, <��:��>]]);
�e.�l("��:�_�V_�r_��", <��:�_�V> * 9, [[<��:�_��>]]);
�e.�q("��:��", <��:��:9> * 2, [<��:��:9>, <��:��:9>]);
�e.�l("��:�W", <��:�W>, [[�n, <��:�_�>, �n], [<��:�_�>, <��:�Y>, <��:�_�>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�Z", <��:�Z>, [[<��:�_�>, <ore:��>, <��:�_�>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:red_�3_�", <��:�3_�:14> * 8, [<ore:��>, <��:�5>, <��:�5>, <��:�5>, <��:�5>, <��:�6>, <��:�6>, <��:�6>, <��:�6>]);
�e.�q("��:��_�(_3_��", <��:�):2> * 9, [<��:�):3>]);
�e.�l("��:��_�A_�\", <��:�A_�\:2> * 6, [[<��:��:2>, <��:��:2>, <��:��:2>]]);
�e.�q("��:��", <��:��>, [<��:��:*> | <��:��_��:*> | <��:�]_��:*>, <ore:��>, <��:��:*>]);
�e.�l("��:�^_��", <��:�^_��> * 4, [[<��:�__�`_�a>, <��:�__�`_�a>], [<��:�__�`_�a>, <��:�__�`_�a>]]);
�e.�q("��:�%_��", <��:�%:2>, [<��:�%:9>, <��:�b_�L:*>, <��:�b_�L:*>]);
�e.�l("��:�A_�H", <��:�A_�H>, [[<ore:��>]]);
�e.�l("��:��_�", <��:��_�> * 4, [[<��:��>, �n, �n], [<��:��>, <��:��>, �n], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:�c_rod", <��:�c_rod>, [[�n, �n, <ore:��>], [�n, <ore:��>, <ore:��>], [<ore:��>, �n, <ore:��>]]);
�e.�l("��:��_�e", <��:��_�e>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �n, <ore:��>], [<ore:��>, �n, <ore:��>]]);
�e.�q("��:�%_��", <��:�%:3>, [<��:�%:9>, <ore:�5>, <ore:�5>]);
�e.�l("��:��_��_oak", <��:��:2>.��({��: "oak"}) * 4, [[<ore:��>, <��:��>, <ore:��>], [<��:��>, <��:��>, <��:��>], [<ore:��>, <��:��>, <ore:��>]]);
�e.�l("��:�g", <��:�g>, [[<��:��>, �n, <��:��>], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:��_�P", <��:�P:9> * 3, [[<��:��:9>, <��:��:9>]]);
�e.�q("��:��_dye_�r_red_��", <��:dye:9> * 2, [<ore:��>, <ore:��>]);
�e.�l("��:�i", <��:�i>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��_��", <��:��:1>.��({��: "��"}) * 2, [[<��:��:2>, <ore:��>, <��:��:2>], [<��:��:2>, <��:��:2>, <��:��:2>], [<��:��:2>, <ore:��>, <��:��:2>]]);
�e.�l("��:��_�(", <��:�)>, [[<��:�(>, <��:�(>, <��:�(>], [<��:�(>, <��:�(>, <��:�(>], [<��:�(>, <��:�(>, <��:�(>]]);
�e.�q("��:��_�3_�", <��:�3_�:7> * 8, [<ore:�j>, <��:�5>, <��:�5>, <��:�5>, <��:�5>, <��:�6>, <��:�6>, <��:�6>, <��:�6>]);
�e.�q("��:�k", <��:�k>, [<��:�l:*>, <��:��>, <��:��_��:*>]);
�e.�q("��:��_��_�3_�", <��:�3_�:3> * 8, [<ore:�m>, <��:�5>, <��:�5>, <��:�5>, <��:�5>, <��:�6>, <��:�6>, <��:�6>, <��:�6>]);
�e.�l("��:��", <��:�n>, [[<ore:��>, <��:�>, <ore:��>], [<��:�>, <ore:oc:��>, <ore:�>], [<ore:��>, <��:�>, <ore:��>]]);
�e.�q("��:��", <��:�p>, [<��:�p>, <��:�q>]);
�e.�l("��:�._�A_�\", <��:�A_�\:4> * 6, [[<��:��:4>, <��:��:4>, <��:��:4>]]);
�e.�q("��:��_bed_�r_��_bed", <��:bed:7>, [<��:bed>, <ore:�j>]);
�e.�q("��:��_��", <��:��_��>, [<��:��_��>, <��:red_��>, <��:��>]);
�e.�q("��:red_dye_�r_��", <��:dye:1>, [<��:red_��:4>]);
�e.�l("��:��_��", <��:�r>, [[�n, �n, <ore:��>], [�n, <��:�t:1>, �n], [<��:�t:1>, �n, �n]]);
�e.�q("��:red_dye_�r_�u", <��:dye:1>, [<��:�u>]);
�e.�l("��:key_�v", <��:�v_key>, [[<ore:��>, <ore:��>], [�n, <ore:��>], [�n, <��:��_��>]]);
�e.�l("��:�x", <��:�x>, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:�z>, <ore:�>], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:tnt", <��:tnt>, [[<ore:�=>, <��:�5> | <��:�5:1>, <ore:�=>], [<��:�5> | <��:�5:1>, <ore:�=>, <��:�5> | <��:�5:1>], [<ore:�=>, <��:�5> | <��:�5:1>, <ore:�=>]]);
�e.�l("��:��_gen_top", <��:��:2>, [[<��:�b>.��({��: "��:��_��"}), <��:�b>.��({��: "��:��_��"}), <��:�b>.��({��: "��:��_��"})], [<��:�b>.��({��: "��:��_��"}), <��:��>, <��:�b>.��({��: "��:��_��"})], [<��:�b>.��({��: "��:��"}), <��:�b>.��({��: "��:��_ice"}), <��:�b>.��({��: "��:��_�K"})]]);
�e.�l("��:��_��_bed", <��:bed:8>, [[<��:��:8>, <��:��:8>, <��:��:8>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:�|_and_�}", <��:�|_and_�}>, [<ore:��>, <��:�|>]);
�e.�q("��:��_dye_�r_��_��", <��:dye:14>, [<��:red_��:5>]);
�e.�q("��:��_bed_�r_��_bed", <��:bed:6>, [<��:bed>, <ore:�~>]);
�e.�l("��:��_�_min", <��:��_�:2>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��_��>, <ore:��>], [<��:�>, <��:�>, <��:�>]]);
�e.�l("��:��_�P", <��:�P:12> * 3, [[<��:��:12>, <��:��:12>]]);
�e.�l("��:�U_��", <��:�U_��> * 3, [[<��:��:3>, <��:��:3>], [<��:��:3>, <��:��:3>], [<��:��:3>, <��:��:3>]]);
�e.�q("��:��_��_4_��", <��:�:3> * 9, [<��:�:4>]);
�e.�l("��:��_��_��_��", <��:��_��_��:15> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��_��", <��:��:4> * 4, [<ore:�5>, <ore:�>, <ore:�5>, <ore:�>]);
�e.�l("��:��_��", <��:��:1>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��_�U", <��:��:2>.��({��: "�U"}) * 4, [[<ore:��>, <��:��:3>, <ore:��>], [<��:��:3>, <��:��:3>, <��:��:3>], [<ore:��>, <��:��:3>, <ore:��>]]);
�e.�l("��:��_�P", <��:�P:11> * 3, [[<��:��:11>, <��:��:11>]]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��", <��:��>, [<��:�l:*>, <��:��>, <��:��_�':*>]);
�e.�q("��:��_��_1_��", <��:�> * 9, [<��:�:1>]);
�e.�l("��:��_�q_��", <��:��_�q>, [[<ore:��>, <ore:��>, <ore:��>], [<��:��>, <��:��_��>, <��:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��", <��:map>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��_map:*>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:red_��_��", <��:red_��_��>, [[<��:��>, <��:��_��>], [<��:��_��>, <��:��>]]);
�e.�l("��:��", <��:��>, [[<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [<ore:oc:��>, <ore:oc:��>, <ore:oc:��>]]);
�e.�l("��:��_�", <��:��_�> * 4, [[<��:��:2>, �n, �n], [<��:��:2>, <��:��:2>, �n], [<��:��:2>, <��:��:2>, <��:��:2>]]);
�e.�l("��:��_��_��_��", <��:��_��:8> * 8, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:��>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
�e.�l("��:��_��_��_��", <��:��_��_��> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_axe", <��:��_axe>, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>], [�n, <ore:��>]]);
�e.�l("��:��_��_��_��_��", <��:��_��_��:3> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��_�3_�", <��:�3_�:12> * 8, [<ore:�>, <��:�5>, <��:�5>, <��:�5>, <��:�5>, <��:�6>, <��:�6>, <��:�6>, <��:�6>]);
�e.�l("��:��_��_��", <��:��_��:9> * 8, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:��>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
�e.�l("��:�_��", <��:��> * 3, [[<ore:�#>, <ore:�#>, <ore:�#>], [<��:��:2>, <��:��>, <��:��:2>]]);
�e.�q("��:��_dye_�r_��", <��:dye:11> * 2, [<��:��_��>]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>], [<ore:��>], [<ore:��>]]);
�e.�l("��:��_��_�", <��:��_��_�> * 4, [[<��:�I> | <��:�I:1> | <��:�I:2> | <��:�I:3>, �n, �n], [<��:�I> | <��:�I:1> | <��:�I:2> | <��:�I:3>, <��:�I> | <��:�I:1> | <��:�I:2> | <��:�I:3>, �n], [<��:�I> | <��:�I:1> | <��:�I:2> | <��:�I:3>, <��:�I> | <��:�I:1> | <��:�I:2> | <��:�I:3>, <��:�I> | <��:�I:1> | <��:�I:2> | <��:�I:3>]]);
�e.�q("��:key_��", <��:��_key>, [<��:�v_key>, <��:��_tag>]);
�e.�l("��:��_��", <��:�b>.��({��: "��:��_��"}), [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��:*>, <ore:��>]]);
�e.�l("��:��", <��:��:3> * 2, [[<ore:��>, <��:�Y>], [<��:�Y>, <ore:��>]]);
�e.�l("��:�._��", <��:�._��> * 3, [[<��:��:4>, <��:��>, <��:��:4>], [<��:��:4>, <��:��>, <��:��:4>]]);
�e.�l("��:��_��_��", <��:��:1> * 8, [[<��:��:*>], [�n], [<��:�0:2>]]);
�e.�l("��:��_��", <��:��>, [[<��:end_��:*>, <��:��:3>, <��:end_��:*>], [<��:��:3>, <ore:��_��_��>, <��:��:3>], [<��:end_��:*>, <��:��:3>, <��:end_��:*>]]);
�e.�l("��:end_��", <��:end_��> * 4, [[<��:end_��>, <��:end_��>], [<��:end_��>, <��:end_��>]]);
�e.�q("��:��_bed_�r_��_bed", <��:bed:1>, [<��:bed>, <ore:�!>]);
�e.�l("��:��_��", <��:��:6>, [[<��:��:9>, <��:��:9>, <��:��:9>], [<��:��:9>, <��:��:9>, <��:��:9>], [�n, <ore:��>, �n]]);
�e.�q("��:��_��_5_��", <��:�:4> * 9, [<��:�:5>]);
�e.�q("��:��_dye_�r_�k_ink_��", <��:dye:13> * 4, [<ore:�J>, <ore:��>, <ore:��>, <ore:��>]);
�e.�l("��:��_hoe", <��:��_hoe>, [[<ore:��>, <ore:��>], [�n, <ore:��>], [�n, <ore:��>]]);
�e.�l("��:��", <��:��>, [[<��:��>, <��:��>], [<��:��>, <��:��>]]);
�e.�l("��:�U_��", <��:��:3> * 4, [[<��:log:3>]]);
�e.�l("��:�._��_��", <��:�._��_��>, [[<��:��>, <��:��:4>, <��:��>], [<��:��>, <��:��:4>, <��:��>]]);
�e.�l("��:��", <��:��>, [[�n, <ore:��>, �n], [<ore:��>, <ore:��>, <ore:��>], [�n, <ore:��>, �n]]);
�e.�l("��:��_�P", <��:�P:2> * 3, [[<��:��:2>, <��:��:2>]]);
�e.�q("��:�%_��", <��:�%:5>, [<��:�%:9>, <��:��:*>, <��:��:*>]);
�e.�q("��:�%_��_��", <��:�%:7>, [<��:�%:9>, <��:��:*>, <��:��:*>]);
�e.�q("��:��_��", <��:��:4>, [<ore:�+>, <��:��>]);
�e.�l("��:��_��_��", <��:��:2>.��({��: "��"}) * 4, [[<ore:��>, <��:��:2>, <ore:��>], [<��:��:2>, <��:��:2>, <��:��:2>], [<ore:��>, <��:��:2>, <ore:��>]]);
�e.�l("��:��_��_��_��", <��:��_��_��:13> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:��_��", <��:��_��>, [[<��:�_��>, <��:�_��>, <��:�_��>], [<��:�_��>, <��:��>, <��:�_��>], [<��:�_��>, <��:�_��>, <��:�_��>]]);
�e.�l("��:��_�", <��:��_�>, [[�n, <ore:��>, <ore:��>], [�n, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��", <��:��> * 4, [[<��:��>], [<��:��:3>]]);
�e.�l("��:�;_axe", <��:��>, [[<��:��:8>, <��:��:8>], [<��:��:8>, <��:��:*>], [�n, <��:��:*>]]);
�e.�l("��:��_��", <��:��_��> * 16, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:��_�e", <��:��_�e>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �n, <ore:��>], [<ore:��>, �n, <ore:��>]]);
�e.�q("��:��_��_��", <��:��:1>, [<��:��>, <��:��:10>]);
�e.�l("��:��", <��:��>, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>]]);
�e.�l("��:��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>], [<ore:��>], [<ore:��>]]);
�e.�q("��:��", �n, []);
�e.�l("��:��_��_��", <��:��_��:10> * 8, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
�e.�l("��:��_�V_�r_��", <��:��_�V>, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:��_�T", <��:�T:1>, [[<��:��_�\:1>], [<��:��_�\:1>]]);
�e.�q("��:��_�5_1_��", <��:��> * 9, [<��:��:1>]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>, <ore:��>, <ore:��>], [�n, <ore:��>, �n], [�n, <ore:��>, �n]]);
�e.�l("��:��", <��:��>, [[<��:��_��>, <��:��_��>], [<��:��_��>, <��:��_��>]]);
�e.�l("��:��_��", <��:��_��>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:��", <��:��>, [[<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [<ore:oc:��>, <ore:oc:��>, <ore:oc:��>]]);
�e.�q("��:��_dye_�r_��", <��:dye:13>, [<��:red_��:2>]);
�e.�l("��:��_�A_�\", <��:�A_�\:1> * 6, [[<��:��:1>, <��:��:1>, <��:��:1>]]);
�e.�l("��:��", <��:��> * 3, [[<ore:��>, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �n, <ore:��>]]);
�e.�l("��:��_��", <��:��>, [[<��:dye:13> | <��:��:3> | <��:dye:5>, <ore:��>, <��:dye:13> | <��:��:3> | <��:dye:5>], [<ore:��>, <ore:��>, <ore:��>], [<��:dye:13> | <��:��:3> | <��:dye:5>, <ore:��>, <��:dye:13> | <��:��:3> | <��:dye:5>]]);
�e.�q("��:key_��", <��:��_key>, [<��:�v_key>, <��:��_��>]);
�e.�l("��:�_�", <��:�_�>, [[<ore:��>], [<ore:��>]]);
�e.�l("��:��_��", <��:��_��>, [[<��:��>], [<��:��>]]);
�e.�l("��:�A_��_��", <��:�A_��_��>, [[<ore:��>, <ore:��>]]);
�e.�q("��:��_�3_�", <��:�3_�> * 8, [<ore:��>, <��:�5>, <��:�5>, <��:�5>, <��:�5>, <��:�6>, <��:�6>, <��:�6>, <��:�6>]);
�e.�q("��:��_��", <��:��:7>, [<ore:�j>, <��:��>]);
�e.�l("��:��_��_��", <��:�/> * 8, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <��:��:5>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
�e.�l("��:��_�P", <��:�P:1> * 3, [[<��:��:1>, <��:��:1>]]);
�e.�q("��:��_�(_1_��", <��:�)> * 9, [<��:�):1>]);
�e.�l("��:��_bed", <��:bed:7>, [[<��:��:7>, <��:��:7>, <��:��:7>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��", <��:��>, [[<��:��_�L>, <��:��_�L>, <��:��_�L>], [<��:��>, <ore:egg>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:��_��", <��:��_��>, [[�n, <ore:��>, <ore:��>], [�n, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��", <��:��:14>, [[<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <��:��:1>, <��:��:1>], [�n, <ore:��>, �n]]);
�e.�l("��:��_�,", <��:��_�,>, [[<ore:��>, �n, <ore:��>], [<ore:��>, �n, <ore:��>]]);
�e.�l("��:��_��_��", <��:��:2>.��({��: "��"}) * 4, [[<ore:��>, <��:��:1>, <ore:��>], [<��:��:1>, <��:��:1>, <��:��:1>], [<ore:��>, <��:��:1>, <ore:��>]]);
�e.�l("��:�_��", <��:��:4>, [[<��:��:3>, <��:��:3>, <��:��:3>], [�n, <��:��:1>, <��:��>], [<��:��:3>, <��:��:3>, <��:��:3>]]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>, <ore:��>, <ore:��>], [�n, <ore:��>, �n], [<ore:��>, <��:��_�\>, <ore:��>]]);
�e.�q("��:��_�r_��", <��:�t> * 4, [<��:�t:1>]);
�e.�l("��:��_��", <��:��>, [[<��:end_��:*>, <��:end_rod:*>, <��:end_��:*>], [<��:end_��:*>, <��:��_��:*>, <��:end_��:*>], [<��:��:3>, <��:��:3>, <��:��:3>]]);
�e.�l("��:��_��", <��:�b>.��({��: "��:��"}), [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:�b>, <ore:��>], [<ore:��>, <��:��:*>, <ore:��>]]);
�e.�l("��:��_��_��_��", <��:��_��_��:6> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��_�3_�", <��:�3_�:5> * 8, [<ore:��>, <��:�5>, <��:�5>, <��:�5>, <��:�5>, <��:�6>, <��:�6>, <��:�6>, <��:�6>]);
�e.�l("��:��_��_�@", <��:��> * 8, [[<��:��:*>], [�n], [<��:�0>]]);
�e.�l("��:��_�e", <��:��_�e>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �n, <ore:��>], [<ore:��>, �n, <ore:��>]]);
�e.�l("��:�U_�A_�\", <��:�A_�\:3> * 6, [[<��:��:3>, <��:��:3>, <��:��:3>]]);
�e.�q("��:��", <��:��:1> * 4, [<��:��>, <��:��>, <��:��>, <��:��>]);
�e.�l("��:lux_��_red", <��:�>:2>, [[<��:��:17>, <ore:��>, <��:��:17>], [<��:��:17>, <��:�@>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>]]);
�e.�q("��:��_��", <��:��:1>, [<��:��_key>, <��:��_�H>]);
�e.�l("��:��_��", <��:��:3>, [[<��:��:12>, <��:��:12>, <��:��:12>], [<��:��:12>, <��:��:12>, <��:��:12>], [�n, <ore:��>, �n]]);
�e.�l("��:��_��_��_��", <��:��_��_��:4> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�+>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:��_��_��_oak", <��:��:2>.��({��: "��_oak"}) * 4, [[<ore:��>, <��:��:5>, <ore:��>], [<��:��:5>, <��:��:5>, <��:��:5>], [<ore:��>, <��:��:5>, <ore:��>]]);
�e.�q("��:�<_�I", <��:�I:1>, [<��:�I>, <��:��>]);
�e.�l("��:�_��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:�_�:*>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��_��_oak", <��:��:3>.��({��: "��_oak"}) * 2, [[<��:�A_�\:5>, <ore:��>, <��:�A_�\:5>], [<��:�A_�\:5>, <��:�A_�\:5>, <��:�A_�\:5>], [<��:�A_�\:5>, <ore:��>, <��:�A_�\:5>]]);
�e.�l("��:��_��_�U", <��:��:1>.��({��: "�U"}) * 2, [[<��:��:3>, <ore:��>, <��:��:3>], [<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <ore:��>, <��:��:3>]]);
�e.�q("��:�E_��", <��:�E>, [<��:��_��:*>, <��:��_��:*>, <��:��_��:*>]);
�e.�q("��:��", <��:��>, [<ore:��>, <ore:��>, <ore:��>, <ore:��>]);
�e.�l("��:��_��_oak", <��:��:3>.��({��: "oak"}) * 2, [[<��:�A_�\>, <ore:��>, <��:�A_�\>], [<��:�A_�\>, <��:�A_�\>, <��:�A_�\>], [<��:�A_�\>, <ore:��>, <��:�A_�\>]]);
�e.�l("��:�A_��", <��:�A_��>, [[<ore:��>], [<ore:��>], [<ore:��>]]);
�e.�l("��:��_bed", <��:bed:13>, [[<��:��:13>, <��:��:13>, <��:��:13>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��_��_to_�V", <��:��:11> * 9, [<��:��:1>]);
�e.�q("��:��_��", <��:��:3>, [<��:��_key>, <��:��_�H>]);
�e.�q("��:��_�3_�", <��:�3_�:6> * 8, [<ore:�~>, <��:�5>, <��:�5>, <��:�5>, <��:�5>, <��:�6>, <��:�6>, <��:�6>, <��:�6>]);
�e.�l("��:��", <��:��>, [[<ore:��>, �n, <ore:��>], [<ore:��>, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��_��", <��:��_��>, [[<��:�_�>, <ore:��>, <��:�_�>], [<ore:��>, <��:��_��>, <ore:��>], [<��:�>, <ore:��>, <��:�>]]);
�e.�l("��:��_��_��", <��:��_��:1>, [[<��:�W>, <ore:��>, <��:�W>], [<ore:��>, <��:��_��>, <ore:��>], [<��:�>, <ore:��>, <��:�>]]);
�e.�q("��:red_dye_�r_��", <��:dye:1>, [<��:red_��>]);
�e.�q("��:��_�3_�", <��:�3_�:2> * 8, [<ore:��>, <��:�5>, <��:�5>, <��:�5>, <��:�5>, <��:�6>, <��:�6>, <��:�6>, <��:�6>]);
�e.�q("��:��_��", <��:��>, [<��:��:*>, <��:�i:*>]);
�e.�l("��:��_�r", <��:�t:2> * 5, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>]]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>], [<ore:��>], [<ore:��>]]);
�e.�l("��:��", <��:��>, [[<ore:oc:��>, <ore:��>, <ore:oc:��>], [<ore:�N>, �n, <ore:��>], [<ore:��>, <��:�K_�L>, <ore:��>]]);
�e.�l("��:�T_�\", <��:��_�\:1> * 6, [[<��:�T> | <��:�T:1> | <��:�T:2>, <��:�T> | <��:�T:1> | <��:�T:2>, <��:�T> | <��:�T:1> | <��:�T:2>]]);
�e.�l("��:hay_��", <��:hay_��>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:��_�\", <��:��_�\:3> * 6, [[<��:��>, <��:��>, <��:��>]]);
�e.�q("��:��_��", <��:��>, [<��:��_�':*>, <ore:��>, <��:��:*>]);
�e.�l("��:��_��_box", <��:��_��_box>, [[<��:��_��>], [<ore:��>], [<��:��_��>]]);
�e.�l("��:��_��", <��:��:8>, [[<��:��:7>, <��:��:7>, <��:��:7>], [<��:��:7>, <��:��:7>, <��:��:7>], [�n, <ore:��>, �n]]);
�e.�l("��:��_��_��_��_��", <��:��_��_��:3> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�m>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:��_��", <��:��_��>, [[�n, <ore:��>, <ore:��>], [�n, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��", <��:��>, [[<ore:��>, <��:��_��>, <ore:��>], [<��:��_��>, <ore:oc:��>, <ore:�>], [<ore:��>, <��:��_��>, <ore:��>]]);
�e.�q("��:��_��_5_��", <��:�:4> * 9, [<��:�:5>]);
�e.�l("��:��", <��:��>, [[<ore:��>, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��_��_4_��", <��:�:3> * 9, [<��:�:4>]);
�e.�l("��:��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��_��", <��:��_��:7> * 8, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:�j>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
�e.�l("��:��", <��:��> * 16, [[<ore:��>, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �n, <ore:��>]]);
�e.�l("��:��_��_��_��", <��:��_��_��:5> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:��_��_��_oak", <��:��>.��({��: "��_oak"}), [[<��:��:5>, <��:��:5>, <��:��:5>], [�n, <ore:��>, �n], [<��:��:5>, <��:��:5>, <��:��:5>]]);
�e.�q("��:��", <��:��>.��({��: 1 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: [], ��: 0, ��: []}), [<��:��>, <��:��_��>]);
�e.�q("��:��", <��:��>.��({��: 4 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: [], ��: 0, ��: []}), [<��:��>, <��:��>]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>], [<ore:��>], [<ore:��>]]);
�e.�l("��:��_��", <��:��:11>, [[<��:��:4>, <��:��:4>, <��:��:4>], [<��:��:4>, <��:��:4>, <��:��:4>], [�n, <ore:��>, �n]]);
�e.�l("��:�B_� ", <��:�B:2>, [[<ore:��>, <��:��_��_��_��:*>, <ore:��>], [<ore:��>, <��:�B:1>, <ore:��>], [<ore:��>, <��:��_��_��_��:*>, <ore:��>]]);
�e.�l("��:red_bed", <��:bed:14>, [[<��:��:14>, <��:��:14>, <��:��:14>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_oak_��", <��:��_oak_��> * 3, [[<��:��:5>, <��:��>, <��:��:5>], [<��:��:5>, <��:��>, <��:��:5>]]);
�e.�q("��:�", <��:��:28> * 9, [<��:��>]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>], [<ore:��>], [<ore:��>]]);
�e.�l("��:�_�'", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �n, <ore:��>]]);
�e.�l("��:��_��_�K", <��:�b>.��({��: "��:��_�K"}), [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:�K_�L:*>, <ore:��>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�q("��:�", �n, []);
�e.�q("��:�", <��:��>.��({��: 0 as ��, ��: 0 as ��, ��: 1 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: [], ��: 0, ��: []}), [<��:��>, <��:��_��>]);
�e.�q("��:�", <��:��>.��({��: 0 as ��, ��: 0 as ��, ��: 1 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: [], ��: 0, ��: []}), [<��:��>, <��:�_��>]);
�e.�q("��:�", <��:��>.��({��: 0 as ��, ��: 0 as ��, ��: 1 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: [], ��: 0, ��: []}), [<��:��>, <��:��_��>]);
�e.�q("��:�", <��:��>.��({��: 0 as ��, ��: 0 as ��, ��: 1 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: [], ��: 0, ��: []}), [<��:��>, <��:��_��>]);
�e.�l("��:�_can_�	", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:�L:*>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_�q_��", <��:��_�q:1>, [[<ore:��>, <ore:��>, <ore:��>], [<��:��_�V>, <��:��_��>, <��:��_�V>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:red_��_��_��", <��:��_��_��:14> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:��_��_��", <��:��:3>.��({��: "��"}) * 2, [[<��:�A_�\:2>, <ore:��>, <��:�A_�\:2>], [<��:�A_�\:2>, <��:�A_�\:2>, <��:�A_�\:2>], [<��:�A_�\:2>, <ore:��>, <��:�A_�\:2>]]);
�e.�l("��:��_��", <��:��_��>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
�e.�q("��:��_�v", <��:��>, [<��:�v_key>, <��:��_�H>]);
�e.�q("��:�_�", <��:�_�> * 2, [<��:�_rod>]);
�e.�q("��:��_�3_�", <��:�3_�:11> * 8, [<ore:�J>, <��:�5>, <��:�5>, <��:�5>, <��:�5>, <��:�6>, <��:�6>, <��:�6>, <��:�6>]);
�e.�l("��:��_��_��", <��:��_��:11> * 8, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:�J>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
�e.�l("��:��_��_�r_red_��", <��:��_��>, [[�n, <��:��_��>, �n], [<��:��>, <��:��_��>, <��:red_��>], [�n, <��:��>, �n]]);
�e.�l("��:��_�,", <��:��_�,>, [[<ore:��>, �n, <ore:��>], [<ore:��>, �n, <ore:��>]]);
�e.�q("��:�
", �n, []);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�", <��:��>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<��:��_�>, <ore:��>, <��:��_�>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:�_red_�T", <��:red_�T:2> * 4, [[<��:red_�T>, <��:red_�T>], [<��:red_�T>, <��:red_�T>]]);
�e.�l("��:��_��", <��:��:1>, [[<ore:��>], [<ore:��>], [<ore:��>]]);
�e.�q("��:��_�2_��", <��:�0:5> * 4, [<��:�2>, <��:��>, <ore:��>]);
�e.�q("��:��_bed_�r_��_bed", <��:bed:2>, [<��:bed>, <ore:��>]);
�e.�l("��:�_�", <��:��:8>, [[<��:��:3>, <��:��_��:*>, <��:��:3>], [<��:��_��:*>, <��:��:1>, <��:��_��:*>], [<��:��:3>, <��:��:2>, <��:��:3>]]);
�e.�q("��:�", �n, []);
�e.�l("��:�", <��:��>, [[<ore:��>, <��:��>, <ore:��>], [<ore:�N>, <ore:oc:��>, <ore:�N>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��_�_�", <��:��:16>, [[<��:��:10>, <��:��:17>, <��:��:10>], [<��:��:17>, <��:��:15>, <��:��:17>], [<��:��:10>, <��:��:17>, <��:��:10>]]);
�e.�q("��:��_dye_�r_red_��", <��:dye:14> * 2, [<ore:��>, <ore:�+>]);
�e.�l("��:��_�", <��:��_�> * 4, [[<��:��:1>, �n, �n], [<��:��:1>, <��:��:1>, �n], [<��:��:1>, <��:��:1>, <��:��:1>]]);
�e.�l("��:��_��_oak", <��:��:4>.��({��: "oak"}) * 4, [[<ore:��>, <��:�A_�\>, <ore:��>], [<��:�A_�\>, <��:�A_�\>, <��:�A_�\>], [<ore:��>, <��:�A_�\>, <ore:��>]]);
�e.�l("��:��_bed", <��:bed:15>, [[<��:��:15>, <��:��:15>, <��:��:15>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:�", �n, []);
�e.�q("��:��_��_dye_�r_�_�", <��:dye:7>, [<��:red_��:3>]);
�e.�l("��:��_��_�", <��:�b>.��({��: "��:��_�"}), [[<��:�:*>, <��:�:*>, <��:�:*>], [<��:�:*>, <��:�_��:*>, <��:�:*>], [<ore:��>, <��:�b>.��({��: "��:��_�K"}), <ore:��>]]);
�e.�l("��:�", <��:��>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<��:��_�>, <ore:��>, <��:��_�>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�q("��:��_��_dye_�r_��_��", <��:dye:7>, [<��:red_��:6>]);
�e.�q("��:��_��_�", <��:�/:1>, [<��:�/>, <��:�_�:*>]);
�e.�l("��:��_��", <��:��_��>, [[<��:��>, <��:��>], [<��:��>, <��:��>]]);
�e.�l("��:��_�", <��:�2> * 64, [[<��:��_�\>, <��:��_�\>, <��:��_�\>], [<ore:�>, <ore:��>, <ore:�>], [<��:��_�\>, <��:��_�\>, <��:��_�\>]]);
�e.�l("��:��", <��:��> * 4, [[<ore:��>, �n, <ore:��>], [�n, <ore:��>, �n]]);
�e.�l("��:��_to_��", <��:��>, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>]]);
�e.�l("��:��_��_��", <��:�b>.��({��: "��:��_��"}), [[<��:��_��:*>, <��:��_��:*>, <��:��_��:*>], [<��:��_��:*>, <��:��:*>, <��:��_��:*>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:��", <��:��> * 9, [[<��:��_��>]]);
�e.�l("��:��_��_��", <��:�b>.��({��: "��:��_��"}), [[<��:�^_��:*>, <��:�^_��:*>, <��:�^_��:*>], [<��:�^_��:*>, <��:end_rod:*>, <��:�^_��:*>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:��_��_��_��", <��:��_��_��:13> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��_bed_�r_��_bed", <��:bed:13>, [<��:bed>, <ore:�>]);
�e.�l("��:�S", <��:�S>, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:�", <��:��>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:��>, <ore:oc:��>, <ore:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�q("��:��_�3_�", <��:�3_�:15> * 8, [<ore:��>, <��:�5>, <��:�5>, <��:�5>, <��:�5>, <��:�6>, <��:�6>, <��:�6>, <��:�6>]);
�e.�l("��:�", <��:��>, [[<��:��:3>, <��:��:3>, <��:��:3>], [<ore:��>, <��:��>, <ore:��>], [<��:��:3>, <��:��:3>, <��:��:3>]]);
�e.�q("��:��_�3_�", <��:�3_�:10> * 8, [<ore:�>, <��:�5>, <��:�5>, <��:�5>, <��:�5>, <��:�6>, <��:�6>, <��:�6>, <��:�6>]);
�e.�l("��:��_��", <��:��:5>, [[<��:��:10>, <��:��:10>, <��:��:10>], [<��:��:10>, <��:��:10>, <��:��:10>], [�n, <ore:��>, �n]]);
�e.�l("��:��_�P", <��:�P:5> * 3, [[<��:��:5>, <��:��:5>]]);
�e.�l("��:��_��_��", <��:��>.��({��: "��"}), [[<��:��:1>, <��:��:1>, <��:��:1>], [�n, <ore:��>, �n], [<��:��:1>, <��:��:1>, <��:��:1>]]);
�e.�l("��:�", <��:��>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<��:��_�>, <ore:��>, <��:��_�>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�q("��:�", �n, []);
�e.�l("��:��_��", <��:��:2> * 4, [[<��:log:2>]]);
�e.�l("��:��_��_��_��_��", <��:��_��_��:8> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��", <��:��_��> * 2, [[�n, <ore:��>, �n], [<ore:��>, <��:��>, <ore:��>], [�n, <ore:��>, �n]]);
�e.�l("��:tnt_��", <��:tnt_��>, [[<��:tnt>], [<��:��>]]);
�e.�l("��:��_��_��", <��:��_��> * 8, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:��>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
�e.�l("��:red_�P", <��:�P:14> * 3, [[<��:��:14>, <��:��:14>]]);
�e.�l("��:�._��", <��:��:4> * 4, [[<��:��>]]);
�e.�l("��:�A_hoe", <��:�A_hoe>, [[<ore:��>, <ore:��>], [�n, <ore:��>], [�n, <ore:��>]]);
�e.�l("��:�_��_adv", <��:��:5> * 9, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <ore:��>, <��:��:3>], [<��:��:3>, <��:��:3>, <��:��:3>]]);
�e.�q("��:��_��_7_��", <��:�:6> * 9, [<��:�:7>]);
�e.�q("��:�", �n, []);
�e.�q("��:��_�", <��:��:6>, [<��:��:9>, <ore:��>, <ore:��>]);
�e.�q("��:��_��_bed_�r_��_bed", <��:bed:8>, [<��:bed>, <ore:��>]);
�e.�l("��:�^_�", <��:�^_�> * 4, [[<��:�^_��>, �n, �n], [<��:�^_��>, <��:�^_��>, �n], [<��:�^_��>, <��:�^_��>, <��:�^_��>]]);
�e.�q("��:�B_�A_256", <��:�B:1>, [<��:�B:1>]);
�e.�q("��:�B_�A_�", <��:�B:4>, [<��:�B:4>]);
�e.�q("��:��_��", <��:��:11>, [<ore:�J>, <��:��>]);
�e.�l("��:��_�V_to_��", <��:��>, [[<��:��:12>, <��:��:12>, <��:��:12>], [<��:��:12>, <��:��:12>, <��:��:12>], [<��:��:12>, <��:��:12>, <��:��:12>]]);
�e.�q("��:��_gen", <��:��>, [<��:��:1>, <��:��:2>]);
�e.�l("��:��", <��:��>, [[<ore:��>]]);
�e.�l("��:��_��_�.", <��:��:3>.��({��: "�."}) * 2, [[<��:�A_�\:4>, <ore:��>, <��:�A_�\:4>], [<��:�A_�\:4>, <��:�A_�\:4>, <��:�A_�\:4>], [<��:�A_�\:4>, <ore:��>, <��:�A_�\:4>]]);
�e.�l("��:�9", <��:�9>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�", <��:�Q>, [[<ore:��>, <ore:oc:� >, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��_bed", <��:bed:12>, [[<��:��:12>, <��:��:12>, <��:��:12>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_bed", <��:bed:11>, [[<��:��:11>, <��:��:11>, <��:��:11>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��_�P", <��:�P:8> * 3, [[<��:��:8>, <��:��:8>]]);
�e.�l("��:��_��", <��:��:15>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [�n, <ore:��>, �n]]);
�e.�l("��:�_�T", <��:�T:2> * 4, [[<��:�T>, <��:�T>], [<��:�T>, <��:�T>]]);
�e.�l("��:end_�", <��:end_�>, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <��:��_eye>, <ore:�>], [<ore:�>, <��:�_�>, <ore:�>]]);
�e.�l("��:��_��_��", <��:��:7>, [[<��:��:8>, <��:��:8>, <��:��:8>], [<��:��:8>, <��:��:8>, <��:��:8>], [�n, <ore:��>, �n]]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>, <ore:��>, <ore:��>], [�n, <ore:��>, �n], [�n, <ore:��>, �n]]);
�e.�l("��:��_��", <��:��_��> * 4, [[�n, <��:��_��:*>, �n], [<��:��_��:*>, <ore:��>, <��:��_��:*>], [<ore:��>, <ore:�>, <ore:��>]]);
�e.�l("��:�A_axe", <��:�A_axe>, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>], [�n, <ore:��>]]);
�e.�l("��:�", <��:�>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:bow>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_�5_1", <��:��:1>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:��_��_��_��", <��:��_��_��:9> * 16, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
�e.�l("��:��_��_�.", <��:��:2>.��({��: "�."}) * 4, [[<ore:��>, <��:��:4>, <ore:��>], [<��:��:4>, <��:��:4>, <��:��:4>], [<ore:��>, <��:��:4>, <ore:��>]]);
�e.�l("��:�_�	", <��:�_�	>, [[<ore:�>, <ore:�>, <ore:�>], [<��:�Y>, <��:�Y>, <��:�Y>], [<��:�A_�\> | <��:�A_�\:1> | <��:�A_�\:2> | <��:�A_�\:3> | <��:�A_�\:4> | <��:�A_�\:5>, <��:�A_�\> | <��:�A_�\:1> | <��:�A_�\:2> | <��:�A_�\:3> | <��:�A_�\:4> | <��:�A_�\:5>, <��:�A_�\> | <��:�A_�\:1> | <��:�A_�\:2> | <��:�A_�\:3> | <��:�A_�\:4> | <��:�A_�\:5>]]);
�e.�l("��:�Y_�", <��:�Y_�> * 4, [[<��:�Y_��> | <��:�Y_��:1> | <��:�Y_��:2>, �n, �n], [<��:�Y_��> | <��:�Y_��:1> | <��:�Y_��:2>, <��:�Y_��> | <��:�Y_��:1> | <��:�Y_��:2>, �n], [<��:�Y_��> | <��:�Y_��:1> | <��:�Y_��:2>, <��:�Y_��> | <��:�Y_��:1> | <��:�Y_��:2>, <��:�Y_��> | <��:�Y_��:1> | <��:�Y_��:2>]]);
�e.�l("��:��_�P", <��:�P> * 3, [[<��:��>, <��:��>]]);
�e.�l("��:��_��", <��:��:1> * 4, [[<��:log:1>]]);
�e.�q("��:�B_�A_16", <��:�B>, [<��:�B>]);
�e.�l("��:red_��_��", <��:��_��:14> * 8, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:��>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
�e.�l("��:��_��_�A", <��:�/:2> * 8, [[<��:�>, <��:�>, <��:�>], [<��:�>, <��:��:5>, <��:�>], [<��:�>, <��:�>, <��:�>]]);
�e.�l("��:�^_�\", <��:�^_�\> * 6, [[<��:�^_��>, <��:�^_��>, <��:�^_��>]]);
�e.�l("��:��_�P", <��:�P:13> * 3, [[<��:��:13>, <��:��:13>]]);
�e.�q("��:��_��_2_��", <��:�:1> * 9, [<��:�:2>]);
�e.�q("��:� _�!_�"_0", <��:�>, [<ore:�>, <��:�:*>, <ore:�>]);
�e.�l("��:�", <��:�>, [[<��:��:3>, <��:��>, <��:��:3>], [<��:��:3>, <��:�S>, <��:��:3>], [<��:��:3>, <��:��>, <��:��:3>]]);
�e.�q("��:� _�!_�"_1", <��:�:1>, [<��:��:*>, <��:�:*>, <��:��:*>]);
�e.�l("��:�_�", <��:�_�> * 2, [[<ore:��>], [<ore:��>], [<ore:��>]]);
�e.�q("��:�_��", <��:�_��>, [<ore:��>, <��:�_�>]);
�e.�q("��:� _�!_�"_4", <��:�:4>, [<ore:��>, <��:�:*>, <ore:��>]);
�e.�l("��:��", <��:��>, [[<ore:��>, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [�n, <ore:��>, �n]]);
�e.�q("��:� _�!_�"_5", <��:�:5>, [<��:��>, <��:�:*>, <��:��:1>]);
�e.�l("��:�#", <��:�:20>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<��:��_�>, <ore:oc:�>, <��:��_�>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�q("��:� _�!_�"_2", <��:�:2>, [<ore:�>, <��:�:*>, <ore:�~>]);
�e.�q("��:� _�!_�"_3", <��:�:3>, [<��:��:*>, <��:�:*>, <��:��:*>]);
�e.�l("��:��_��", <��:��_��> * 4, [[�n, <��:��_��:*>, �n], [<��:��_��:*>, <ore:��>, <��:��_��:*>], [<ore:��>, <ore:�>, <ore:��>]]);
�e.�l("��:��_��_��", <��:��:3>.��({��: "��"}) * 2, [[<��:�A_�\:1>, <ore:��>, <��:�A_�\:1>], [<��:�A_�\:1>, <��:�A_�\:1>, <��:�A_�\:1>], [<��:�A_�\:1>, <ore:��>, <��:�A_�\:1>]]);
�e.�q("��:��_�V", <��:��>, []);
�e.�q("��:��_�6_��", <��:�6> * 9, [<��:�>]);
�e.�l("��:��_1", <��:��:1>, [[�n, <��:��>, �n], [<��:��_��>, <��:�_��>, <��:��_��>], [�n, <��:��>, �n]]);
�e.�l("��:��_��", <��:��:2>, [[<��:��:13>, <��:��:13>, <��:��:13>], [<��:��:13>, <��:��:13>, <��:��:13>], [�n, <ore:��>, �n]]);
�e.�l("��:��_2", <��:��:2>, [[�n, <��:��:1>, �n], [<��:�_��>, <��:��_��>, <��:�_��>], [�n, <��:��:1>, �n]]);
�e.�l("��:��_3", <��:��:3>, [[�n, <��:��:2>, �n], [<��:��_��>, <��:��_��>, <��:��_��>], [�n, <��:��:2>, �n]]);
�e.�l("��:�$", <��:�:17>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:oc:�>, <ore:oc:�>, <ore:oc:�>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��_4", <��:��:4>, [[�n, <��:��:3>, �n], [<��:��_��>, <��:�__��>, <��:��_��>], [�n, <��:��:3>, �n]]);
�e.�l("��:��_�q_��", <��:��_�q:3>, [[<ore:��>, <ore:��>, <ore:��>], [<��:��>, <��:��_��>, <��:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�%", <��:�:19>, [[<ore:��>, <ore:oc:�>, <ore:��>], [<ore:oc:�>, <ore:oc:��>, <ore:oc:�>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��_��_��", <��:��_��:2> * 8, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:��>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
�e.�l("��:��_��", <��:��_��>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��_eye>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:��_��_1", <��:�:1>, [[<��:�>, <��:�>, <��:�>], [<��:�>, <��:�>, <��:�>], [<��:�>, <��:�>, <��:�>]]);
�e.�l("��:�_��", <��:�_��> * 9, [[<ore:��>]]);
�e.�l("��:��_��_2", <��:�:2>, [[<��:�:1>, <��:�:1>, <��:�:1>], [<��:�:1>, <��:�:1>, <��:�:1>], [<��:�:1>, <��:�:1>, <��:�:1>]]);
�e.�l("��:��_0", <��:��>, [[�n, <��:��:4>, �n], [<��:��:4>, <��:��_��>, <��:��:4>], [�n, <��:��:4>, �n]]);
�e.�l("��:��_�", <��:��_�> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��_3", <��:�:3>, [[<��:�:2>, <��:�:2>, <��:�:2>], [<��:�:2>, <��:�:2>, <��:�:2>], [<��:�:2>, <��:�:2>, <��:�:2>]]);
�e.�l("��:�&", <��:�:10>, [[<ore:oc:��>, <��:��_��>, <ore:oc:��>], [�n, <ore:oc:��>, �n]]);
�e.�l("��:�u_�", <��:�u_�>, [[<��:�u>, <��:�u>, <��:�u>], [<��:�u>, <��:�u>, <��:�u>], [�n, <��:��>, �n]]);
�e.�l("��:��_��_4", <��:�:4>, [[<��:�:3>, <��:�:3>, <��:�:3>], [<��:�:3>, <��:�:3>, <��:�:3>], [<��:�:3>, <��:�:3>, <��:�:3>]]);
�e.�l("��:�'", <��:�:11>, [[<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [<ore:oc:��>, <ore:oc:��>, <ore:oc:��>]]);
�e.�l("��:��_��_5", <��:�:5>, [[<��:�:4>, <��:�:4>, <��:�:4>], [<��:�:4>, <��:�:4>, <��:�:4>], [<��:�:4>, <��:�:4>, <��:�:4>]]);
�e.�l("��:�(", <��:�:8>, [[<ore:oc:��>, <��:��_��>, <ore:oc:��>], [�n, <ore:oc:��>, �n]]);
�e.�l("��:��_�", <��:��_�>, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>]]);
�e.�l("��:�)", <��:�:9>, [[<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [�n, <ore:oc:��>, �n]]);
�e.�l("��:�*", <��:�>, [[<ore:��>, <��:�>, <ore:��>], [<��:��_eye>, <ore:oc:��>, <��:��_eye>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:�+", <��:�:15>, [[<ore:��>, <ore:oc:�>, <ore:��>], [<ore:oc:��>, <ore:oc:� >, <ore:oc:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:�,", <��:��:28> * 16, [[<ore:�6>, <��:�>, <ore:�6>], [<��:�>, <��:��:1>, <��:�>], [<ore:�6>, <��:�b_�L>, <ore:�6>]]);
�e.�l("��:�-", <��:�:16>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:oc:��>, <ore:oc:�!>, <ore:oc:�">], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:�.", <��:�:13>, [[<ore:��>, <ore:oc:�#>, <ore:��>], [<ore:oc:��>, <ore:oc:�!>, <ore:oc:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:�/", <��:�:14>, [[<ore:��>, <ore:oc:�$>, <ore:��>], [<ore:oc:��>, <ore:oc:�>, <ore:oc:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��_�5", <��:��>, [[<��:�5>, <��:�5>, <��:�5>], [<��:�5>, <��:�5>, <��:�5>], [<��:�5>, <��:�5>, <��:�5>]]);
�e.�l("��:�0", <��:��:24>, [[<ore:oc:�%>, <��:�>, <ore:oc:�%>], [<ore:oc:��>, <ore:oc:�&>, <ore:oc:��>], [<ore:oc:�%>, <ore:oc:� >, <ore:oc:�%>]]);
�e.�l("��:�'", <��:�'>, [[<��:��>, <��:��>, <��:��>], [<��:�W>, <ore:��>, <��:�W>], [<��:��>, <ore:��>, <��:��>]]);
�e.�l("��:�1", <��:��:23>, [[<ore:oc:�%>, <��:�>, <ore:oc:�%>], [<ore:oc:��>, <ore:oc:�)>, <ore:oc:��>], [<ore:oc:�%>, <ore:oc:�>, <ore:oc:�%>]]);
�e.�q("��:�2", <��:��:27>, [<ore:��>, <ore:��>, <ore:�+>, <ore:��>, <ore:oc:�+>]);
�e.�l("��:�3", <��:��:26>, [[<��:��_��>, <��:�>, <��:��_��>], [<ore:oc:� >, <��:�L>, <ore:oc:� >], [<��:��_��>, <ore:oc:��>, <��:��_��>]]);
�e.�q("��:��_dye_�r_�k_red_��", <��:dye:13> * 3, [<ore:�J>, <ore:��>, <ore:�~>]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �n, <ore:��>]]);
�e.�l("��:��_axe", <��:��_axe>, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>], [�n, <ore:��>]]);
�e.�l("��:��_��_��_��", <��:��_��_��:11> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�J>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:�,", <��:�,>, [[<��:�,_�->, <��:�,_�->], [<��:�,_�->, <��:�,_�->]]);
�e.�q("��:��_bed_�r_��_bed", <��:bed:5>, [<��:bed>, <ore:��>]);
�e.�q("��:�_�", <��:��>, [<��:��:*>, <ore:��>, <ore:��>, <ore:��>, <ore:��>]);
�e.�l("��:�4", <��:�:7>, [[<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [�n, <ore:oc:��>, �n]]);
�e.�l("��:�5_��", <��:��:4> * 4, [[<ore:�/>, <ore:�/>], [<ore:�/>, <ore:�/>]]);
�e.�l("��:�6", <��:�:5>, [[<ore:��>, <��:�>, <ore:��>], [<ore:oc:��>, <ore:oc:��>, �n], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:�7", <��:�:6>, [[<ore:oc:��>, <��:��_��>, <ore:oc:��>], [�n, <ore:oc:��>, �n]]);
�e.�l("��:��_�\", <��:��_�\> * 6, [[<��:��>, <��:��>, <��:��>]]);
�e.�l("��:��_bed", <��:bed:5>, [[<��:��:5>, <��:��:5>, <��:��:5>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�8", <��:��:1>, [[<��:��_��>, <ore:��>, <��:��_��>], [<��:��_�>, <ore:oc:�Q>, <��:��_�>], [<��:��_��>, <ore:��>, <��:��_��>]]);
�e.�l("��:�9", <��:�>, [[<��:��_��>, <��:�>, <��:��_��>], [<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [<��:��_��>, <ore:oc:��>, <��:��_��>]]);
�e.�l("��:�:", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:oc:��>, <��:�8_�9>, <ore:oc:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�;", <��:��:3>, [[<��:��_��>, <ore:oc:�Q>, <��:��_��>], [<ore:oc:�Q>, <ore:��>, <ore:oc:�Q>], [<��:��_��>, <ore:oc:�Q>, <��:��_��>]]);
�e.�l("��:�<", <��:��:2>, [[<��:��_��>, <ore:oc:�Q>, <��:��_��>], [<��:��_�>, <ore:��>, <��:��_�>], [<��:��_��>, <ore:oc:�Q>, <��:��_��>]]);
�e.�l("��:��_5", <��:��:5>, [[�n, <��:��:4>, �n], [<��:�__��>, <��:�2_��>, <��:�__��>], [�n, <��:��:4>, �n]]);
�e.�l("��:�=", <��:�:3>, [[<��:��_��>, <��:�>, <��:��_��>], [<ore:oc:��>, <ore:oc:��>, �n], [<��:��_��>, <ore:oc:��>, <��:��_��>]]);
�e.�l("��:�>", <��:��:5>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:�N>, <ore:��>, �n], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��_6", <��:��:6>, [[�n, <��:��:5>, �n], [<��:�2_��>, <��:�3>, <��:�2_��>], [�n, <��:��:5>, �n]]);
�e.�l("��:�?", <��:�:4>, [[<ore:��>, <��:�>, <ore:��>], [<ore:oc:��>, <ore:oc:��>, �n], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:�@", <��:��:4>, [[<ore:��>, <ore:�>, <ore:��>], [<ore:oc:��>, <��:��_eye>, <ore:oc:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��_7", <��:��:7>, [[�n, <��:��:6>, �n], [<��:�3>, <��:��_��>, <��:�3>], [�n, <��:��:6>, �n]]);
�e.�l("��:�A", <��:�:1>, [[<ore:��>, <��:�>, <ore:��>], [<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��_8", <��:��:8>, [[�n, <��:��:7>, �n], [<��:��_��>, <��:��_�V>, <��:��_��>], [�n, <��:��:7>, �n]]);
�e.�l("��:�B", <��:�:2>, [[<ore:��>, <��:�>, <ore:��>], [<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:�C", <��:��:6>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:�N>, <ore:��>, �n], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:�U_�", <��:�U_�> * 4, [[<��:��:3>, �n, �n], [<��:��:3>, <��:��:3>, �n], [<��:��:3>, <��:��:3>, <��:��:3>]]);
�e.�q("��:��_�(_2_��", <��:�):1> * 9, [<��:�):2>]);
�e.�l("��:�
_oak", <��:�
> * 4, [[<ore:��>, <��:��>, <ore:��>], [<��:��>, <��:��>, <��:��>], [<ore:��>, <��:��>, <ore:��>]]);
�e.�l("��:��_�V_to_��", <��:��:2>, [[<��:��:17>, <��:��:17>, <��:��:17>], [<��:��:17>, <��:��:17>, <��:��:17>], [<��:��:17>, <��:��:17>, <��:��:17>]]);
�e.�q("��:��_dye_�r_�D", <��:dye:13> * 2, [<��:��_��:1>]);
�e.�l("��:�4", <��:�4:1>, [[<��:�>, <��:�>, <��:�>], [<��:�>, �n, <��:�>], [<��:�>, <��:�>, <��:�>]]);
�e.�q("��:��_bed_�r_��_bed", <��:bed:10>, [<��:bed>, <ore:�>]);
�e.�q("��:��_��", <��:��:5>, [<ore:��>, <��:��>]);
�e.�q("��:��_��_��", <��:��:8>, [<ore:��>, <��:��>]);
�e.�l("��:��_��_�P", <��:�P:3> * 3, [[<��:��:3>, <��:��:3>]]);
�e.�l("��:��_��_��", <��:�b>.��({��: "��:��_��"}), [[<��:dye:4>, <��:dye:4>, <��:dye:4>], [<��:dye:4>, <��:�_��:*>, <��:dye:4>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:�E_��", <��:�5>, [[<��:��:*>, <��:��:*>, <��:��:*>], [<��:��:*>, <��:��:*>, <��:��:*>], [<��:��:*>, <��:��:*>, <��:��:*>]]);
�e.�q("��:�_��", <��:�6>, [<ore:��>, <��:�7>, <ore:��>]);
�e.�q("��:�F", <��:�8>, [<��:�8>, <��:�q>]);
�e.�l("��:�G_�v", <��:�9>, [[<��:��>, <��:��>, <��:��>], [<��:�9>, <ore:��>, <��:�9>], [<��:��>, <ore:��>, <��:��>]]);
�e.�q("��:�B_�A_��", <��:�B:3>, [<��:�B:3>]);
�e.�l("��:��_��_��", <��:��:12>, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <��:��:3>, <��:��:3>], [�n, <ore:��>, �n]]);
�e.�l("��:�H_�!", <��:�I:1>, [[<ore:��>, <ore:��>, <ore:��>], [<��:��>.��({��: {id: "��:�H"}, No_��: 1 as ��}), <��:�I>, <��:��_��:*>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�J_��", <��:�:>, [[�n, <ore:��>, <ore:��>], [�n, <��:�t:1>, <ore:��>], [<��:�t:1>, �n, �n]]);
�e.�l("��:�<_��_��", <��:��_��:1> * 6, [[<��:�<_��>, <��:�<_��>, <��:�<_��>], [<��:�<_��>, <��:�<_��>, <��:�<_��>]]);
�e.�q("��:��_dye_�r_��_and_��", <��:dye:13> * 2, [<ore:�>, <ore:�~>]);
�e.�l("��:�_�K", <��:��:1> * 3, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:2>, <��:��>, <��:��:2>]]);
�e.�l("��:red_��", <��:��:1>, [[<��:��:14>, <��:��:14>, <��:��:14>], [<��:��:14>, <��:��:14>, <��:��:14>], [�n, <ore:��>, �n]]);
�e.�l("��:�^_�=", <��:�^_�=>, [[<��:�^_�\>], [<��:�^_�\>]]);
�e.�l("��:�>_��_��_��", <��:�>_��_��_��>, [[<ore:��>, <ore:��>]]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>], [<ore:��>], [<ore:��>]]);
�e.�l("��:��_��_��", <��:��_��:6> * 8, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:�~>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
�e.�l("��:��_�e", <��:��_�e>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �n, <ore:��>], [<ore:��>, �n, <ore:��>]]);
�e.�l("��:�'_�L", <��:�?>, [[<��:��>, <��:��>, <��:��>], [<��:�W>, <ore:��>, <��:�W>], [<��:��>, <ore:��>, <��:��>]]);
�e.�l("��:�M", <��:�@>, [[<ore:oc:��>, <ore:��>, <ore:oc:��>], [<ore:oc:��>, <ore:��>, <ore:oc:��>], [<ore:��>, <��:��_��>, <ore:��>]]);
�e.�l("��:��_��", <��:��:10>, [[<��:��:5>, <��:��:5>, <��:��:5>], [<��:��:5>, <��:��:5>, <��:��:5>], [�n, <ore:��>, �n]]);
�e.�l("��:� _��", <��:�A>, [[�n, <ore:��>, �n], [<��:��:*>, <��:��:*>, <��:��:*>]]);
�e.�l("��:��_��_��", <��:��_��_��>, [[<ore:��>, <ore:��>]]);
�e.�l("��:�l", <��:�l>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��_��_��", <��:��_��_��:4> * 16, [[<ore:�?>, <ore:�?>, <ore:�?>], [<ore:�?>, <ore:�?>, <ore:�?>]]);
�e.�l("��:�_�C", <��:�_�C>, [[�n, <ore:��>, �n], [<ore:��>, <ore:��>, <ore:��>], [�n, <ore:��>, �n]]);
�e.�l("��:��_�P", <��:�P:15> * 3, [[<��:��:15>, <��:��:15>]]);
�e.�q("��:�N", <��:��:29> * 6, [<ore:oc:�D>, <ore:��>]);
�e.�l("��:end_rod", <��:end_rod> * 4, [[<��:�_rod>], [<��:�__�`_�a>]]);
�e.�q("��:key_��", <��:��_key>, [<��:�v_key>, <��:��_eye>]);
�e.�l("��:�O", <��:�E>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��_�_�P", <��:��_�>, [[<��:�>, <ore:��>, <��:�>], [<ore:��>, <��:��_��>, <ore:��>], [<��:�>, <ore:��>, <��:�>]]);
�e.�l("��:�%_�'", <��:�%>, [[<��:��_��:*>, <��:�%:9>, <��:��_��:*>], [<ore:��>, <��:�W:*>, <ore:��>]]);
�e.�q("��:�<_��", <��:�<_��>, [<ore:��>, <��:��>]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �n, <ore:��>]]);
�e.�l("��:�", <��:�> * 2, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��_��_dye_�r_��_�Q", <��:dye:12>, [<��:red_��:1>]);
�e.�l("��:��_��_�@", <��:�0> * 4, [[<ore:��>, <��:�2>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��_��", <��:��:4>.��({��: "��"}) * 4, [[<ore:��>, <��:�A_�\:2>, <ore:��>], [<��:�A_�\:2>, <��:�A_�\:2>, <��:�A_�\:2>], [<ore:��>, <��:�A_�\:2>, <ore:��>]]);
�e.�l("��:��_one_�F", <��:��_one_�F>, [[<ore:��>, <ore:��>, <ore:��>], [<��:�|>, <��:��_��>, <��:�|>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��_��", <��:��:1>.��({��: "��"}) * 2, [[<��:��:1>, <ore:��>, <��:��:1>], [<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <ore:��>, <��:��:1>]]);
�e.�l("��:��_��", <��:�G> * 8, [[<��:��:*>, <��:��:*>, <��:��:*>], [<��:��:*>, <��:�t:1>, <��:��:*>], [<��:��:*>, <��:��:*>, <��:��:*>]]);
�e.�l("��:�H", <��:�H>, [[<��:��>, <��:��>, <��:��>]]);
�e.�q("��:�I", <��:�I>, [<��:�l:*>, <ore:��>, <��:�J_eye:*>]);
�e.�l("��:�", <��:�> * 4, [[<��:��> | <��:��:1>], [<ore:��>]]);
�e.�l("��:�._�g", <��:�._�g>, [[<��:��:4>, �n, <��:��:4>], [<��:��:4>, <��:��:4>, <��:��:4>]]);
�e.�l("��:��", <��:��>, [[<ore:��>], [<ore:��>]]);
�e.�q("��:��_�R", <��:��> * 8, [<��:��_��:*>, <��:�F:*>]);
�e.�l("��:�t_��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [�n, <ore:��>, �n]]);
�e.�l("��:lux_��_��", <��:�>:1>, [[<��:��:17>, <ore:��>, <��:��:17>], [<��:��:17>, <��:�@>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>]]);
�e.�l("��:��_��_�.", <��:��>.��({��: "�."}), [[<��:��:4>, <��:��:4>, <��:��:4>], [�n, <ore:��>, �n], [<��:��:4>, <��:��:4>, <��:��:4>]]);
�e.�q("��:��_��_dye_�r_��_��", <��:dye:7> * 2, [<ore:�j>, <ore:��>]);
�e.�l("��:��_��_��_��", <��:��_��_��> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:map", <��:map>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:�>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�	_��", <��:�	_��> * 6, [[<ore:��>, �n, <ore:��>], [<ore:��>, <��:��_��_��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_bed", <��:bed:6>, [[<��:��:6>, <��:��:6>, <��:��:6>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�L", <��:�L>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [�n, <ore:��>, �n]]);
�e.�l("��:�S_�!", <��:�I>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��>.��({��: {id: "��:�S"}, No_��: 1 as ��}), <ore:��>], [<��:��>, <ore:��>, <��:��>]]);
�e.�l("��:�T", <��:�N>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:�>, <ore:oc:��>, <ore:�>], [<ore:��>, <ore:�J>, <ore:��>]]);
�e.�q("��:��_��", <��:�P>, [<ore:�>, <ore:��>, <��:��:*>, <ore:�R>, <ore:��>, <ore:�S>, <��:��_��:*>, <ore:�z>]);
�e.�l("��:��_��_��", <��:��>.��({��: "��"}), [[<��:��:2>, <��:��:2>, <��:��:2>], [�n, <ore:��>, �n], [<��:��:2>, <��:��:2>, <��:��:2>]]);
�e.�l("��:��_��", <��:��>, [[<��:��:15>, <��:��:15>, <��:��:15>], [<��:��:15>, <��:��:15>, <��:��:15>], [�n, <ore:��>, �n]]);
�e.�q("��:��_�5_��", <��:�5> * 9, [<��:��>]);
�e.�l("��:�T", <��:�T>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��> | <��:��:1> | <��:��:2> | <��:��:3> | <��:��:4> | <��:��:5> | <��:��:6> | <��:��:7> | <��:��:8> | <��:��:9> | <��:��:10> | <��:��:11> | <��:��:12> | <��:��:13> | <��:��:14> | <��:��:15>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>], [<ore:��>], [<ore:��>]]);
�e.�l("��:��_��_�\", <��:��_�\:5> * 6, [[<��:�I> | <��:�I:1> | <��:�I:2> | <��:�I:3>, <��:�I> | <��:�I:1> | <��:�I:2> | <��:�I:3>, <��:�I> | <��:�I:1> | <��:�I:2> | <��:�I:3>]]);
�e.�l("��:�U", <��:�U> * 3, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [�n, <ore:��>, �n]]);
�e.�l("��:�I", <��:�I> * 4, [[<��:��>, <��:��>], [<��:��>, <��:��>]]);
�e.�q("��:��_��_�r_��", <��:dye:15> * 3, [<ore:��>]);
�e.�l("��:lux_��_��", <��:�>:5>, [[<��:��:17>, <ore:�>, <��:��:17>], [<��:��:17>, <��:�@>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>]]);
�e.�q("��:�U", <��:�V:1>, [<��:�V:1>, <��:�q>]);
�e.�l("��:��_�'", <��:��_�'>, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>]]);
�e.�q("��:�V", <��:�V>, [<��:�V>, <��:�q>]);
�e.�l("��:�_�K", <��:��:2>, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <��:��>, <��:��:3>], [<��:��:3>, <ore:��>, <��:��:3>]]);
�e.�q("��:��_��_��", <��:��:3>, [<ore:�m>, <��:��>]);
�e.�l("��:�B_16", <��:�B>, [[<ore:��>, <��:��_�\:3> | <��:��_�\>, <ore:��>], [<ore:��>, <��:��:*>, <ore:��>], [<ore:��>, <��:��_�\:3> | <��:��_�\>, <ore:��>]]);
�e.�l("��:�W", <��:�W>, [[<ore:��>, <��:��_��:*>, <ore:��>], [<��:��_��:*>, <��:�X>, <��:��_��:*>], [<ore:��>, <��:��_��:*>, <ore:��>]]);
�e.�q("��:��_��", <��:��:1>, [<ore:�!>, <��:��>]);
�e.�q("��:��_bed_�r_��_bed", <��:bed:15>, [<��:bed>, <ore:��>]);
�e.�l("��:��_�P", <��:�P:6> * 3, [[<��:��:6>, <��:��:6>]]);
�e.�l("��:��_oak_�A_�\", <��:�A_�\:5> * 6, [[<��:��:5>, <��:��:5>, <��:��:5>]]);
�e.�l("��:��_��_��_��", <��:��_��_��:1> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�!>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:�._�", <��:�._�> * 4, [[<��:��:4>, �n, �n], [<��:��:4>, <��:��:4>, �n], [<��:��:4>, <��:��:4>, <��:��:4>]]);
�e.�l("��:�b_��", <��:�b>.��({��: "��:��"}), [[<ore:�X>, <ore:�X>, <ore:�X>], [<ore:�X>, <��:�b>, <ore:�X>], [<ore:�X>, <ore:�X>, <ore:�X>]]);
�e.�l("��:��_��", <��:��_��> * 3, [[<��:��:2>, <��:��:2>], [<��:��:2>, <��:��:2>], [<��:��:2>, <��:��:2>]]);
�e.�l("��:��", <��:��>, [[<��:��_��>, <��:��_��>, <��:��_��>], [�n, <ore:��>, �n], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�_�V_�r_��", <��:�_�V>, [[<��:�_��>, <��:�_��>, <��:�_��>], [<��:�_��>, <��:�_��>, <��:�_��>], [<��:�_��>, <��:�_��>, <��:�_��>]]);
�e.�l("��:��_�V_�r_��", <��:��_�V> * 9, [[<��:��_��>]]);
�e.�l("��:�Y_��", <��:�Z>, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <��:��_��:*>, <��:��:3>], [<��:��:3>, <��:��>, <��:��:3>]]);
�e.�q("��:��_�r", <��:�t:1>, []);
�e.�q("��:��_�6_1_��", <��:�> * 9, [<��:�:1>]);
�e.�l("��:�_�Z", <��:��:1>, [[�n, <��:�_�:*>, �n], [<��:�_�:*>, <ore:��>, <��:�_�:*>], [�n, <��:�_�:*>, �n]]);
�e.�l("��:�[_bow", <��:�[>, [[�n, <��:��:8>, <ore:��>], [<ore:��>, �n, <ore:��>], [�n, <��:��:8>, <ore:��>]]);
�e.�l("��:��_��_�.", <��:��:4>.��({��: "�."}) * 4, [[<ore:��>, <��:�A_�\:4>, <ore:��>], [<��:�A_�\:4>, <��:�A_�\:4>, <��:�A_�\:4>], [<ore:��>, <��:�A_�\:4>, <ore:��>]]);
�e.�l("��:��_bed", <��:bed:1>, [[<��:��:1>, <��:��:1>, <��:��:1>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�\", <��:�]> * 4, [[<ore:��>, <ore:oc:�^>, <ore:��>], [<ore:oc:�^>, <ore:��>, <ore:oc:�^>], [<ore:��>, <ore:oc:�^>, <ore:��>]]);
�e.�q("��:�_", <��:�_>, [<��:�l:*>, <��:��>, <��:��:*>]);
�e.�l("��:��_��", <��:��_��>, [[<��:��>, <��:��>], [<��:��>, <��:��>]]);
�e.�l("��:��_��_��", <��:�b>.��({��: "��:��_��"}), [[<��:dye:9>, <��:dye:9>, <��:dye:9>], [<��:dye:9>, <��:��:6>, <��:dye:9>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:�]", <��:�`>, [[<ore:��>, <ore:�a>, <ore:��>], [<ore:�N>, <ore:oc:��>, <ore:�N>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:�A_��", <��:�A_��>, [[<ore:��>], [<ore:��>], [<ore:��>]]);
�e.�l("��:��_��_��", <��:��_��_��>, [[<��:��>, <��:��:2>, <��:��>], [<��:��>, <��:��:2>, <��:��>]]);
�e.�l("��:�%_��", <��:�%:9>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:�b>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�c", <��:�c>, [[�n, �n, <ore:��>], [�n, <��:��_�H:*>, �n], [<ore:��>, �n, �n]]);
�e.�l("��:�^", <��:��:�e> * 4, [[�n, <��:��_��>, �n], [<��:��_��>, <��:�>, <��:��_��>], [�n, <��:��_��>, �n]]);
�e.�l("��:lux_��_��", <��:�>:7>, [[<��:��:17>, <ore:��>, <��:��:17>], [<��:��:17>, <��:�@>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>]]);
�e.�l("��:��_��", <��:��_��> * 3, [[<��:��:1>, <��:��:1>], [<��:��:1>, <��:��:1>], [<��:��:1>, <��:��:1>]]);
�e.�l("��:��_bed", <��:bed:9>, [[<��:��:9>, <��:��:9>, <��:��:9>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_on_a_��", <��:��_on_a_��>, [[<��:�c_rod>, �n], [�n, <��:��>]]);
�e.�l("��:red_��_��_��", <��:��_��_��:14> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��_��", <��:��:12>, [<ore:�>, <��:��>]);
�e.�l("��:�_", <��:�q:4>, [[<ore:oc:��>, <ore:oc:�h>, <ore:��>], [<ore:oc:��>, <ore:oc:�h>, <ore:�N>], [<ore:oc:��>, <ore:oc:�h>, <ore:��>]]);
�e.�l("��:�`", <��:�q:3>, [[<ore:oc:��>, <ore:oc:�h>, <ore:��>], [<ore:oc:��>, <ore:oc:�h>, <ore:�N>], [<ore:oc:��>, <ore:oc:�h>, <ore:��>]]);
�e.�l("��:�a", <��:�q:2>, [[<ore:oc:��>, <ore:oc:�h>, <ore:��>], [<ore:oc:��>, <ore:oc:�h>, <ore:�N>], [<ore:oc:��>, <ore:oc:�h>, <ore:��>]]);
�e.�l("��:�b", <��:�q:1>, [[<��:��_��>, <��:��>, <��:��_��>], [<ore:��>, <ore:oc:�h>, <ore:��>], [<��:��_��>, <ore:��>, <��:��_��>]]);
�e.�l("��:�c", <��:�q>, [[<ore:��>, <ore:oc:� >, <ore:��>], [<ore:��>, <ore:oc:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_bed", <��:bed:10>, [[<��:��:10>, <��:��:10>, <��:��:10>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�
_�U", <��:�
:3> * 4, [[<ore:��>, <��:��:3>, <ore:��>], [<��:��:3>, <��:��:3>, <��:��:3>], [<ore:��>, <��:��:3>, <ore:��>]]);
�e.�l("��:��_��", <��:��:2>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�j", <��:�j> * 8, [[<��:��>, <��:dye:3>, <��:��>]]);
�e.�q("��:�_eye", <��:��:2>, [<��:��_��:*>, <ore:��>, <��:��>]);
�e.�q("��:�d", <��:��:1>, [<��:��:*>, <ore:��>]);
�e.�l("��:��_��_�|", <��:�b>.��({��: "��:��_�|"}), [[<��:�_rod:*>, <��:�_rod:*>, <��:�_rod:*>], [<��:�_rod:*>, <��:��_��:*>, <��:�_rod:*>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�q("��:�e", <��:��:2>, [<��:��:*>, <ore:�>]);
�e.�l("��:�k_�f", <��:dye:4> * 9, [[<��:�k_��>]]);
�e.�l("��:��_oak_��", <��:��:5> * 4, [[<��:��:1>]]);
�e.�q("��:�g", <��:��>, [<��:��:*>, <ore:��>]);
�e.�q("��:��_�3_�", <��:�3_�:1> * 8, [<ore:�!>, <��:�5>, <��:�5>, <��:�5>, <��:�5>, <��:�6>, <��:�6>, <��:�6>, <��:�6>]);
�e.�l("��:�_��", <��:�_��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:�h", <��:��:4>, [<��:��:*>, <ore:�J>]);
�e.�q("��:�i", <��:��:5>, [<��:��:*>, <ore:�>]);
�e.�l("��:�l", <��:�l>, [[�n, <ore:��>], [<ore:��>, �n]]);
�e.�q("��:�j", <��:��:3>, [<��:��:*>, <ore:�>]);
�e.�l("��:��", <��:��> * 9, [[<��:hay_��>]]);
�e.�q("��:�k", <��:��:8>, [<��:��:*>, <ore:�j>]);
�e.�q("��:�l", <��:��:9>, [<��:��:*>, <ore:�~>]);
�e.�q("��:�m", <��:��:6>, [<��:��:*>, <ore:��>]);
�e.�q("��:�n", <��:��:7>, [<��:��:*>, <ore:��>]);
�e.�q("��:�n_log_to_��_�o", <��:�n_��:1> * 4, [<��:�n_log:1>]);
�e.�l("��:��_��_��_��", <��:��_��_��:1> * 16, [[<ore:�o>, <ore:�o>, <ore:�o>], [<ore:�o>, <ore:�o>, <ore:�o>]]);
�e.�l("��:�
_��", <��:�
:1> * 4, [[<ore:��>, <��:��:1>, <ore:��>], [<��:��:1>, <��:��:1>, <��:��:1>], [<ore:��>, <��:��:1>, <ore:��>]]);
�e.�q("��:�p", �n, []);
�e.�l("��:�Y_��", <��:�Y_��>, [[<��:�Y>, <��:�Y>], [<��:�Y>, <��:�Y>]]);
�e.�l("��:��_�q", <��:�:2> * 4, [[<��:�:1>, <��:�:1>], [<��:�:1>, <��:�:1>]]);
�e.�l("��:�r", <��:�p>, [[<ore:��>, <��:�_�	>, <ore:��>], [<��:�_�	>, <ore:oc:��>, <��:�_�	>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��_��_��", <��:�0:2> * 4, [[<ore:��>, <��:�2>, <ore:��>], [<ore:��>, <��:�L:*>, <ore:��>]]);
�e.�q("��:�s", <��:��:12>, [<��:��:*>, <ore:�m>]);
�e.�q("��:�t", <��:��:10>, [<��:��:*>, <ore:��>]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �n, <ore:��>]]);
�e.�q("��:�u", <��:��:11>, [<��:��:*>, <ore:�+>]);
�e.�l("��:�b_�v", <��:�b>.��({��: "��:�v"}), [[<ore:��>, <��:�9:*> | <��:�8_�9:*>, <ore:��>], [<ore:��>, <��:�b>, <ore:��>], [<ore:��>, <��:�9:*> | <��:�8_�9:*>, <ore:��>]]);
�e.�q("��:��_��_bed_�r_��_bed", <��:bed:3>, [<��:bed>, <ore:�m>]);
�e.�l("��:bow", <��:bow>, [[�n, <ore:��>, <ore:��>], [<ore:��>, �n, <ore:��>], [�n, <ore:��>, <ore:��>]]);
�e.�q("��:�w", <��:��:15>, [<��:��:*>, <ore:��>]);
�e.�q("��:�x", <��:��:13>, [<��:��:*>, <ore:��>]);
�e.�q("��:�y", <��:��:14>, [<��:��:*>, <ore:�!>]);
�e.�l("��:��_oak_��_��", <��:��_oak_��_��>, [[<��:��>, <��:��:5>, <��:��>], [<��:��>, <��:��:5>, <��:��>]]);
�e.�l("��:��", <��:��> * 9, [[<��:��_��>]]);
�e.�l("��:��_�r", <��:��_�r>, [[�n, <ore:��>, <ore:��>], [�n, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�", <��:�>, [[�n, <ore:��>, �n], [<ore:��>, <ore:��>, <ore:��>], [�n, <ore:��>, �n]]);
�e.�l("��:�z_�v_�{", <��:�s:3> * 2, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:�t>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:�|", <��:�q> * 2, [<��:�q>, <��:�q>]);
�e.�l("��:��_��_��_��_��", <��:��_��_��:8> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�q("��:�}", <��:�q:1>.��({"oc:�~": 15}), [<��:�q:1>, <ore:��>]);
�e.�l("��:�z_�v_�", <��:�s:4> * 4, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:�t>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:lux_��_��", <��:�>>, [[<��:��:17>, <ore:�u>, <��:��:17>], [<��:��:17>, <��:�@>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>]]);
�e.�l("��:�v_�w", <��:�v_�w>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��", <��:��:18>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<��:�l>, <ore:oc:��>, <ore:�N>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��", <��:��:17>, [[<ore:��>, <��:��>, <ore:��>], [<��:�l>, <ore:��>, <ore:�N>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��_��", <��:�X>, [[�n, <��:��>], [<ore:��>, <ore:��>], [<ore:��>, <ore:��>]]);
�e.�q("��:��_��", <��:��:2>, [<��:��_key>, <��:��_�H>]);
�e.�l("��:��", <��:��:24>, [[<ore:��>, <��:��_��>, <ore:��>], [<��:�>, <ore:oc:��>, <ore:�N>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��", <��:�y>, [[<ore:��>, �n, <ore:��>], [�n, <ore:oc:��>, �n], [�n, <ore:��>, �n]]);
�e.�l("��:��", <��:��:23>, [[<ore:��>, <��:��_�>, <ore:��>], [<��:�>, <��:��>, <ore:�N>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�q("��:��_��_6_��", <��:�:5> * 9, [<��:�:6>]);
�e.�l("��:��", <��:��:26>, [[<ore:��>, <��:�{>, <ore:��>], [<��:�{>, <ore:oc:��>, <��:�{>], [<ore:��>, <��:�{>, <ore:��>]]);
�e.�l("��:��", <��:��:25>, [[<ore:��>, <ore:�N>, <ore:��>], [<ore:��>, <ore:oc:�Q>, <ore:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��", <��:��:20>, [[<ore:��>, <ore:�N>, <ore:��>], [<ore:��>, <ore:oc:��>, <ore:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��", <��:��:19>, [[<ore:��>, <��:�>, <ore:��>], [<ore:oc:��>, <��:��_map:*>, <ore:oc:��>], [<ore:��>, <��:�|>, <ore:��>]]);
�e.�l("��:��_oak_�g", <��:��_oak_�g>, [[<��:��:5>, �n, <��:��:5>], [<��:��:5>, <��:��:5>, <��:��:5>]]);
�e.�l("��:��", <��:��:22>, [[<ore:�>, <ore:�>, <ore:�>], [<ore:oc:��>, <ore:�~>, <ore:oc:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��_��_�.", <��:��:1>.��({��: "�."}) * 2, [[<��:��:4>, <ore:��>, <��:��:4>], [<��:��:4>, <��:��:4>, <��:��:4>], [<��:��:4>, <ore:��>, <��:��:4>]]);
�e.�l("��:��", <��:��:21>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:oc:��>, <ore:��>, <ore:oc:��>], [<ore:��>, <��:�8_�9>, <ore:��>]]);
�e.�q("��:��_dye_�r_��_��", <��:dye:9>, [<��:red_��:7>]);
�e.�l("��:��", <��:��> * 4, [[<��:�|>], [<ore:��>], [<ore:��>]]);
�e.�l("��:�A_��", <��:�A_��> * 3, [[<��:��>, <��:��>], [<��:��>, <��:��>], [<��:��>, <��:��>]]);
�e.�l("��:��_�6_1", <��:�:1>, [[<��:�>, <��:�>, <��:�>], [<��:�>, <��:�>, <��:�>], [<��:�>, <��:�>, <��:�>]]);
�e.�l("��:��_��_to_��", <��:��>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:��", <��:��:27>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<��:��_��>, <ore:��>, <��:��_��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��", <��:��:29>, [[<ore:��>, <ore:��>, <ore:��>], [<��:��>, <ore:oc:��>, <��:��>], [<��:�l>, <ore:oc:��>, <ore:�N>]]);
�e.�l("��:��_�", <��:��_�>, [[<��:��>]]);
�e.�q("��:��", <��:��:1>, [<ore:�/>, <��:�Y>]);
�e.�l("��:��", <��:��:28>, [[<ore:oc:�%>, <ore:oc:��>, <ore:oc:�%>], [<ore:��>, <ore:��>, <ore:��>], [<ore:oc:�%>, <ore:oc:��>, <ore:oc:�%>]]);
�e.�q("��:��_��_��", <��:��> * 9, [<��:�>]);
�e.�q("��:��", <��:��>, [<��:��:*>, <��:��:*>, <��:��_��:*>, <ore:��>]);
�e.�l("��:��_�\", <��:��_�\:4> * 6, [[<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:��", <��:��> * 3, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:��", <��:��:31>, [[<ore:��>, <ore:oc:��>, <ore:��>], [�n, <ore:oc:��>, �n]]);
�e.�l("��:��", <��:��:30>, [[<ore:oc:��>, <ore:�#>, <ore:oc:��>], [<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [<ore:oc:��>, <ore:�#>, <ore:oc:��>]]);
�e.�l("��:��_��_�U", <��:��:3>.��({��: "�U"}) * 2, [[<��:�A_�\:3>, <ore:��>, <��:�A_�\:3>], [<��:�A_�\:3>, <��:�A_�\:3>, <��:�A_�\:3>], [<��:�A_�\:3>, <ore:��>, <��:�A_�\:3>]]);
�e.�q("��:��", <��:�q:1>.��({"oc:��": {"oc:fs.��": "��"}, "oc:�~": 2, ��: {��: "�� (�� ��)"}, "oc:��": "��:��"}), [<ore:oc:��>, <ore:oc:��>]);
�e.�l("��:red_�T_�", <��:red_�T_�> * 4, [[<��:red_�T> | <��:red_�T:1> | <��:red_�T:2>, �n, �n], [<��:red_�T> | <��:red_�T:1> | <��:red_�T:2>, <��:red_�T> | <��:red_�T:1> | <��:red_�T:2>, �n], [<��:red_�T> | <��:red_�T:1> | <��:red_�T:2>, <��:red_�T> | <��:red_�T:1> | <��:red_�T:2>, <��:red_�T> | <��:red_�T:1> | <��:red_�T:2>]]);
�e.�l("��:��_��_��_��", <��:��_��_��:9> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�q("��:��", <��:�q>.��({"oc:��": {"oc:��": 0 as ��, "oc:��": [108, 111, 99, 97, 108, 32, 105, 110, 105, 116, 10, 100, 111, 10, 32, 32, 108, 111, 99, 97, 108, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 95, 105, 110, 118, 111, 107, 101, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 105, 110, 118, 111, 107, 101, 10, 32, 32, 108, 111, 99, 97, 108, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 109, 101, 116, 104, 111, 100, 44, 32, 46, 46, 46, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 114, 101, 115, 117, 108, 116, 32, 61, 32, 116, 97, 98, 108, 101, 46, 112, 97, 99, 107, 40, 112, 99, 97, 108, 108, 40, 99, 111, 109, 112, 111, 110, 101, 110, 116, 95, 105, 110, 118, 111, 107, 101, 44, 32, 97, 100, 100, 114, 101, 115, 115, 44, 32, 109, 101, 116, 104, 111, 100, 44, 32, 46, 46, 46, 41, 41, 10, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 114, 101, 115, 117, 108, 116, 91, 49, 93, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 115, 117, 108, 116, 91, 50, 93, 10, 32, 32, 32, 32, 101, 108, 115, 101, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 116, 97, 98, 108, 101, 46, 117, 110, 112, 97, 99, 107, 40, 114, 101, 115, 117, 108, 116, 44, 32, 50, 44, 32, 114, 101, 115, 117, 108, 116, 46, 110, 41, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 10, 32, 32, 45, 45, 32, 98, 97, 99, 107, 119, 97, 114, 100, 115, 32, 99, 111, 109, 112, 97, 116, 105, 98, 105, 108, 105, 116, 121, 44, 32, 109, 97, 121, 32, 114, 101, 109, 111, 118, 101, 32, 108, 97, 116, 101, 114, 10, 32, 32, 108, 111, 99, 97, 108, 32, 101, 101, 112, 114, 111, 109, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 101, 101, 112, 114, 111, 109, 34, 41, 40, 41, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 32, 61, 32, 102, 117, 110, 99, 116, 105, 111, 110, 40, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 101, 101, 112, 114, 111, 109, 44, 32, 34, 103, 101, 116, 68, 97, 116, 97, 34, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 32, 61, 32, 102, 117, 110, 99, 116, 105, 111, 110, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 101, 101, 112, 114, 111, 109, 44, 32, 34, 115, 101, 116, 68, 97, 116, 97, 34, 44, 32, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 101, 110, 100, 10, 10, 32, 32, 100, 111, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 115, 99, 114, 101, 101, 110, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 115, 99, 114, 101, 101, 110, 34, 41, 40, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 103, 112, 117, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 103, 112, 117, 34, 41, 40, 41, 10, 32, 32, 32, 32, 105, 102, 32, 103, 112, 117, 32, 97, 110, 100, 32, 115, 99, 114, 101, 101, 110, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 103, 112, 117, 44, 32, 34, 98, 105, 110, 100, 34, 44, 32, 115, 99, 114, 101, 101, 110, 41, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 32, 32, 108, 111, 99, 97, 108, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 104, 97, 110, 100, 108, 101, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 111, 112, 101, 110, 34, 44, 32, 34, 47, 105, 110, 105, 116, 46, 108, 117, 97, 34, 41, 10, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 104, 97, 110, 100, 108, 101, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 98, 117, 102, 102, 101, 114, 32, 61, 32, 34, 34, 10, 32, 32, 32, 32, 114, 101, 112, 101, 97, 116, 10, 32, 32, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 100, 97, 116, 97, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 114, 101, 97, 100, 34, 44, 32, 104, 97, 110, 100, 108, 101, 44, 32, 109, 97, 116, 104, 46, 104, 117, 103, 101, 41, 10, 32, 32, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 100, 97, 116, 97, 32, 97, 110, 100, 32, 114, 101, 97, 115, 111, 110, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 32, 32, 98, 117, 102, 102, 101, 114, 32, 61, 32, 98, 117, 102, 102, 101, 114, 32, 46, 46, 32, 40, 100, 97, 116, 97, 32, 111, 114, 32, 34, 34, 41, 10, 32, 32, 32, 32, 117, 110, 116, 105, 108, 32, 110, 111, 116, 32, 100, 97, 116, 97, 10, 32, 32, 32, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 99, 108, 111, 115, 101, 34, 44, 32, 104, 97, 110, 100, 108, 101, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 108, 111, 97, 100, 40, 98, 117, 102, 102, 101, 114, 44, 32, 34, 61, 105, 110, 105, 116, 34, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 108, 111, 99, 97, 108, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 105, 102, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 105, 110, 105, 116, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 105, 102, 32, 110, 111, 116, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 10, 32, 32, 32, 32, 102, 111, 114, 32, 97, 100, 100, 114, 101, 115, 115, 32, 105, 110, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 102, 105, 108, 101, 115, 121, 115, 116, 101, 109, 34, 41, 32, 100, 111, 10, 32, 32, 32, 32, 32, 32, 105, 110, 105, 116, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 32, 32, 105, 102, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 98, 114, 101, 97, 107, 10, 32, 32, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 32, 32, 105, 102, 32, 110, 111, 116, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 101, 114, 114, 111, 114, 40, 34, 110, 111, 32, 98, 111, 111, 116, 97, 98, 108, 101, 32, 109, 101, 100, 105, 117, 109, 32, 102, 111, 117, 110, 100, 34, 32, 46, 46, 32, 40, 114, 101, 97, 115, 111, 110, 32, 97, 110, 100, 32, 40, 34, 58, 32, 34, 32, 46, 46, 32, 116, 111, 115, 116, 114, 105, 110, 103, 40, 114, 101, 97, 115, 111, 110, 41, 41, 32, 111, 114, 32, 34, 34, 41, 44, 32, 48, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 98, 101, 101, 112, 40, 49, 48, 48, 48, 44, 32, 48, 46, 50, 41, 10, 101, 110, 100, 10, 105, 110, 105, 116, 40, 41, 10] as ��[] as ��[], "oc:��": "�� (Lua ��)"}}), [<ore:oc:��>, <ore:oc:��>]);
�e.�l("��:��_��_��_��", <��:��_��_��:10> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:red_�T_�\", <��:��_��> * 6, [[<��:red_�T> | <��:red_�T:1> | <��:red_�T:2>, <��:red_�T> | <��:red_�T:1> | <��:red_�T:2>, <��:red_�T> | <��:red_�T:1> | <��:red_�T:2>]]);
�e.�l("��:��_��_��_��", <��:�0:4> * 2, [[�n, <��:��_��:*>, �n], [<��:�0:2>, <ore:��>, <��:�0:2>], [�n, <��:��_��:*>, �n]]);
�e.�l("��:��_��_��_��", <��:��_��_��:7> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 4}), [<��:�q:1>, <ore:�J>]);
�e.�l("��:��", <��:��>, [[<ore:��>, �n, �n], [<ore:oc:� >, <ore:��>, �n], [<ore:oc:��>, <ore:��>, �n]]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 3}), [<��:�q:1>, <ore:�>]);
�e.�l("��:��_�P", <��:�P:7> * 3, [[<��:��:7>, <��:��:7>]]);
�e.�l("��:��", <��:��:2>, [[<��:��_��>, <ore:oc:��>, <��:��_��>], [<ore:oc:��>, <ore:oc:�N>, <ore:oc:�>], [<��:��_��>, <ore:oc:��>, <��:��_��>]]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 2}), [<��:�q:1>, <ore:�>]);
�e.�l("��:��", <��:��:3>, [[<ore:��>, <ore:��>, <ore:�>], [<ore:�J>, <ore:oc:��>, <ore:�>], [<ore:�+>, <ore:��>, <ore:��>]]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 1}), [<��:�q:1>, <ore:��>]);
�e.�q("��:��", <��:��:4>, [<��:��>, <ore:oc:��>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 0}), [<��:�q:1>, <ore:��>]);
�e.�q("��:��_��", <��:��:13>, [<ore:�>, <��:��>]);
�e.�q("��:��", <��:�q:1>.��({"oc:��": {"oc:fs.��": "��"}, "oc:�~": 6, ��: {��: "�� (�� ��)"}, "oc:��": "��:��"}), [<ore:oc:��>, <ore:oc:��>]);
�e.�l("��:��_�,", <��:��_�,>, [[<ore:��>, �n, <ore:��>], [<ore:��>, �n, <ore:��>]]);
�e.�q("��:��", <��:��:5> * 2, [<ore:�/>, <ore:��>]);
�e.�q("��:��", �n, []);
�e.�l("��:��_��", <��:��>, [[�n, <ore:��>, �n], [<��:��>, <��:��>, <��:��>]]);
�e.�q("��:��", <��:��:19>, [<��:��:19>, <��:��_map:*>]);
�e.�l("��:��", <��:��> * 4, [[<ore:��>], [<ore:��>]]);
�e.�l("��:��_�I", <��:�I:3>, [[<��:��_�\:5>], [<��:��_�\:5>]]);
�e.�q("��:�B_�A_� ", <��:�B:2>, [<��:�B:2>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 8}), [<��:�q:1>, <ore:�j>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 7}), [<��:�q:1>, <ore:��>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 6}), [<��:�q:1>, <ore:��>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 5}), [<��:�q:1>, <ore:�>]);
�e.�l("��:��_oak_�", <��:��_oak_�> * 4, [[<��:��:5>, �n, �n], [<��:��:5>, <��:��:5>, �n], [<��:��:5>, <��:��:5>, <��:��:5>]]);
�e.�l("��:��_��", <��:��_��>, [[�n, <��:�_rod>, �n], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��", <��:��:5>, [[<ore:oc:��>, <ore:oc:�>, <ore:oc:��>], [<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [<ore:oc:��>, <ore:oc:�Q>, <ore:oc:��>]]);
�e.�l("��:��_��_oak", <��:��:1>.��({��: "oak"}) * 2, [[<��:��>, <ore:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <ore:��>, <��:��>]]);
�e.�l("��:��_�r", <��:��_�r> * 4, [[�n, <��:�A_��:*>, �n], [<��:�A_��:*>, <��:��>, <��:�A_��:*>], [<��:��>, <��:log>, <��:��>]]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 14}), [<��:�q:1>, <ore:�!>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 13}), [<��:�q:1>, <ore:��>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 12}), [<��:�q:1>, <ore:�m>]);
�e.�l("��:��", <��:��> * 4, [[<ore:��>, <ore:oc:��>, <ore:��>], [<��:��>, <��:�L>, <��:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 11}), [<��:�q:1>, <ore:�+>]);
�e.�q("��:��", �n, []);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 10}), [<��:�q:1>, <ore:��>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 9}), [<��:�q:1>, <ore:�~>]);
�e.�q("��:�n_log_to_��_raw", <��:�n_��> * 4, [<��:�n_log>]);
�e.�l("��:�_�b", <��:��:3>, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:1>, <��:��>, <��:��:1>], [<��:��:3>, <��:��:3>, <��:��:3>]]);
�e.�l("��:��_axe", <��:��_axe>, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>], [�n, <ore:��>]]);
�e.�q("��:��", �n, []);
�e.�l("��:��_��", <��:��_��>, [[<��:�_��>, <��:�_��>, <��:�_��>], [<��:�_��>, <��:��>, <��:�_��>], [<��:�_��>, <��:�_��>, <��:�_��>]]);
�e.�q("��:sun_�", <��:�@:250>, [<ore:��>, <ore:��>, <ore:��>, <ore:��>, <ore:��>]);
�e.�l("��:��_��", <��:��:4>, [[<��:��:11>, <��:��:11>, <��:��:11>], [<��:��:11>, <��:��:11>, <��:��:11>], [�n, <ore:��>, �n]]);
�e.�l("��:��", <��:��>, [[<��:��:8>], [<��:��:8>], [<��:��:*>]]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�_can", <��:�7>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��_��", <��:��_��:4> * 8, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:�+>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
�e.�l("��:��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:oc:�Q>, <ore:oc:��>, <ore:oc:�Q>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��_��_��_��", <��:��_��:3> * 8, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:�m>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
�e.�l("��:oak_�A_�\", <��:�A_�\> * 6, [[<��:��>, <��:��>, <��:��>]]);
�e.�q("��:��_��_1_��", <��:�> * 9, [<��:�:1>]);
�e.�l("��:��", <��:��>, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>]]);
�e.�q("��:��_��", <��:�:4> * 2, [<��:�>, <ore:��>, <��:�>]);
�e.�l("��:�_�", <��:�_�> * 4, [[<��:�>]]);
�e.�l("��:�
_��", <��:�
:2> * 4, [[<ore:��>, <��:��:2>, <ore:��>], [<��:��:2>, <��:��:2>, <��:��:2>], [<ore:��>, <��:��:2>, <ore:��>]]);
�e.�l("��:��_red_�T", <��:red_�T:1>, [[<��:��_��>], [<��:��_��>]]);
�e.�l("��:��_��_��", <��:��_��_��> * 6, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�q("��:�,_�-", <��:�,_�->, [<��:�_�>, <ore:��>]);
�e.�l("��:�_��", <��:��:5>, [[<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <ore:��>, <��:��:3>], [<��:��:3>, <��:��:3>, <��:��:3>]]);
�e.�l("��:��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<��:��>, <��:��>, <��:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��_��_to_�V", <��:��:12> * 9, [<��:��>]);
�e.�q("��:��_��_3_��", <��:�:2> * 9, [<��:�:3>]);
�e.�l("��:�k_��", <��:�k_��>, [[<��:dye:4>, <��:dye:4>, <��:dye:4>], [<��:dye:4>, <��:dye:4>, <��:dye:4>], [<��:dye:4>, <��:dye:4>, <��:dye:4>]]);
�e.�q("��:��", <��:�q:3>, [<��:�q:3>]);
�e.�l("��:��_�P", <��:�P:10> * 3, [[<��:��:10>, <��:��:10>]]);
�e.�q("��:��", <��:�q:2>, [<��:�q:2>]);
�e.�q("��:��", <��:�q:1>, [<��:�q:1>]);
�e.�l("��:��_��_��_��", <��:��_��_��:6> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�~>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:��_��_��_��", <��:��_��_��:12> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��_bed_�r_��_bed", <��:bed:12>, [<��:bed>, <ore:�>]);
�e.�l("��:��_��_��", <��:��:4>.��({��: "��"}) * 4, [[<ore:��>, <��:�A_�\:1>, <ore:��>], [<��:�A_�\:1>, <��:�A_�\:1>, <��:�A_�\:1>], [<ore:��>, <��:�A_�\:1>, <ore:��>]]);
�e.�l("��:��_axe", <��:��_axe>, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>], [�n, <ore:��>]]);
�e.�q("��:��_��", <��:��:9>, [<ore:��>, <��:��>]);
�e.�l("��:lux_��_��", <��:�>:4>, [[<��:��:17>, <ore:��>, <��:��:17>], [<��:��:17>, <��:�@>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>]]);
�e.�l("��:�T_�", <��:�T_�> * 4, [[<��:�T> | <��:�T:1> | <��:�T:2>, �n, �n], [<��:�T> | <��:�T:1> | <��:�T:2>, <��:�T> | <��:�T:1> | <��:�T:2>, �n], [<��:�T> | <��:�T:1> | <��:�T:2>, <��:�T> | <��:�T:1> | <��:�T:2>, <��:�T> | <��:�T:1> | <��:�T:2>]]);
�e.�q("��:��_eye", <��:��_eye>, [<ore:��>, <��:�_�>]);
�e.�l("��:��", <��:��:16>, [[<ore:��>, �n, <ore:��>], [<ore:oc:��>, <ore:�N>, <ore:oc:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��", <��:�q>, [<��:�q>]);
�e.�q("��:��", <��:�q:4>, [<��:�q:4>]);
�e.�l("��:��_bed", <��:bed>, [[<��:��>, <��:��>, <��:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:lux_��_��", <��:�>:6>, [[<��:��:17>, <ore:��>, <��:��:17>], [<��:��:17>, <��:�@>, <��:��:17>], [<��:��:17>, <��:��>, <��:��:17>]]);
�e.�l("��:��_��_oak", <��:��>.��({��: "oak"}), [[<��:��>, <��:��>, <��:��>], [�n, <ore:��>, �n], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:�_can_��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��", <��:��:7>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:�N>, <ore:��>, �n], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��_�(", <��:�(:1> * 4, [[<��:�(>, <��:�6>], [<��:�6>, <��:�(>]]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>], [<��:��>]]);
�e.�l("��:��", <��:��:13>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�q("��:��", �n, []);
�e.�l("��:��_�P", <��:�P:4> * 3, [[<��:��:4>, <��:��:4>]]);
�e.�l("��:sea_��", <��:sea_��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��", <��:��:12>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��", <��:��:15>, [[<ore:��>, �n, <ore:��>], [<ore:oc:��>, <��:��>, <ore:oc:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��", <��:��:14>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��", <��:��:9>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:�N>, <ore:��>, �n], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��", <��:��:8>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:�N>, <ore:��>, �n], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��", <��:��:11>, [[<ore:��>, �n, <ore:��>], [<ore:oc:��>, <ore:�a>, <ore:oc:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��", <��:��:10>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:�N>, <ore:��>, �n], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�q("��:red_dye_�r_��_��", <��:dye:1> * 2, [<��:��_��:4>]);
�e.�q("��:��_�J_eye", <��:��_�J_eye>, [<��:�J_eye>, <��:��_��>, <��:��>]);
�e.�q("��:��_��_3_��", <��:�:2> * 9, [<��:�:3>]);
�e.�l("��:�%_��", <��:�%:1>, [[<��:end_rod:*>, �n, <��:end_rod:*>], [<ore:��>, <ore:��>, <ore:��>], [�n, <ore:��>, �n]]);
�e.�l("��:��_hoe", <��:��_hoe>, [[<ore:��>, <ore:��>], [�n, <ore:��>], [�n, <ore:��>]]);
�e.�l("��:�U_�g", <��:�U_�g>, [[<��:��:3>, �n, <��:��:3>], [<��:��:3>, <��:��:3>, <��:��:3>]]);
�e.�l("��:��_hoe", <��:��_hoe>, [[<ore:��>, <ore:��>], [�n, <ore:��>], [�n, <ore:��>]]);
�e.�l("��:��_��_��", <��:�b>.��({��: "��:��_��"}), [[<��:��> | <��:��_��>, <��:��> | <��:��_��>, <��:��> | <��:��_��>], [<��:��> | <��:��_��>, <��:�J_eye>, <��:��> | <��:��_��>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�q("��:�_pie", <��:�_pie>, [<��:�>, <��:��>, <ore:egg>]);
�e.�l("��:��_��", <��:��_��> * 6, [[<��:��>, <��:��>, <��:��>]]);
�e.�q("��:��", <��:��> * 4, [<ore:��>, <ore:��>, <ore:��>, <ore:��>]);
�e.�q("��:��_��", <��:��:8>, [<��:��:9>, <��:��_��>]);
�e.�l("��:�U_��", <��:�U_��> * 3, [[<��:��:3>, <��:��>, <��:��:3>], [<��:��:3>, <��:��>, <��:��:3>]]);
�e.�l("��:��_��_��_��", <��:��_��_��_��>, [[<ore:��>, <ore:��>]]);
�e.�l("��:��_��_��", <��:�b>.��({��: "��:��_��"}), [[<��:��> | <��:��> | <��:��>, <��:��> | <��:��> | <��:��>, <��:��> | <��:��> | <��:��>], [<��:��> | <��:��> | <��:��>, <��:��_��> | <��:��_��> | <��:��_�S> | <��:��_��> | <��:��_��> | <��:��_��>, <��:��> | <��:��> | <��:��>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:��_��", <��:��_��> * 3, [[<ore:�>, �n, <ore:�>], [�n, <ore:�>, �n]]);
�e.�l("��:��_��", <��:��_��> * 3, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>], [<ore:��>, <ore:��>]]);
�e.�q("��:��_��_to_�V", <��:��:17> * 9, [<��:��:2>]);
�e.�l("��:��_��_��_��", <��:��_��_��:10> * 16, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�5_��", <��:��:2> * 4, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>]]);
�e.�l("��:��_can", <��:��:��>, [[<��:��:*>, �n, �n], [<��:��:*>, <��:��:*>, <��:��:*>], [�n, <��:��:*>, �n]]);
�e.�l("��:��_��", <��:��_��>, [[<��:��>], [<��:��>]]);
�e.�l("��:��_��_��_��", <��:��_��_��:11> * 16, [[<ore:�u>, <ore:�u>, <ore:�u>], [<ore:�u>, <ore:�u>, <ore:�u>]]);
�e.�l("��:��_��", <��:��:9>, [[<��:��:6>, <��:��:6>, <��:��:6>], [<��:��:6>, <��:��:6>, <��:��:6>], [�n, <ore:��>, �n]]);
�e.�l("��:��_�Y_��", <��:�Y_��:1>, [[<��:��_�\:7>], [<��:��_�\:7>]]);
�e.�q("��:��_bed_�r_��_bed", <��:bed:11>, [<��:bed>, <ore:�J>]);
�e.�l("��:�b_��", <��:�b> * 4, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�z_�v_��", <��:�s>, [[<ore:��>, <ore:��>, <ore:��>], [�n, <ore:��>, �n], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��", <��:��>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:oc:��>, <ore:oc:��>, <ore:oc:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:�z_�v_��", <��:�s:1> * 2, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�z_�v_��", <��:�s:2> * 4, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��_��_oak", <��:��:4>.��({��: "��_oak"}) * 4, [[<ore:��>, <��:�A_�\:5>, <ore:��>], [<��:�A_�\:5>, <��:�A_�\:5>, <��:�A_�\:5>], [<ore:��>, <��:�A_�\:5>, <ore:��>]]);
�e.�q("��:��_��", <��:��:6>, [<ore:�~>, <��:��>]);
�e.�l("��:��", <��:��>, [[<��:��_��>, <��:��_��>], [<��:��_��>, <��:��_��>]]);
�e.�l("��:bag_of_��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:�t:1>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��", <��:��>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:oc:� >, <ore:oc:��>, <ore:oc:� >], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��_�6", <��:�>, [[<��:�6>, <��:�6>, <��:�6>], [<��:�6>, <��:�6>, <��:�6>], [<��:�6>, <��:�6>, <��:�6>]]);
�e.�l("��:��_�q_�", <��:��_�q:2>, [[<ore:��>, <ore:��>, <ore:��>], [<��:�_�V>, <��:��_��>, <��:�_�V>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��_��_��", <��:��> * 9, [<��:�>]);
�e.�q("��:��_��_�3_�", <��:�3_�:8> * 8, [<ore:��>, <��:�5>, <��:�5>, <��:�5>, <��:�5>, <��:�6>, <��:�6>, <��:�6>, <��:�6>]);
�e.�l("��:��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��", <��:�>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:��_�(_2", <��:�):2>, [[<��:�):1>, <��:�):1>, <��:�):1>], [<��:�):1>, <��:�):1>, <��:�):1>], [<��:�):1>, <��:�):1>, <��:�):1>]]);
�e.�l("��:��_�(_1", <��:�):1>, [[<��:�)>, <��:�)>, <��:�)>], [<��:�)>, <��:�)>, <��:�)>], [<��:�)>, <��:�)>, <��:�)>]]);
�e.�l("��:��_��_��", <��:�b>.��({��: "��:��_��"}), [[<��:��_��:*>, <��:��_��:*>, <��:��_��:*>], [<��:��_��:*>, <��:��:*>, <��:��_��:*>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:��_��_��", <��:�b>.��({��: "��:��_��"}), [[<��:�t:1>, <��:�t:1>, <��:�t:1>], [<��:�t:1>, <��:�&_�':*>, <��:�t:1>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:��_��", <��:��_��>, [[<��:dye:4>, <ore:��>, <��:dye:4>], [<ore:��>, <��:��_��>, <ore:��>], [<��:dye:4>, <ore:��>, <��:dye:4>]]);
�e.�l("��:�B_256", <��:�B:1>, [[<ore:��>, <��:�>_��_��_��:*>, <ore:��>], [<ore:��>, <��:��:*>, <ore:��>], [<ore:��>, <��:�>_��_��_��:*>, <ore:��>]]);
�e.�l("��:�
_�.", <��:�
:4> * 4, [[<ore:��>, <��:��:4>, <ore:��>], [<��:��:4>, <��:��:4>, <��:��:4>], [<ore:��>, <��:��:4>, <ore:��>]]);
�e.�l("��:��", <��:��>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:�N>, <ore:��>, �n], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��_�(_3", <��:�):3>, [[<��:�):2>, <��:�):2>, <��:�):2>], [<��:�):2>, <��:�):2>, <��:�):2>], [<��:�):2>, <��:�):2>, <��:�):2>]]);
�e.�l("��:��_��", <��:��_��> * 6, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:�_�>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��_�@_��", <��:�0:3> * 2, [[�n, <��:��_��:*>, �n], [<��:�0>, <ore:��>, <��:�0>], [�n, <��:��_��:*>, �n]]);
�e.�q("��:��_dye", <��:dye:10> * 2, [<ore:�>, <ore:��>]);
�e.�l("��:��", <��:��>, [[<��:��_��>, <ore:oc:��>, <��:��_��>], [<ore:��>, <ore:oc:��>, <ore:��>], [<��:��_��>, <ore:oc:�Q>, <��:��_��>]]);
�e.�l("��:oak_��", <��:��> * 4, [[<��:log>]]);
�e.�l("��:��", <��:��:8> * 4, [[<ore:��>, <ore:��>, <ore:��>], [<��:�>, <ore:oc:� >, <��:�>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:�y", <��:�y>, [[�n, <ore:��>, <ore:��>], [�n, <ore:��>, <ore:��>], [<ore:��>, �n, �n]]);
�e.�l("��:��", <��:��:7> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:�>, <ore:oc:� >, <��:�>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:��", <��:��:10>, [[<��:��_��>, <��:�>, <��:��_��>], [<ore:oc:� >, <ore:oc:��>, <ore:oc:� >], [<��:��_��>, <ore:oc:� >, <��:��_��>]]);
�e.�l("��:��", <��:��:9> * 2, [[<ore:��>, <ore:��>, <ore:��>], [<��:�>, <ore:oc:� >, <��:�>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��", <��:��:2> * 8, [<ore:��>, <��:��>, <ore:�>]);
�e.�q("��:��", <��:��:1>, [<��:�b_�L>, <��:��>, <ore:��>, <��:��_�J_eye>, <ore:��>]);
�e.�l("��:��", <��:��:6> * 8, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [�n, <��:�>, �n]]);
�e.�l("��:��_�q_��", <��:��_�q:4>, [[<ore:��>, <ore:��>, <ore:��>], [<��:��>, <��:��_��>, <��:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��", <��:��:5>, [[<��:��_��>, �n, �n], [<��:��_��>, <ore:oc:��>, �n], [<��:��_��>, <ore:��>, �n]]);
�e.�l("��:��", <��:��>, [[<ore:��>, <��:��:2>, <ore:��>], [<��:��:2>, <��:��:*>, <��:��:2>], [<ore:��>, <��:�W:*>, <ore:��>]]);
�e.�l("��:�z_�
", <��:��> * 4, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��_��", <��:�:3> * 2, [<��:�>, <ore:��>, <��:�>]);
�e.�l("��:��_��", <��:�>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:��", <��:��>, [[�n, <��:�t:1>, �n], [<��:�t:1>, �n, <��:�t:1>]]);
�e.�l("��:��_��_�U", <��:��>.��({��: "�U"}), [[<��:��:3>, <��:��:3>, <��:��:3>], [�n, <ore:��>, �n], [<��:��:3>, <��:��:3>, <��:��:3>]]);
�e.�q("��:��_dye", <��:dye:5> * 2, [<ore:�J>, <ore:��>]);
�e.�l("��:red_�T", <��:red_�T>, [[<��:�5:1>, <��:�5:1>], [<��:�5:1>, <��:�5:1>]]);
�e.�l("��:��_��", <��:��_��>, [[<ore:��>, <ore:��>, <ore:��>], [�n, <ore:��>, �n], [�n, <ore:��>, �n]]);
�e.�l("��:�Y_�\", <��:��_�\:7> * 6, [[<��:�Y_��> | <��:�Y_��:1> | <��:�Y_��:2>, <��:�Y_��> | <��:�Y_��:1> | <��:�Y_��:2>, <��:�Y_��> | <��:�Y_��:1> | <��:�Y_��:2>]]);
�e.�l("��:��", <��:��:20>, [[<��:��_��>, <ore:oc:��>, <��:��_��>], [<��:�>, <ore:��>, <��:�>], [<��:��_��>, <ore:oc:��>, <��:��_��>]]);
�e.�l("��:��", <��:��:18>, [[<ore:oc:��>, <��:��_�H>, <ore:��>], [<ore:oc:� >, <ore:oc:�N>, <ore:oc:��>], [<ore:oc:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��", <��:��:21>, [[<ore:��>, <ore:oc:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��", <��:��:15>, [[�n, <��:��_�H>, �n], [<��:��_�H>, <��:��_�H>, <��:��_�H>]]);
�e.�l("��:��", <��:��:14>, [[<��:��_�H>, <��:��_�H>, <��:��_�H>], [<��:��_�H>, <��:��_�H>, <��:��_�H>]]);
�e.�l("��:��", <��:��:17>, [[<ore:��>, <��:��_�H>, <ore:��>], [<ore:oc:�!>, <ore:oc:�N>, <ore:oc:��>], [<ore:��>, <ore:oc:��>, <ore:��>]]);
�e.�l("��:��", <��:��:16>, [[<��:��_�H>, <��:��_�H>, <��:��_�H>], [<��:��_�H>, <��:��_�H>, <��:��_�H>], [<��:��_�H>, <��:��_�H>, <��:��_�H>]]);
�e.�l("��:��", <��:��:11>, [[<ore:��>, <��:�>, <ore:��>], [<ore:oc:� >, <��:��>, <ore:oc:� >], [<ore:��>, <ore:oc:� >, <ore:��>]]);
�e.�l("��:��", <��:��:13>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��", <��:��:12>, [[�n, <��:��_��>, �n], [<��:��_��>, �n, <��:��_��>], [�n, <��:��_��>, �n]]);
�e.�l("��:��_��_�\", <��:��_�\:6> * 6, [[<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�q("��:��_dye", <��:dye:6> * 2, [<ore:�J>, <ore:�>]);
�e.�l("��:� _�!_3", <��:�:3>, [[<��:��:*>, <ore:��>, <��:��:*>], [<ore:��>, <��:�I:1>, <ore:��>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:��>, <��:��:1>.��({��: {id: "��:�"}, No_��: 1 as ��})]]);
�e.�l("��:� _�!_2", <��:�:2>, [[<ore:�>, <ore:��>, <ore:�~>], [<ore:��>, <��:�I:1>, <ore:��>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:��>, <��:��:1>.��({��: {id: "��:�"}, No_��: 1 as ��})]]);
�e.�l("��:� _�!_5", <��:�:5>, [[<��:��>, <ore:��>, <��:��:1>], [<ore:��>, <��:�I:1>, <ore:��>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:��>, <��:��:1>.��({��: {id: "��:�"}, No_��: 1 as ��})]]);
�e.�l("��:� _�!_4", <��:�:4>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:�I:1>, <ore:��>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:��>, <��:��:1>.��({��: {id: "��:�"}, No_��: 1 as ��})]]);
�e.�l("��:��_��_��_��", <��:��_��_��:7> * 8, [[<��:��_��>, <��:��_��>, <��:��_��>], [<��:��_��>, <ore:�j>, <��:��_��>], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:�&_�'", <��:�&_�'>, [[�n, <��:��>, �n], [<ore:��>, <��:��>, <ore:��>], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:�=_�Y_��", <��:�Y_��:2> * 2, [[<��:�Y_��>], [<��:�Y_��>]]);
�e.�l("��:�{", <��:�{> * 2, [[<ore:��>, <ore:��>, �n], [<ore:��>, <ore:��>, �n], [�n, �n, <ore:��>]]);
�e.�l("��:��_�_��", <��:��:15>, [[<��:�G>, <��:��:12>, <��:�G>], [<��:��:12>, <��:��:6>, <��:��:12>], [<��:�G>, <��:��:12>, <��:�G>]]);
�e.�l("��:��_�g", <��:��_�g>, [[<��:��:1>, �n, <��:��:1>], [<��:��:1>, <��:��:1>, <��:��:1>]]);
�e.�l("��:�_��", <��:�_��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_�g", <��:��_�g>, [[<��:��:2>, �n, <��:��:2>], [<��:��:2>, <��:��:2>, <��:��:2>]]);
�e.�l("��:��_��", <��:��_��>, [[<��:��>, <��:��>, <��:��>], [<��:��>, <��:��_��>, <��:��>], [<��:��>, <��:��>, <��:��>]]);
�e.�l("��:��", <��:��>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <��:�Y>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��", <��:��> * 3, [[<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:� _�!_1", <��:�:1>, [[<��:��:*>, <ore:��>, <��:��:*>], [<ore:��>, <��:�I:1>, <ore:��>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:��>, <��:��:1>.��({��: {id: "��:�"}, No_��: 1 as ��})]]);
�e.�l("��:� _�!_0", <��:�>, [[<ore:�>, <ore:��>, <ore:�>], [<ore:��>, <��:�I:1>, <ore:��>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:��>, <��:��:1>.��({��: {id: "��:�"}, No_��: 1 as ��})]]);
�e.�l("��:��_�", <��:��_�> * 4, [[<��:��_��>, �n, �n], [<��:��_��>, <��:��_��>, �n], [<��:��_��>, <��:��_��>, <��:��_��>]]);
�e.�l("��:��_��_tnt", <��:�b>.��({��: "��:��_tnt"}), [[<��:�=:*>, <��:�=:*>, <��:�=:*>], [<��:�=:*>, <��:tnt:*>, <��:�=:*>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:��_��_��", <��:��_��:5> * 8, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:��>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
�e.�l("��:��_��", <��:��_��>, [[�n, <ore:��>, <ore:��>], [�n, �n, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�q("��:��", �n, []);
�e.�q("��:��_dye_�r_��", <��:dye:9> * 2, [<��:��_��:5>]);
�e.�q("��:��_��", <��:��>, []);
�e.�l("��:��_�V_to_��", <��:��:1>, [[<��:��:11>, <��:��:11>, <��:��:11>], [<��:��:11>, <��:��:11>, <��:��:11>], [<��:��:11>, <��:��:11>, <��:��:11>]]);
�e.�l("��:��_��_�@", <��:�0:1> * 4, [[<ore:��>, <��:��>, <ore:��>], [<ore:��>, <��:�2>, <ore:��>]]);
�e.�l("��:�L", <��:�L>, [[<ore:��>, �n, <ore:��>], [�n, <ore:��>, �n]]);
�e.�l("��:�5_��", <��:��:6> * 4, [[<ore:��>, <ore:��>], [<ore:��>, <ore:��>]]);
�e.�l("��:��_��_��", <��:��_��:15> * 8, [[<ore:�>, <ore:�>, <ore:�>], [<ore:�>, <ore:��>, <ore:�>], [<ore:�>, <ore:�>, <ore:�>]]);
Ore �  for <ore:��> :
-<��:log:*>
-<��:��:*>
-<��:�n_log:*>
Ore �  for <ore:��> :
-<��:��:*>
-<��:�n_��:*>
Ore �  for <ore:�t> :
-<��:�A_�\:*>
Ore �  for <ore:��> :
-<��:oak_�>
-<��:��_�>
-<��:��_�>
-<��:�U_�>
-<��:�._�>
-<��:��_oak_�>
Ore �  for <ore:�> :
-<��:��>
-<��:��_��>
-<��:��_��>
-<��:�U_��>
-<��:��_oak_��>
-<��:�._��>
Ore �  for <ore:�> :
-<��:��_��>
-<��:��_��_��>
-<��:��_��_��>
-<��:�U_��_��>
-<��:��_oak_��_��>
-<��:�._��_��>
Ore �  for <ore:�R> :
-<��:�._��>
-<��:��_��>
-<��:��_oak_��>
-<��:�A_��>
-<��:�U_��>
-<��:��_��>
Ore �  for <ore:��> :
-<��:��>
Ore �  for <ore:��> :
-<��:�:*>
-<��:�n_�:*>
Ore �  for <ore:�> :
-<��:�:*>
-<��:�:*>
-<��:�n_�:*>
Ore �  for <ore:��> :
-<��:��>
Ore �  for <ore:�> :
-<��:�_ore>
Ore �  for <ore:�> :
-<��:��_ore>
Ore �  for <ore:�	> :
-<��:�k_ore>
Ore �  for <ore:�
> :
-<��:��_ore>
Ore �  for <ore:�> :
-<��:�_ore>
Ore �  for <ore:�> :
-<��:��_ore>
Ore �  for <ore:�> :
-<��:�Y_ore>
Ore �  for <ore:�> :
-<��:��_ore>
Ore �  for <ore:��> :
-<��:��_�V>
Ore �  for <ore:��> :
-<��:�_�V>
Ore �  for <ore:�X> :
-<��:��>
Ore �  for <ore:�> :
-<��:��>
Ore �  for <ore:��> :
-<��:�_��>
Ore �  for <ore:��> :
-<��:��_��>
Ore �  for <ore:��> :
-<��:��>
Ore �  for <ore:��> :
-<��:��>
Ore �  for <ore:�> :
-<��:�Y>
Ore �  for <ore:��> :
-<��:��_�R>
Ore �  for <ore:��> :
-<��:��_�>
Ore �  for <ore:��> :
-<��:�>
Ore �  for <ore:��> :
-<��:��_��>
Ore �  for <ore:�#> :
-<��:dye:4>
Ore �  for <ore:� > :
-<��:�_��>
Ore �  for <ore:�> :
-<��:��_��>
Ore �  for <ore:�~> :
-<��:�k_��>
Ore �  for <ore:�> :
-<��:��_��>
Ore �  for <ore:��> :
-<��:�_��>
Ore �  for <ore:�> :
-<��:��_��>
Ore �  for <ore:�> :
-<��:�Y_��>
Ore �  for <ore:��> :
-<��:��_��>
Ore �  for <ore:�> :
-<��:��>
Ore �  for <ore:�> :
-<��:��>
Ore �  for <ore:�> :
-<��:��>
Ore �  for <ore:�> :
-<��:��_��>
Ore �  for <ore:��> :
-<��:�>
Ore �  for <ore:�> :
-<��:�>
Ore �  for <ore:dye> :
-<��:dye:*>
-<��:��:14>
Ore �  for <ore:��> :
-<��:��>
Ore �  for <ore:��> :
-<��:��_��>
Ore �  for <ore:��> :
-<��:��_��>
Ore �  for <ore:��> :
-<��:��>
Ore �  for <ore:�=> :
-<��:�=>
Ore �  for <ore:��> :
-<��:��>
Ore �  for <ore:�z> :
-<��:��_��>
Ore �  for <ore:��> :
-<��:��>
Ore �  for <ore:��> :
-<��:��>
Ore �  for <ore:egg> :
-<��:egg>
Ore �  for <ore:�> :
-<��:�_13>
-<��:�_cat>
-<��:�_�>
-<��:�_�>
-<��:�_far>
-<��:�_�>
-<��:�_�>
-<��:�_� >
-<��:�_�!>
-<��:�_�">
-<��:�_11>
-<��:�_�#>
Ore �  for <ore:�(> :
-<��:�(>
Ore �  for <ore:�S> :
-<��:�S>
Ore �  for <ore:��> :
-<��:��>
Ore �  for <ore:��> :
-<��:��>
Ore �  for <ore:�6> :
-<��:�6>
Ore �  for <ore:�5> :
-<��:�5:*>
Ore �  for <ore:�T> :
-<��:�T:*>
-<��:red_�T:*>
Ore �  for <ore:��> :
-<��:��>
Ore �  for <ore:��> :
-<��:��>
Ore �  for <ore:��> :
-<��:��>
Ore �  for <ore:�]> :
-<��:end_��>
Ore �  for <ore:�> :
-<��:�>
Ore �  for <ore:�a> :
-<��:��_�'>
Ore �  for <ore:�$> :
-<��:��>
Ore �  for <ore:�%> :
-<��:��>
Ore �  for <ore:�&> :
-<��:��:1>
Ore �  for <ore:�'> :
-<��:��:2>
Ore �  for <ore:��> :
-<��:��:1>
Ore �  for <ore:�(> :
-<��:��:2>
Ore �  for <ore:�/> :
-<��:��:3>
Ore �  for <ore:�)> :
-<��:��:4>
Ore �  for <ore:��> :
-<��:��:5>
Ore �  for <ore:�*> :
-<��:��:6>
Ore �  for <ore:�> :
-<��:��>
Ore �  for <ore:�> :
-<��:��>
-<��:��_��:*>
Ore �  for <ore:�+> :
-<��:��_��>
Ore �  for <ore:��> :
-<��:��_��>
-<��:��_��_��:*>
Ore �  for <ore:��> :
-<��:��>
-<��:��_��>
-<��:�_��>
Ore �  for <ore:��> :
-<��:��>
-<��:�_��>
Ore �  for <ore:�,> :
-<��:��_��>
Ore �  for <ore:�-> :
-<��:�_��>
Ore �  for <ore:��> :
-<��:dye>
Ore �  for <ore:��> :
-<��:��_��:15>
Ore �  for <ore:�.> :
-<��:��_��_��:15>
Ore �  for <ore:��> :
-<��:dye:1>
Ore �  for <ore:��> :
-<��:��_��:14>
Ore �  for <ore:�/> :
-<��:��_��_��:14>
Ore �  for <ore:�> :
-<��:dye:2>
Ore �  for <ore:��> :
-<��:��_��:13>
Ore �  for <ore:�0> :
-<��:��_��_��:13>
Ore �  for <ore:�> :
-<��:dye:3>
Ore �  for <ore:��> :
-<��:��_��:12>
Ore �  for <ore:�1> :
-<��:��_��_��:12>
Ore �  for <ore:�J> :
-<��:dye:4>
-<��:��:14>
Ore �  for <ore:�u> :
-<��:��_��:11>
Ore �  for <ore:�2> :
-<��:��_��_��:11>
Ore �  for <ore:�> :
-<��:dye:5>
Ore �  for <ore:��> :
-<��:��_��:10>
Ore �  for <ore:�3> :
-<��:��_��_��:10>
Ore �  for <ore:��> :
-<��:dye:6>
Ore �  for <ore:�> :
-<��:��_��:9>
Ore �  for <ore:�4> :
-<��:��_��_��:9>
Ore �  for <ore:��> :
-<��:dye:7>
Ore �  for <ore:��> :
-<��:��_��:8>
Ore �  for <ore:�5> :
-<��:��_��_��:8>
Ore �  for <ore:�j> :
-<��:dye:8>
Ore �  for <ore:��> :
-<��:��_��:7>
Ore �  for <ore:�6> :
-<��:��_��_��:7>
Ore �  for <ore:�~> :
-<��:dye:9>
Ore �  for <ore:��> :
-<��:��_��:6>
Ore �  for <ore:�7> :
-<��:��_��_��:6>
Ore �  for <ore:��> :
-<��:dye:10>
Ore �  for <ore:��> :
-<��:��_��:5>
Ore �  for <ore:�8> :
-<��:��_��_��:5>
Ore �  for <ore:�+> :
-<��:dye:11>
Ore �  for <ore:�?> :
-<��:��_��:4>
Ore �  for <ore:�9> :
-<��:��_��_��:4>
Ore �  for <ore:�m> :
-<��:dye:12>
Ore �  for <ore:��> :
-<��:��_��:3>
Ore �  for <ore:�:> :
-<��:��_��_��:3>
Ore �  for <ore:��> :
-<��:dye:13>
-<��:��:3>
Ore �  for <ore:�> :
-<��:��_��:2>
Ore �  for <ore:�;> :
-<��:��_��_��:2>
Ore �  for <ore:�!> :
-<��:dye:14>
Ore �  for <ore:�o> :
-<��:��_��:1>
Ore �  for <ore:�<> :
-<��:��_��_��:1>
Ore �  for <ore:��> :
-<��:dye:15>
Ore �  for <ore:��> :
-<��:��_��>
Ore �  for <ore:�=> :
-<��:��_��_��>
Ore �  for <ore:��_��_��> :
-<��:�P:1>
Ore �  for <ore:��> :
-<��:��>
-<��:��:2>
Ore �  for <ore:�>> :
-<��:��:1>
Ore �  for <ore:��> :
-<��:�>
Ore �  for <ore:�?> :
-<��:�:1>
Ore �  for <ore:�@> :
-<��:�:2>
Ore �  for <ore:�A> :
-<��:�:3>
Ore �  for <ore:�B> :
-<��:�:4>
Ore �  for <ore:�C> :
-<��:�:5>
Ore �  for <ore:�D> :
-<��:�:6>
Ore �  for <ore:�E> :
-<��:�:7>
Ore �  for <ore:�F> :
-<��:�)>
Ore �  for <ore:�G> :
-<��:�):1>
Ore �  for <ore:�H> :
-<��:�):2>
Ore �  for <ore:�I> :
-<��:�):3>
Ore �  for <ore:�J> :
-<��:��>
Ore �  for <ore:�K> :
-<��:��:1>
Ore �  for <ore:�L> :
-<��:�>
Ore �  for <ore:�M> :
-<��:�:1>
Ore �  for <ore:�N> :
-<��:�>
Ore �  for <ore:�O> :
-<��:�:1>
Ore �  for <ore:�P> :
-<��:�:2>
Ore �  for <ore:�Q> :
-<��:�:3>
Ore �  for <ore:�R> :
-<��:�:4>
Ore �  for <ore:�S> :
-<��:�:5>
Ore �  for <ore:�T> :
-<��:��>
Ore �  for <ore:�U> :
-<��:��:1>
Ore �  for <ore:�V> :
-<��:��:2>
Ore �  for <ore:�W> :
-<��:��:3>
Ore �  for <ore:�X> :
-<��:��:4>
Ore �  for <ore:�Y> :
-<��:��:5>
Ore �  for <ore:�Z> :
-<��:��:6>
Ore �  for <ore:�[> :
-<��:��:7>
Ore �  for <ore:�\> :
-<��:��:8>
Ore �  for <ore:�]> :
-<��:��:9>
Ore �  for <ore:�^> :
-<��:��:10>
Ore �  for <ore:�D> :
-<��:��:11>
Ore �  for <ore:�_> :
-<��:��:12>
Ore �  for <ore:�`> :
-<��:��:13>
Ore �  for <ore:�a> :
-<��:��:15>
-<��:��:16>
Ore �  for <ore:�b> :
-<��:��:17>
Ore �  for <ore:�c> :
-<��:��>
Ore �  for <ore:�d> :
-<��:��:1>
Ore �  for <ore:�e> :
-<��:��:2>
Ore �  for <ore:�f> :
-<��:��_��>
Ore �  for <ore:�g> :
-<��:�t:1>
Ore �  for <ore:��> :
-<��:��>
Ore �  for <ore:��> :
-<��:�I>
Ore �  for <ore:�N> :
-<��:�9>
-<��:�8_�9>
Ore �  for <ore:��> :
-<��:�_�>
Ore �  for <ore:��> :
-<��:��_��>
Ore �  for <ore:oc:�> :
-<��:��:7>
Ore �  for <ore:��> :
-<��:��:29>
Ore �  for <ore:oc:�%> :
-<��:end_��>
-<��:�]>
Ore �  for <ore:��> :
-<��:��:*>
Ore �  for <ore:��> :
-<��:�
:*>
Ore �  for <ore:oc:��> :
-<��:��>
Ore �  for <ore:oc:�`> :
-<��:�`>
Ore �  for <ore:oc:��> :
-<��:��:�e>
Ore �  for <ore:oc:�Q> :
-<��:�Q>
Ore �  for <ore:oc:��> :
-<��:��>
Ore �  for <ore:oc:��> :
-<��:��>
Ore �  for <ore:oc:��> :
-<��:��>
Ore �  for <ore:oc:�^> :
-<��:��>
Ore �  for <ore:oc:��> :
-<��:��>
Ore �  for <ore:oc:��> :
-<��:��>
Ore �  for <ore:oc:�> :
-<��:��>
Ore �  for <ore:oc:�> :
-<��:�>
Ore �  for <ore:oc:�@> :
-<��:�@>
Ore �  for <ore:oc:�> :
-<��:�>
Ore �  for <ore:oc:��> :
-<��:��>
Ore �  for <ore:oc:�h> :
-<��:�p>
Ore �  for <ore:oc:�i> :
-<��:��>
Ore �  for <ore:oc:�> :
-<��:�E>
Ore �  for <ore:oc:��> :
-<��:��>
Ore �  for <ore:oc:�> :
-<��:�>
Ore �  for <ore:oc:�> :
-<��:�>
Ore �  for <ore:oc:��> :
-<��:��>
Ore �  for <ore:oc:�n> :
-<��:�n>
Ore �  for <ore:oc:��> :
-<��:��>
Ore �  for <ore:oc:�N> :
-<��:�N>
Ore �  for <ore:oc:�> :
-<��:�>
Ore �  for <ore:oc:��> :
-<��:��>
Ore �  for <ore:oc:�j> :
-<��:�M>
Ore �  for <ore:oc:��> :
-<��:��>
Ore �  for <ore:oc:�k> :
-<��:�O>
Ore �  for <ore:oc:�D> :
-<��:��>
Ore �  for <ore:oc:��> :
-<��:��:1>
Ore �  for <ore:oc:�l> :
-<��:��:2>
Ore �  for <ore:oc:�m> :
-<��:��:3>
Ore �  for <ore:oc:��> :
-<��:��:4>
Ore �  for <ore:oc:��> :
-<��:��:5>
Ore �  for <ore:oc:� > :
-<��:��:6>
Ore �  for <ore:oc:��> :
-<��:��:7>
Ore �  for <ore:oc:��> :
-<��:��:8>
Ore �  for <ore:oc:��> :
-<��:��:9>
Ore �  for <ore:oc:��> :
-<��:��:10>
Ore �  for <ore:oc:��> :
-<��:��:11>
Ore �  for <ore:oc:�h> :
-<��:��:12>
Ore �  for <ore:oc:��> :
-<��:��:13>
Ore �  for <ore:oc:��> :
-<��:��:14>
Ore �  for <ore:oc:��> :
-<��:��:15>
Ore �  for <ore:oc:��> :
-<��:��:16>
Ore �  for <ore:oc:�n> :
-<��:��:17>
Ore �  for <ore:oc:�o> :
-<��:��:18>
Ore �  for <ore:oc:�)> :
-<��:��:20>
Ore �  for <ore:oc:�&> :
-<��:��:21>
Ore �  for <ore:oc:��> :
-<��:��:23>
Ore �  for <ore:oc:�p> :
-<��:��:24>
Ore �  for <ore:oc:�+> :
-<��:��:26>
Ore �  for <ore:oc:�q> :
-<��:��:27>
Ore �  for <ore:oc:��> :
-<��:��:28>
Ore �  for <ore:oc:��> :
-<��:��>
Ore �  for <ore:oc:�r> :
-<��:��:2>
Ore �  for <ore:oc:�s> :
-<��:��:3>
Ore �  for <ore:oc:��> :
-<��:��:4>
Ore �  for <ore:oc:�y> :
-<��:�y>
Ore �  for <ore:oc:�t> :
-<��:��>
Ore �  for <ore:oc:�u> :
-<��:��:5>
Ore �  for <ore:oc:��> :
-<��:�>
Ore �  for <ore:oc:��> :
-<��:�:1>
Ore �  for <ore:oc:�> :
-<��:�:2>
Ore �  for <ore:oc:�!> :
-<��:�:3>
Ore �  for <ore:oc:�> :
-<��:�:4>
Ore �  for <ore:oc:� > :
-<��:�:5>
Ore �  for <ore:oc:��> :
-<��:�:6>
Ore �  for <ore:oc:�#> :
-<��:�:7>
Ore �  for <ore:oc:��> :
-<��:�:8>
Ore �  for <ore:oc:�$> :
-<��:�:9>
Ore �  for <ore:oc:��> :
-<��:�:10>
Ore �  for <ore:oc:�> :
-<��:�:11>
Ore �  for <ore:oc:�v> :
-<��:�:13>
Ore �  for <ore:oc:�w> :
-<��:�:14>
Ore �  for <ore:oc:�x> :
-<��:�:15>
Ore �  for <ore:oc:�y> :
-<��:�:16>
Ore �  for <ore:oc:�z> :
-<��:�:17>
Ore �  for <ore:oc:�{> :
-<��:�:19>
Ore �  for <ore:oc:�|> :
-<��:�:20>
Ore �  for <ore:oc:�"> :
-<��:��:1>
Ore �  for <ore:oc:�> :
-<��:��:2>
Ore �  for <ore:oc:�}> :
-<��:��:3>
Ore �  for <ore:oc:�*> :
-<��:��:4>
Ore �  for <ore:oc:�~> :
-<��:��:5>
Ore �  for <ore:oc:��> :
-<��:��:6>
Ore �  for <ore:oc:�> :
-<��:��:7>
Ore �  for <ore:oc:�> :
-<��:��:8>
Ore �  for <ore:oc:��> :
-<��:��:9>
Ore �  for <ore:oc:��> :
-<��:��:10>
Ore �  for <ore:oc:��> :
-<��:��:11>
Ore �  for <ore:oc:��> :
-<��:��:12>
Ore �  for <ore:oc:��> :
-<��:��>
Ore �  for <ore:oc:��> :
-<��:��:1>
Ore �  for <ore:oc:��> :
-<��:��:2>
Ore �  for <ore:oc:��> :
-<��:��:3>
Ore �  for <ore:oc:��> :
-<��:��:4>
Ore �  for <ore:oc:��> :
-<��:��:5>
Ore �  for <ore:oc:��> :
-<��:��:6>
Ore �  for <ore:oc:��> :
-<��:��:7>
Ore �  for <ore:oc:��> :
-<��:��:8>
Ore �  for <ore:oc:��> :
-<��:��:9>
Ore �  for <ore:oc:��> :
-<��:��:10>
Ore �  for <ore:oc:��> :
-<��:��:11>
Ore �  for <ore:oc:��> :
-<��:��:12>
Ore �  for <ore:oc:��> :
-<��:��:13>
Ore �  for <ore:oc:��> :
-<��:��:14>
Ore �  for <ore:oc:��> :
-<��:��:15>
Ore �  for <ore:oc:��> :
-<��:��:16>
Ore �  for <ore:oc:��> :
-<��:��:17>
Ore �  for <ore:oc:��> :
-<��:��:18>
Ore �  for <ore:oc:��> :
-<��:��:19>
Ore �  for <ore:oc:��> :
-<��:��:20>
Ore �  for <ore:oc:��> :
-<��:��:21>
Ore �  for <ore:oc:��> :
-<��:��:22>
Ore �  for <ore:oc:��> :
-<��:��:23>
Ore �  for <ore:oc:��> :
-<��:��:24>
Ore �  for <ore:oc:��> :
-<��:��:25>
Ore �  for <ore:oc:��> :
-<��:��:26>
Ore �  for <ore:oc:��> :
-<��:��:27>
Ore �  for <ore:oc:��> :
-<��:��:28>
Ore �  for <ore:oc:��> :
-<��:��:29>
Ore �  for <ore:oc:mfu> :
-<��:��:30>
Ore �  for <ore:oc:��> :
-<��:��:31>
Ore �  for <ore:oc:��> :
-<��:�q>
Ore �  for <ore:oc:��> :
-<��:�q:1>
Ore �  for <ore:oc:��> :
-<��:�q:2>
Ore �  for <ore:oc:��> :
-<��:�q:3>
Ore �  for <ore:oc:��> :
-<��:�q:4>
]==],['ct.lua']= [==[�� �� = ��('��')
�� fs = ��('��')

�� �� = {...}
�� �� = ��.��(�'.�0(��, 1))

if not fs.��(��) ��
	if fs.��(�� .. '.lua') ��
		�� = �� .. '.lua'
	��
		��('�� not ��.')
		��
	end
end

�� �� = ��(��)
�� a, b = ��(��, ��.��, �'.�I(��))
if not a ��
	�� f = io.��('ct.txt', 'w')
	f:��(b)
	f:��()
	��('�� ��.')
end]==],['ct.txt']= [==[/mnt/cf4/lib/��.lua:54: �� to �� a nil ��
�F ��:
	�b:796: in �� '__��'
	/mnt/cf4/lib/��.lua:54: in �� '��'
	/mnt/cf4/lib/��.lua:27: in �� '��'
	/mnt/cf4/�E.lua:102: in �� '��'
	/mnt/cf4/�E.lua:405: in �� ��
	[C]: in �� '��'
	�b:791: in �� '��'
	/mnt/cf4/ct.lua:17: in �� ��
	/mnt/cf4/faf.lua:19: in �� ��
	(...�� ��...)
	[C]: in �� '��'
	�b:791: in �� '��'
	/lib/��.lua:63: in �� </lib/��.lua:59>]==],['db']={['crafting.db']= [==[��:��|11 1 sd 32 �� ore:�� ore:oc:�� ore:oc:�� ore:oc:��
��:��|12 1 sd 32 �� ore:�� ore:oc:�� ore:oc:�� ore:oc:��
��:��|10 1 sd 32 �� ��:��_�� ore:oc:�� ore:oc:�� ore:oc:��
��:dye|11 1 sl 00 1 ��:��_��
��:��_�� 6 sd 33 �� ore:�� ore:�� ore:��
��:��|14 1 sl 00 12 ore:�� ��:��
��:��_�� 1 sd 33 �� ��:��_�� ��:�� ��:��_�� ��:��_�� ��:��
��:�� 16 sd 12 11 ore:��
��:��|8 1 sd 32 �� ore:oc:�� ore:oc:�� ore:�� ore:oc:�� ore:��
��:��|9 2 sd 33 �� ��:��_eye ore:oc:�� ore:oc:�� ore:oc:��
��:��|6 1 sd 32 �� ore:oc:�� ore:oc:�� ore:oc:��
��:��|7 1 sd 32 �� ore:�� ore:oc:�� ore:oc:��
��:�� 1 sd 33 �� ore:�� ore:oc:�� ore:oc:�� ore:oc:��
��:��_�� 1 sd 33 �� ��:dye|15
��:��|7 1 sl 00 123 ��:��|9 ore:�� ��:��|*
��:��|1 1 sd 32 �� ore:oc:�� ore:oc:�� ore:oc:�� ore:oc:��
��:��|4 1 sd 32 �� ore:�� ore:oc:�� ore:oc:��
��:�� 1 sd 33 �� ore:�� ore:�� ore:��
��:��|5 1 sd 32 �� ore:�� ore:oc:�� ore:�� ore:oc:��
��:��_�� 9 sd 11 1 ore:��
��:��|2 1 sd 32 �� ore:oc:�� ore:oc:�� ore:oc:�� ore:oc:��
��:��|3 1 sd 32 �� ore:oc:�� ore:oc:�� ore:oc:�� ore:oc:��
��:��_�� 3 sd 32 �� ��:��|2 ��:��
��:��|5 1 sd 33 �� ��:��|3 ��:�� ��:��|1 ��:��_��_��|*
��:��_�� 2 sd 33 �� ore:�� ore:��
��:��_��_�� 1 sd 33 �� ��:��_��
��:�� 9 sl 00 1 ��:��|*
��:��|13 1 sd 33 �� ��:��|2 ore:��
��:bed|14 1 sl 00 12 ��:bed ore:��
��:��_�� 6 sd 32 �� ��:��
��:��|2 1 sl 00 12 ore:�� ��:��
��:��_��_��|5 16 sd 32 �� ore:��
��:dye|8 2 sl 00 12 ore:�� ore:��
��:��_�� 1 sd 33 �� ��:��
��:bed|9 1 sl 00 12 ��:bed ore:��
��:��_��_��|2 8 sd 33 �� ��:��_�� ore:��
��:��_�� 4 sd 33 �� ��:��_��|* ore:�� ore:��
��:��|15 1 sl 00 12 ore:�� ��:��
��:��_�� 9 sd 11 1 ��:��
��:dye|15 9 sl 00 1 ��:��_��
��:��_��_�� 1 sd 32 �� ��:�� ��:��|1
��:��_�� 1 sd 33 �� ore:��
��:��|7 1 sd 32 �� ��:��|1 ��:��|2 ��:��
��:bed|4 1 sd 32 �� ��:��|4 ore:��
��:�� 1 sd 33 �� ore:��
��:��_�� 1 sd 33 �� ore:��
��:��|1 9 sl 00 1 ��:��|2
��:��_oak_�� 3 sd 23 �� ��:��|5
��:��_�� 1 sl 00 123 ��:�� ore:�� ore:��
��:��_�� 1 sd 32 �� ore:��
��:bed|3 1 sd 32 �� ��:��|3 ore:��
��:��_�� 1 sd 33 �� ore:�� ��:��
��:��_�� 1 sd 33 �� ore:��
��:��_pot 1 sd 32 �� ��:��
��:��_�� 1 sd 33 �� ore:�� ore:��
��:dye|7 1 sl 00 1 ��:red_��|8
��:��|5 4 sl 00 �  ��:��|2 ��:��
��:��_�|1 1 sd 33 � ��:� ore:�� ��:��_��
��:��_��_��|2 16 sd 32 �� ore:�
��:� 1 sd 33 � ��:��_�� ore:oc:� ore:oc:�� ore:oc:� ore:oc:��
��:��_��_� 4 sd 33 �	 ��:��_��
��:�
|5 4 sd 33 � ore:�� ��:��|5
��:��|10 1 sl 00 12 ore:� ��:��
��:�|1 4 sd 22 � ��:�
��:��_��_��|12 8 sd 33 �� ��:��_�� ore:�
��:� 1 sd 33 � ore:oc:�� ore:� ore:oc:�� ore:�� ore:�� ��:�_�
��:bed|2 1 sd 32 �� ��:��|2 ore:��
��:��_�� 1 sd 13 112 ore:�� ore:��
��:��_�� 3 sd 32 �� ��:��|1 ��:��
��:��_��|13 8 sd 33 �� ore:� ore:�
��:lit_� 1 sd 12 12 ��:� ��:�
��:� 1 sd 33 � ore:�� ore:oc:� ��:��_� ore:�� ore:oc:�� ore:oc:�� ore:oc:�
��:�|7 1 sd 33 �� ��:�|6
��:�|6 1 sd 33 �� ��:�|5
��:��_� 4 sd 33 �� ��:��_��|* ore:�� ore:� 
��:dye|7 3 sl 00 122 ore:�� ore:��
��:�|1 1 sd 33 �� ��:�
��:�|5 1 sd 33 �� ��:�|4
��:�|4 1 sd 33 �� ��:�|3
��:�|3 1 sd 33 �� ��:�|2
��:�|2 1 sd 33 �� ��:�|1
��:��_��|1 8 sd 33 �� ore:� ore:�!
��:�" 1 sd 33 �� ore:�# ore:�� ore:��
��:�� 4 sd 33 �$ ore:��
��:�%|8 1 sl 00 122 ��:�%|9 ��:�&_�'|*
��:�( 9 sl 00 1 ��:�)
��:�|1 9 sl 00 1 ��:�|2
��:� 1 sd 33 � ore:�� ore:oc:�� ore:�� ore:oc:�* ore:oc:��
��:bed|4 1 sl 00 12 ��:bed ore:�+
��:��_�, 1 sd 32 �- ore:��
��:�._�� 3 sd 23 �� ��:��|4
��:�/|3 8 sd 33 �� ��:�|3 ��:��|5
��:�0|6 1 sd 32 �1 ore:�� ��:�2 ore:�� ��:�_��|*
��:��|2 1 sd 33 �� ��:��|1
��:�3_�|9 8 sl 00 �4 ore:�� ��:�5 ��:�6
��:�%|6 1 sl 00 122 ��:�%|9 ��:�7|*
��:�8_�9 1 sd 12 12 ore:�� ��:�9
��:��_hoe 1 sd 23 �: ore:�� ore:��
��:�;_�< 3 sl 00 123 ore:�= ��:�_� ��:��,��:��|1
��:��_��_��|15 8 sd 33 �� ��:��_�� ore:��
��:� 9 sd 11 1 ��:�_��
��:�� 9 sd 11 1 ��:��_��
��:�>|3 1 sd 33 �� ��:��|17 ore:�? ��:�@ ��:��
��:�A_�� 1 sd 33 �� ore:�� ore:��
��:�B|3 1 sd 33 �C ore:�D ��:�E ��:�B|2
��:�F 1 sd 33 �G ore:�� ore:��
��:�3_�|13 8 sl 00 �4 ore:� ��:�5 ��:�6
��:oak_� 4 sd 33 �	 ��:��
��:��_�H 1 sd 11 1 ore:��
��:��|2 4 sd 22 � ��:�I|*
��:dye|12 2 sl 00 12 ore:�J ore:��
��:��_��|12 8 sd 33 �� ore:� ore:�
��:�%|4 1 sl 00 122 ��:�%|9 ��:�K_�L|*
��:�M 1 sd 33 �� ore:�� ore:oc:�� ore:�N ore:oc:��
��:�O 1 sl 00 12 ��:�P ore:oc:�Q
��:�R 1 sd 33 �C ore:�� ��:��|2 ��:�S
��:�T 1 sd 22 � ��:�5
��:�3_�|4 8 sl 00 �4 ore:�+ ��:�5 ��:�6
��:�U_��_�� 1 sd 32 �� ��:�� ��:��|3
��:�_�V 9 sd 11 1 ��:�_��
��:��|9 2 sl 00 11 ��:��|9
��:�W 1 sd 33 �X ��:�_� ��:�Y ore:��
��:�Z 1 sd 32 �[ ��:�_� ore:�� ore:��
��:�3_�|14 8 sl 00 �4 ore:�� ��:�5 ��:�6
��:�)|2 9 sl 00 1 ��:�)|3
��:�A_�\|2 6 sd 31 111 ��:��|2
��:�� 1 sl 00 123 ��:��|*,��:��_��|*,��:�]_��|* ore:�� ��:��|*
��:�^_�� 4 sd 22 � ��:�__�`_�a
��:�%|2 1 sl 00 122 ��:�%|9 ��:�b_�L|*
��:�A_�H 1 sd 11 1 ore:��
��:��_� 4 sd 33 �	 ��:��
��:�c_rod 1 sd 33 �d ore:�� ore:��
��:��_�e 1 sd 33 �f ore:��
��:�%|3 1 sl 00 122 ��:�%|9 ore:�5
��:�g 1 sd 32 �h ��:��
��:�P|9 3 sd 21 11 ��:��|9
��:dye|9 2 sl 00 12 ore:�� ore:��
��:�i 1 sd 33 �� ore:�� ore:��
��:�) 1 sd 33 �� ��:�(
��:�3_�|7 8 sl 00 �4 ore:�j ��:�5 ��:�6
��:�k 1 sl 00 123 ��:�l|* ��:�� ��:��_��|*
��:�3_�|3 8 sl 00 �4 ore:�m ��:�5 ��:�6
��:�n 1 sd 33 �o ore:�� ��:� ore:oc:�� ore:�
��:�p 1 sl 00 12 ��:�p ��:�q
��:�A_�\|4 6 sd 31 111 ��:��|4
��:bed|7 1 sl 00 12 ��:bed ore:�j
��:��_�� 1 sl 00 123 ��:��_�� ��:red_�� ��:��
��:dye|1 1 sl 00 1 ��:red_��|4
��:�r 1 sd 33 �s ore:�� ��:�t|1
��:dye|1 1 sl 00 1 ��:�u
��:�v_key 1 sd 23 �w ore:�� ore:�� ��:��_��
��:�x 1 sd 33 �y ore:� ore:�z ��:��
��:tnt 1 sd 33 �{ ore:�= ��:�5,��:�5|1
��:bed|8 1 sd 32 �� ��:��|8 ore:��
��:�|_and_�} 1 sl 00 12 ore:�� ��:�|
��:dye|14 1 sl 00 1 ��:red_��|5
��:bed|6 1 sl 00 12 ��:bed ore:�~
��:��_�|2 1 sd 33 �y ore:�� ��:��_�� ��:�
��:�P|12 3 sd 21 11 ��:��|12
��:�U_�� 3 sd 23 �� ��:��|3
��:�|3 9 sl 00 1 ��:�|4
��:��_��_��|15 16 sd 32 �� ore:��
��:��|4 4 sl 00 �  ore:�5 ore:�
��:��|1 1 sd 33 �� ore:��
��:�P|11 3 sd 21 11 ��:��|11
��:��_�� 1 sd 33 �� ore:��
��:�� 1 sl 00 123 ��:�l|* ��:�� ��:��_�'|*
��:� 9 sl 00 1 ��:�|1
��:��_�q 1 sd 33 �� ore:�� ��:�� ��:��_��
��:map 1 sd 33 �� ��:�� ��:��_map|*
��:red_��_�� 1 sd 22 �� ��:�� ��:��_��
��:�� 1 sd 32 �� ore:oc:�� ore:oc:�� ore:oc:��
��:��_� 4 sd 33 �	 ��:��|2
��:��_��|8 8 sd 33 �� ore:� ore:��
��:��_��_�� 16 sd 32 �� ore:��
��:��_axe 1 sd 23 �� ore:�� ore:��
��:��_��_��|3 16 sd 32 �� ore:��
��:�3_�|12 8 sl 00 �4 ore:� ��:�5 ��:�6
��:��_��|9 8 sd 33 �� ore:� ore:��
��:�� 3 sd 32 �� ore:�# ��:��|2 ��:��
��:dye|11 2 sl 00 1 ��:��_��
��:��_�� 1 sd 13 112 ore:�� ore:��
��:��_��_� 4 sd 33 �	 ��:�I,��:�I|1,��:�I|2,��:�I|3
��:��_key 1 sl 00 12 ��:�v_key ��:��_tag
��:��|3 2 sd 22 �� ore:�� ��:�Y
��:�._�� 3 sd 32 �� ��:��|4 ��:��
��:��|1 8 sd 13 102 ��:��|* ��:�0|2
��:�� 1 sd 33 �� ��:end_��|* ��:��|3 ore:��_��_��
��:end_�� 4 sd 22 � ��:end_��
��:bed|1 1 sl 00 12 ��:bed ore:�!
��:��|6 1 sd 33 �� ��:��|9 ore:��
��:�|4 9 sl 00 1 ��:�|5
��:dye|13 4 sl 00 �� ore:�J ore:�� ore:��
��:��_hoe 1 sd 23 �: ore:�� ore:��
��:�� 1 sd 22 � ��:��
��:��|3 4 sd 11 1 ��:log|3
��:�._��_�� 1 sd 32 �� ��:�� ��:��|4
��:�� 1 sd 33 �� ore:�� ore:��
��:�P|2 3 sd 21 11 ��:��|2
��:�%|5 1 sl 00 122 ��:�%|9 ��:��|*
��:�%|7 1 sl 00 122 ��:�%|9 ��:��|*
��:��|4 1 sl 00 12 ore:�+ ��:��
��:��_��_��|13 8 sd 33 �� ��:��_�� ore:�
��:��_�� 1 sd 33 �� ��:�_�� ��:��
��:��_� 1 sd 33 �� ore:�� ore:��
��:�� 4 sd 12 12 ��:�� ��:��|3
��:�� 1 sd 23 �� ��:��|8 ��:��|*
��:��_�� 16 sd 32 �� ��:��
��:��_�e 1 sd 33 �f ore:��
��:��|1 1 sl 00 12 ��:�� ��:��|10
��:�� 1 sd 22 � ore:��
��:�� 1 sd 33 �� ore:�� ore:�� ore:�� ��:��
��:��_�� 1 sd 13 112 ore:�� ore:��
��:��_��|10 8 sd 33 �� ore:� ore:�
��:��_�V 1 sd 33 �� ��:��_��
��:�T|1 1 sd 12 11 ��:��_�\|1
��:�� 9 sl 00 1 ��:��|1
��:��_�� 1 sd 33 �� ore:�� ore:��
��:�� 1 sd 22 � ��:��_��
��:��_�� 1 sd 32 �� ��:�� ��:��
��:�� 1 sd 33 �� ore:oc:��
��:dye|13 1 sl 00 1 ��:red_��|2
��:�A_�\|1 6 sd 31 111 ��:��|1
��:�� 3 sd 33 �� ore:��
��:�� 1 sd 33 �� ��:dye|13,��:��|3,��:dye|5 ore:�� ore:��
��:��_key 1 sl 00 12 ��:�v_key ��:��_��
��:�_� 1 sd 12 12 ore:�� ore:��
��:��_�� 1 sd 12 12 ��:�� ��:��
��:�A_��_�� 1 sd 21 11 ore:��
��:�3_� 8 sl 00 �4 ore:�� ��:�5 ��:�6
��:��|7 1 sl 00 12 ore:�j ��:��
��:�/ 8 sd 33 �� ore:� ��:��|5
��:�P|1 3 sd 21 11 ��:��|1
��:�) 9 sl 00 1 ��:�)|1
��:bed|7 1 sd 32 �� ��:��|7 ore:��
��:�� 1 sd 33 �� ��:��_�L ��:�� ore:egg ��:��
��:��_�� 1 sd 33 �� ore:�� ore:��
��:��|14 1 sd 33 �� ��:��|1 ore:��
��:��_�, 1 sd 32 �- ore:��
��:��|4 1 sd 33 �� ��:��|3 ��:��|1 ��:��
��:��_�� 1 sd 33 �� ore:�� ��:��_�\
��:�t 4 sl 00 1 ��:�t|1
��:�� 1 sd 33 �� ��:end_��|* ��:end_rod|* ��:��_��|* ��:��|3
��:��_��_��|6 16 sd 32 �� ore:��
��:�3_�|5 8 sl 00 �4 ore:�� ��:�5 ��:�6
��:�� 8 sd 13 102 ��:��|* ��:�0
��:��_�e 1 sd 33 �f ore:��
��:�A_�\|3 6 sd 31 111 ��:��|3
��:��|1 4 sl 00 � ��:��
��:�>|2 1 sd 33 �� ��:��|17 ore:�� ��:�@ ��:��
��:��|1 1 sl 00 12 ��:��_key ��:��_�H
��:��|3 1 sd 33 �� ��:��|12 ore:��
��:��_��_��|4 8 sd 33 �� ��:��_�� ore:�+
��:�I|1 1 sl 00 12 ��:�I ��:��
��:�� 1 sd 33 �� ore:�� ore:�� ��:�_�|*
��:�E 1 sl 00 122 ��:��_��|* ��:��_��|*
��:�� 1 sl 00 �� ore:�� ore:��
��:�A_�� 1 sd 13 122 ore:�� ore:��
��:bed|13 1 sd 32 �� ��:��|13 ore:��
��:��|11 9 sl 00 1 ��:��|1
��:��|3 1 sl 00 12 ��:��_key ��:��_�H
��:�3_�|6 8 sl 00 �4 ore:�~ ��:�5 ��:�6
��:�� 1 sd 33 �� ore:��
��:��_�� 1 sd 33 �� ��:�_� ore:�� ��:��_�� ��:�
��:��_��|1 1 sd 33 �� ��:�W ore:�� ��:��_�� ��:�
��:dye|1 1 sl 00 1 ��:red_��
��:�3_�|2 8 sl 00 �4 ore:�� ��:�5 ��:�6
��:�� 1 sl 00 12 ��:��|* ��:�i|*
��:�t|2 5 sd 22 �� ore:�� ore:��
��:��_�� 1 sd 13 122 ore:�� ore:��
��:�� 1 sd 33 �� ore:oc:�� ore:�� ore:oc:�� ore:�N ore:�� ore:�� ��:�K_�L
��:��_�\|1 6 sd 31 111 ��:�T,��:�T|1,��:�T|2
��:hay_�� 1 sd 33 �� ��:��
��:��_�\|3 6 sd 31 111 ��:��
��:�� 1 sl 00 123 ��:��_�'|* ore:�� ��:��|*
��:��_��_box 1 sd 13 121 ��:��_�� ore:��
��:��|8 1 sd 33 �� ��:��|7 ore:��
��:��_��_��|3 8 sd 33 �� ��:��_�� ore:�m
��:��_�� 1 sd 33 �� ore:�� ore:��
��:�� 1 sd 33 �o ore:�� ��:��_�� ore:oc:�� ore:�
��:�|4 9 sl 00 1 ��:�|5
��:�� 1 sd 32 �h ore:��
��:�|3 9 sl 00 1 ��:�|4
��:�� 1 sd 33 �$ ore:��
��:��_��|7 8 sd 33 �� ore:� ore:�j
��:�� 16 sd 33 �� ore:�� ore:��
��:��_��_��|5 8 sd 33 �� ��:��_�� ore:��
��:��_�� 1 sd 13 112 ore:�� ore:��
��:��|11 1 sd 33 �� ��:��|4 ore:��
��:�B|2 1 sd 33 �C ore:�� ��:��_��_��_��|* ��:�B|1
��:bed|14 1 sd 32 �� ��:��|14 ore:��
��:��_oak_�� 3 sd 32 �� ��:��|5 ��:��
��:��|28 9 sl 00 1 ��:��
��:��_�� 1 sd 13 122 ore:�� ore:��
��:�� 1 sd 32 �� ore:��
��:�� 1 sd 33 � ore:�� ore:�� ��:�L|*
��:��_�q|1 1 sd 33 �� ore:�� ��:��_�V ��:��_��
��:��_��_��|14 8 sd 33 �� ��:��_�� ore:��
��:��_�� 1 sd 33 �� ��:��
��:�� 1 sl 00 12 ��:�v_key ��:��_�H
��:�_� 2 sl 00 1 ��:�_rod
��:�3_�|11 8 sl 00 �4 ore:�J ��:�5 ��:�6
��:��_��|11 8 sd 33 �� ore:� ore:�J
��:��_�� 1 sd 33 �� ��:��_�� ��:�� ��:��_�� ��:red_�� ��:��
��:��_�, 1 sd 32 �- ore:��
��:��_�� 1 sd 33 �� ore:��
��:��_�� 1 sd 33 �� ore:��
��:�� 1 sd 33 � ore:�� ore:oc:�� ��:��_� ore:�� ore:oc:��
��:red_�T|2 4 sd 22 � ��:red_�T
��:��|1 1 sd 13 123 ore:�� ore:�� ore:��
��:�0|5 4 sl 00 123 ��:�2 ��:�� ore:��
��:bed|2 1 sl 00 12 ��:bed ore:��
��:��|8 1 sd 33 � ��:��|3 ��:��_��|* ��:��_��|* ��:��|1 ��:��|2
��:�� 1 sd 33 � ore:�� ��:�� ore:�N ore:oc:�� ore:oc:��
��:��|16 1 sd 33 �� ��:��|10 ��:��|17 ��:��|15
��:dye|14 2 sl 00 12 ore:�� ore:�+
��:��_� 4 sd 33 �	 ��:��|1
��:bed|15 1 sd 32 �� ��:��|15 ore:��
��:dye|7 1 sl 00 1 ��:red_��|3
��:�� 1 sd 33 � ore:�� ore:oc:�� ��:��_� ore:�� ore:oc:��
��:dye|7 1 sl 00 1 ��:red_��|6
��:�/|1 1 sl 00 12 ��:�/ ��:�_�|*
��:��_�� 1 sd 22 � ��:��
��:�2 64 sd 33 �� ��:��_�\ ore:� ore:��
��:�� 4 sd 32 �� ore:��
��:�� 1 sd 22 � ore:��
��:�� 9 sd 11 1 ��:��_��
��:��_��_��|13 16 sd 32 �� ore:��
��:bed|13 1 sl 00 12 ��:bed ore:�
��:�S 1 sd 32 �� ��:��|3 ��:�� ��:��
��:�� 1 sd 33 � ore:�� ore:oc:�� ore:�� ore:oc:�� ore:oc:��
��:�3_�|15 8 sl 00 �4 ore:�� ��:�5 ��:�6
��:�� 1 sd 33 �� ��:��|3 ore:�� ��:��
��:�3_�|10 8 sl 00 �4 ore:� ��:�5 ��:�6
��:��|5 1 sd 33 �� ��:��|10 ore:��
��:�P|5 3 sd 21 11 ��:��|5
��:�� 1 sd 33 � ore:�� ore:oc:�� ��:��_� ore:�� ore:oc:��
��:��|2 4 sd 11 1 ��:log|2
��:��_��_��|8 16 sd 32 �� ore:��
��:��_�� 2 sd 33 �� ore:�� ��:��
��:tnt_�� 1 sd 12 12 ��:tnt ��:��
��:��_�� 8 sd 33 �� ore:� ore:��
��:�P|14 3 sd 21 11 ��:��|14
��:��|4 4 sd 11 1 ��:��
��:�A_hoe 1 sd 23 �: ore:�� ore:��
��:��|5 9 sd 33 �� ��:��|3 ore:��
��:�|6 9 sl 00 1 ��:�|7
��:��|6 1 sl 00 123 ��:��|9 ore:�� ore:��
��:bed|8 1 sl 00 12 ��:bed ore:��
��:�^_� 4 sd 33 �	 ��:�^_��
��:�B|1 1 sl 00 1 ��:�B|1
��:�B|4 1 sl 00 1 ��:�B|4
��:��|11 1 sl 00 12 ore:�J ��:��
��:�� 1 sd 33 �� ��:��|12
��:�� 1 sl 00 12 ��:��|1 ��:��|2
��:�� 1 sd 11 1 ore:��
��:�9 1 sd 33 �� ore:�� ore:�� ore:�� ore:��
��:�Q 1 sd 33 � ore:�� ore:oc:�  ore:�� ore:�� ore:oc:��
��:bed|12 1 sd 32 �� ��:��|12 ore:��
��:bed|11 1 sd 32 �� ��:��|11 ore:��
��:�P|8 3 sd 21 11 ��:��|8
��:��|15 1 sd 33 �� ��:�� ore:��
��:�T|2 4 sd 22 � ��:�T
��:end_� 1 sd 33 � ore:� ��:��_eye ��:�_�
��:��|7 1 sd 33 �� ��:��|8 ore:��
��:��_�� 1 sd 33 �� ore:�� ore:��
��:��_�� 4 sd 33 �� ��:��_��|* ore:�� ore:�
��:�A_axe 1 sd 23 �� ore:�� ore:��
��:� 1 sd 33 � ore:�� ��:bow ore:��
��:��|1 1 sd 33 �� ��:��
��:��_��_��|9 16 sd 32 �� ore:�
��:�_�	 1 sd 33 �
 ore:� ��:�Y ��:�A_�\,��:�A_�\|1,��:�A_�\|2,��:�A_�\|3,��:�A_�\|4,��:�A_�\|5
��:�Y_� 4 sd 33 �	 ��:�Y_��,��:�Y_��|1,��:�Y_��|2
��:�P 3 sd 21 11 ��:��
��:��|1 4 sd 11 1 ��:log|1
��:�B 1 sl 00 1 ��:�B
��:��_��|14 8 sd 33 �� ore:� ore:��
��:�/|2 8 sd 33 �� ��:� ��:��|5
��:�^_�\ 6 sd 31 111 ��:�^_��
��:�P|13 3 sd 21 11 ��:��|13
��:�|1 9 sl 00 1 ��:�|2
��:� 1 sl 00 121 ore:� ��:�|*
��:� 1 sd 33 �C ��:��|3 ��:�� ��:�S
��:�|1 1 sl 00 121 ��:��|* ��:�|*
��:�_� 2 sd 13 123 ore:�� ore:�� ore:��
��:�_�� 1 sl 00 12 ore:�� ��:�_�
��:�|4 1 sl 00 121 ore:�� ��:�|*
��:�� 1 sd 33 � ore:�� ore:��
��:�|5 1 sl 00 123 ��:�� ��:�|* ��:��|1
��:�|20 1 sd 33 � ore:�� ore:oc:�� ��:��_� ore:oc:� ore:oc:��
��:�|2 1 sl 00 123 ore:� ��:�|* ore:�~
��:�|3 1 sl 00 121 ��:��|* ��:�|*
��:��_�� 4 sd 33 �� ��:��_��|* ore:�� ore:�
��:�6 9 sl 00 1 ��:�
��:��|1 1 sd 33 � ��:�� ��:��_�� ��:�_��
��:��|2 1 sd 33 �� ��:��|13 ore:��
��:��|2 1 sd 33 � ��:��|1 ��:�_�� ��:��_��
��:��|3 1 sd 33 � ��:��|2 ��:��_�� ��:��_��
��:�|17 1 sd 33 � ore:�� ore:oc:�� ore:oc:� ore:oc:� ore:oc:�
��:��|4 1 sd 33 � ��:��|3 ��:��_�� ��:�__��
��:��_�q|3 1 sd 33 �� ore:�� ��:�� ��:��_��
��:�|19 1 sd 33 � ore:�� ore:oc:� ore:oc:�� ore:oc:� ore:oc:��
��:��_��|2 8 sd 33 �� ore:� ore:��
��:��_�� 1 sd 33 �� ��:�� ��:��_eye
��:�|1 1 sd 33 �� ��:�
��:�_�� 9 sd 11 1 ore:��
��:�|2 1 sd 33 �� ��:�|1
��:�� 1 sd 33 �� ��:��|4 ��:��_��
��:��_� 16 sd 32 �� ore:��
��:�|3 1 sd 33 �� ��:�|2
��:�|10 1 sd 32 � ore:oc:�� ��:��_�� ore:oc:��
��:�u_� 1 sd 33 �� ��:�u ��:��
��:�|4 1 sd 33 �� ��:�|3
��:�|11 1 sd 32 �� ore:oc:�� ore:oc:�� ore:oc:��
��:�|5 1 sd 33 �� ��:�|4
��:�|8 1 sd 32 � ore:oc:�� ��:��_�� ore:oc:��
��:��_� 1 sd 22 � ore:��
��:�|9 1 sd 32 � ore:oc:�� ore:oc:�� ore:oc:��
��:� 1 sd 33 � ore:�� ��:� ��:��_eye ore:oc:�� ore:oc:��
��:�|15 1 sd 33 � ore:�� ore:oc:� ore:oc:�� ore:oc:�  ore:�� ore:oc:��
��:��|28 16 sd 33 �� ore:�6 ��:� ��:��|1 ��:�b_�L
��:�|16 1 sd 33 � ore:�� ore:oc:�� ore:oc:�� ore:oc:�! ore:oc:�"
��:�|13 1 sd 33 � ore:�� ore:oc:�# ore:oc:�� ore:oc:�! ore:�� ore:oc:��
��:�|14 1 sd 33 � ore:�� ore:oc:�$ ore:oc:�� ore:oc:� ore:�� ore:oc:��
��:�� 1 sd 33 �� ��:�5
��:��|24 1 sd 33 � ore:oc:�% ��:� ore:oc:�� ore:oc:�& ore:oc:� 
��:�' 1 sd 33 �( ��:�� ��:�W ore:�� ore:��
��:��|23 1 sd 33 � ore:oc:�% ��:� ore:oc:�� ore:oc:�) ore:oc:�
��:��|27 1 sl 00 �* ore:�� ore:�� ore:�+ ore:�� ore:oc:�+
��:��|26 1 sd 33 � ��:��_�� ��:� ore:oc:�  ��:�L ore:oc:��
��:dye|13 3 sl 00 123 ore:�J ore:�� ore:�~
��:��_�� 1 sd 32 �� ore:��
��:��_axe 1 sd 23 �� ore:�� ore:��
��:��_��_��|11 8 sd 33 �� ��:��_�� ore:�J
��:�, 1 sd 22 � ��:�,_�-
��:bed|5 1 sl 00 12 ��:bed ore:��
��:�� 1 sl 00 �. ��:��|* ore:��
��:�|7 1 sd 32 � ore:oc:�� ore:oc:�� ore:oc:��
��:��|4 4 sd 22 � ore:�/
��:�|5 1 sd 33 �0 ore:�� ��:� ore:oc:�� ore:oc:�� ore:oc:��
��:�|6 1 sd 32 � ore:oc:�� ��:��_�� ore:oc:��
��:��_�\ 6 sd 31 111 ��:��
��:bed|5 1 sd 32 �� ��:��|5 ore:��
��:��|1 1 sd 33 �1 ��:��_�� ore:�� ��:��_� ore:oc:�Q
��:� 1 sd 33 � ��:��_�� ��:� ore:oc:�� ore:oc:�� ore:oc:��
��:�� 1 sd 33 �1 ore:�� ore:�� ore:oc:�� ��:�8_�9
��:��|3 1 sd 33 �� ��:��_�� ore:oc:�Q ore:��
��:��|2 1 sd 33 �1 ��:��_�� ore:oc:�Q ��:��_� ore:��
��:��|5 1 sd 33 � ��:��|4 ��:�__�� ��:�2_��
��:�|3 1 sd 33 �0 ��:��_�� ��:� ore:oc:�� ore:oc:�� ore:oc:��
��:��|5 1 sd 33 �0 ore:�� ore:oc:�� ore:�N ore:�� ore:oc:��
��:��|6 1 sd 33 � ��:��|5 ��:�2_�� ��:�3
��:�|4 1 sd 33 �0 ore:�� ��:� ore:oc:�� ore:oc:�� ore:oc:��
��:��|4 1 sd 33 � ore:�� ore:� ore:oc:�� ��:��_eye ore:�� ore:oc:��
��:��|7 1 sd 33 � ��:��|6 ��:�3 ��:��_��
��:�|1 1 sd 33 � ore:�� ��:� ore:oc:�� ore:oc:�� ore:oc:��
��:��|8 1 sd 33 � ��:��|7 ��:��_�� ��:��_�V
��:�|2 1 sd 33 � ore:�� ��:� ore:oc:�� ore:oc:�� ore:oc:��
��:��|6 1 sd 33 �0 ore:�� ore:oc:�� ore:�N ore:�� ore:oc:��
��:�U_� 4 sd 33 �	 ��:��|3
��:�)|1 9 sl 00 1 ��:�)|2
��:�
 4 sd 33 � ore:�� ��:��
��:��|2 1 sd 33 �� ��:��|17
��:dye|13 2 sl 00 1 ��:��_��|1
��:�4|1 1 sd 33 �$ ��:�
��:bed|10 1 sl 00 12 ��:bed ore:�
��:��|5 1 sl 00 12 ore:�� ��:��
��:��|8 1 sl 00 12 ore:�� ��:��
��:�P|3 3 sd 21 11 ��:��|3
��:�5 1 sd 33 �� ��:��|* ��:��|*
��:�6 1 sl 00 123 ore:�� ��:�7 ore:��
��:�8 1 sl 00 12 ��:�8 ��:�q
��:�9 1 sd 33 �( ��:�� ��:�9 ore:�� ore:��
��:�B|3 1 sl 00 1 ��:�B|3
��:��|12 1 sd 33 �� ��:��|3 ore:��
��:�: 1 sd 33 �; ore:�� ��:�t|1
��:��_��|1 6 sd 32 �� ��:�<_��
��:dye|13 2 sl 00 12 ore:� ore:�~
��:��|1 3 sd 32 �� ��:��|3 ��:��|2 ��:��
��:��|1 1 sd 33 �� ��:��|14 ore:��
��:�^_�= 1 sd 12 11 ��:�^_�\
��:�>_��_��_�� 1 sd 21 11 ore:��
��:��_�� 1 sd 13 122 ore:�� ore:��
��:��_��|6 8 sd 33 �� ore:� ore:�~
��:��_�e 1 sd 33 �f ore:��
��:�? 1 sd 33 �( ��:�� ��:�W ore:�� ore:��
��:�@ 1 sd 33 � ore:oc:�� ore:�� ore:oc:�� ore:�� ore:�� ��:��_��
��:��|10 1 sd 33 �� ��:��|5 ore:��
��:�A 1 sd 32 �� ore:�� ��:��|* ��:��|*
��:��_��_�� 1 sd 21 11 ore:��
��:�l 1 sd 33 �B ore:�� ore:��
��:��_��_��|4 16 sd 32 �� ore:�?
��:�_�C 1 sd 33 �� ore:�� ore:��
��:�P|15 3 sd 21 11 ��:��|15
��:��|29 6 sl 00 12 ore:oc:�D ore:��
��:end_rod 4 sd 12 12 ��:�_rod ��:�__�`_�a
��:��_key 1 sl 00 12 ��:�v_key ��:��_eye
��:�E 1 sd 33 � ore:�� ore:�� ore:oc:�� ore:oc:�� ore:oc:��
��:��_� 1 sd 33 �� ��:� ore:�� ��:��_��
��:�% 1 sd 32 �1 ��:��_��|* ��:�%|9 ore:�� ��:�W|*
��:�<_�� 1 sl 00 12 ore:�� ��:��
��:��_�� 1 sd 32 �� ore:��
��:� 2 sd 32 �� ore:��
��:dye|12 1 sl 00 1 ��:red_��|1
��:�0 4 sd 32 �1 ore:�� ��:�2 ore:�� ore:��
��:��_one_�F 1 sd 33 �� ore:�� ��:�| ��:��_��
��:�G 8 sd 33 �� ��:��|* ��:�t|1
��:�H 1 sd 31 111 ��:��
��:�I 1 sl 00 123 ��:�l|* ore:�� ��:�J_eye|*
��:� 4 sd 12 12 ��:��,��:��|1 ore:��
��:�._�g 1 sd 32 �h ��:��|4
��:�� 1 sd 12 12 ore:�� ore:��
��:�� 8 sl 00 12 ��:��_��|* ��:�F|*
��:�� 1 sd 33 �K ore:�� ore:��
��:�>|1 1 sd 33 �� ��:��|17 ore:�� ��:�@ ��:��
��:dye|7 2 sl 00 12 ore:�j ore:��
��:��_��_�� 8 sd 33 �� ��:��_�� ore:��
��:map 1 sd 33 �� ore:�� ��:�
��:�	_�� 6 sd 33 �� ore:�� ��:��_��_�� ore:��
��:bed|6 1 sd 32 �� ��:��|6 ore:��
��:�L 1 sd 33 �M ore:�� ore:��
��:�N 1 sd 33 �O ore:�� ore:�� ore:� ore:oc:�� ore:� ore:�J
��:�P 1 sl 00 �Q ore:� ore:�� ��:��|* ore:�R ore:�� ore:�S ��:��_��|* ore:�z
��:�� 1 sd 33 �� ��:��|15 ore:��
��:�5 9 sl 00 1 ��:��
��:�T 1 sd 33 �� ore:�� ��:��,��:��|1,��:��|2,��:��|3,��:��|4,��:��|5,��:��|6,��:��|7,��:��|8,��:��|9,��:��|10,��:��|11,��:��|12,��:��|13,��:��|14,��:��|15
��:��_�� 1 sd 13 122 ore:�� ore:��
��:��_�\|5 6 sd 31 111 ��:�I,��:�I|1,��:�I|2,��:�I|3
��:�U 3 sd 33 �� ore:�� ore:��
��:�I 4 sd 22 � ��:��
��:dye|15 3 sl 00 1 ore:��
��:�>|5 1 sd 33 �� ��:��|17 ore:� ��:�@ ��:��
��:�V|1 1 sl 00 12 ��:�V|1 ��:�q
��:��_�' 1 sd 22 � ore:��
��:�V 1 sl 00 12 ��:�V ��:�q
��:��|2 1 sd 33 � ��:��|3 ��:�� ore:��
��:��|3 1 sl 00 12 ore:�m ��:��
��:�B 1 sd 33 �C ore:�� ��:��_�\|3,��:��_�\ ��:��|*
��:�W 1 sd 33 �� ore:�� ��:��_��|* ��:�X
��:��|1 1 sl 00 12 ore:�! ��:��
��:bed|15 1 sl 00 12 ��:bed ore:��
��:�P|6 3 sd 21 11 ��:��|6
��:�A_�\|5 6 sd 31 111 ��:��|5
��:��_��_��|1 8 sd 33 �� ��:��_�� ore:�!
��:�._� 4 sd 33 �	 ��:��|4
��:��_�� 3 sd 23 �� ��:��|2
��:�� 1 sd 33 �Y ��:��_�� ore:��
��:�_�V 1 sd 33 �� ��:�_��
��:��_�V 9 sd 11 1 ��:��_��
��:�Z 1 sd 33 � ��:��|3 ��:��_��|* ��:��
��:� 9 sl 00 1 ��:�|1
��:��|1 1 sd 33 �� ��:�_�|* ore:��
��:�[ 1 sd 33 �\ ��:��|8 ore:�� ore:��
��:bed|1 1 sd 32 �� ��:��|1 ore:��
��:�] 4 sd 33 �{ ore:�� ore:oc:�^
��:�_ 1 sl 00 123 ��:�l|* ��:�� ��:��|*
��:��_�� 1 sd 22 � ��:��
��:�` 1 sd 33 � ore:�� ore:�a ore:�N ore:oc:�� ore:oc:��
��:�A_�� 1 sd 13 112 ore:�� ore:��
��:��_��_�� 1 sd 32 �� ��:�� ��:��|2
��:�%|9 1 sd 33 �1 ore:�� ore:�� ore:�� ��:�b
��:�c 1 sd 33 �d ore:�� ��:��_�H|* ore:��
��:��|�e 4 sd 33 �� ��:��_�� ��:�
��:�>|7 1 sd 33 �� ��:��|17 ore:�� ��:�@ ��:��
��:��_�� 3 sd 23 �� ��:��|1
��:bed|9 1 sd 32 �� ��:��|9 ore:��
��:��_on_a_�� 1 sd 22 �f ��:�c_rod ��:��
��:��_��_��|14 16 sd 32 �� ore:��
��:��|12 1 sl 00 12 ore:� ��:��
��:�q|4 1 sd 33 �g ore:oc:�� ore:oc:�h ore:�� ore:oc:�� ore:�N
��:�q|3 1 sd 33 �g ore:oc:�� ore:oc:�h ore:�� ore:oc:�� ore:�N
��:�q|2 1 sd 33 �g ore:oc:�� ore:oc:�h ore:�� ore:oc:�� ore:�N
��:�q|1 1 sd 33 �i ��:��_�� ��:�� ore:�� ore:oc:�h
��:�q 1 sd 33 � ore:�� ore:oc:�  ore:�� ore:oc:�� ore:��
��:bed|10 1 sd 32 �� ��:��|10 ore:��
��:�
|3 4 sd 33 � ore:�� ��:��|3
��:��|2 1 sd 33 �� ore:�� ore:��
��:�j 8 sd 31 121 ��:�� ��:dye|3
��:��|2 1 sl 00 123 ��:��_��|* ore:�� ��:��
��:��|1 1 sl 00 12 ��:��|* ore:��
��:��|2 1 sl 00 12 ��:��|* ore:�
��:dye|4 9 sd 11 1 ��:�k_��
��:��|5 4 sd 11 1 ��:��|1
��:�� 1 sl 00 12 ��:��|* ore:��
��:�3_�|1 8 sl 00 �4 ore:�! ��:�5 ��:�6
��:�_�� 1 sd 33 �� ore:��
��:��|4 1 sl 00 12 ��:��|* ore:�J
��:��|5 1 sl 00 12 ��:��|* ore:�
��:�l 1 sd 22 �m ore:��
��:��|3 1 sl 00 12 ��:��|* ore:�
��:�� 9 sd 11 1 ��:hay_��
��:��|8 1 sl 00 12 ��:��|* ore:�j
��:��|9 1 sl 00 12 ��:��|* ore:�~
��:��|6 1 sl 00 12 ��:��|* ore:��
��:��|7 1 sl 00 12 ��:��|* ore:��
��:�n_��|1 4 sl 00 1 ��:�n_log|1
��:��_��_��|1 16 sd 32 �� ore:�o
��:�
|1 4 sd 33 � ore:�� ��:��|1
��:�Y_�� 1 sd 22 � ��:�Y
��:�|2 4 sd 22 � ��:�|1
��:�p 1 sd 33 �� ore:�� ��:�_�	 ore:oc:�� ore:oc:��
��:�0|2 4 sd 32 �1 ore:�� ��:�2 ore:�� ��:�L|*
��:��|12 1 sl 00 12 ��:��|* ore:�m
��:��|10 1 sl 00 12 ��:��|* ore:��
��:��_�� 1 sd 32 �� ore:��
��:��|11 1 sl 00 12 ��:��|* ore:�+
��:bed|3 1 sl 00 12 ��:bed ore:�m
��:bow 1 sd 33 �q ore:�� ore:��
��:��|15 1 sl 00 12 ��:��|* ore:��
��:��|13 1 sl 00 12 ��:��|* ore:��
��:��|14 1 sl 00 12 ��:��|* ore:�!
��:��_oak_��_�� 1 sd 32 �� ��:�� ��:��|5
��:�� 9 sd 11 1 ��:��_��
��:��_�r 1 sd 33 �� ore:�� ore:��
��:� 1 sd 33 �� ore:�� ore:��
��:�s|3 2 sd 33 �C ore:�� ore:�� ore:�t
��:�q 2 sl 00 11 ��:�q
��:��_��_��|8 8 sd 33 �� ��:��_�� ore:��
��:�s|4 4 sd 33 �� ore:�� ore:�� ore:�t
��:�> 1 sd 33 �� ��:��|17 ore:�u ��:�@ ��:��
��:�v_�w 1 sd 33 �� ore:�� ore:��
��:��|18 1 sd 33 �O ore:�� ore:oc:�� ��:�l ore:oc:�� ore:�N ore:oc:��
��:��|17 1 sd 33 �O ore:�� ��:�� ��:�l ore:�� ore:�N ore:oc:��
��:�X 1 sd 23 �x ��:�� ore:��
��:��|2 1 sl 00 12 ��:��_key ��:��_�H
��:��|24 1 sd 33 �O ore:�� ��:��_�� ��:� ore:oc:�� ore:�N ore:oc:��
��:�y 1 sd 33 �z ore:�� ore:oc:��
��:��|23 1 sd 33 �O ore:�� ��:��_� ��:� ��:�� ore:�N ore:oc:��
��:�|5 9 sl 00 1 ��:�|6
��:��|26 1 sd 33 �� ore:�� ��:�{ ore:oc:��
��:��|25 1 sd 33 � ore:�� ore:�N ore:�� ore:oc:�Q ore:oc:��
��:��|20 1 sd 33 � ore:�� ore:�N ore:�� ore:oc:�� ore:oc:��
��:��|19 1 sd 33 � ore:�� ��:� ore:oc:�� ��:��_map|* ��:�|
��:��_oak_�g 1 sd 32 �h ��:��|5
��:��|22 1 sd 33 �} ore:� ore:oc:�� ore:�~ ore:�� ore:oc:��
��:��|21 1 sd 33 � ore:�� ore:�� ore:oc:�� ore:�� ��:�8_�9
��:dye|9 1 sl 00 1 ��:red_��|7
��:�� 4 sd 13 123 ��:�| ore:�� ore:��
��:�A_�� 3 sd 23 �� ��:��
��:�|1 1 sd 33 �� ��:�
��:�� 1 sd 33 �� ��:��
��:��|27 1 sd 33 � ore:�� ore:oc:�� ��:��_�� ore:�� ore:oc:��
��:��|29 1 sd 33 � ore:�� ore:�� ��:�� ore:oc:�� ��:�l ore:oc:�� ore:�N
��:��_� 1 sd 11 1 ��:��
��:��|1 1 sl 00 12 ore:�/ ��:�Y
��:��|28 1 sd 33 � ore:oc:�% ore:oc:�� ore:�� ore:�� ore:oc:��
��:�� 9 sl 00 1 ��:�
��:�� 1 sl 00 �� ��:��|* ��:��|* ��:��_��|* ore:��
��:��_�\|4 6 sd 31 111 ��:��_��
��:�� 3 sd 32 �� ��:�� ��:��
��:��|31 1 sd 32 � ore:�� ore:oc:�� ore:oc:��
��:��|30 1 sd 33 �1 ore:oc:�� ore:�# ore:oc:�� ore:oc:��
��:red_�T_� 4 sd 33 �	 ��:red_�T,��:red_�T|1,��:red_�T|2
��:��_��_��|9 8 sd 33 �� ��:��_�� ore:��
��:��_��_��|10 8 sd 33 �� ��:��_�� ore:�
��:��_�� 6 sd 31 111 ��:red_�T,��:red_�T|1,��:red_�T|2
��:�0|4 2 sd 33 � ��:��_��|* ��:�0|2 ore:��
��:��_��_��|7 16 sd 32 �� ore:��
��:�� 1 sd 33 �� ore:�� ore:oc:�  ore:�� ore:oc:��
��:�P|7 3 sd 21 11 ��:��|7
��:��|2 1 sd 33 �O ��:��_�� ore:oc:�� ore:oc:�� ore:oc:�N ore:oc:� ore:oc:��
��:��|3 1 sd 33 �� ore:�� ore:�� ore:� ore:�J ore:oc:�� ore:� ore:�+ ore:�� ore:��
��:��|4 1 sl 00 12 ��:�� ore:oc:��
��:��|13 1 sl 00 12 ore:� ��:��
��:��_�, 1 sd 32 �- ore:��
��:��|5 2 sl 00 12 ore:�/ ore:��
��:�� 1 sd 32 �� ore:�� ��:��
��:��|19 1 sl 00 12 ��:��|19 ��:��_map|*
��:�� 4 sd 12 11 ore:��
��:�I|3 1 sd 12 11 ��:��_�\|5
��:�B|2 1 sl 00 1 ��:�B|2
��:��_oak_� 4 sd 33 �	 ��:��|5
��:��_�� 1 sd 32 �� ��:�_rod ore:��
��:��|5 1 sd 33 �O ore:oc:�� ore:oc:� ore:oc:�� ore:oc:�� ore:oc:�� ore:oc:�Q
��:��_�r 4 sd 33 �� ��:�A_��|* ��:�� ��:log
��:�� 4 sd 33 � ore:�� ore:oc:�� ��:�� ��:�L ore:oc:��
��:�n_�� 4 sl 00 1 ��:�n_log
��:��|3 1 sd 33 �� ��:��|3 ��:��|1 ��:��
��:��_axe 1 sd 23 �� ore:�� ore:��
��:��_�� 1 sd 33 �� ��:�_�� ��:��
��:�@|250 1 sl 00 �. ore:�� ore:��
��:��|4 1 sd 33 �� ��:��|11 ore:��
��:�� 1 sd 13 112 ��:��|8 ��:��|*
��:��_�� 1 sd 33 �� ore:��
��:�7 1 sd 33 � ore:�� ore:�� ore:��
��:��_��|4 8 sd 33 �� ore:� ore:�+
��:�� 1 sd 33 � ore:�� ore:�� ore:oc:�Q ore:oc:�� ore:oc:��
��:��_��|3 8 sd 33 �� ore:� ore:�m
��:�A_�\ 6 sd 31 111 ��:��
��:� 9 sl 00 1 ��:�|1
��:�� 1 sd 22 � ore:��
��:�|4 2 sl 00 121 ��:� ore:��
��:�_� 4 sd 11 1 ��:�
��:�
|2 4 sd 33 � ore:�� ��:��|2
��:red_�T|1 1 sd 12 11 ��:��_��
��:��_��_�� 6 sd 32 �� ��:��_��
��:�,_�- 1 sl 00 12 ��:�_� ore:��
��:��|5 1 sd 33 �� ��:��|3 ore:��
��:�� 1 sd 33 �� ore:�� ��:��
��:��|12 9 sl 00 1 ��:��
��:�|2 9 sl 00 1 ��:�|3
��:�k_�� 1 sd 33 �� ��:dye|4
��:�q|3 1 sl 00 1 ��:�q|3
��:�P|10 3 sd 21 11 ��:��|10
��:�q|2 1 sl 00 1 ��:�q|2
��:�q|1 1 sl 00 1 ��:�q|1
��:��_��_��|6 8 sd 33 �� ��:��_�� ore:�~
��:��_��_��|12 16 sd 32 �� ore:��
��:bed|12 1 sl 00 12 ��:bed ore:�
��:��_axe 1 sd 23 �� ore:�� ore:��
��:��|9 1 sl 00 12 ore:�� ��:��
��:�>|4 1 sd 33 �� ��:��|17 ore:�� ��:�@ ��:��
��:�T_� 4 sd 33 �	 ��:�T,��:�T|1,��:�T|2
��:��_eye 1 sl 00 12 ore:�� ��:�_�
��:��|16 1 sd 33 �� ore:�� ore:oc:�� ore:�N ore:oc:��
��:�� 1 sd 33 �� ore:�� ore:��
��:�q 1 sl 00 1 ��:�q
��:�q|4 1 sl 00 1 ��:�q|4
��:bed 1 sd 32 �� ��:�� ore:��
��:�>|6 1 sd 33 �� ��:��|17 ore:�� ��:�@ ��:��
��:�� 1 sd 33 � ore:�� ore:�� ore:��
��:��|7 1 sd 33 �0 ore:�� ore:oc:�� ore:�N ore:�� ore:oc:��
��:�(|1 4 sd 22 �� ��:�( ��:�6
��:��_�� 1 sd 12 12 ore:�� ��:��
��:��|13 1 sd 33 � ore:�� ore:oc:�� ore:oc:�� ore:oc:�� ore:oc:��
��:�P|4 3 sd 21 11 ��:��|4
��:sea_�� 1 sd 33 � ore:�� ore:��
��:��|12 1 sd 33 � ore:�� ore:oc:�� ore:oc:�� ore:oc:�� ore:oc:��
��:��|15 1 sd 33 �� ore:�� ore:oc:�� ��:�� ore:oc:��
��:��|14 1 sd 33 � ore:�� ore:oc:�� ore:oc:�� ore:oc:�� ore:oc:��
��:��|9 1 sd 33 �0 ore:�� ore:oc:�� ore:�N ore:�� ore:oc:��
��:��|8 1 sd 33 �0 ore:�� ore:oc:�� ore:�N ore:�� ore:oc:��
��:��|11 1 sd 33 �� ore:�� ore:oc:�� ore:�a ore:oc:��
��:��|10 1 sd 33 �0 ore:�� ore:oc:�� ore:�N ore:�� ore:oc:��
��:dye|1 2 sl 00 1 ��:��_��|4
��:��_�J_eye 1 sl 00 123 ��:�J_eye ��:��_�� ��:��
��:�|2 9 sl 00 1 ��:�|3
��:�%|1 1 sd 33 �� ��:end_rod|* ore:�� ore:��
��:��_hoe 1 sd 23 �: ore:�� ore:��
��:�U_�g 1 sd 32 �h ��:��|3
��:��_hoe 1 sd 23 �: ore:�� ore:��
��:�_pie 1 sl 00 123 ��:� ��:�� ore:egg
��:��_�� 6 sd 31 111 ��:��
��:�� 4 sl 00 �  ore:�� ore:��
��:��|8 1 sl 00 12 ��:��|9 ��:��_��
��:�U_�� 3 sd 32 �� ��:��|3 ��:��
��:��_��_��_�� 1 sd 21 11 ore:��
��:��_�� 3 sd 32 �� ore:�
��:��_�� 3 sd 23 �� ore:��
��:��|17 9 sl 00 1 ��:��|2
��:��_��_��|10 16 sd 32 �� ore:��
��:��|2 4 sd 22 � ore:��
��:��|�� 1 sd 33 �� ��:��|* ��:��|*
��:��_�� 1 sd 12 12 ��:�� ��:��
��:��_��_��|11 16 sd 32 �� ore:�u
��:��|9 1 sd 33 �� ��:��|6 ore:��
��:�Y_��|1 1 sd 12 11 ��:��_�\|7
��:bed|11 1 sl 00 12 ��:bed ore:�J
��:�b 4 sd 33 �� ore:�� ore:�� ore:��
��:�s 1 sd 33 �� ore:�� ore:��
��:�� 1 sd 33 �� ore:�� ore:oc:�� ore:oc:�� ore:oc:��
��:�s|1 2 sd 33 �C ore:�� ore:�� ore:��
��:�s|2 4 sd 33 �� ore:�� ore:�� ore:��
��:��|6 1 sl 00 12 ore:�~ ��:��
��:�� 1 sd 22 � ��:��_��
��:�� 1 sd 33 �� ore:�� ore:�� ��:�t|1
��:�� 1 sd 33 � ore:�� ore:oc:�� ore:oc:�  ore:oc:�� ore:oc:��
��:� 1 sd 33 �� ��:�6
��:��_�q|2 1 sd 33 �� ore:�� ��:�_�V ��:��_��
��:�� 9 sl 00 1 ��:�
��:�3_�|8 8 sl 00 �4 ore:�� ��:�5 ��:�6
��:�� 1 sd 33 �$ ore:��
��:� 1 sd 33 �� ��:��
��:�)|2 1 sd 33 �� ��:�)|1
��:�)|1 1 sd 33 �� ��:�)
��:��_�� 1 sd 33 �� ��:dye|4 ore:�� ��:��_��
��:�B|1 1 sd 33 �C ore:�� ��:�>_��_��_��|* ��:��|*
��:�
|4 4 sd 33 � ore:�� ��:��|4
��:�� 1 sd 33 �0 ore:�� ore:oc:�� ore:�N ore:�� ore:oc:��
��:�)|3 1 sd 33 �� ��:�)|2
��:��_�� 6 sd 33 �C ore:�� ore:�� ��:�_�
��:�0|3 2 sd 33 � ��:��_��|* ��:�0 ore:��
��:dye|10 2 sl 00 12 ore:� ore:��
��:�� 1 sd 33 � ��:��_�� ore:oc:�� ore:�� ore:oc:�� ore:oc:�Q
��:�� 4 sd 11 1 ��:log
��:��|8 4 sd 33 �� ore:�� ��:� ore:oc:� 
��:�y 1 sd 33 �� ore:�� ore:�� ore:��
��:��|7 8 sd 33 �� ��:��_�� ��:� ore:oc:� 
��:��|10 1 sd 33 �i ��:��_�� ��:� ore:oc:�  ore:oc:��
��:��|9 2 sd 33 �� ore:�� ��:� ore:oc:� 
��:��|2 8 sl 00 123 ore:�� ��:�� ore:�
��:��|1 1 sl 00 �* ��:�b_�L ��:�� ore:�� ��:��_�J_eye ore:��
��:��|6 8 sd 33 �� ore:�� ore:�� ore:�� ��:�
��:��_�q|4 1 sd 33 �� ore:�� ��:�� ��:��_��
��:��|5 1 sd 33 �� ��:��_�� ore:oc:�� ore:��
��:�� 1 sd 33 �� ore:�� ��:��|2 ��:��|* ��:�W|*
��:�� 4 sd 33 �{ ore:�� ore:��
��:�� 1 sd 31 121 ore:�� ore:��
��:�|3 2 sl 00 121 ��:� ore:��
��:� 1 sd 33 �� ��:��
��:�� 1 sd 32 �� ��:�t|1
��:dye|5 2 sl 00 12 ore:�J ore:��
��:red_�T 1 sd 22 � ��:�5|1
��:��_�� 1 sd 33 �� ore:�� ore:��
��:��_�\|7 6 sd 31 111 ��:�Y_��,��:�Y_��|1,��:�Y_��|2
��:��|20 1 sd 33 � ��:��_�� ore:oc:�� ��:� ore:�� ore:oc:��
��:��|18 1 sd 33 �� ore:oc:�� ��:��_�H ore:�� ore:oc:�  ore:oc:�N ore:oc:�� ore:oc:��
��:��|21 1 sd 33 � ore:�� ore:oc:�� ore:�� ore:�� ore:oc:��
��:��|15 1 sd 32 �� ��:��_�H
��:��|14 1 sd 32 �� ��:��_�H
��:��|17 1 sd 33 �O ore:�� ��:��_�H ore:oc:�! ore:oc:�N ore:oc:�� ore:oc:��
��:��|16 1 sd 33 �� ��:��_�H
��:��|11 1 sd 33 �i ore:�� ��:� ore:oc:�  ��:��
��:��|13 1 sd 33 �� ore:�� ore:��
��:��|12 1 sd 33 �� ��:��_��
��:��_�\|6 6 sd 31 111 ��:��_��
��:dye|6 2 sl 00 12 ore:�J ore:�
��:��_��_��|7 8 sd 33 �� ��:��_�� ore:�j
��:�&_�' 1 sd 33 �� ��:�� ore:�� ��:��
��:�Y_��|2 2 sd 12 11 ��:�Y_��
��:�{ 2 sd 33 �� ore:�� ore:��
��:��|15 1 sd 33 �� ��:�G ��:��|12 ��:��|6
��:��_�g 1 sd 32 �h ��:��|1
��:�_�� 1 sd 33 �� ore:��
��:��_�g 1 sd 32 �h ��:��|2
��:��_�� 1 sd 33 �� ��:�� ��:��_��
��:�� 1 sd 33 �� ore:�� ore:�� ��:�Y
��:�� 3 sd 31 111 ore:��
��:��_� 4 sd 33 �	 ��:��_��
��:��_��|5 8 sd 33 �� ore:� ore:��
��:��_�� 1 sd 33 �� ore:�� ore:��
��:dye|9 2 sl 00 1 ��:��_��|5
��:��|1 1 sd 33 �� ��:��|11
��:�0|1 4 sd 32 �1 ore:�� ��:�� ore:�� ��:�2
��:�L 1 sd 32 �� ore:��
��:��|6 4 sd 22 � ore:��
��:��_��|15 8 sd 33 �� ore:� ore:��
]==],['crafting.db.bak']= [==[#��:
#'�, �� ��' '�v �� ��' 'sd=�/sl=�' 'wh' '�v �' '�v �� ��|��'
��:bow 1 sd 33 �� ��:�� ��:�� 
��:�� 1 sd 33 �� ��:�� 
��:��_�' 1 sd 22 � ��:�� 
��:��_axe 1 sd 23 �� ��:�� ��:�� 
��:��_�� 1 sd 33 �� ��:�� ��:�� 
��:�� 1 sd 33 �� ��:�� 
��:�_�� 9 sd 00 1 ��:�_�V 
��:��_axe 1 sd 23 �� ��:��_�V ��:�� 
��:��_� 16 sd 32 �� ��:��_�V 
��:��_�� 9 sd 00 1 ��:��_�V 
��:��_�� 1 sd 33 �� ��:��_�V ��:�� 
��:�� 3 sd 33 �� ��:�� 
��:�� 3 sd 31 111 ��:� 
��:��|0 4 sd 00 1 ��:log|0 
��:�� 4 sd 12 11 ��:�� 
��:��_axe 1 sd 23 �� ��:�� ��:�� 
��:��_�H|0 1 sd 00 1 ��:��|0 
��:��_�H 1 sd 00 1 ��:��|0 
��:��_�� 1 sd 33 �� ��:�� ��:�� 
��:�A_�� 1 sd 33 �� ��:�� ��:�� 
��:�� 1 sd 33 � ��:�_�V ��:��|8 ��:��_� ��:�� ��:��|4 
��:�|7 1 sd 32 �� ��:��|7 ��:��|8 ��:��|4 
��:�|1 1 sd 33 � ��:�_�� ��:� ��:��|8 ��:��|11 ��:��|10 
��:�� 1 sd 32 �� ��:��|14 ��:��|15 ��:��|16 
��:��|15 1 sd 32 � ��:��_�H 
��:��|14 1 sd 32 �� ��:��_�H 
��:��|8 4 sd 33 �� ��:�_�� ��:� ��:��|6 
��:��|7 8 sd 33 �� ��:��_�� ��:� ��:��|6 
��:��|16 1 sd 33 �� ��:��_�H 
��:��|6 8 sd 33 �� ��:��_�V ��:�_�� ��:�� ��:� 
��:�n 1 sd 33 �o ��:��_�V ��:� ��:��|7 ��:�� 
]==],['oredict.db']= [==[ore:��=��:log|*,��:��|*,��:�n_log|*
ore:��=��:��|*,��:�n_��|*
ore:�t=��:�A_�\|*
ore:��=��:oak_�,��:��_�,��:��_�,��:�U_�,��:�._�,��:��_oak_�
ore:�=��:��,��:��_��,��:��_��,��:�U_��,��:��_oak_��,��:�._��
ore:�=��:��_��,��:��_��_��,��:��_��_��,��:�U_��_��,��:��_oak_��_��,��:�._��_��
ore:�R=��:�._��,��:��_��,��:��_oak_��,��:�A_��,��:�U_��,��:��_��
ore:��=��:��
ore:��=��:�|*,��:�n_�|*
ore:�=��:�|*,��:�|*,��:�n_�|*
ore:��=��:��
ore:�=��:�_ore
ore:�=��:��_ore
ore:�	=��:�k_ore
ore:�
=��:��_ore
ore:�=��:�_ore
ore:�=��:��_ore
ore:�=��:�Y_ore
ore:�=��:��_ore
ore:��=��:��_�V
ore:��=��:�_�V
ore:�X=��:��
ore:�=��:��
ore:��=��:�_��
ore:��=��:��_��
ore:��=��:��
ore:��=��:��
ore:�=��:�Y
ore:��=��:��_�R
ore:��=��:��_�
ore:��=��:�
ore:��=��:��_��
ore:�#=��:dye|4
ore:� =��:�_��
ore:�=��:��_��
ore:�~=��:�k_��
ore:�=��:��_��
ore:��=��:�_��
ore:�=��:��_��
ore:�=��:�Y_��
ore:��=��:��_��
ore:�=��:��
ore:�=��:��
ore:�=��:��
ore:�=��:��_��
ore:��=��:�
ore:�=��:�
ore:dye=��:dye|*,��:��|14
ore:��=��:��
ore:��=��:��_��
ore:��=��:��_��
ore:��=��:��
ore:�==��:�=
ore:��=��:��
ore:�z=��:��_��
ore:��=��:��
ore:��=��:��
ore:egg=��:egg
ore:�=��:�_13,��:�_cat,��:�_�,��:�_�,��:�_far,��:�_�,��:�_�,��:�_� ,��:�_�!,��:�_�",��:�_11,��:�_�#
ore:�(=��:�(
ore:�S=��:�S
ore:��=��:��
ore:��=��:��
ore:�6=��:�6
ore:�5=��:�5|*
ore:�T=��:�T|*,��:red_�T|*
ore:��=��:��
ore:��=��:��
ore:��=��:��
ore:�]=��:end_��
ore:�=��:�
ore:�a=��:��_�'
ore:�$=��:��
ore:�%=��:��
ore:�&=��:��|1
ore:�'=��:��|2
ore:��=��:��|1
ore:�(=��:��|2
ore:�/=��:��|3
ore:�)=��:��|4
ore:��=��:��|5
ore:�*=��:��|6
ore:�=��:��
ore:�=��:��,��:��_��|*
ore:�+=��:��_��
ore:��=��:��_��,��:��_��_��|*
ore:��=��:��,��:��_��,��:�_��
ore:��=��:��,��:�_��
ore:�,=��:��_��
ore:�-=��:�_��
ore:��=��:dye
ore:��=��:��_��|15
ore:�.=��:��_��_��|15
ore:��=��:dye|1
ore:��=��:��_��|14
ore:�/=��:��_��_��|14
ore:�=��:dye|2
ore:��=��:��_��|13
ore:�0=��:��_��_��|13
ore:�=��:dye|3
ore:��=��:��_��|12
ore:�1=��:��_��_��|12
ore:�J=��:dye|4,��:��|14
ore:�u=��:��_��|11
ore:�2=��:��_��_��|11
ore:�=��:dye|5
ore:��=��:��_��|10
ore:�3=��:��_��_��|10
ore:��=��:dye|6
ore:�=��:��_��|9
ore:�4=��:��_��_��|9
ore:��=��:dye|7
ore:��=��:��_��|8
ore:�5=��:��_��_��|8
ore:�j=��:dye|8
ore:��=��:��_��|7
ore:�6=��:��_��_��|7
ore:�~=��:dye|9
ore:��=��:��_��|6
ore:�7=��:��_��_��|6
ore:��=��:dye|10
ore:��=��:��_��|5
ore:�8=��:��_��_��|5
ore:�+=��:dye|11
ore:�?=��:��_��|4
ore:�9=��:��_��_��|4
ore:�m=��:dye|12
ore:��=��:��_��|3
ore:�:=��:��_��_��|3
ore:��=��:dye|13,��:��|3
ore:�=��:��_��|2
ore:�;=��:��_��_��|2
ore:�!=��:dye|14
ore:�o=��:��_��|1
ore:�<=��:��_��_��|1
ore:��=��:dye|15
ore:��=��:��_��
ore:�==��:��_��_��
ore:��_��_��=��:�P|1
ore:��=��:��,��:��|2
ore:�>=��:��|1
ore:��=��:�
ore:�?=��:�|1
ore:�@=��:�|2
ore:�A=��:�|3
ore:�B=��:�|4
ore:�C=��:�|5
ore:�D=��:�|6
ore:�E=��:�|7
ore:�F=��:�)
ore:�G=��:�)|1
ore:�H=��:�)|2
ore:�I=��:�)|3
ore:�J=��:��
ore:�K=��:��|1
ore:�L=��:�
ore:�M=��:�|1
ore:�N=��:�
ore:�O=��:�|1
ore:�P=��:�|2
ore:�Q=��:�|3
ore:�R=��:�|4
ore:�S=��:�|5
ore:�T=��:��
ore:�U=��:��|1
ore:�V=��:��|2
ore:�W=��:��|3
ore:�X=��:��|4
ore:�Y=��:��|5
ore:�Z=��:��|6
ore:�[=��:��|7
ore:�\=��:��|8
ore:�]=��:��|9
ore:�^=��:��|10
ore:�D=��:��|11
ore:�_=��:��|12
ore:�`=��:��|13
ore:�a=��:��|15,��:��|16
ore:�b=��:��|17
ore:�c=��:��
ore:�d=��:��|1
ore:�e=��:��|2
ore:�f=��:��_��
ore:�g=��:�t|1
ore:��=��:��
ore:��=��:�I
ore:�N=��:�9,��:�8_�9
ore:��=��:�_�
ore:��=��:��_��
ore:oc:�=��:��|7
ore:��=��:��|29
ore:oc:�%=��:end_��,��:�]
ore:��=��:��|*
ore:��=��:�
|*
ore:oc:��=��:��
ore:oc:�`=��:�`
ore:oc:��=��:��|�e
ore:oc:�Q=��:�Q
ore:oc:��=��:��
ore:oc:��=��:��
ore:oc:��=��:��
ore:oc:�^=��:��
ore:oc:��=��:��
ore:oc:��=��:��
ore:oc:�=��:��
ore:oc:�=��:�
ore:oc:�@=��:�@
ore:oc:�=��:�
ore:oc:��=��:��
ore:oc:�h=��:�p
ore:oc:�i=��:��
ore:oc:�=��:�E
ore:oc:��=��:��
ore:oc:�=��:�
ore:oc:�=��:�
ore:oc:��=��:��
ore:oc:�n=��:�n
ore:oc:��=��:��
ore:oc:�N=��:�N
ore:oc:�=��:�
ore:oc:��=��:��
ore:oc:�j=��:�M
ore:oc:��=��:��
ore:oc:�k=��:�O
ore:oc:�D=��:��
ore:oc:��=��:��|1
ore:oc:�l=��:��|2
ore:oc:�m=��:��|3
ore:oc:��=��:��|4
ore:oc:��=��:��|5
ore:oc:� =��:��|6
ore:oc:��=��:��|7
ore:oc:��=��:��|8
ore:oc:��=��:��|9
ore:oc:��=��:��|10
ore:oc:��=��:��|11
ore:oc:�h=��:��|12
ore:oc:��=��:��|13
ore:oc:��=��:��|14
ore:oc:��=��:��|15
ore:oc:��=��:��|16
ore:oc:�n=��:��|17
ore:oc:�o=��:��|18
ore:oc:�)=��:��|20
ore:oc:�&=��:��|21
ore:oc:��=��:��|23
ore:oc:�p=��:��|24
ore:oc:�+=��:��|26
ore:oc:�q=��:��|27
ore:oc:��=��:��|28
ore:oc:��=��:��
ore:oc:�r=��:��|2
ore:oc:�s=��:��|3
ore:oc:��=��:��|4
ore:oc:�y=��:�y
ore:oc:�t=��:��
ore:oc:�u=��:��|5
ore:oc:��=��:�
ore:oc:��=��:�|1
ore:oc:�=��:�|2
ore:oc:�!=��:�|3
ore:oc:�=��:�|4
ore:oc:� =��:�|5
ore:oc:��=��:�|6
ore:oc:�#=��:�|7
ore:oc:��=��:�|8
ore:oc:�$=��:�|9
ore:oc:��=��:�|10
ore:oc:�=��:�|11
ore:oc:�v=��:�|13
ore:oc:�w=��:�|14
ore:oc:�x=��:�|15
ore:oc:�y=��:�|16
ore:oc:�z=��:�|17
ore:oc:�{=��:�|19
ore:oc:�|=��:�|20
ore:oc:�"=��:��|1
ore:oc:�=��:��|2
ore:oc:�}=��:��|3
ore:oc:�*=��:��|4
ore:oc:�~=��:��|5
ore:oc:��=��:��|6
ore:oc:�=��:��|7
ore:oc:�=��:��|8
ore:oc:��=��:��|9
ore:oc:��=��:��|10
ore:oc:��=��:��|11
ore:oc:��=��:��|12
ore:oc:��=��:��
ore:oc:��=��:��|1
ore:oc:��=��:��|2
ore:oc:��=��:��|3
ore:oc:��=��:��|4
ore:oc:��=��:��|5
ore:oc:��=��:��|6
ore:oc:��=��:��|7
ore:oc:��=��:��|8
ore:oc:��=��:��|9
ore:oc:��=��:��|10
ore:oc:��=��:��|11
ore:oc:��=��:��|12
ore:oc:��=��:��|13
ore:oc:��=��:��|14
ore:oc:��=��:��|15
ore:oc:��=��:��|16
ore:oc:��=��:��|17
ore:oc:��=��:��|18
ore:oc:��=��:��|19
ore:oc:��=��:��|20
ore:oc:��=��:��|21
ore:oc:��=��:��|22
ore:oc:��=��:��|23
ore:oc:��=��:��|24
ore:oc:��=��:��|25
ore:oc:��=��:��|26
ore:oc:��=��:��|27
ore:oc:��=��:��|28
ore:oc:��=��:��|29
ore:oc:mfu=��:��|30
ore:oc:��=��:��|31
ore:oc:��=��:�q
ore:oc:��=��:�q|1
ore:oc:��=��:�q|2
ore:oc:��=��:�q|3
ore:oc:��=��:�q|4
]==],['raw.db']= [==[��:��
��:��
��:��
��:�_�V
��:��_�V
��:��_��
��:log
��:�
��:�
��:�5
��:��
��:��
��:��|4
]==]},['deprecatrace.log']= [==[�F ��:
	/mnt/cf4/lib/��/�v.lua:74: in �� '��'
	/mnt/cf4/lib/��.lua:52: in �� 'get'
	/mnt/cf4/lib/��.lua:60: in �� 'has'
	/mnt/cf4/lib/��.lua:65: in �� '��'
	/mnt/cf4/lib/��.lua:81: in �� '�8'
	/mnt/cf4/�E.lua:354: in �� '��'
	/mnt/cf4/�E.lua:404: in �� ��
	/mnt/cf4/faf.lua:19: in �� ��
	[C]: in �� '��'
	�b:791: in �� '��'
	/mnt/cf4/ct.lua:17: in �� ��
	(...�� ��...)
	[C]: in �� '��'
	�b:791: in �� '��'
	/lib/��.lua:63: in �� </lib/��.lua:59>
]==],['faf.lua']= [==[-- �� and ��, for ��.
-- �� �� � ��.

�� �� = ��('��')
�� fs = ��('��')

�� �� = {...}
�� �� = ��.��(�'.�0(��, 1))

if not fs.��(��) ��
	if fs.��(�� .. '.lua') ��
		�� = �� .. '.lua'
	��
		��('�� not ��.')
		��
	end
end

��(��)(�'.�I(��))
for k, v in ��(��.�) do
	if k:��('lib.') == 1 ��
		��.�[k] = nil
	end
end]==],['failed.txt']= [==[�e.�l("��:��_��_�U", <��:��:4>.��({��: "�U"}) * 4, [[<ore:��>, <��:�A_�\:3>, <ore:��>], [<��:�A_�\:3>, <��:�A_�\:3>, <��:�A_�\:3>], [<ore:��>, <��:�A_�\:3>, <ore:��>]]);
�e.�l("��:�b_��", <��:�b>.��({��: "��:��"}), [[�n, <��:��_��:*>, �n], [<ore:��>, <��:�b>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��_��_oak", <��:��:1>.��({��: "��_oak"}) * 2, [[<��:��:5>, <ore:��>, <��:��:5>], [<��:��:5>, <��:��:5>, <��:��:5>], [<��:��:5>, <ore:��>, <��:��:5>]]);
�e.�q("��:��", �n, []);
�e.�q("��:��", �n, []);
�e.�l("��:��_�U", <��:��>, [[<ore:��>, <��:��:2>, <ore:��>], [<ore:��>, <��:��>.��({��: {��: {��: 1 as ��}, id: "��:��"}, No_��: 1 as ��}), <ore:��>], [�n, <ore:��>, �n]]);
�e.�l("��:��_��_��", <��:�b>.��({��: "��:��_��"}), [[<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <��:��_��:*>, <��:��:1>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:��_gen_��", <��:��:1>, [[<��:�b>.��({��: "��:��_��"}), <��:�b>.��({��: "��:��_��"}), <��:�b>.��({��: "��:��_��"})], [<��:�b>.��({��: "��:��_�|"}), <��:��>, <��:�b>.��({��: "��:��_�"})], [<��:�b>.��({��: "��:��_��"}), <��:�b>.��({��: "��:��_��"}), <��:�b>.��({��: "��:��_tnt"})]]);
�e.�l("��:��_��_ice", <��:�b>.��({��: "��:��_ice"}), [[<��:��:*>, <��:��:*>, <��:��:*>], [<��:��:*>, <��:ice:*>, <��:��:*>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:��_��_oak", <��:��:2>.��({��: "oak"}) * 4, [[<ore:��>, <��:��>, <ore:��>], [<��:��>, <��:��>, <��:��>], [<ore:��>, <��:��>, <ore:��>]]);
�e.�l("��:��_��_��", <��:��:1>.��({��: "��"}) * 2, [[<��:��:2>, <ore:��>, <��:��:2>], [<��:��:2>, <��:��:2>, <��:��:2>], [<��:��:2>, <ore:��>, <��:��:2>]]);
�e.�l("��:��_gen_top", <��:��:2>, [[<��:�b>.��({��: "��:��_��"}), <��:�b>.��({��: "��:��_��"}), <��:�b>.��({��: "��:��_��"})], [<��:�b>.��({��: "��:��_��"}), <��:��>, <��:�b>.��({��: "��:��_��"})], [<��:�b>.��({��: "��:��"}), <��:�b>.��({��: "��:��_ice"}), <��:�b>.��({��: "��:��_�K"})]]);
�e.�l("��:��_��_�U", <��:��:2>.��({��: "�U"}) * 4, [[<ore:��>, <��:��:3>, <ore:��>], [<��:��:3>, <��:��:3>, <��:��:3>], [<ore:��>, <��:��:3>, <ore:��>]]);
�e.�l("��:��_��", <��:�b>.��({��: "��:��_��"}), [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��:*>, <ore:��>]]);
�e.�l("��:��_��_��", <��:��:2>.��({��: "��"}) * 4, [[<ore:��>, <��:��:2>, <ore:��>], [<��:��:2>, <��:��:2>, <��:��:2>], [<ore:��>, <��:��:2>, <ore:��>]]);
�e.�q("��:��", �n, []);
�e.�l("��:��_��_��", <��:��:2>.��({��: "��"}) * 4, [[<ore:��>, <��:��:1>, <ore:��>], [<��:��:1>, <��:��:1>, <��:��:1>], [<ore:��>, <��:��:1>, <ore:��>]]);
�e.�l("��:��_��", <��:�b>.��({��: "��:��"}), [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:�b>, <ore:��>], [<ore:��>, <��:��:*>, <ore:��>]]);
�e.�l("��:��_��_��_oak", <��:��:2>.��({��: "��_oak"}) * 4, [[<ore:��>, <��:��:5>, <ore:��>], [<��:��:5>, <��:��:5>, <��:��:5>], [<ore:��>, <��:��:5>, <ore:��>]]);
�e.�l("��:��_��_��_oak", <��:��:3>.��({��: "��_oak"}) * 2, [[<��:�A_�\:5>, <ore:��>, <��:�A_�\:5>], [<��:�A_�\:5>, <��:�A_�\:5>, <��:�A_�\:5>], [<��:�A_�\:5>, <ore:��>, <��:�A_�\:5>]]);
�e.�l("��:��_��_�U", <��:��:1>.��({��: "�U"}) * 2, [[<��:��:3>, <ore:��>, <��:��:3>], [<��:��:3>, <��:��:3>, <��:��:3>], [<��:��:3>, <ore:��>, <��:��:3>]]);
�e.�l("��:��_��_oak", <��:��:3>.��({��: "oak"}) * 2, [[<��:�A_�\>, <ore:��>, <��:�A_�\>], [<��:�A_�\>, <��:�A_�\>, <��:�A_�\>], [<��:�A_�\>, <ore:��>, <��:�A_�\>]]);
�e.�l("��:��_��_��_oak", <��:��>.��({��: "��_oak"}), [[<��:��:5>, <��:��:5>, <��:��:5>], [�n, <ore:��>, �n], [<��:��:5>, <��:��:5>, <��:��:5>]]);
�e.�q("��:��", <��:��>.��({��: 1 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: [], ��: 0, ��: []}), [<��:��>, <��:��_��>]);
�e.�q("��:��", <��:��>.��({��: 4 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: [], ��: 0, ��: []}), [<��:��>, <��:��>]);
�e.�l("��:��_��_�K", <��:�b>.��({��: "��:��_�K"}), [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:�K_�L:*>, <ore:��>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�q("��:�", �n, []);
�e.�q("��:�", <��:��>.��({��: 0 as ��, ��: 0 as ��, ��: 1 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: [], ��: 0, ��: []}), [<��:��>, <��:��_��>]);
�e.�q("��:�", <��:��>.��({��: 0 as ��, ��: 0 as ��, ��: 1 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: [], ��: 0, ��: []}), [<��:��>, <��:�_��>]);
�e.�q("��:�", <��:��>.��({��: 0 as ��, ��: 0 as ��, ��: 1 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: [], ��: 0, ��: []}), [<��:��>, <��:��_��>]);
�e.�q("��:�", <��:��>.��({��: 0 as ��, ��: 0 as ��, ��: 1 as ��, ��: 0 as ��, ��: 0 as ��, ��: 0 as ��, ��: [], ��: 0, ��: []}), [<��:��>, <��:��_��>]);
�e.�l("��:��_��_��", <��:��:3>.��({��: "��"}) * 2, [[<��:�A_�\:2>, <ore:��>, <��:�A_�\:2>], [<��:�A_�\:2>, <��:�A_�\:2>, <��:�A_�\:2>], [<��:�A_�\:2>, <ore:��>, <��:�A_�\:2>]]);
�e.�q("��:�
", �n, []);
�e.�q("��:�", �n, []);
�e.�l("��:��_��_oak", <��:��:4>.��({��: "oak"}) * 4, [[<ore:��>, <��:�A_�\>, <ore:��>], [<��:�A_�\>, <��:�A_�\>, <��:�A_�\>], [<ore:��>, <��:�A_�\>, <ore:��>]]);
�e.�q("��:�", �n, []);
�e.�l("��:��_��_�", <��:�b>.��({��: "��:��_�"}), [[<��:�:*>, <��:�:*>, <��:�:*>], [<��:�:*>, <��:�_��:*>, <��:�:*>], [<ore:��>, <��:�b>.��({��: "��:��_�K"}), <ore:��>]]);
�e.�l("��:��_��_��", <��:�b>.��({��: "��:��_��"}), [[<��:��_��:*>, <��:��_��:*>, <��:��_��:*>], [<��:��_��:*>, <��:��:*>, <��:��_��:*>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:��_��_��", <��:�b>.��({��: "��:��_��"}), [[<��:�^_��:*>, <��:�^_��:*>, <��:�^_��:*>], [<��:�^_��:*>, <��:end_rod:*>, <��:�^_��:*>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:��_��_��", <��:��>.��({��: "��"}), [[<��:��:1>, <��:��:1>, <��:��:1>], [�n, <ore:��>, �n], [<��:��:1>, <��:��:1>, <��:��:1>]]);
�e.�q("��:�", �n, []);
�e.�q("��:�", �n, []);
�e.�l("��:��_��_�.", <��:��:3>.��({��: "�."}) * 2, [[<��:�A_�\:4>, <ore:��>, <��:�A_�\:4>], [<��:�A_�\:4>, <��:�A_�\:4>, <��:�A_�\:4>], [<��:�A_�\:4>, <ore:��>, <��:�A_�\:4>]]);
�e.�l("��:��_��_�.", <��:��:2>.��({��: "�."}) * 4, [[<ore:��>, <��:��:4>, <ore:��>], [<��:��:4>, <��:��:4>, <��:��:4>], [<ore:��>, <��:��:4>, <ore:��>]]);
�e.�l("��:��_��_��", <��:��:3>.��({��: "��"}) * 2, [[<��:�A_�\:1>, <ore:��>, <��:�A_�\:1>], [<��:�A_�\:1>, <��:�A_�\:1>, <��:�A_�\:1>], [<��:�A_�\:1>, <ore:��>, <��:�A_�\:1>]]);
�e.�q("��:��_�V", <��:��>, []);
�e.�l("��:��_��_��", <��:�b>.��({��: "��:��_��"}), [[<��:dye:4>, <��:dye:4>, <��:dye:4>], [<��:dye:4>, <��:�_��:*>, <��:dye:4>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:�H_�!", <��:�I:1>, [[<ore:��>, <ore:��>, <ore:��>], [<��:��>.��({��: {id: "��:�H"}, No_��: 1 as ��}), <��:�I>, <��:��_��:*>], [<ore:��>, <ore:��>, <ore:��>]]);
�e.�l("��:��_��_��", <��:��:4>.��({��: "��"}) * 4, [[<ore:��>, <��:�A_�\:2>, <ore:��>], [<��:�A_�\:2>, <��:�A_�\:2>, <��:�A_�\:2>], [<ore:��>, <��:�A_�\:2>, <ore:��>]]);
�e.�l("��:��_��_��", <��:��:1>.��({��: "��"}) * 2, [[<��:��:1>, <ore:��>, <��:��:1>], [<��:��:1>, <��:��:1>, <��:��:1>], [<��:��:1>, <ore:��>, <��:��:1>]]);
�e.�l("��:��_��_�.", <��:��>.��({��: "�."}), [[<��:��:4>, <��:��:4>, <��:��:4>], [�n, <ore:��>, �n], [<��:��:4>, <��:��:4>, <��:��:4>]]);
�e.�l("��:�S_�!", <��:�I>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:��>.��({��: {id: "��:�S"}, No_��: 1 as ��}), <ore:��>], [<��:��>, <ore:��>, <��:��>]]);
�e.�l("��:��_��_��", <��:��>.��({��: "��"}), [[<��:��:2>, <��:��:2>, <��:��:2>], [�n, <ore:��>, �n], [<��:��:2>, <��:��:2>, <��:��:2>]]);
�e.�l("��:�b_��", <��:�b>.��({��: "��:��"}), [[<ore:�X>, <ore:�X>, <ore:�X>], [<ore:�X>, <��:�b>, <ore:�X>], [<ore:�X>, <ore:�X>, <ore:�X>]]);
�e.�q("��:��_�r", <��:�t:1>, []);
�e.�l("��:��_��_�.", <��:��:4>.��({��: "�."}) * 4, [[<ore:��>, <��:�A_�\:4>, <ore:��>], [<��:�A_�\:4>, <��:�A_�\:4>, <��:�A_�\:4>], [<ore:��>, <��:�A_�\:4>, <ore:��>]]);
�e.�l("��:��_��_��", <��:�b>.��({��: "��:��_��"}), [[<��:dye:9>, <��:dye:9>, <��:dye:9>], [<��:dye:9>, <��:��:6>, <��:dye:9>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:��_��_�|", <��:�b>.��({��: "��:��_�|"}), [[<��:�_rod:*>, <��:�_rod:*>, <��:�_rod:*>], [<��:�_rod:*>, <��:��_��:*>, <��:�_rod:*>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�q("��:�p", �n, []);
�e.�l("��:�b_�v", <��:�b>.��({��: "��:�v"}), [[<ore:��>, <��:�9:*> | <��:�8_�9:*>, <ore:��>], [<ore:��>, <��:�b>, <ore:��>], [<ore:��>, <��:�9:*> | <��:�8_�9:*>, <ore:��>]]);
�e.�q("��:�}", <��:�q:1>.��({"oc:�~": 15}), [<��:�q:1>, <ore:��>]);
�e.�l("��:��_��_�.", <��:��:1>.��({��: "�."}) * 2, [[<��:��:4>, <ore:��>, <��:��:4>], [<��:��:4>, <��:��:4>, <��:��:4>], [<��:��:4>, <ore:��>, <��:��:4>]]);
�e.�l("��:��_��_�U", <��:��:3>.��({��: "�U"}) * 2, [[<��:�A_�\:3>, <ore:��>, <��:�A_�\:3>], [<��:�A_�\:3>, <��:�A_�\:3>, <��:�A_�\:3>], [<��:�A_�\:3>, <ore:��>, <��:�A_�\:3>]]);
�e.�q("��:��", <��:�q:1>.��({"oc:��": {"oc:fs.��": "��"}, "oc:�~": 2, ��: {��: "�� (�� ��)"}, "oc:��": "��:��"}), [<ore:oc:��>, <ore:oc:��>]);
�e.�q("��:��", <��:�q>.��({"oc:��": {"oc:��": 0 as ��, "oc:��": [108, 111, 99, 97, 108, 32, 105, 110, 105, 116, 10, 100, 111, 10, 32, 32, 108, 111, 99, 97, 108, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 95, 105, 110, 118, 111, 107, 101, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 105, 110, 118, 111, 107, 101, 10, 32, 32, 108, 111, 99, 97, 108, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 109, 101, 116, 104, 111, 100, 44, 32, 46, 46, 46, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 114, 101, 115, 117, 108, 116, 32, 61, 32, 116, 97, 98, 108, 101, 46, 112, 97, 99, 107, 40, 112, 99, 97, 108, 108, 40, 99, 111, 109, 112, 111, 110, 101, 110, 116, 95, 105, 110, 118, 111, 107, 101, 44, 32, 97, 100, 100, 114, 101, 115, 115, 44, 32, 109, 101, 116, 104, 111, 100, 44, 32, 46, 46, 46, 41, 41, 10, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 114, 101, 115, 117, 108, 116, 91, 49, 93, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 115, 117, 108, 116, 91, 50, 93, 10, 32, 32, 32, 32, 101, 108, 115, 101, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 116, 97, 98, 108, 101, 46, 117, 110, 112, 97, 99, 107, 40, 114, 101, 115, 117, 108, 116, 44, 32, 50, 44, 32, 114, 101, 115, 117, 108, 116, 46, 110, 41, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 10, 32, 32, 45, 45, 32, 98, 97, 99, 107, 119, 97, 114, 100, 115, 32, 99, 111, 109, 112, 97, 116, 105, 98, 105, 108, 105, 116, 121, 44, 32, 109, 97, 121, 32, 114, 101, 109, 111, 118, 101, 32, 108, 97, 116, 101, 114, 10, 32, 32, 108, 111, 99, 97, 108, 32, 101, 101, 112, 114, 111, 109, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 101, 101, 112, 114, 111, 109, 34, 41, 40, 41, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 32, 61, 32, 102, 117, 110, 99, 116, 105, 111, 110, 40, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 101, 101, 112, 114, 111, 109, 44, 32, 34, 103, 101, 116, 68, 97, 116, 97, 34, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 32, 61, 32, 102, 117, 110, 99, 116, 105, 111, 110, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 101, 101, 112, 114, 111, 109, 44, 32, 34, 115, 101, 116, 68, 97, 116, 97, 34, 44, 32, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 101, 110, 100, 10, 10, 32, 32, 100, 111, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 115, 99, 114, 101, 101, 110, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 115, 99, 114, 101, 101, 110, 34, 41, 40, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 103, 112, 117, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 103, 112, 117, 34, 41, 40, 41, 10, 32, 32, 32, 32, 105, 102, 32, 103, 112, 117, 32, 97, 110, 100, 32, 115, 99, 114, 101, 101, 110, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 103, 112, 117, 44, 32, 34, 98, 105, 110, 100, 34, 44, 32, 115, 99, 114, 101, 101, 110, 41, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 32, 32, 108, 111, 99, 97, 108, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 104, 97, 110, 100, 108, 101, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 111, 112, 101, 110, 34, 44, 32, 34, 47, 105, 110, 105, 116, 46, 108, 117, 97, 34, 41, 10, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 104, 97, 110, 100, 108, 101, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 98, 117, 102, 102, 101, 114, 32, 61, 32, 34, 34, 10, 32, 32, 32, 32, 114, 101, 112, 101, 97, 116, 10, 32, 32, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 100, 97, 116, 97, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 114, 101, 97, 100, 34, 44, 32, 104, 97, 110, 100, 108, 101, 44, 32, 109, 97, 116, 104, 46, 104, 117, 103, 101, 41, 10, 32, 32, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 100, 97, 116, 97, 32, 97, 110, 100, 32, 114, 101, 97, 115, 111, 110, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 32, 32, 98, 117, 102, 102, 101, 114, 32, 61, 32, 98, 117, 102, 102, 101, 114, 32, 46, 46, 32, 40, 100, 97, 116, 97, 32, 111, 114, 32, 34, 34, 41, 10, 32, 32, 32, 32, 117, 110, 116, 105, 108, 32, 110, 111, 116, 32, 100, 97, 116, 97, 10, 32, 32, 32, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 99, 108, 111, 115, 101, 34, 44, 32, 104, 97, 110, 100, 108, 101, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 108, 111, 97, 100, 40, 98, 117, 102, 102, 101, 114, 44, 32, 34, 61, 105, 110, 105, 116, 34, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 108, 111, 99, 97, 108, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 105, 102, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 105, 110, 105, 116, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 105, 102, 32, 110, 111, 116, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 10, 32, 32, 32, 32, 102, 111, 114, 32, 97, 100, 100, 114, 101, 115, 115, 32, 105, 110, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 102, 105, 108, 101, 115, 121, 115, 116, 101, 109, 34, 41, 32, 100, 111, 10, 32, 32, 32, 32, 32, 32, 105, 110, 105, 116, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 32, 32, 105, 102, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 98, 114, 101, 97, 107, 10, 32, 32, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 32, 32, 105, 102, 32, 110, 111, 116, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 101, 114, 114, 111, 114, 40, 34, 110, 111, 32, 98, 111, 111, 116, 97, 98, 108, 101, 32, 109, 101, 100, 105, 117, 109, 32, 102, 111, 117, 110, 100, 34, 32, 46, 46, 32, 40, 114, 101, 97, 115, 111, 110, 32, 97, 110, 100, 32, 40, 34, 58, 32, 34, 32, 46, 46, 32, 116, 111, 115, 116, 114, 105, 110, 103, 40, 114, 101, 97, 115, 111, 110, 41, 41, 32, 111, 114, 32, 34, 34, 41, 44, 32, 48, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 98, 101, 101, 112, 40, 49, 48, 48, 48, 44, 32, 48, 46, 50, 41, 10, 101, 110, 100, 10, 105, 110, 105, 116, 40, 41, 10] as ��[] as ��[], "oc:��": "�� (Lua ��)"}}), [<ore:oc:��>, <ore:oc:��>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 4}), [<��:�q:1>, <ore:�J>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 3}), [<��:�q:1>, <ore:�>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 2}), [<��:�q:1>, <ore:�>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 1}), [<��:�q:1>, <ore:��>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 0}), [<��:�q:1>, <ore:��>]);
�e.�q("��:��", <��:�q:1>.��({"oc:��": {"oc:fs.��": "��"}, "oc:�~": 6, ��: {��: "�� (�� ��)"}, "oc:��": "��:��"}), [<ore:oc:��>, <ore:oc:��>]);
�e.�q("��:��", �n, []);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 8}), [<��:�q:1>, <ore:�j>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 7}), [<��:�q:1>, <ore:��>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 6}), [<��:�q:1>, <ore:��>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 5}), [<��:�q:1>, <ore:�>]);
�e.�l("��:��_��_oak", <��:��:1>.��({��: "oak"}) * 2, [[<��:��>, <ore:��>, <��:��>], [<��:��>, <��:��>, <��:��>], [<��:��>, <ore:��>, <��:��>]]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 14}), [<��:�q:1>, <ore:�!>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 13}), [<��:�q:1>, <ore:��>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 12}), [<��:�q:1>, <ore:�m>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 11}), [<��:�q:1>, <ore:�+>]);
�e.�q("��:��", �n, []);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 10}), [<��:�q:1>, <ore:��>]);
�e.�q("��:��", <��:�q:1>.��({"oc:�~": 9}), [<��:�q:1>, <ore:�~>]);
�e.�q("��:��", �n, []);
�e.�l("��:��_��_��", <��:��:4>.��({��: "��"}) * 4, [[<ore:��>, <��:�A_�\:1>, <ore:��>], [<��:�A_�\:1>, <��:�A_�\:1>, <��:�A_�\:1>], [<ore:��>, <��:�A_�\:1>, <ore:��>]]);
�e.�l("��:��_��_oak", <��:��>.��({��: "oak"}), [[<��:��>, <��:��>, <��:��>], [�n, <ore:��>, �n], [<��:��>, <��:��>, <��:��>]]);
�e.�q("��:��", �n, []);
�e.�l("��:��_��_��", <��:�b>.��({��: "��:��_��"}), [[<��:��> | <��:��_��>, <��:��> | <��:��_��>, <��:��> | <��:��_��>], [<��:��> | <��:��_��>, <��:�J_eye>, <��:��> | <��:��_��>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:��_��_��", <��:�b>.��({��: "��:��_��"}), [[<��:��> | <��:��> | <��:��>, <��:��> | <��:��> | <��:��>, <��:��> | <��:��> | <��:��>], [<��:��> | <��:��> | <��:��>, <��:��_��> | <��:��_��> | <��:��_�S> | <��:��_��> | <��:��_��> | <��:��_��>, <��:��> | <��:��> | <��:��>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:��_��_��_oak", <��:��:4>.��({��: "��_oak"}) * 4, [[<ore:��>, <��:�A_�\:5>, <ore:��>], [<��:�A_�\:5>, <��:�A_�\:5>, <��:�A_�\:5>], [<ore:��>, <��:�A_�\:5>, <ore:��>]]);
�e.�l("��:��_��_��", <��:�b>.��({��: "��:��_��"}), [[<��:��_��:*>, <��:��_��:*>, <��:��_��:*>], [<��:��_��:*>, <��:��:*>, <��:��_��:*>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:��_��_��", <��:�b>.��({��: "��:��_��"}), [[<��:�t:1>, <��:�t:1>, <��:�t:1>], [<��:�t:1>, <��:�&_�':*>, <��:�t:1>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�l("��:��_��_�U", <��:��>.��({��: "�U"}), [[<��:��:3>, <��:��:3>, <��:��:3>], [�n, <ore:��>, �n], [<��:��:3>, <��:��:3>, <��:��:3>]]);
�e.�l("��:� _�!_3", <��:�:3>, [[<��:��:*>, <ore:��>, <��:��:*>], [<ore:��>, <��:�I:1>, <ore:��>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:��>, <��:��:1>.��({��: {id: "��:�"}, No_��: 1 as ��})]]);
�e.�l("��:� _�!_2", <��:�:2>, [[<ore:�>, <ore:��>, <ore:�~>], [<ore:��>, <��:�I:1>, <ore:��>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:��>, <��:��:1>.��({��: {id: "��:�"}, No_��: 1 as ��})]]);
�e.�l("��:� _�!_5", <��:�:5>, [[<��:��>, <ore:��>, <��:��:1>], [<ore:��>, <��:�I:1>, <ore:��>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:��>, <��:��:1>.��({��: {id: "��:�"}, No_��: 1 as ��})]]);
�e.�l("��:� _�!_4", <��:�:4>, [[<ore:��>, <ore:��>, <ore:��>], [<ore:��>, <��:�I:1>, <ore:��>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:��>, <��:��:1>.��({��: {id: "��:�"}, No_��: 1 as ��})]]);
�e.�l("��:� _�!_1", <��:�:1>, [[<��:��:*>, <ore:��>, <��:��:*>], [<ore:��>, <��:�I:1>, <ore:��>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:��>, <��:��:1>.��({��: {id: "��:�"}, No_��: 1 as ��})]]);
�e.�l("��:� _�!_0", <��:�>, [[<ore:�>, <ore:��>, <ore:�>], [<ore:��>, <��:�I:1>, <ore:��>], [<��:��>.��({��: {id: "��:bat"}, No_��: 1 as ��}), <ore:��>, <��:��:1>.��({��: {id: "��:�"}, No_��: 1 as ��})]]);
�e.�l("��:��_��_tnt", <��:�b>.��({��: "��:��_tnt"}), [[<��:�=:*>, <��:�=:*>, <��:�=:*>], [<��:�=:*>, <��:tnt:*>, <��:�=:*>], [<ore:��>, <��:�b>.��({��: "��:��"}), <ore:��>]]);
�e.�q("��:��", �n, []);
�e.�q("��:��_��", <��:��>, []);
]==],['filter.lua']= [==[�� �� ��(s, p)
	t = {}
	for x in s:��(p) do
		�'.��(t, x)
	end
	�� t
end

�� �� ��(s, mt)
	for k, v in ��(mt) do
		if s:��(v) ~= nil ��
			�� ��
		end
	end
	�� ��
end

�� �� ��(bs)
	�� �� bro(s) -- �� ��
		�� (s == '[') or (s == '(') or (s == '<') or (s == '{')
	end
	�� �� brc(s) -- �� ��
		�� (s == ']') or (s == ')') or (s == '>') or (s == '}')
	end

	�� �� = bs:sub(2, #bs - 1):��(', ', ',')
	�� �� = 0
	�� �� = 1
	�� �� = {}
	for i = 1, #�� do
		if bro(��:sub(i,i)) ��
			�� = �� + 1
		�  brc(��:sub(i,i)) ��
			�� = �� - 1
		�  ��:sub(i,i) == ',' ��
			if �� == 0 ��
				�� st = ��:sub(��, i - 1):��(',', ', ')
				�'.��(��, st)
				�� = i + 1
			end
		end
	end
	�� st = ��:sub(��, #bs):��(',', ', ')
	�'.��(��, st)
	�� ��
end

�� �� ��(arr, f, t)
	�� tb = {}
	for i = f, t do
		�'.��(tb, arr[i])
	end
	�� tb
end

�� �� ��(t, s)
	�� buf = ''
	for k, v in ��(t) do
		buf = buf .. �6(v) .. ((��(t, k) == nil) and '' or s)
	end
	�� buf
end

-- Old �' ��, so ��.
�� �� ��(t, f, ...)
	�� res = {}
	for k, v in ��(t) do
		res[k] = f(v, ...)
	end
	�� res
end

-- �, ��, �� �v �� to the �� ��.
�� �� ��(��)
	�� p = ��(��:��('[<>]', ''), '[^:]+')
	�� p[1] .. ':' .. p[2] .. ((p[3] == nil) and '' or (((��:��('ore:') == nil) and '|' or ':') .. p[3]))
end

-- �, �� too, but �� if �� �� one �v ��.
-- ��: `|` is the ��, not `,`.
�� �� ��(��)
	if ��:��('|') == nil ��
		�� ��(��)
	��
		�� ��(��(��(��:��(' | ', '|'), '[^|]+'), ��), ',')
	end
end

�� �� ��(t, obj)
	for k, v in ��(t) do
		if obj == v ��
			�� k
		end
	end
	�� nil
end

�� �� ��(t, obj)
	�� ��(t, obj) ~= nil
end

-- '�, �� ��' '�v �� ��' 'sd=�/sl=�' 'wh' '�v �' '�v �� ��|��'
�� �� = {'.��', '.��', '.��', '.��', '��:'}
�� �� ��(��)
	if ��:��('�e%..-%(.+%);') == nil ��
		�� ��, ��
	end
	�� � = ��:��('��') == nil
	�� �� = � and 'sd' or 'sl'
	�� c = ��:��('�e%..-%(.+%);'):��('%(.-,.-,.+%)')
	�� c = '(' .. ��(��(��(c), 2, 3), ', ') .. ')'
	�� �� = ��(c)
	if ��(��[2])[1] == '' ��
		�� ��, ��
	end
	if ��(c, ��) and ��[1] ~= "�n" ��
		�� �� = ��(��[1]:��(' * ','*'), '[^%*]+')
		�� �v = ��(��[1])
		�� �� = ��(��[2]) or 1
		�� wh = ''
		�� �� = ''
		if � ��
			wh = �6(#��(��(��[2])[1])) .. �6(#��(��[2]))
			�� �@ = {}
			for yi, y in ��(��(��[2])) do
				for xi, x in ��(��(y)) do
					if not ��(�@, x) ��
						if x ~= '�n' ��
							�'.��(�@, x)
						end
					end
				end
			end
			�� �� = ''
			for yi, y in ��(��(��[2])) do
				for xi, x in ��(��(y)) do
					�� = �� .. (��(�@, x) or '0')
				end
			end
			�� = �� .. ' ' .. ��(��(�@, ��), ' ')
		��
			wh = '00'
			�� �@ = {}
			for ii, i in ��(��(��[2])) do
				if not ��(�@, i) ��
					if i ~= '�n' ��
						�'.��(�@, i)
					end
				end
			end
			�� �� = ''
			for ii, i in ��(��(��[2])) do
				�� = �� .. (��(�@, i) or '0')
			end
			�� = �� .. ' ' .. ��(��(�@, ��), ' ')
		end
		�� ��, ��.��("%s %s %s %s %s", �v, ��, ��, wh, ��)
	��
		�� ��, ��
	end
end

�� �� ��(sod)
	if sod:��('<ore:.->=.+') == nil ��
		�� ��, sod
	end
	�� ore = sod:��('<ore:.->=.+')
	--�� ore = ore:sub(1, #ore - 1) -- �� ';'.
	�� �� = ��(��(ore, '[^=]+')[1])
	�� �� = ��(��(ore, '[^=]+')[2])
	�� ��, ��.��('%s=%s', ��, ��)
end

�� �� = io.��('��.db', 'w')
�� �� = io.��('� .db', 'w')
�� � = io.��('�>.txt', 'w')
�� � = io.��('�b.log', 'r')
�� �� = ''
�� � = ''
�� � = {}
�� �, �, � = 0, 0, 0
�� �� �()
	�� �	, � = ��(� .. '=' .. ��(�, '|'))
	if �	 ��
		��:��(� .. '\n')
		� = � + 1
	��
		�:��(� .. '\n')
		� = � + 1
	end
end
�D �� ~= nil do
	if ��:��('�e%..-%(.+%);') ~= nil ��
		�� �	, � = ��(��)
		if �	 ��
			��:��(� .. '\n')
			� = � + 1
		��
			�:��(� .. '\n')
			� = � + 1
		end
		if � ~= '' ��
			�()
		end
		� = ''
	�  ��:��('Ore%�
') == 1 ��
		if � ~= '' ��
			�()
		end
		� = ��:��('<.->')
		� = {}
	�  ��:��('-') == 1 and � ~= '' ��
		�'.��(�, ��:��('<.->'))
	��
		if � ~= '' ��
			�()
		end
		� = ''
	end
	�� = �:��('*l')
	--��(��)
	io.��('\x1b[�' .. ��.��('��: %d, ��: %d, �: %d.', �, �, �))
end
if � ~= '' ��
	�()
end
��('\x1b[�' .. ��.��('� %d � of ��, %d � of ��, and %d � �> to be � or out of �.', �, �, �))
]==],['lib']={['craftingdb.lua']= [==[�� �v = ��('lib.��.�v')
�� � = ��('lib.��.�')
�� �� = ��('lib.��.��')
�� � = ��('lib.��.�')
�� � = ��('lib.��.�')

�� �� = ��('lib.��')

-- � �
�� �� = {
	db = {}
}

-- � �
�� � = 'db/��.db'
�� ��.��()
	�� f = io.��(�, 'r')
	�� l = f:��('*l')
	�D l ~= nil do
		if (l:sub(1,1) ~= '#') and (l ~= '') ��
			�� � = {�" = 0, �# = 0}
			�� � = {}
			�� � = ��
			�� � = {}
			�� � = ��.�G(l)
			� = �v.new(�[1])
			�.� = ��(�[2])
			� = (�[3] == 'sd')
			�.�", �.�# = ��(�[4]:sub(1,1)), ��(�[4]:sub(2,2))
			�� pat = �[5]
			�� �� = �.new()
			for i = 6, #� do
				��:add(�.�(�[i]))
			end
			for � = 1, #pat do
				�[�] = ��[��(pat:sub(�, �))]
			end
			��.db[�] = ��.new(�, �, �, �)
		end
		l = f:��('*l')
	end
	f:��()
end
io.��('�S ��... ')
��.��()
�� � = 0
for k, v in ��(��.db) do
	� = � + 1
end
io.�� (��.��('%d �.\n', �))

�� ��.�7()
	�� a = {}
	for n in ��(��.db) do �'.��(a, n) end
	�'.��(a, ��(a, b) if a.�� == nil or b.�� == nil �� ��(a,b) end; �� a.�� < b.�� end)
	�� i = 0
	�� ��()
		i = i + 1
		if a[i] == nil ��
			�� nil
		��
			�� a[i], ��.db[a[i]]
		end
	end
end

�� ��.��()
	-- ��: '�, �� ��' '�v �� ��' 'sd=�/sl=�' 'wh' '�v �' '�v �� ��|��'
	�� f = io.��(�, 'w')
	f:��("#��:\n#'�, �� ��' '�v �� ��' 'sd=�/sl=�' 'wh' '�v �' '�v �� ��|��'\n")
	for k, v in ��.�7() do
		�� � = �6(~k)
		�� � = �6(k.�)
		�� � = v and 'sd' or 'sl'
		�� dim = �6(v.�.�") .. �6(v.�.�#)
		�� �  = v:�!()
		�� �" = ''
		for k, v in ��(v.�) do
			�" = �" .. � :�#(v) or '0'
		end
		�� �$ = ''
		for k, v in ��(� ) do
			�$ = �$ .. �6(~v) .. ' '
		end
		�$ = �$:sub(1, #�$)
		f:��(� .. ' ' .. � .. ' ' .. � .. ' ' .. dim .. ' ' .. �" .. ' ' .. �$ .. '\n')
	end
	f:��()
end

-- � �%
�� ��.get(i)
	for k, v in ��(��.db) do
		if i == k ��
			�� v
		end
	end
	�� nil
end

�� ��.set(��)
	if �� == nil ��
		�&('Can\'t add nil to ��!')
	end
	��.db[��.�] = ��
	�� ��.db[��.�]
end

�� ��.�0(i)
	for k, v in ��(��.db) do
		if i:��(k) ��
			�� tmp = ��.db[k]
			��.db[k] = nil
			�� tmp
		end
	end
	�� nil
end

�� craftingdb]==],['init.lua']= [==[-- Lib ��. Run �'.

-- �( ��
�� �)_�� = ��
�� ��(v)
	�� �* = �)_��(v)
	if �* == '�'' ��
		if v.�� ~= nil ��
			�� v.��
		end
	end
	�� �*
end]==],['inventory.lua']= [==[�� ��, �8 = ��(��, ��.��, '�8')
if not �� ��
	��('Can\'t �� �8 ��.')
	��
end

�� � = ��('�')
if �.��_�' == nil ��
	��('�+ �� �'!')
	��
end
�� �, = �.��_�'

�� �v = ��('lib.��.�v')
�� � = ��('lib.��.�')

-- � �
�� � = {
	�- = {},
	� = �..�/(�8.�0()),
	ex = {}
}

-- � �%
�� �.�(��)
	�� �8.�(��)
end

�� �.�(��)
	�� t = �,.�1(��)
	if t == nil ��
		�� nil
	end
	�� �v.new(t)
end

�� �.�2(��)
	�.�-[��] = �.�(��)
	�� �.�-[��]
end

�� �.�()
	for i = 1, �.� do
		�.�2(i)
	end
end
io.��('�3 ��... 00')
for i = 1, �.� do
	�.�2(i)
	io.��('\8\8' .. ��.��('%02d', i))
end
io.��(' �4.\n')

�� �.�$()
	�� � = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	for k, v in ��(�) do
		�.�2(v)
	end
end

�� �.�5(��, �6)
	for k, v in ��(�6) do
		if �� == v ��
			�� ��
		end
	end
	�� ��
end

�� �.�7(��)
	�� �.�5(��, {1, 2, 3, 5, 6, 7, 8, 9, 10, 11})
end

�� �.��(�8, �9)
	�� res = �8.�:(�8, �9)
	�.�2(�.�())
	�.�2(�8)
	�� res
end

�� �.��(i)
	�� �; = {}
	for �� = 1, �.� do
		if �.�-[��] ~= nil ��
			if i == �.�-[��] ��
				�'.��(�;, ��)
			end
		end
	end
	�� �;
end

�� �.�<(i)
	�� c = 0
	for k, v in ��(�.��(i)) do
		c = c + �.�-[v].�
	end
	�� c
end

�� �.�=(i, �>)
	�� �9 = i.�
	�� �> = �>
	if �> == nil �� �> = �� end
	�� �? = �.�()
	�� �@ = �.new()
	for k, v in ��(�.��(i)) do
		�@:add(�.�-[v])
	end
	for k, v in ��(�@) do
		if �.�<(v) >= �9 ��
			for kf, vf in ��(�.��(v)) do
				 if not (�> or �.�7(vf)) ��
					if �9 > 0 ��
						�.�(vf)
						�� �A = �.�-[vf].�
						if not �.��(�?, �9) ��
							�� ��
						end
						�9 = �9 - �A
					��
						�.�(�?)
						�� ��
					end
				 end
			end
			�B
		end
	end
	�.�(�?)
	�� ��
end

�� �.�(�9, �>, �6)
	�� �C = �.�()
	�� �9 = �9 or �.�-[�C].�
	�� �> = �>
	if �> == nil �� �> = �� end
	�� �6 = �6 or {}
	
	-- �D �@ �'
	for k, v in ��(�.��(�.�-[�C])) do
		if not (�> or �.�7(v)) and not �.�5(v, �6) ��
			�� �E = �.�-[v]
			if �E.� < �E.�F ��
				�� �G = �..min(�E.�F - �E.�, �9)
				if not �.��(v, �G) ��
					�� ��
				end
				�9 = �9 - �G
				if �9 == 0 ��
					�� ��
				end
			end
		end
	end
	
	-- �H, �I �J �-
	for �E = 1, �.� do
		if not (�> or �.�7(�E)) and not �.�5(�E, �6) ��
			if �.�-[�E] == nil ��
				if not �.��(�E, �9) ��
					�� ��
				end
				�� ��
			end
		end
	end
	
	�� ��
end

�� �.�B()
	for k, v in ��({1, 2, 3, 5, 6, 7, 8, 9, 10, 11}) do
		if �.�-[v] ~= nil ��
			�.�(v)
			if not �.�(�.�-[v].�, ��) ��
				�� ��
			end
		end
	end
	�� ��
end

�� �.ex.�K()
	�� �.ex.�L() ~= nil
end

�� �.ex.�M()
	�� �.ex.�N() ~= nil
end

�� �.ex.�L()
	�� �,.�L(3)
end

�� �.ex.�N()
	�� �,.�L(1)
end

�� �.ex.�(��)
	�� t = �,.�1(3, ��)
	if t == nil ��
		�� nil
	end
	�� �v.new(t)
end

�� �.ex.�O(i, �9)
	-- �P: �= �Q �v
end

�� �.ex.�R(i, �9)
	-- �P: �S �v to �� in �T
end

�� �.ex.�(��, �9)
	-- �P: � �U �9 of �V �� in �T
end

�� �.ex.�W(�X, �9)
	�� �,.�Y(3, �X, �9)
end

�� �.ex.�Z(�X, �9)
	�� �,.�[(3, �X, �9)
end

�� Inventory]==],['oredictdb.lua']= [==[�� �� = ��('lib.��')
�� �  = ��('lib.��.� ')
�� �\ = ��('lib.��.�\')

-- � �
�� �� = {
	db = {}
}

-- � �
�� �] = 'db/� .db'

�� ��:�^()
	�� a = {}
	for k, v in ��(��.db) do �'.��(a, k) end
	�'.��(a)
	�� i = 0
	�� ��()
		i = i + 1
		if a[i] == nil ��
			�� nil
		��
			�� a[i], ��.db[a[i]]
		end
	end
end

�� ��.��()
	�� f = io.��(�], 'r')
	�� l = f:��('*l')
	�D l ~= nil do
		if l ~= '' ��
			�� �_ = ��.�G(l, '=')
			��.db[�_[1]] = � .new(�_[1], �\.�(�_[2]))
		end
		l = f:��('*l')
	end
end
io.��('�S ��... ')
��.��()
�� � = 0
for k, v in ��(��.db) do
	� = � + 1
end
io.��(��.��('%d �.\n', �))

�� ��.��()
	�� f = io.��(�], 'w')
	for k, v in ��:�^() do
		if (��(k) ~= '��') or (��(�6(v)) ~= '��') ��
			��(k)
			��(�6(v))
		end
		f:��(k .. '=' .. �6(v) .. '\n')
	end
	f:��()
end

�� ��.get(��)
	for k, v in ��(��.db) do
		if k == �� ��
			�� v
		end
	end
	�� nil
end

�� ��.add(od)
	��.db[od.��] = od
end

�� ��.�0(��)
	�� �3 = ��.db[��]
	��.db[��] = nil
	�� �3
end

�� oredictdb]==],['rawdb.lua']= [==[�� �v = ��('lib.��.�v')
�� � = ��('lib.��.�')

�� �� = ��('lib.��')

-- � �
�� �� = {
	db = {}
}

-- � �
�� �` = 'db/raw.db'

�� ��.��()
	�'.��(��.db, ��(a, b) �� a.�� < b.�� end)
end

�� ��.��()
	��.db = {}
	�� f = io.��(�`, 'r')
	�� l = f:��('*l')
	�D l ~= nil do
		�'.��(��.db, ~�v.new(l))
		l = f:��('*l')
	end
	��.��()
	f:��()
end
io.��('�S ��... ')
��.��()
�� �a = 0
for k, v in ��(��.db) do
	�a = �a + 1
end
io.��(��.��('%d �.\n', �a))

�� ��.��()
	��.��()
	�� f = io.��(�`, 'w')
	for k, v in ��(��.db) do
		f:��(�6(v) .. '\n')
	end
	f:��()
end

-- � �%
�� ��.get(i)
	if �*(i) ~= �v ��
		�&('Can\'t �� ' .. ��(�v) .. ' �r ��.')
	end
	for k, v in ��(��.db) do
		if i:��(v) ��
			�� v
		end
	end
	�� nil
end

�� ��.has(i)
	�� ��.get(i) ~= nil
end

�� ��.add(i)
	if �*(i) ~= �v ��
		�&('Can\'t add ' .. ��(�v) .. ' to ��.')
	end
	for k, v in ��(��.db) do
		if i:��(v) ��
			�� i
		end
	end
	�'.��(��.db, i)
	��.��()
	�� i
end

�� ��.�0(i)
	for k, v in ��(��.db) do
		if i:��(v) ��
			�� �'.�0(��.db, k)
		end
	end
	�� nil
end

�� rawdb]==],['reset.lua']= [==[��.�['lib.��'] = nil
��.�['lib.��'] = nil
��.�['lib.��'] = nil
��.�['lib.��'] = nil
��.�['lib.��'] = nil
��.�['lib.�b'] = nil
��.�['lib.��'] = nil
��.�['lib.��.�v'] = nil
��.�['lib.��.� '] = nil
��.�['lib.��.��'] = nil
��.�['lib.��.�'] = nil
��.�['lib.��.�'] = nil
��.�['lib.��.�'] = nil
��.�['lib.��.�\'] = nil]==],['resproc.lua']= [==[�� ��, �8 = ��(��, ��.��, '�8')
if not �� ��
	��('Can\'t �� �8 ��.')
	��
end

�� �v = ��('lib.��.�v')
�� � = ��('lib.��.�')
�� �� = ��('lib.��')
�� �� = ��('lib.��')
�� �� = ��('lib.��')
�� �� = ��('lib.��.��')
�� �� = ��('lib.��')

-- � �
�� �c = {}

-- � �%
�� �c.��()
	��.��()
	��.��()
	��.��()
end

�� �c.��()
	��.��()
	��.��()
	��.��()
end

�� �c.�d(i)
	if ��.get(i) ~= nil ��
		�� ��.get(i)
	end
	�� nil
end

�� �c.�8(it)
	if ��(it) == '�'' ��
		if �*(it) ~= �v ��
			�&('Can\'t �; non-�v �e.')
		end
	��
		�&('Can\'t �; ' .. ��(it) .. '.')
	end

	�� �: = �.new()
	�� �9 = �.new()
	
	�� �� �f(i)
		�::add(i)
		�9:add(i)
	end
	
	�� �� �g(i)
		�::add(i)
	end
	
	�� �� �h(i)
		if �::has(i) ��
			�::�i(i)
			�� ��
		end
		�� ��
	end
	
	�� �� ��(i)
		if ��.has(i) ��
			�f(i)
		�  �c.�d(i) ~= nil ��
			for ite = 1, �..�j(i.� / �c.�d(i).�.�) do
				for k, v in ��(�c.�d(i):�!()) do
					�D not �h(v) do
						��(v)
					end
				end
				�g(�c.�d(i).�)
			end
		��
			�f(i)
		end
	end
	
	��(it)
	�9:��()
	�::��()
	�� �9, �:
end

�� �c.�B()
	�� � = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	for k, v in ��(�) do
		if ��.�-[v] ~= nil ��
			��.�(v)
			if not ��.�() ��
				�� ��
			end
		end
	end
end

�� �c.�((it)
	if ��.get(it) ~= nil ��
		�� ��.get(it)
	�  ��.get(it) ~= nil ��
		�� ��.get(it)
	��
		�� nil
	end
end

�� �c.�+(�1)
	if �*(�1) == �� ��
		�� ��.set(�1)
	�  �*(�1) == �v ��
		�� ��.add(�1)
	��
		�� nil
	end
end

�� �c.�0(it)
	if ��.get(it) ~= nil ��
		�� ��.�0(it)
	�  ��.get(it) ~= nil ��
		�� ��.�0(it)
	��
		�� nil
	end
end

�� �c.�k(�v, �l)
	-- �m �� �@ �V �Q �@
	�� �n = �.new()
	for k, v in ��(��.�-) do
		�n:add(v)
	end
	if �l ~= nil ��
		�n:�o(�l)
	end
	
	-- �p �@
	�� �q = �.new()
	�q:add(�v)
	
	-- �r and �s �t �@ �u it's �J
	�D #�q ~= 0 do
		�� �v = �'.�0(�q, 1)
		if not �n:has(�v) ��
			if (�c.�d(�v) == nil) or ��.has(�v) ��
				�� ��
			��
				�q:�o(�c.�d(�v):�!() * �v.�)
			end
		end
	end
	�� ��
end

�� �c.�<(�v, �l)
	-- �m �� �@ �V �Q �@
	�� �n = �.new()
	for k, v in ��(��.�-) do
		�n:add(v)
	end
	if �l ~= nil ��
		�n:�o(�l)
	end
	
	-- �p �@
	�� �q = �.new()
	�q:add(�v)
	
	-- �r and �s �t �@ �u it's �J
	�D #�q ~= 0 do
		�� �v = �q:�w()
		if not �n:has(�v) ��
			if (��.get(�v) == nil) or ��.has(�v) ��
				�� ��
			��
				�q:�o(��.get(�v):�!())
				�n:add(��.get(�v).�)
			end
		��
			�n:�i(�v)
		end
	end
	�� ��
end

�� �c.�!(�v)
	if ��.get(�v) == nil ��
		�&('Can\'t �! ' .. �6(�v) .. '.')
	end
	
	-- �p �x
	�� �y = {}
	�'.��(�y, ��.get(�v))
	
	�D #�y ~= 0 do
		�� �z = �y[#�y]
		
		-- � �� �{
		�� �| = ��
		for k, v in ��(�z:�!()) do
			if ��.�<(v) < v.� ��
				�| = ��
				if (��.get(v) == nil) or ��.has(v) ��
					��('�} 1')
					�� ��
				��
					for kc, vc in ��(�y) do
						if vc == ��.get(v) ��
							�'.�0(�y, kc)
						end
					end
					�'.��(�y, ��.get(v))
				end
			end
		end
		
		if �| ��
			if not ��.�B() ��
				��('�} 2')
				�� ��
			end
			��('�/')
			if �z.� ��
				�� � = {{1, 2, 3}, {5, 6, 7}, {9, 10, 11}}
				for y = 1, �z.�.�# do
					for x = 1, �z.�.�" do
						if �z.�[(y - 1) * �z.�.�" + x] ~= nil ��
							��.�(�[y][x])
							��.�=(�z.�[(y - 1) * �z.�.�" + x]:�~(), ��)
						end
					end
				end
			��
				�� � = {1, 2, 3, 5, 6, 7, 9, 10, 11}
				for k = 1, #�z.� do
					��.�(�[k])
					��.�=(�z.�[k]:�~(), ��)
				end
			end
			��.�(8)
			if not �.��.�!(1) ��
				��('�} 3')
				�� ��
			end
			��.�$()
			�'.�0(�y)
		end
	end
	
	�� ��
end

�� ResProc]==],['stringlib.lua']= [==[�� � = ��('�')
�� � = ��('�')
if �.gpu == nil ��
	��('�+ gpu!')
	��
end
�� gpu = �.gpu

-- � �
�� �� = {}

-- � �%
�� ��.�G(s, ��)
	if s == nil ��
		�&('�� nil.')
	end

	�� t = {}
	for str in ��.��(s, '([^' .. (�� or '%s') .. ']+)') do
		�'.��(t, str)
	end
	�� t
end

�� ��.��(s)
	�� ��, �� = gpu.��()
	�� �� ��(str)
		�< = 1
		for i = 1, #str do
			if str:sub(i, i) == '\n' ��
				�< = �< + 1
			end
		end
		�� �<
	end
	�� �� ��(str)
		�� t = {}
		�� l = ''
		for i = 1, #str do
			if str:sub(i, i) == '\n' ��
				t[#t+1] = l
				l = ''
			�  #l == �� - 1 ��
				t[#t+1] = l .. str:sub(i, i)
				l = ''
			��
				l = l .. str:sub(i, i)
			end
		end
		if l ~= '' �� t[#t+1] = l end
		�� t
	end
	�� �� mod(a, b)
		�� a - �..�/(a / b) * b
	end

	�� �� = ��
	�� �� = ��(s)
	for k, v in ��(��) do
		if �� ��
			io.��(v)
			�� = ��
		��
			io.��('\n' .. v)
			if (#v == ��) �� �� = �� end
		end
		if mod(k, ��) == 0 ��
			�.�=('key_��', nil, 32.0)
		end
	end
	io.��('\n')
end

�� stringlib]==],['tablelib.lua']= [==[�� �b = {}

�� �b.��(t)
	-- �� ��. �� ��.
	if ��(t) ~= '�'' ��
		�&('�� to �� �� �� �� �'.')
	end

	�� �� = {}
	for k, v in ��(t) do
		��[k] = v
	end
	
	�� ��
end

�� �b.��(t)
	-- �� ��. �� ��.
	if ��(t) ~= '�'' ��
		�&('�� to �� �� �� �� �'.')
	end

	�� �� = {}
	for k, v in ��(t) do
		if ��(v) == '�'' ��
			��[k] = �b.��(v)
		��
			��[k] = v
		end
	end
	
	�� ��
end

�� �b.��(t, ��)
	�� buf = ''
	for k, v in ��(t) do
		buf = buf .. �6(v)
		if ��(t, k) ~= nil ��
			buf = buf .. ��
		end
	end
	�� buf
end

�� �b.str(tb, ��)
	�� buf = ''

	�� �� tab(��)
		�� ��.rep('  ', ��)
	end
	�� �� val(v)
		if ��(v) == '��' ��
			�� '\'' .. v .. '\''
		��
			�� �6(v)
		end
	end
	�� �� key(k)
		if ��(k) == '��' ��
			�� k
		��
			�� �6(k)
		end
	end
	�� �� ��(t)
		�< = 0
		for _ in ��(t) do
			�< = �< + 1
		end
		�� �<
	end

	�� �� ��(t, ��, ��)
		if ��(t) ~= '�'' �� �� 'nil' end
		if ��(t) == nil �� �� '{}' end
		�� �� = �� or 0
		�� buf = ''
		if �� == nil ��
			buf = buf .. '{'
		��
			buf = buf .. �� .. ' = {'
		end
		�� = �� + 1
		�� k, v = ��(t, nil)
		�D k do
			if ��(v) == '�'' ��
				buf = buf .. '\n' .. tab(��) .. key(k) .. ' = ' .. ��(v, �� + 1)
			��
				buf = buf .. '\n' .. tab(��) .. key(k) .. ' = ' .. val(v)
			end
			if ��(t, k) ~= nil ��
				buf = buf .. ','
			end
			k, v = ��(t, k)
		end
		�� = �� - 1
		buf = buf .. '\n' .. tab(��) .. '}'
		�� buf
	end

	�� ��(tb, 0, ��)
end

�� tablelib]==],['type']={['crafting.lua']= [==[�� �� = ��('lib.��')
�� �v = ��('lib.��.�v')
�� � = ��('lib.��.�')

-- � �
�� � = {
	� = { �" = 0, �# = 0 },
	� = {},
	� = ��,
	� = {}
}

-- � �%
�� �.new(�, �, �, �)
	-- �� ��. �� ��.
	if (� == nil) or (� == nil) or (� == nil) ��
		�&('Can\'t �� nil ��.')
	end
	if (�.�" == nil) or (�.�# == nil) ��
		�&('� �� �!')
	end
	if (�*(�) ~= �v) ��
		�&('Can\'t put �� �� �� � �� �v!')
	end
	if (�.� == 0) ��
		�&('Can\'t �� �� �v!')
	end
	
	�� o = {}
	��(o, �)
	�.__�� = �
	o.� = �
	o.� = �
	o.� = �
	o.� = �
	�� o
end

�� �:�!()
	�� �� = �.new()
	for k, v in ��(��.�) do
		if v ~= nil ��
			��:add(v:�~())
		end
	end
	�� ��
end

-- ��
�� �.__�6(cr)
	�� �� = ��.��('(%dx%d) ', cr.�.�", cr.�.�#) .. (cr.� and '� ' or '� ') .. �6(cr.�) .. ':\n'
	
	if cr.� ��
		for c = 1, cr.�.�" * cr.�.�# do
			�� = �� .. ��.��('[%d] %s\n', c, cr.�[c])
		end
	��
		for c = 1, #cr.� do
			�� = �� .. ��.��('[%d] %s\n', c, cr.�[c])
		end
	end
	�� = ��:sub(1, #�� - 1)
	
	�� ��
end

�� Crafting]==],['ingredient.lua']= [==[�� �v = ��('lib.��.�v')
�� �\ = ��('lib.��.�\')
�� �  = ��('lib.��.� ')
�� �� = ��('lib.��')

-- � �
�� �� = {
	�� = {}
}

-- � �%
�� ��.�(str)
	�� a = {}
	��(a, ��)
	��.__�� = ��

	if str:��('ore:') ~= nil ��
		�� od = ��.get(str)
		if od == nil ��
			�&('�� �� ' .. str .. ' as �.')
		end
		a.�� = od
	�  str:��(',') ~= nil ��
		�� ic = �\.�(str)
		a.�� = ic
	��
		�� i = �v.new(str)
		a.�� = i
	end
	
	�� a
end

�� ��:��(i)
	-- �� ��. �� ��.
	if �*(i) ~= �v ��
		�&('�� ��\'t �� ' .. ��(i) .. '.')
	end
	
	if �*(��.��) == �  ��
		�� ��.��.��(i)
	�  �*(��.��) == �\ ��
		�� ��.��.��(i)
	�  �*(��.��) == �v ��
		�� ��.�� == i
	end
end

-- ��
�� ��.__eq(a, b)
	-- �� ��. �� ��.
	if not (((�*(a) == �v) and (�*(b) == ��)) or
			((�*(a) == ��) and (�*(b) == �v))) ��
		if (�*(a) == ��) and (�*(b) == ��) ��
			�� a.�� == b.��
		end
		�&(��.��('�� to do �� �� �V �� �e ��. (%s, %s)', ��(a), ��(b)))
	end
	
	if �*(a) == �v ��
		�� b:��(a)
	��
		�� a:��(b)
	end
end

�� Ingredient]==],['ingredientarray.lua']= [==[�� � = ��('lib.��.�')

-- � �
�� �� = {}

-- � �%
�� ��.new()
	�� a = {}
	��(a, ��)
	��.__�� = ��
	�� a
end

�� ��:��(i)
	for k, v in ��(��) do
		if v == i ��
			�� k
		end
	end
	�� nil
end

�� ��:add(i)
	for k, v in ��(��) do
		if v == i ��
			�� i
		end
	end
	�� �'.��(��, i)
end

�� IngredientArray]==],['item.lua']= [==[�� �� = ��('lib.��')

-- � �
�� �, = {
	�� = '',
	� = -1,
	� = 1,
	�F = 1
}

-- � �%
�� �,.new(...)
	�� �� = {...}
	�� i = {}
	��(i, �,)
	�,.__�� = �,
	
	if ��(��[1]) == '��' ��
		if ��[1] == '' ��
			�&('�� �v ��.')
		end
		�� �� = ��.�G(��[1], '|')
		i.�� = ��[1]
		i.� = ((��[2] == '*') and -1 or ��(��[2])) or 0
		i.� = 1
		i.�F = 1
	�  ��(��[1]) == '�'' ��
		i.�� = ��[1].��
		if ��[1].� ~= nil ��
			i.� = �..�/(��[1].�)
		end
		i.� = �..�/(��[1].�) or 1
		i.�F = �..�/(��[1].�F) or 1
	�  #�� == 0 ��
		�&('Not �� nil or �J ��.')
	��
		�&('�� �� ��.')
	end
	
	�� i
end

�� �,:�()
	��.� = -1
	�� ��
end

�� �,:�~()
	�� icl = ��:��()
	icl.� = 1
	�� icl
end

�� �,:��()
	�� �,.new(��)
end

�� �,:��(i)
	-- �� ��. �� ��.
	if �*(i) ~= �, ��
		�&('�� to �� �V ' .. ��(i) .. '.')
	end

	if (��.� == -1) or (i.� == -1) ��
		�� ��.�� == i.��
	��
		�� (��.�� == i.��) and (��.� == i.�)
	end
end

�� �,:��(i)
	-- ��.
	�� f = io.��('��.log', 'a')
	f:��(��.��() .. '\n')
	f:��()
	
	�� �,:��(i)
end

-- ��
�� �,.__eq(a, b)
	-- Don't do �� ��. �� �� �� out.
	if (�*(a) ~= �,) or (�*(b) ~= �,) ��
		if not (((�*(a) == �v) and (�*(b) == ��)) or
				((�*(a) == ��) and (�*(b) == �v))) ��
			�� ��
		��
			if �*(a) == �v ��
				�� b:��(a)
			��
				�� a:��(b)
			end
		end
		�� ��
	end

	�� a:��(b)
end

�� �,.__add(a, b)
	-- �� ��. �� ��.
	if (�*(a) ~= �,) or (�*(b) ~= �,) ��
		�&('�� to do �� �� �V �� �e ��.')
	end

	�� n = a:��()
	if (a.�� == b.��) and (a.� == b.�) ��
		n.� = a.� + b.�
	��
		�&(��.��('Can\'t add �� �@.'))
	end
	�� n
end

�� �,.__sub(a, b)
	-- �� ��. �� ��.
	if (�*(a) ~= �,) and (�*(b) ~= �,) ��
		�&('�� to do �� �� �V �� �e ��.')
	end

	�� n = a:��()
	if (a.�� == b.��) and (a.� == b.�) ��
		n.� = a.� - b.�
	��
		�&('Can\'t sub �� �@.')
	end
	�� n
end

�� �,.__mul(a, b)
	-- �� ��. �� ��.
	if (�*(a) ~= �,) and (��(b) ~= '��') ��
		�&(��.��('�� �v � ��: %s * %s.', ��(a), ��(b)))
	end
	
	�� n = a:��()
	n.� = n.� * b
	�� n
end

�� �,.__unm(a)
	�� icl = a:��()
	icl = a.�F - a.�
	�� icl
end

�� �,.__len(a)
	�� a.�;
end

�� �,.__�6(a)
	�� �� = a.��
	if a.� ~= nil ��
		if a.� ~= 0 ��
			�� = �� .. '|' .. �6(a.�)
		end
	end

	if a.� ~= 0 ��
		�� ��.��('%d %s', a.�, ��)
	end
	�� ��
end

�� �,.__��(a)
	�� icl = a:��()
	icl.� = 0
	�� icl
end

�� Item]==],['itemarray.lua']= [==[�� �v = ��('lib.��.�v')

-- � �
�� �� = {}

-- � �%
�� ��.new()
	�� o = {}
	��(o, ��)
	��.__�� = ��
	�� o
end

�� ��:has(i)
	for k, v in ��(��) do
		if i == v ��
			�� (i.� == 0) or (i.� <= v.�)
		end
	end
	�� ��
end

�� ��:��(i)
	for k, v in ��(��) do
		if v:��(i) ��
			�� v.� >= i.�
		end
	end
	�� ��
end

�� ��:��(ia)
	for k, v in ��(ia) do
		if not ��:has(v) ��
			�� ��
		end
	end
	�� ��
end

�� ��:��(ia)
	for k, v in ��(ia) do
		if not ��:��(v) ��
			�� ��
		end
	end
	�� ��
end

�� ��:�<(i)
	�� c = 0
	for k, v in ��(��) do
		if i == v ��
			c = c + v.�
		end
	end
	�� c
end

�� ��:add(i)
	for k, v in ��(��) do
		if v:��(i) ��
			��[k].� = ��[k].� + i.�
			�� ��[k]
		end
	end
	�'.��(��, i:��())
	�� i
end

�� ��:�o(ia)
	if ��(ia) == '�'' ��
		if �*(ia) ~= �� ��
			�&('Can\'t add non-� �e.')
		end
	��
		�&('Can\'t add ' .. ��(ia) .. '.')
	end
	
	for k, v in ��(ia) do
		��:add(v)
	end
	�� ia
end

�� ��:�0(i)
	for k, v in ��(��) do
		if i == v ��
			�� �'.�0(��, k)
		end
	end
	�� nil
end

�� ��:��(i)
	for k, v in ��(��) do
		if i:��(v) ��
			�� �'.�0(��, k)
		end
	end
	�� nil
end

�� ��:�i(i)
	�� �� = i:��()
	for k, v in ��(��) do
		if i == v ��
			��.� = v.� - ��.�
			if ��.� < 0 ��
				��:�0(v)
				��.� = -��.�
			��
				v.� = ��.�
				�� nil
			end
		end
	end
	�� ��
end

�� ��:pop()
	�� �'.�0(��)
end

�� ��:�w()
	if ��[#��].� <= 1 ��
		�� �'.�0(��)
	��
		��[#��].� = ��[#��].� - 1
		�� ��[#��]:�~()
	end
end

�� ��:��(i)
	for k, v in ��(��) do
		if i == v ��
			�� k
		end
	end
	�� nil
end

�� ��:get(i)
	�� ��[��:��(i)]
end

�� ��:�#(i)
	for k, v in ��(��) do
		if i:��(v) ��
			�� k
		end
	end
	�� nil
end

�� ��:��()
	�'.��(��, ��(a, b) �� a.�� < b.�� end)
	�� ��
end

-- ��
�� ��.__add(a, b)
	-- �� ��. �� ��.
	if not ((�*(a) == ��) or (�*(a) == �v)) or not ((�*(b) == ��) or (�*(b) == �v)) ��
		�&('�� to add �� �� �� �� �� and �,. [' .. ��(b) .. ']')
	end
	
	�� o = ��.new()
	if (�*(a) == �v) ��
		�� �� = ��
		for k, v in ��(o) do
			if a:��(v) ��
				o[k] = o[k] + a
				�� = ��
				�B
			end
		end
		if not �� ��
			o:add(a:��())
		end
	��
		for ks, vs in ��(a) do
			�� �� = ��
			for kd, vd in ��(o) do
				if vs:��(vd) ��
					o[kd] = o[kd] + vs
				end
			end
		end
	end
	if (�*(b) == �v) ��
		�� �� = ��
		for k, v in ��(o) do
			if b:��(v) ��
				o[k] = o[k] + b
				�� = ��
				�B
			end
		end
		if not �� ��
			o:add(b:��())
		end
	��
		for ks, vs in ��(b) do
			�� �� = ��
			for kd, vd in ��(o) do
				if vs:��(vd) ��
					o[kd] = o[kd] + vs
				end
			end
		end
	end
	�� o
end

�� ��.__mul(a, b)
	-- �� ��. �� ��.
	if (�*(a) ~= ��) or (��(b) ~= '��') ��
		�&(��.��('�� � � ��: %s * %s.', ��(a), ��(b)))
	end
	
	�� o = ��.new()
	for k, v in ��(a) do
		o[k] = a[k] * b
	end
	�� o
end

�� ItemArray]==],['itemcompound.lua']= [==[�� �v = ��('lib.��.�v')
�� �� = ��('lib.��')
�� �b = ��('lib.�b')

-- � �
�� �� = {
	�@ = {}
}

-- � �%
�� ��.�(��)
	�� ic = {}
	��(ic, ��)
	��.__�� = ��
	
	ic.�@ = {}
	for k, v in ��(��.�G(��, ',')) do
		�'.��(ic.�@, ~�v.new(v))
	end
	
	�� ic
end

�� ��:��(i)
	-- �� ��. �� ��.
	if �*(i) ~= �v ��
		�&('Can\'t add ' .. ��(i) .. ' to �v �[.')
	end
	
	for k, v in ��(��.�@) do
		if i == v ��
			�� ��
		end
	end
	�� ��
end

�� ��:add(i)
	-- �� ��. �� ��.
	if �*(i) ~= �v ��
		�&('Can\'t add ' .. ��(i) .. ' to �v �[.')
	end
	
	for k, v in ��(��.�@) do
		if i == v ��
			�� v
		end
	end
	�� �'.��(��.�@, ~i:��())
end

�� ��:�0(i)
	-- �� ��. �� ��.
	if �*(i) ~= �v ��
		�&('Can\'t add ' .. ��(i) .. ' to �v �[.')
	end
	
	for k, v in ��(��.�@) do
		if i == v ��
			�'.�0(��.�@, v)
			�� ��
		end
	end
	�� ��
end

-- ��
�� ��.__�6(��)
	�'.��(��.�@, ��(a, b) �� a.�� < b.�� end)
	�� �b.��(��.�@, ',')
end

�� ��.__eq(a, b)
	-- Don't do �� ��. �� �� �� out.
	if (�*(a) ~= ��) and (�*(b) ~= ��) ��
		�� ��
	end
	
	�� �6(a) == �6(b)
end

�� ItemCompound]==],['oredict.lua']= [==[�� �v = ��('lib.��.�v')
�� �\ = ��('lib.��.�\')

-- � �
�� �� = {
	�� = '',
	�� = {}
}

-- � �%
�� ��.new(��, ��)
	-- �� ��. �� ��.
	if �*(��) ~= �\ ��
		�&('Can\'t �� �  �V ' .. ��(��) .. '.')
	end

	�� od = {}
	��(od, ��)
	��.__�� = ��
	od.�� = ��
	od.�� = �� or {}
	�� od
end

�� ��:��(i)
	�� ��:��(i)
end

-- ��
�� ��.__�6(od)
	�� ��
end

�� ��.__eq(a, b)
	-- Don't do �� ��. �� �� �� out.
	if (�*(a) ~= ��) and (�*(b) ~= ��) ��
		�� ��
	end
	
	�� (a.�� == b.��) and (a.�� == b.��)
end

�� OreDict]==]}},['oredict.db']= [==[ore:��=��:log|*,��:��|*,��:�n_log|*
ore:��=��:��|*,��:�n_��|*
ore:�t=��:�A_�\|*
ore:��=��:oak_�,��:��_�,��:��_�,��:�U_�,��:�._�,��:��_oak_�
ore:�=��:��,��:��_��,��:��_��,��:�U_��,��:��_oak_��,��:�._��
ore:�=��:��_��,��:��_��_��,��:��_��_��,��:�U_��_��,��:��_oak_��_��,��:�._��_��
ore:�R=��:�._��,��:��_��,��:��_oak_��,��:�A_��,��:�U_��,��:��_��
ore:��=��:��
ore:��=��:�|*,��:�n_�|*
ore:�=��:�|*,��:�|*,��:�n_�|*
ore:��=��:��
ore:�=��:�_ore
ore:�=��:��_ore
ore:�	=��:�k_ore
ore:�
=��:��_ore
ore:�=��:�_ore
ore:�=��:��_ore
ore:�=��:�Y_ore
ore:�=��:��_ore
ore:��=��:��_�V
ore:��=��:�_�V
ore:�X=��:��
ore:�=��:��
ore:��=��:�_��
ore:��=��:��_��
ore:��=��:��
ore:��=��:��
ore:�=��:�Y
ore:��=��:��_�R
ore:��=��:��_�
ore:��=��:�
ore:��=��:��_��
ore:�#=��:dye|4
ore:� =��:�_��
ore:�=��:��_��
ore:�~=��:�k_��
ore:�=��:��_��
ore:��=��:�_��
ore:�=��:��_��
ore:�=��:�Y_��
ore:��=��:��_��
ore:�=��:��
ore:�=��:��
ore:�=��:��
ore:�=��:��_��
ore:��=��:�
ore:�=��:�
ore:dye=��:dye|*,��:��|14
ore:��=��:��
ore:��=��:��_��
ore:��=��:��_��
ore:��=��:��
ore:�==��:�=
ore:��=��:��
ore:�z=��:��_��
ore:��=��:��
ore:��=��:��
ore:egg=��:egg
ore:�=��:�_13,��:�_cat,��:�_�,��:�_�,��:�_far,��:�_�,��:�_�,��:�_� ,��:�_�!,��:�_�",��:�_11,��:�_�#
ore:�(=��:�(
ore:�S=��:�S
ore:��=��:��
ore:��=��:��
ore:�6=��:�6
ore:�5=��:�5|*
ore:�T=��:�T|*,��:red_�T|*
ore:��=��:��
ore:��=��:��
ore:��=��:��
ore:�]=��:end_��
ore:�=��:�
ore:�a=��:��_�'
ore:�$=��:��
ore:�%=��:��
ore:�&=��:��|1
ore:�'=��:��|2
ore:��=��:��|1
ore:�(=��:��|2
ore:�/=��:��|3
ore:�)=��:��|4
ore:��=��:��|5
ore:�*=��:��|6
ore:�=��:��
ore:�=��:��,��:��_��|*
ore:�+=��:��_��
ore:��=��:��_��,��:��_��_��|*
ore:��=��:��,��:��_��,��:�_��
ore:��=��:��,��:�_��
ore:�,=��:��_��
ore:�-=��:�_��
ore:��=��:dye
ore:��=��:��_��|15
ore:�.=��:��_��_��|15
ore:��=��:dye|1
ore:��=��:��_��|14
ore:�/=��:��_��_��|14
ore:�=��:dye|2
ore:��=��:��_��|13
ore:�0=��:��_��_��|13
ore:�=��:dye|3
ore:��=��:��_��|12
ore:�1=��:��_��_��|12
ore:�J=��:dye|4,��:��|14
ore:�u=��:��_��|11
ore:�2=��:��_��_��|11
ore:�=��:dye|5
ore:��=��:��_��|10
ore:�3=��:��_��_��|10
ore:��=��:dye|6
ore:�=��:��_��|9
ore:�4=��:��_��_��|9
ore:��=��:dye|7
ore:��=��:��_��|8
ore:�5=��:��_��_��|8
ore:�j=��:dye|8
ore:��=��:��_��|7
ore:�6=��:��_��_��|7
ore:�~=��:dye|9
ore:��=��:��_��|6
ore:�7=��:��_��_��|6
ore:��=��:dye|10
ore:��=��:��_��|5
ore:�8=��:��_��_��|5
ore:�+=��:dye|11
ore:�?=��:��_��|4
ore:�9=��:��_��_��|4
ore:�m=��:dye|12
ore:��=��:��_��|3
ore:�:=��:��_��_��|3
ore:��=��:dye|13,��:��|3
ore:�=��:��_��|2
ore:�;=��:��_��_��|2
ore:�!=��:dye|14
ore:�o=��:��_��|1
ore:�<=��:��_��_��|1
ore:��=��:dye|15
ore:��=��:��_��
ore:�==��:��_��_��
ore:��_��_��=��:�P|1
ore:��=��:��,��:��|2
ore:�>=��:��|1
ore:��=��:�
ore:�?=��:�|1
ore:�@=��:�|2
ore:�A=��:�|3
ore:�B=��:�|4
ore:�C=��:�|5
ore:�D=��:�|6
ore:�E=��:�|7
ore:�F=��:�)
ore:�G=��:�)|1
ore:�H=��:�)|2
ore:�I=��:�)|3
ore:�J=��:��
ore:�K=��:��|1
ore:�L=��:�
ore:�M=��:�|1
ore:�N=��:�
ore:�O=��:�|1
ore:�P=��:�|2
ore:�Q=��:�|3
ore:�R=��:�|4
ore:�S=��:�|5
ore:�T=��:��
ore:�U=��:��|1
ore:�V=��:��|2
ore:�W=��:��|3
ore:�X=��:��|4
ore:�Y=��:��|5
ore:�Z=��:��|6
ore:�[=��:��|7
ore:�\=��:��|8
ore:�]=��:��|9
ore:�^=��:��|10
ore:�D=��:��|11
ore:�_=��:��|12
ore:�`=��:��|13
ore:�a=��:��|15,��:��|16
ore:�b=��:��|17
ore:�c=��:��
ore:�d=��:��|1
ore:�e=��:��|2
ore:�f=��:��_��
ore:�g=��:�t|1
ore:��=��:��
ore:��=��:�I
ore:�N=��:�9,��:�8_�9
ore:��=��:�_�
ore:��=��:��_��
ore:oc:�=��:��|7
ore:��=��:��|29
ore:oc:�%=��:end_��,��:�]
ore:��=��:��|*
ore:��=��:�
|*
ore:oc:��=��:��
ore:oc:�`=��:�`
ore:oc:��=��:��|�e
ore:oc:�Q=��:�Q
ore:oc:��=��:��
ore:oc:��=��:��
ore:oc:��=��:��
ore:oc:�^=��:��
ore:oc:��=��:��
ore:oc:��=��:��
ore:oc:�=��:��
ore:oc:�=��:�
ore:oc:�@=��:�@
ore:oc:�=��:�
ore:oc:��=��:��
ore:oc:�h=��:�p
ore:oc:�i=��:��
ore:oc:�=��:�E
ore:oc:��=��:��
ore:oc:�=��:�
ore:oc:�=��:�
ore:oc:��=��:��
ore:oc:�n=��:�n
ore:oc:��=��:��
ore:oc:�N=��:�N
ore:oc:�=��:�
ore:oc:��=��:��
ore:oc:�j=��:�M
ore:oc:��=��:��
ore:oc:�k=��:�O
ore:oc:�D=��:��
ore:oc:��=��:��|1
ore:oc:�l=��:��|2
ore:oc:�m=��:��|3
ore:oc:��=��:��|4
ore:oc:��=��:��|5
ore:oc:� =��:��|6
ore:oc:��=��:��|7
ore:oc:��=��:��|8
ore:oc:��=��:��|9
ore:oc:��=��:��|10
ore:oc:��=��:��|11
ore:oc:�h=��:��|12
ore:oc:��=��:��|13
ore:oc:��=��:��|14
ore:oc:��=��:��|15
ore:oc:��=��:��|16
ore:oc:�n=��:��|17
ore:oc:�o=��:��|18
ore:oc:�)=��:��|20
ore:oc:�&=��:��|21
ore:oc:��=��:��|23
ore:oc:�p=��:��|24
ore:oc:�+=��:��|26
ore:oc:�q=��:��|27
ore:oc:��=��:��|28
ore:oc:��=��:��
ore:oc:�r=��:��|2
ore:oc:�s=��:��|3
ore:oc:��=��:��|4
ore:oc:�y=��:�y
ore:oc:�t=��:��
ore:oc:�u=��:��|5
ore:oc:��=��:�
ore:oc:��=��:�|1
ore:oc:�=��:�|2
ore:oc:�!=��:�|3
ore:oc:�=��:�|4
ore:oc:� =��:�|5
ore:oc:��=��:�|6
ore:oc:�#=��:�|7
ore:oc:��=��:�|8
ore:oc:�$=��:�|9
ore:oc:��=��:�|10
ore:oc:�=��:�|11
ore:oc:�v=��:�|13
ore:oc:�w=��:�|14
ore:oc:�x=��:�|15
ore:oc:�y=��:�|16
ore:oc:�z=��:�|17
ore:oc:�{=��:�|19
ore:oc:�|=��:�|20
ore:oc:�"=��:��|1
ore:oc:�=��:��|2
ore:oc:�}=��:��|3
ore:oc:�*=��:��|4
ore:oc:�~=��:��|5
ore:oc:��=��:��|6
ore:oc:�=��:��|7
ore:oc:�=��:��|8
ore:oc:��=��:��|9
ore:oc:��=��:��|10
ore:oc:��=��:��|11
ore:oc:��=��:��|12
ore:oc:��=��:��
ore:oc:��=��:��|1
ore:oc:��=��:��|2
ore:oc:��=��:��|3
ore:oc:��=��:��|4
ore:oc:��=��:��|5
ore:oc:��=��:��|6
ore:oc:��=��:��|7
ore:oc:��=��:��|8
ore:oc:��=��:��|9
ore:oc:��=��:��|10
ore:oc:��=��:��|11
ore:oc:��=��:��|12
ore:oc:��=��:��|13
ore:oc:��=��:��|14
ore:oc:��=��:��|15
ore:oc:��=��:��|16
ore:oc:��=��:��|17
ore:oc:��=��:��|18
ore:oc:��=��:��|19
ore:oc:��=��:��|20
ore:oc:��=��:��|21
ore:oc:��=��:��|22
ore:oc:��=��:��|23
ore:oc:��=��:��|24
ore:oc:��=��:��|25
ore:oc:��=��:��|26
ore:oc:��=��:��|27
ore:oc:��=��:��|28
ore:oc:��=��:��|29
ore:oc:mfu=��:��|30
ore:oc:��=��:��|31
ore:oc:��=��:�q
ore:oc:��=��:�q|1
ore:oc:��=��:�q|2
ore:oc:��=��:�q|3
ore:oc:��=��:�q|4
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