local fs = require('filesystem')
local sh = require('shell')
local cd = sh.getWorkingDirectory()

local dict = {'opencomputers','card','123040','nuggetGold','cpu1','circuitChip3','materialCard','chipDiamond','cpu2','ram5','minecraft','iron','nugget','materialALU','circuitChip2','yellow','flower','golden','rail','101121131','ingotGold','stickWood','dustRedstone','wool','dyeRed','rabbit','stew','010234050','cooked','carrot','baked','potato','brown','mushroom','bowl','stick','logWood','123045','materialInterweb','torchRedstoneActive','obsidian','101232404','ender','lanCard','120030','cable','circuitChip1','materialEnderPearl','relay','121232141','ingotIron','materialCircuitBoardPrinted','bone','block','111111111','extrautils2','ingredients','diamond','ram1','filter','121232121','string','blockRedstone','ram3','birch','fence','121121','planks','passivegenerator','121131141','decorativesolid','nether','brick','storagedrawers','upgrade','template','111121111','drawerBasic','wart','minichest','chest','banner','111111020','cobblestone','wall','111111','dyeMagenta','stained','glass','pane','blockGlassLime','dyeBlack','dyeWhite','coal','dyeCyan','hardened','clay','spike','stone','010121232','sword','compressed1xCobblestone','slime','ball','spruce','gate','leather','chestplate','101111111','010232','111222','plankWood','slimeball','unstableingots','dark','door','writable','book','feather','helmet','111101','apple','emerald','gemEmerald','101010','pickaxe','111020020','gemDiamond','1212','redstone','111232222','blockGlassMagenta','raid','121343151','cpu3','diskDrive','stairs','100110111','trim','121222121','dyePurple','decorativeglass','1111','dyeBrown','hologram2','121343565','blockGlass','blaze','powder','blockGlassColorless','dyeGreen','pumpkin','torch','rack','121343567','wlanCard2','bars','powerDistributor','compressedcobblestone','gold','blockGold','dyeOrange','filterfluids','gemLapis','111101111','terraformer','enchanting','table','dirt','compresseddirt','redstoneCard1','dyeYellow','boots','101101','acacia','ineffableglass','grocket','121343','pipe','concrete','122223333','sand','gravel','mycelium','sticky','piston','110202','fire','charge','gunpowder','luxsaber','blockGlassYellow','suncrystal','wooden','drum','121131121','ingotDemonicMetal','klein','glasscutter','001021100','button','stonebrick','dyeBlue','lava','bucket','netsplitter','craftingPiston','carpetedcapacitor','carpet','capacitor','indexerremote','screen','sandstone','jungle','ingot','comparator','010121333','quartz','repeater','121333','slab','written','purpur','chorus','fruit','popped','water','fishing','001012102','leggings','111101101','boat','101111','noteblock','dyeGray','miner','dropper','dyeLightBlue','screen1','121234121','microcontroller','storage','itembuilderswand','001020200','decorativesolidwood','beetroot','drawer','120203','beacon','111121333','netherStar','121212121','flint','steel','dyePink','compressednetherrack','blockGlassBlack','prismarine','gemPrismarine','crafter','crafting','111232111','paper','filled','1221','netherbrick','keyboard','111123','materialButtonGroup','materialArrowKey','materialNumPad','dyeLightGray','blockGlassWhite','111202','blockGlassLightBlue','111232','double','plant','personal','name','flattransfernode','anvil','quarry','magic','snow','globe','bricks','1223','snowball','clock','010121010','speckled','melon','sickle','011001211','powertransmitter','fireaxe','opinium','goldenlasso','resonator','121343333','blockCoal','compressedsand','chameliumblock','chamelium','ladder','101111101','biomemarker','treeSapling','quantify','furnace','minecart','pressure','plate','cake','111232444','milk','sugar','wheat','111023111','armor','stand','111010121','quarryproxy','121131444','blockGlassPink','dyeLime','blockGlassRed','keybutton','shroud','vine','redstoneclock','bottle','pearl','1112','shovel','simpledecorative','cauldron','101101111','status','121232424','soundmuffler','stairWood','disassembler','123405676','materialCU','paneGlass','analyzer','analogcrafter','chestWood','lever','purple','shulker','shell','screen3','glowstone','dust','101121101','light','weighted','material','framingtable','drawerTrim','trashcanfluid','case1','nuggetIron','star','printer','hopper','case3','blockGlassGreen','endershard','powerconverter','powerbattery','case2','blockGlassLightGray','spectral','arrow','dustGlowstone','log2','ingotUnstable','rainbowgenerator','sugarcane','111232242','materialTransistor','crystal','111121131','ghast','tear','blockIron','dispenser','blockGlassCyan','daylight','detector','111222333','angelring','indexer','tripwire','hook','trapped','101121010','component','blockDiamond','compressedgravel','010232010','121345121','componentBus2','graphicsCard2','121234151','wlanCard','121030','soup','trapdoor','geolyzer','compass','ram6','componentBus3','componentBus1','graphicsCard1','ram2','ram4','stoneEndstone','microcontrollerCase2','controller','111232141','microcontrollerCase1','12345','inkCartridgeEmpty','magma','cream','12222','stoneDiorite','121340151','121343121','experience','elytra','teleporter','largishchest','trashchest','trashcan','robot','compdrawers','itemdestructionwand','011021200','mossy','pillar','heavy','controllerslave','hologram1','angelblock','111101121','lamp','materialCuttingWire','powerdistributor','stack','magicapple','bread','scanner','spider','121121010','shield','121111010','screen2','121345161','snowglobe','12345678','doorWood','grass','painting','sign','misc','interactionproxy','powermanager','111020222','playerchest','compoundbow','012302012','endstone','chameliumBlock','user','assembler','workbench','machine','trowel','001020300','11250603','1002','123425123','materialDisk','121343131','cookie','lapis','shears','0110','ironwood','blockGlassOrange','motionsensor','012102012','wood','customdrawers','slabWood','blockGlassBlue','item','frame','012222','wrench','101020010','lead','potion','111232454','blockLapis','seeds','contract','1234','linkedCard','adapter','slab2','blockGlassGray','tool','100230430','solarGeneratorUpgrade','123456789','tape','010222','brewing','materialAcid','transposer','inventoryControllerUpgrade','tankControllerUpgrade','lawsword','charger','bookshelf','111222111','blockGlassBrown','enderpearl','101232141','jukebox','trashcanenergy','hdd2','lantern','dustPrismarine','hdd1','hdd3','fermented','101232020','layer','bricksStone','blockGlassPurple','stoneGranite','wateringcan','1000','100121010','111020111','hide','bagofholding','waypoint','netherrack','conversion','diskdrive','activator','hoverboots','hoverUpgrade2','droneCase1','012023200','111232040','100120130','redstonelantern','customtrim','boomerang','010101','123456173','010111','010101010','010232333','110120001','void','observer','111223111','stoneAndesite','local','isRobotAcquired','xpcall','require','debug','traceback','then','print','load','module','return','stringlib','resproc','rawdb','oredictdb','craftingdb','inventory','type','Command','class','start','usage','func','function','setmetatable','index','running','true','slot','changed','false','wrongUsage','command','Invalid','arguments','commands','help','else','such','cmdlist','pairs','insert','sort','printbuffer','ipairs','pagedPrint','exit','stdout','write','Changes','been','made','Would','like','save','before','exiting','userInput','stdin','read','lower','elseif','reload','Resources','loaded','successfully','rescan','scan','Inventory','scanned','saved','analyze','shaped','shapeless','ignoreMetadata','processor','processors','shape','Check','result','scanSlot','select','throw','Crafting','obstructed','Scan','pattern','craftingArea','scanPattern','slotScan','ignoreDamage','damage','Shrink','Craft','craft','width','height','scanCraftingArea','show','peek','look','lookup','Nothing','getmetatable','keep','Item','discard','Slot','cleared','remove','processing','Removed','removed','list','List','tostring','sortedCraftingPairs','traceraw','itemAdded','itemAvailable','trace','isCraftable','Crafted','failed','enough','items','clear','clearCraftingArea','Cleared','while','craftmgr','commandstr','split','commandname','unpack','unrecognized','PREINITIALIZATION','CLIENT','INFO','Current','loaders','after','merging','preinit','Loading','scripts','loader','with','names','Completed','script','loading','INITIALIZATION','CraftTweaker','Building','registry','Successfully','built','recipeevent','crafttweaker','POSTINITIALIZATION','Removing','recipes','various','outputs','AVAILABLE','Fixed','RecipeBook','Recipes','addShaped','card91','null','card92','card90','addShapeless','from','dandelion','shortcut','card88','card89','card86','card87','relay21','card81','card84','card85','card82','card83','mill','basicdrawers','halfdrawers4','withTag','mini','magenta','white','lime','gray','cyan','enchanter','Type','enchanted','black','meal','fulldrawers2','manual','lootcycling','tippedarrow','unstable','blue','oxeye','daisy','truchet','raid19','border','hologram213','green','rack25','compressed','bonemeal','chunk','chunkloader','Animal','ForgeData','Contracted','byte','villager','Place','generator','netherstar','skull','orange','fluids','infuser','uncompress','redstone20','ineffable','transfer','node','energy','stable','dehostilifier','rainbow','bottom','overclock','pink','survival','saber','65536','cutter','stoneslab','heater','netsplitter28','carpetedcapacitor30','remote','card184','humidifier','dehumidifier','fulldrawers4','screen122','microcontroller151','tulip','builders','wand','culinary','death','dragonsbreath','enchant','sandy','mapextending','keyboard14','solar','sunflower','survivalist','diorite','flatnode','base','cooler','absorbtion','transmitter','lasso','evil','shulkerboxcoloring','nuggets','chiseled','chameliumblock7','allium','biome','marker','normal','wind','proxy','stonecross','concealment','halfdrawers2','flash','demon','level1','level2','poppy','sound','muffler','diagonal','disassembler9','analog','screen323','fulldrawers1','print182','lightLevel','noclipOff','isBeaconBase','pressurePlate','noclipOn','isButtonMode','stateOn','redstoneLevel','stateOff','print183','4096','material156','framing','colorizeboots','print173','print174','print175','print176','trash','fluid','shielddecoration','case14','smooth','dragon','repairitem','printer18','speed','super','colorizecable','azure','bluet','case35','reverse','pipes','powerconverter16','battery','case26','armordye','moon','bannerduplicate','10000','capacitor3','angel','ring','convert','component80','component78','component79','component72','component73','component70','component71','geolyzer11','component76','material54','component77','component74','component75','material51','material50','material53','material52','component69','polished','component67','component68','upgrade94','component62','upgrade93','upgrade96','upgrade95','component65','upgrade98','component66','upgrade97','component63','component64','upgrade99','lilac','largist','robot154','compacting','squid','chickenring','destruction','lunar','slave','hologram112','material131','powerdistributor17','combined','orchid','shard','chicken','screen224','misc152','misc155','porcupine','ingotBrick','player','gear','compound','endstone27','assembler1','cable2','storage129','storage128','storage127','storage126','storage125','chameliumblock158','chameliumblock159','lazuli','chameliumblock157','chameliumblock161','chameliumblock162','chameliumblock160','chameliumblock165','chameliumblock166','chameliumblock163','chameliumblock164','burnt','banneraddpattern','diamonds','motionsensor15','chameliumblock169','chameliumblock167','chameliumblock168','crusher','chameliumblock172','chameliumblock170','chameliumblock171','framed','half2','storage153','storage150','color','half4','upgrade111','upgrade110','power','manager','upgrade117','wrench59','upgrade116','upgrade119','upgrade118','upgrade113','upgrade112','upgrade115','upgrade114','upgrade120','upgrade122','granite','upgrade121','upgrade124','upgrade123','storage132','data','label','openos','display','Name','OpenOS','Operating','System','lootFactory','floppy','storage130','readonly','eeprom','EEPROM','BIOS','retrieve','storage139','tool55','storage138','tool56','storage137','tool57','storage136','tool58','storage135','storage133','oppm','OPPM','Package','Manager','andesite','mapcloning','packing','upgrade134','storage143','storage142','storage141','storage140','tool61','storage149','storage148','storage147','transposer29','storage146','fireworks','storage145','storage144','decolorizecable','kikoku','charger8','storage179','storage178','storage177','upgrade109','storage181','storage180','upgrade100','coarse','upgrade106','decolorizeboots','upgrade105','upgrade108','upgrade107','upgrade102','upgrade101','upgrade104','upgrade103','rose','bush','antenna','rotten','flesh','borderstone','mining','porkchop','beef','mutton','fish','watering','full1','adapter0','full2','full4','holding','waypoint26','diskdrive10','hoverboots60','material37','material36','material39','material38','material33','material32','material35','material34','material31','material48','material47','material49','material44','material43','material46','material45','material40','material42','material41','bookcloning','peony','entries','fenceWood','fenceGateWood','sapling','treeLeaves','leaves','leaves2','oreGold','oreIron','oreLapis','oreDiamond','oreRedstone','oreEmerald','oreQuartz','oreCoal','ingotBrickNether','gemQuartz','crystals','blockEmerald','blockQuartz','cropWheat','cropPotato','cropCarrot','cropNetherWart','reeds','blockCactus','cactus','record','blocks','chirp','mall','mellohi','stal','strad','ward','wait','blockSlime','blockPrismarine','blockPrismarineBrick','blockPrismarineDark','stoneGranitePolished','stoneDioritePolished','stoneAndesitePolished','paneGlassColorless','chestEnder','chestTrapped','paneGlassBlack','paneGlassRed','paneGlassGreen','paneGlassBrown','paneGlassBlue','paneGlassPurple','paneGlassCyan','paneGlassLightGray','paneGlassGray','paneGlassPink','paneGlassLime','paneGlassYellow','paneGlassLightBlue','paneGlassMagenta','paneGlassOrange','paneGlassWhite','nuggetUnstable','compressed2xCobblestone','compressed3xCobblestone','compressed4xCobblestone','compressed5xCobblestone','compressed6xCobblestone','compressed7xCobblestone','compressed8xCobblestone','compressed1xDirt','compressed2xDirt','compressed3xDirt','compressed4xDirt','compressed1xSand','compressed2xSand','compressed1xGravel','compressed2xGravel','compressed1xNetherrack','compressed2xNetherrack','compressed3xNetherrack','compressed4xNetherrack','compressed5xNetherrack','compressed6xNetherrack','gemRedstone','gearRedstone','eyeofredstone','dustLunar','coalPowered','gemMoon','xuUpgradeSpeed','xuUpgradeStack','xuUpgradeMining','xuUpgradeBlank','dropofevil','ingotEnchantedMetal','xuRedstoneCoil','xuUpgradeSpeedEnchanted','ingotEvilMetal','blockEnchantedMetal','blockDemonicMetal','blockEvilMetal','doorIron','blockMagicalWood','motionSensor','powerConverter','netSplitter','carpetedCapacitor','materialCircuitBoardRaw','materialCircuitBoard','tabletCase1','tabletCase2','droneCase2','inkCartridge','terminal','texturePicker','hoverBoots','nanomachines','server1','server2','server3','apu1','apu2','terminalServer','diskDriveMountable','graphicsCard3','redstoneCard2','internetCard','dataCard1','dataCard2','dataCard3','angelUpgrade','batteryUpgrade1','batteryUpgrade2','batteryUpgrade3','chunkloaderUpgrade','cardContainer1','cardContainer2','cardContainer3','upgradeContainer1','upgradeContainer2','upgradeContainer3','craftingUpgrade','databaseUpgrade1','databaseUpgrade2','databaseUpgrade3','experienceUpgrade','generatorUpgrade','inventoryUpgrade','navigationUpgrade','pistonUpgrade','signUpgrade','tankUpgrade','tractorBeamUpgrade','leashUpgrade','hoverUpgrade1','tradingUpgrade','wlanCard1','filesystem','args','path','resolve','exists','File','found','executable','loadfile','open','close','Crash','collected','attempt','concatenate','value','metamethod','concat','field','main','global','tail','calls','process','Format','output','quantity','recipe','array','metadata','121212','11111111','11122','1111111','1213','1112324','method','compareDamage','processItem','Fire','Forget','debugging','Automatically','unloads','library','package','find','allMatch','gmatch','notContains','bracketContent','bracket','stripped','gsub','bracketLevel','indexStart','childs','arrRange','tableConcat','next','foreach','useful','Normalize','converting','format','database','iNormalize','iname','match','check','more','than','fits','Note','delimiter','iNormExt','tableIndex','inTable','conditionalFilter','onlyDamaged','onlyWithTag','onlyStack','liquid','craftingConvert','srec','Shapeless','shapedstr','itemc','itemAmount','tonumber','itemstr','itemArrangement','oredictConvert','Removes','orename','oredef','craftingdbf','oredictdbf','oredict','failedf','crafttweakerlog','curOre','oreContent','craftingCount','oredictCount','failedCount','convertOredict','converted','sentries','160D','fails','Wrote','lines','parsed','criteria','itemarray','ingredient','ingredientarray','Class','Meta','Init','craftingdbpath','dimension','craftingParams','size','parse','npat','itemoutput','itemoutputq','itemshape','itemUsed','itemsNeeded','itemPattern','indexDamage','allitems','Functions','error','first','Override','original','otype','Missing','invctrl','slots','math','floor','inventorySize','getStackInInternalSlot','updateSlot','Scanning','Done','isInExcludedSlot','excludedSlots','isInCraftingArea','slotDest','amount','transferTo','itemSlots','count','pull','ignoreCraftingArea','destSlot','itemTypes','pulled','break','srcSlot','Fill','curSlot','maxSize','moveSize','Lastly','fill','empty','isAvailable','getinventorySize','isUpAvailable','getUpinventorySize','request','TODO','external','send','deposit','front','specific','selected','transferOut','exSlot','dropIntoSlot','transferIn','suckFromSlot','itemcompound','oredictdbpath','sorted','splitted','rawdbpath','rawCount','tablelib','ResProc','getItemRecipe','object','addItem','createdItem','tryTakeItem','minus','ceil','satisfiable','externalItem','Merge','allItems','addAll','Unsatisfied','unsatisfiedItems','Drain','populate','unsatisfied','until','unsatisfiedItem','popSingle','craftings','unsatisfiedCraftings','unsatisfiedCrafting','availability','allAvailable','this','singleItem','event','delim','Splitting','screenWidth','screenHeight','getResolution','lineCount','brokeLines','stay','brokenTableBuffer','down','clone','Safety','Reduces','headache','Attempting','thing','other','newtable','cloneAll','splitter','tabulation','tableLength','createTable','make','needs','anything','into','beside','zero','itemsneeded','self','Metamethods','buff','Ingredient','content','Error','parsing','Ingredients','doesn','comparison','operation','different','IngredientArray','Empty','splits','expecting','argument','construction','compareTo','compare','Deprecated','deprecatrace','errors','here','Craftingdb','will','freak','number','Incompatible','scaling','completename','bnot','ItemArray','hasDamage','hasAll','hasAllDamage','removeDamage','unresolvedItem','incompatible','types','added','ItemCompound','itemCompoundString','itemCompound','OreDict','iComp','create'}

local files = {['a.txt']= [==[]==],['crafting.db']= [==[€€:€|11 1 sd 32 €‚ ore:€ƒ ore:oc:€„ ore:oc:€… ore:oc:€†
€€:€|12 1 sd 32 €‚ ore:€‡ ore:oc:€ˆ ore:oc:€‰ ore:oc:€†
€€:€|10 1 sd 32 €‚ €Š:€‹_€Œ ore:oc:€ ore:oc:€ ore:oc:€†
€Š:dye|11 1 sl 00 1 €Š:€_€
€Š:€‘_€’ 6 sd 33 €“ ore:€” ore:€• ore:€–
€Š:€—|14 1 sl 00 12 ore:€˜ €Š:€—
€Š:€™_€š 1 sd 33 €› €Š:€œ_€™ €Š:€ €Š:€_€Ÿ €Š:€ _€¡ €Š:€¢
€Š:€£ 16 sd 12 11 ore:€¤
€€:€|8 1 sd 32 €¥ ore:oc:€¦ ore:oc:€ ore:€§ ore:oc:€† ore:€¨
€€:€|9 2 sd 33 €© €Š:€ª_eye ore:oc:€« ore:oc:€¦ ore:oc:€…
€€:€|6 1 sd 32 €¬ ore:oc:€­ ore:oc:€® ore:oc:€†
€€:€|7 1 sd 32 €¬ ore:€¯ ore:oc:€ ore:oc:€†
€€:€° 1 sd 33 €± ore:€² ore:oc:€­ ore:oc:€« ore:oc:€³
€Š:€´_€µ 1 sd 33 €¶ €Š:dye|15
€·:€¸|7 1 sl 00 123 €·:€¸|9 ore:€” €Š:€¹|*
€€:€|1 1 sd 32 €‚ ore:oc:€® ore:oc:€ ore:oc:€º ore:oc:€†
€€:€|4 1 sd 32 €¬ ore:€§ ore:oc:€® ore:oc:€†
€·:€» 1 sd 33 €¼ ore:€– ore:€• ore:€½
€€:€|5 1 sd 32 €‚ ore:€¾ ore:oc:€ ore:€¯ ore:oc:€†
€Š:€‹_€Œ 9 sd 11 1 ore:€²
€€:€|2 1 sd 32 €‚ ore:oc:€ ore:oc:€ ore:oc:€¿ ore:oc:€†
€€:€|3 1 sd 32 €‚ ore:oc:€… ore:oc:€ ore:oc:€‰ ore:oc:€†
€Š:€À_€Á 3 sd 32 €Â €Š:€Ã|2 €Š:€£
€·:€Ä|5 1 sd 33 €Å €·:€Æ|3 €·:€¸ €·:€¸|1 €Š:€Ç_€È_€Á|*
€É:€Ê_€Ë 2 sd 33 €Ì ore:€• ore:€Í
€Š:€Ç_€Î_€µ 1 sd 33 €¶ €Š:€Ç_€Î
€·:€Ï 9 sl 00 1 €Š:€Ğ|*
€Š:€Ñ|13 1 sd 33 €Ò €Š:€—|2 ore:€•
€Š:bed|14 1 sl 00 12 €Š:bed ore:€˜
€Š:€Ó_€Ô 6 sd 32 €Õ €Š:€Ó
€Š:€—|2 1 sl 00 12 ore:€Ö €Š:€—
€Š:€×_€Ø_€Ù|5 16 sd 32 €Õ ore:€Ú
€Š:dye|8 2 sl 00 12 ore:€Û ore:€Ü
€Š:€İ_€µ 1 sd 33 €¶ €Š:€İ
€Š:bed|9 1 sl 00 12 €Š:bed ore:€Ş
€Š:€×_€ß_€à|2 8 sd 33 €Ì €Š:€ß_€à ore:€Ö
€·:€á_€â 4 sd 33 €ã €Š:€â_€ä|* ore:€Ó ore:€å
€Š:€—|15 1 sl 00 12 ore:€Û €Š:€—
€Š:€æ_€ç 9 sd 11 1 €Š:€æ
€Š:dye|15 9 sl 00 1 €Š:€´_€µ
€Š:€è_€Á_€é 1 sd 32 €Â €Š:€£ €Š:€Ã|1
€Š:€ê_€ë 1 sd 33 €ì ore:€ê
€·:€Ä|7 1 sd 32 €í €·:€¸|1 €·:€Æ|2 €·:€¸
€Š:bed|4 1 sd 32 €î €Š:€—|4 ore:€ï
€Š:€æ 1 sd 33 €¶ ore:€ğ
€Š:€‹_€µ 1 sd 33 €¶ ore:€²
€·:€ñ|1 9 sl 00 1 €·:€ñ|2
€Š:€ò_oak_€ó 3 sd 23 €Õ €Š:€Ã|5
€Š:€ô_€õ 1 sl 00 123 €Š:€õ ore:€Û ore:€ö
€Š:€ê_€÷ 1 sd 32 €ø ore:€ê
€Š:bed|3 1 sd 32 €î €Š:€—|3 ore:€ï
€Š:€‘_€ù 1 sd 33 €Ì ore:€” €Š:€ù
€Š:€ú_€µ 1 sd 33 €¶ ore:€û
€Š:€_pot 1 sd 32 €ü €Š:€È
€Š:€¹_€ı 1 sd 33 €ş ore:€ÿ ore:€•
€Š:dye|7 1 sl 00 1 €Š:red_€|8
€·:€Æ|5 4 sl 00   €·:€Æ|2 €·:€Æ
€É:€Ê_|1 1 sd 33  €Š: ore:€• €É:€Ê_€Ë
€Š:€×_€Ø_€Ù|2 16 sd 32 €Õ ore:
€€: 1 sd 33  €Š:€‹_€Œ ore:oc: ore:oc:€º ore:oc: ore:oc:€
€Š:€Ç_€È_ 4 sd 33 	 €Š:€Ç_€È
€É:
|5 4 sd 33  ore:€• €Š:€Ã|5
€Š:€—|10 1 sl 00 12 ore: €Š:€—
€·:|1 4 sd 22  €·:
€Š:€×_€ß_€à|12 8 sd 33 €Ì €Š:€ß_€à ore:
€€: 1 sd 33  ore:oc:€… ore: ore:oc:€³ ore:€ÿ ore:€¨ €Š:_
€Š:bed|2 1 sd 32 €î €Š:€—|2 ore:€ï
€Š:€‹_€ä 1 sd 13 112 ore:€² ore:€•
€Š:€è_€Á 3 sd 32 €Â €Š:€Ã|1 €Š:€£
€Š:€×_€Ø|13 8 sd 33 €Ì ore: ore:
€Š:lit_ 1 sd 12 12 €Š: €Š:
€€: 1 sd 33  ore:€ÿ ore:oc: €Š:€‹_ ore:€Ğ ore:oc:€° ore:oc:€³ ore:oc:
€·:|7 1 sd 33 €¶ €·:|6
€·:|6 1 sd 33 €¶ €·:|5
€·:€á_ 4 sd 33 €ã €Š:€‘_€ä|* ore:€” ore: 
€Š:dye|7 3 sl 00 122 ore:€Û ore:€Ü
€·:|1 1 sd 33 €¶ €·:
€·:|5 1 sd 33 €¶ €·:|4
€·:|4 1 sd 33 €¶ €·:|3
€·:|3 1 sd 33 €¶ €·:|2
€·:|2 1 sd 33 €¶ €·:|1
€Š:€×_€Ø|1 8 sd 33 €Ì ore: ore:!
€·:" 1 sd 33 €¼ ore:# ore:€• ore:€½
€Š:€Ğ 4 sd 33 $ ore:€¤
€·:%|8 1 sl 00 122 €·:%|9 €Š:&_'|*
€Š:( 9 sl 00 1 €·:)
€·:|1 9 sl 00 1 €·:|2
€€: 1 sd 33  ore:€² ore:oc:€… ore:€¾ ore:oc:* ore:oc:€³
€Š:bed|4 1 sl 00 12 €Š:bed ore:+
€Š:€‘_, 1 sd 32 - ore:€”
€Š:._€ó 3 sd 23 €Õ €Š:€Ã|4
€·:/|3 8 sd 33 €Ì €·:|3 €·:€¸|5
€·:0|6 1 sd 32 1 ore:€– €·:2 ore:€” €Š:_€µ|*
€·:€ñ|2 1 sd 33 €¶ €·:€ñ|1
€Š:3_|9 8 sl 00 4 ore:€Ş €Š:5 €Š:6
€·:%|6 1 sl 00 122 €·:%|9 €Š:7|*
€Š:8_9 1 sd 12 12 ore:€ğ €Š:9
€Š:€‘_hoe 1 sd 23 : ore:€” ore:€•
€Š:;_< 3 sl 00 123 ore:= €Š:_ €Š:€İ,€Š:€İ|1
€Š:€×_€ß_€à|15 8 sd 33 €Ì €Š:€ß_€à ore:€Û
€Š: 9 sd 11 1 €Š:_€µ
€Š:€ú 9 sd 11 1 €Š:€ú_€µ
€·:>|3 1 sd 33 €Å €·:€¸|17 ore:? €·:@ €·:€¸
€Š:A_€ı 1 sd 33 €ş ore:€ï ore:€•
€·:B|3 1 sd 33 C ore:D €·:E €·:B|2
€·:F 1 sd 33 G ore:€² ore:€•
€Š:3_|13 8 sl 00 4 ore: €Š:5 €Š:6
€Š:oak_ 4 sd 33 	 €Š:€Ã
€Š:€â_H 1 sd 11 1 ore:€â
€·:€Æ|2 4 sd 22  €Š:I|*
€Š:dye|12 2 sl 00 12 ore:J ore:€Ü
€Š:€×_€Ø|12 8 sd 33 €Ì ore: ore:
€·:%|4 1 sl 00 122 €·:%|9 €Š:K_L|*
€€:M 1 sd 33 €± ore:€² ore:oc:€­ ore:N ore:oc:€³
€€:O 1 sl 00 12 €Š:P ore:oc:Q
€·:R 1 sd 33 C ore:€â €·:€¸|2 €·:S
€Š:T 1 sd 22  €Š:5
€Š:3_|4 8 sl 00 4 ore:+ €Š:5 €Š:6
€Š:U_€Á_€é 1 sd 32 €Â €Š:€£ €Š:€Ã|3
€Š:_V 9 sd 11 1 €Š:_€µ
€€:€|9 2 sl 00 11 €€:€|9
€Š:W 1 sd 33 X €Š:_ €Š:Y ore:€â
€Š:Z 1 sd 32 [ €Š:_ ore:€– ore:€â
€Š:3_|14 8 sl 00 4 ore:€˜ €Š:5 €Š:6
€·:)|2 9 sl 00 1 €·:)|3
€Š:A_\|2 6 sd 31 111 €Š:€Ã|2
€·:€õ 1 sl 00 123 €Š:€õ|*,€Š:€ô_€õ|*,€Š:]_€õ|* ore:€” €Š:€¨|*
€Š:^_€µ 4 sd 22  €Š:__`_a
€·:%|2 1 sl 00 122 €·:%|9 €Š:b_L|*
€Š:A_H 1 sd 11 1 ore:€ï
€Š:€â_ 4 sd 33 	 €Š:€Ó
€Š:c_rod 1 sd 33 d ore:€• ore:€½
€Š:€‹_e 1 sd 33 f ore:€²
€·:%|3 1 sl 00 122 €·:%|9 ore:5
€Š:g 1 sd 32 h €Š:€Ã
€Š:P|9 3 sd 21 11 €Š:€—|9
€Š:dye|9 2 sl 00 12 ore:€˜ ore:€Ü
€Š:i 1 sd 33 €Ì ore:€ï ore:€–
€·:) 1 sd 33 €¶ €Š:(
€Š:3_|7 8 sl 00 4 ore:j €Š:5 €Š:6
€·:k 1 sl 00 123 €Š:l|* €·:€¸ €Š:€‹_€ı|*
€Š:3_|3 8 sl 00 4 ore:m €Š:5 €Š:6
€€:n 1 sd 33 o ore:€² €Š: ore:oc:€® ore:
€€:p 1 sl 00 12 €€:p €€:q
€Š:A_\|4 6 sd 31 111 €Š:€Ã|4
€Š:bed|7 1 sl 00 12 €Š:bed ore:j
€Š:€¡_€š 1 sl 00 123 €Š:€ _€¡ €Š:red_€¡ €Š:€¢
€Š:dye|1 1 sl 00 1 €Š:red_€|4
€·:r 1 sd 33 s ore:€” €·:t|1
€Š:dye|1 1 sl 00 1 €Š:u
€É:v_key 1 sd 23 w ore:€ƒ ore:€” €É:€Ê_€Ë
€Š:x 1 sd 33 y ore: ore:z €Š:€¨
€Š:tnt 1 sd 33 { ore:= €Š:5,€Š:5|1
€Š:bed|8 1 sd 32 €î €Š:€—|8 ore:€ï
€Š:|_and_} 1 sl 00 12 ore:€² €Š:|
€Š:dye|14 1 sl 00 1 €Š:red_€|5
€Š:bed|6 1 sl 00 12 €Š:bed ore:~
€É:€Ê_|2 1 sd 33 y ore:€• €É:€Ê_€Ë €Š:
€Š:P|12 3 sd 21 11 €Š:€—|12
€Š:U_€ó 3 sd 23 €Õ €Š:€Ã|3
€·:|3 9 sl 00 1 €·:|4
€Š:€×_€Ø_€Ù|15 16 sd 32 €Õ ore:€
€·:€Æ|4 4 sl 00   ore:5 ore:
€Š:|1 1 sd 33 €¶ ore:‚
€Š:P|11 3 sd 21 11 €Š:€—|11
€Š:€‹_€ë 1 sd 33 €ì ore:€²
€·:ƒ 1 sl 00 123 €Š:l|* €·:€¸ €Š:„_'|*
€·: 9 sl 00 1 €·:|1
€É:€Ê_q 1 sd 33 … ore:€• €Š:€¨ €É:€Ê_€Ë
€Š:map 1 sd 33 €Ì €Š:† €Š:‡_map|*
€Š:red_€Ç_€È 1 sd 22 ˆ €Š:‰ €Š:€Ç_€Î
€€:Š 1 sd 32 ‹ ore:oc:Œ ore:oc: ore:oc:
€Š:€À_ 4 sd 33 	 €Š:€Ã|2
€Š:€×_€Ø|8 8 sd 33 €Ì ore: ore:
€Š:€×_€Ø_€Ù 16 sd 32 €Õ ore:
€Š:€‘_axe 1 sd 23 ‘ ore:€” ore:€•
€Š:€×_€Ø_€Ù|3 16 sd 32 €Õ ore:’
€Š:3_|12 8 sl 00 4 ore: €Š:5 €Š:6
€Š:€×_€Ø|9 8 sd 33 €Ì ore: ore:€Ş
€·:€Ä 3 sd 32 “ ore:# €·:€Æ|2 €·:€¸
€Š:dye|11 2 sl 00 1 €Š:”_•
€Š:€â_€ä 1 sd 13 112 ore:€Ó ore:€•
€Š:€â_€È_ 4 sd 33 	 €Š:I,€Š:I|1,€Š:I|2,€Š:I|3
€É:–_key 1 sl 00 12 €É:v_key €Š:—_tag
€Š:€â|3 2 sd 22 ˆ ore:€Ó €Š:Y
€Š:._€Á 3 sd 32 €Â €Š:€Ã|4 €Š:€£
€·:˜|1 8 sd 13 102 €Š:™|* €·:0|2
€·:š 1 sd 33 €¼ €Š:end_€â|* €·:€Æ|3 ore:›_œ_
€Š:end_ 4 sd 22  €Š:end_€â
€Š:bed|1 1 sl 00 12 €Š:bed ore:!
€Š:€Ñ|6 1 sd 33 €Ò €Š:€—|9 ore:€•
€·:|4 9 sl 00 1 €·:|5
€Š:dye|13 4 sl 00 Ÿ ore:J ore:€˜ ore:€Ü
€Š:€‹_hoe 1 sd 23 : ore:€² ore:€•
€Š:œ 1 sd 22  €Š: 
€Š:€Ã|3 4 sd 11 1 €Š:log|3
€Š:._€Á_€é 1 sd 32 €Â €Š:€£ €Š:€Ã|4
€Š:¡ 1 sd 33 ¢ ore:€” ore:€–
€Š:P|2 3 sd 21 11 €Š:€—|2
€·:%|5 1 sl 00 122 €·:%|9 €Š: |*
€·:%|7 1 sl 00 122 €·:%|9 €Š:™|*
€Š:€—|4 1 sl 00 12 ore:+ €Š:€—
€Š:€×_€ß_€à|13 8 sd 33 €Ì €Š:€ß_€à ore:
€Š:£_¤ 1 sd 33 €Ì €Š:_€Œ €Š:¤
€·:¥_ 1 sd 33 ¦ ore:€” ore:€•
€·:§ 4 sd 12 12 €·:€¸ €·:€Æ|3
€·:¨ 1 sd 23 ‘ €·:©|8 €Š:€£|*
€Š:€Ø_€Ù 16 sd 32 €Õ €Š:€Ø
€Š:€¹_e 1 sd 33 f ore:€ÿ
€·:ª|1 1 sl 00 12 €·:ª €·:€¸|10
€Š: 1 sd 22  ore:‚
€·:« 1 sd 33 ¬ ore:€– ore:­ ore:€² €·:€¸
€Š:€‘_€ä 1 sd 13 112 ore:€” ore:€•
€Š:€×_€Ø|10 8 sd 33 €Ì ore: ore:
€Š:€‹_V 1 sd 33 €¶ €Š:€‹_€Œ
€Š:T|1 1 sd 12 11 €Š:€â_\|1
€·:® 9 sl 00 1 €·:®|1
€Š:€‘_€ı 1 sd 33 €ş ore:€” ore:€•
€Š:€à 1 sd 22  €Š:€à_€ç
€Š:€Á_€é 1 sd 32 €Â €Š:€£ €Š:€Ã
€€:¯ 1 sd 33 €¶ ore:oc:°
€Š:dye|13 1 sl 00 1 €Š:red_€|2
€Š:A_\|1 6 sd 31 111 €Š:€Ã|1
€Š:± 3 sd 33 ² ore:€•
€·:³ 1 sd 33 €¼ €Š:dye|13,€·:€¸|3,€Š:dye|5 ore:€² ore:´
€É:µ_key 1 sl 00 12 €É:v_key €Š:€ô_€õ
€Š:_ 1 sd 12 12 ore:€– ore:€•
€Š:¶_· 1 sd 12 12 €Š:¶ €Š:·
€Š:A_¸_¹ 1 sd 21 11 ore:€ï
€Š:3_ 8 sl 00 4 ore:€Ü €Š:5 €Š:6
€Š:€—|7 1 sl 00 12 ore:j €Š:€—
€·:/ 8 sd 33 €Ì ore: €·:€¸|5
€Š:P|1 3 sd 21 11 €Š:€—|1
€·:) 9 sl 00 1 €·:)|1
€Š:bed|7 1 sd 32 €î €Š:€—|7 ore:€ï
€Š:º 1 sd 33 » €Š:¼_L €Š:½ ore:egg €Š:¾
€·:¥_€â 1 sd 33 ¦ ore:€Ó ore:€•
€Š:€Ñ|14 1 sd 33 €Ò €Š:€—|1 ore:€•
€Š:€ê_, 1 sd 32 - ore:€ê
€·:€Ä|4 1 sd 33 ¿ €·:€Æ|3 €·:€¸|1 €·:€¸
€Š:À_Á 1 sd 33 Â ore:€• €Š:€â_\
€·:t 4 sl 00 1 €·:t|1
€·:Ã 1 sd 33 Ä €Š:end_€â|* €Š:end_rod|* €Š:€¹_€ı|* €·:€Æ|3
€Š:€×_€Ø_€Ù|6 16 sd 32 €Õ ore:Å
€Š:3_|5 8 sl 00 4 ore:Æ €Š:5 €Š:6
€·:˜ 8 sd 13 102 €Š:™|* €·:0
€Š:€ê_e 1 sd 33 f ore:€ê
€Š:A_\|3 6 sd 31 111 €Š:€Ã|3
€·:€Æ|1 4 sl 00  €·:€Æ
€·:>|2 1 sd 33 €Å €·:€¸|17 ore:Ç €·:@ €·:€¸
€É:È|1 1 sl 00 12 €É:É_key €Š:€â_H
€Š:€Ñ|3 1 sd 33 €Ò €Š:€—|12 ore:€•
€Š:€×_€ß_€à|4 8 sd 33 €Ì €Š:€ß_€à ore:+
€Š:I|1 1 sl 00 12 €Š:I €Š:Ê
€·:Ë 1 sd 33 €¼ ore:€â ore:€– €Š:_|*
€·:E 1 sl 00 122 €Š:€Ø_Ì|* €Š:€ª_Í|*
€Š:€õ 1 sl 00 Î ore:† ore:€ê
€Š:A_Ï 1 sd 13 122 ore:€ï ore:€•
€Š:bed|13 1 sd 32 €î €Š:€—|13 ore:€ï
€·:€¸|11 9 sl 00 1 €·:Ğ|1
€É:È|3 1 sl 00 12 €É:µ_key €Š:€â_H
€Š:3_|6 8 sl 00 4 ore:~ €Š:5 €Š:6
€Š:Ñ 1 sd 33 Ò ore:€²
€É:€Ê_Ó 1 sd 33 Ô €Š:_ ore:€• €É:€Ê_€Ë €Š:
€É:€Ê_Ó|1 1 sd 33 Ô €Š:W ore:€• €É:€Ê_€Ë €Š:
€Š:dye|1 1 sl 00 1 €Š:red_€
€Š:3_|2 8 sl 00 4 ore:€Ö €Š:5 €Š:6
€·:Õ 1 sl 00 12 €Š:€—|* €Š:i|*
€·:t|2 5 sd 22 ˆ ore:Ö ore:€ï
€Š:€¹_Ï 1 sd 13 122 ore:€ÿ ore:€•
€€:× 1 sd 33 Ø ore:oc:Ù ore:Ú ore:oc:Û ore:N ore:€¨ ore:€² €Š:K_L
€Š:€â_\|1 6 sd 31 111 €Š:T,€Š:T|1,€Š:T|2
€Š:hay_€µ 1 sd 33 €¶ €Š:¾
€Š:€â_\|3 6 sd 31 111 €Š:€Ó
€·:Ü 1 sl 00 123 €Š:„_'|* ore:İ €Š:Ş|*
€Š:ß_à_box 1 sd 13 121 €Š:à_á ore:İ
€Š:€Ñ|8 1 sd 33 €Ò €Š:€—|7 ore:€•
€Š:€×_€ß_€à|3 8 sd 33 €Ì €Š:€ß_€à ore:m
€·:¥_€¹ 1 sd 33 ¦ ore:€ÿ ore:€•
€€:â 1 sd 33 o ore:€¨ €Š:ã_ä ore:oc:€… ore:
€·:|4 9 sl 00 1 €·:|5
€Š:· 1 sd 32 h ore:€²
€·:|3 9 sl 00 1 €·:|4
€Š:€Ğ 1 sd 33 $ ore:€ï
€Š:€×_€Ø|7 8 sd 33 €Ì ore: ore:j
€Š:€’ 16 sd 33 å ore:€² ore:€•
€Š:€×_€ß_€à|5 8 sd 33 €Ì €Š:€ß_€à ore:Æ
€Š:€¹_€ä 1 sd 13 112 ore:€ÿ ore:€•
€Š:€Ñ|11 1 sd 33 €Ò €Š:€—|4 ore:€•
€·:B|2 1 sd 33 C ore:€ÿ €Š:æ_ç_¸_¹|* €·:B|1
€Š:bed|14 1 sd 32 €î €Š:€—|14 ore:€ï
€Š:€ò_oak_€Á 3 sd 32 €Â €Š:€Ã|5 €Š:€£
€€:è|28 9 sl 00 1 €€:¯
€Š:€‘_Ï 1 sd 13 122 ore:€” ore:€•
€É:é 1 sd 32 €ø ore:ê
€·:ë 1 sd 33  ore:€â ore:€Ó €Š:L|*
€É:€Ê_q|1 1 sd 33 … ore:€• €Š:€‹_V €É:€Ê_€Ë
€Š:€×_€ß_€à|14 8 sd 33 €Ì €Š:€ß_€à ore:€˜
€Š:¤_€µ 1 sd 33 €¶ €Š:¤
€É:È 1 sl 00 12 €É:v_key €Š:€â_H
€Š:_ 2 sl 00 1 €Š:_rod
€Š:3_|11 8 sl 00 4 ore:J €Š:5 €Š:6
€Š:€×_€Ø|11 8 sd 33 €Ì ore: ore:J
€Š:€™_€š 1 sd 33 €› €Š:€œ_€™ €Š:€ €Š:€_€Ÿ €Š:red_€¡ €Š:€¢
€Š:€‹_, 1 sd 32 - ore:€²
€Š:€¹_€ë 1 sd 33 €ì ore:€ÿ
€Š:€‘_€ë 1 sd 33 €ì ore:€”
€€:ì 1 sd 33  ore:€² ore:oc:€® €Š:€‹_ ore:€Ğ ore:oc:€³
€Š:red_T|2 4 sd 22  €Š:red_T
€·:€ñ|1 1 sd 13 123 ore:í ore:€• ore:€ÿ
€·:0|5 4 sl 00 123 €·:2 €·:€» ore:€–
€Š:bed|2 1 sl 00 12 €Š:bed ore:€Ö
€·:€Ä|8 1 sd 33  €·:€Æ|3 €Š:€ª_Í|* €Š:€Ç_î|* €·:€¸|1 €·:€¸|2
€€:ï 1 sd 33  ore:€² €Š:ğ ore:N ore:oc:€… ore:oc:€³
€·:€¸|16 1 sd 33 €¼ €·:€¸|10 €·:€¸|17 €·:€¸|15
€Š:dye|14 2 sl 00 12 ore:€˜ ore:+
€Š:€è_ 4 sd 33 	 €Š:€Ã|1
€Š:bed|15 1 sd 32 €î €Š:€—|15 ore:€ï
€Š:dye|7 1 sl 00 1 €Š:red_€|3
€€:ñ 1 sd 33  ore:€ÿ ore:oc:€… €Š:€‹_ ore:€Ğ ore:oc:€³
€Š:dye|7 1 sl 00 1 €Š:red_€|6
€·:/|1 1 sl 00 12 €·:/ €Š:_|*
€Š:€È_€µ 1 sd 22  €Š:€È
€·:2 64 sd 33 … €Š:€â_\ ore: ore:€–
€Š:€¢ 4 sd 32 €ü ore:€ï
€Š:€— 1 sd 22  ore:€½
€Š:€¹ 9 sd 11 1 €Š:€¹_€µ
€Š:€×_€Ø_€Ù|13 16 sd 32 €Õ ore:ò
€Š:bed|13 1 sl 00 12 €Š:bed ore:
€·:S 1 sd 32 “ €·:€Æ|3 €·:ó €·:€¸
€€:ô 1 sd 33  ore:€² ore:oc:€­ ore:€” ore:oc:€® ore:oc:€³
€Š:3_|15 8 sl 00 4 ore:€Û €Š:5 €Š:6
€·:õ 1 sd 33 … €·:€Æ|3 ore:€¾ €·:€¸
€Š:3_|10 8 sl 00 4 ore: €Š:5 €Š:6
€Š:€Ñ|5 1 sd 33 €Ò €Š:€—|10 ore:€•
€Š:P|5 3 sd 21 11 €Š:€—|5
€€:ö 1 sd 33  ore:€” ore:oc:€ €Š:€‹_ ore:€Ğ ore:oc:€³
€Š:€Ã|2 4 sd 11 1 €Š:log|2
€Š:€×_€Ø_€Ù|8 16 sd 32 €Õ ore:÷
€Š:ø_ù 2 sd 33 ¢ ore:ú €Š:ù
€Š:tnt_· 1 sd 12 12 €Š:tnt €Š:·
€Š:€×_€Ø 8 sd 33 €Ì ore: ore:€Ü
€Š:P|14 3 sd 21 11 €Š:€—|14
€Š:€Ã|4 4 sd 11 1 €Š:û
€Š:A_hoe 1 sd 23 : ore:€ï ore:€•
€·:€¸|5 9 sd 33 €Ì €·:€¸|3 ore:ü
€·:|6 9 sl 00 1 €·:|7
€·:€¸|6 1 sl 00 123 €·:€¸|9 ore:€” ore:€¾
€Š:bed|8 1 sl 00 12 €Š:bed ore:
€Š:^_ 4 sd 33 	 €Š:^_€µ
€·:B|1 1 sl 00 1 €·:B|1
€·:B|4 1 sl 00 1 €·:B|4
€Š:€—|11 1 sl 00 12 ore:J €Š:€—
€·:Ğ 1 sd 33 €¶ €·:€¸|12
€·:ı 1 sl 00 12 €·:ı|1 €·:ı|2
€Š:½ 1 sd 11 1 ore:ş
€Š:9 1 sd 33 ÿ ore:€ï ore:€Ó ore:€² ore:€–
€€:Q 1 sd 33  ore:€² ore:oc:‚  ore:€ƒ ore:† ore:oc:€³
€Š:bed|12 1 sd 32 €î €Š:€—|12 ore:€ï
€Š:bed|11 1 sd 32 €î €Š:€—|11 ore:€ï
€Š:P|8 3 sd 21 11 €Š:€—|8
€Š:€Ñ|15 1 sd 33 €Ò €Š:€— ore:€•
€Š:T|2 4 sd 22  €Š:T
€Š:end_‚ 1 sd 33 ‚ ore: €Š:€ª_eye €Š:‚_‚
€Š:€Ñ|7 1 sd 33 €Ò €Š:€—|8 ore:€•
€Š:€â_€ı 1 sd 33 €ş ore:€Ó ore:€•
€·:€á_€‹ 4 sd 33 €ã €Š:€‹_€ä|* ore:€² ore:‚
€Š:A_axe 1 sd 23 ‘ ore:€ï ore:€•
€Š:‚ 1 sd 33 ‚ ore:€Ó €Š:bow ore:€–
€·:®|1 1 sd 33 €¶ €·:®
€Š:€×_€Ø_€Ù|9 16 sd 32 €Õ ore:‚
€Š:‚_‚	 1 sd 33 ‚
 ore: €Š:Y €Š:A_\,€Š:A_\|1,€Š:A_\|2,€Š:A_\|3,€Š:A_\|4,€Š:A_\|5
€Š:Y_ 4 sd 33 	 €Š:Y_€µ,€Š:Y_€µ|1,€Š:Y_€µ|2
€Š:P 3 sd 21 11 €Š:€—
€Š:€Ã|1 4 sd 11 1 €Š:log|1
€·:B 1 sl 00 1 €·:B
€Š:€×_€Ø|14 8 sd 33 €Ì ore: ore:€˜
€·:/|2 8 sd 33 €Ì €·: €·:€¸|5
€Š:^_\ 6 sd 31 111 €Š:^_€µ
€Š:P|13 3 sd 21 11 €Š:€—|13
€·:|1 9 sl 00 1 €·:|2
€·:‚ 1 sl 00 121 ore: €·:‚|*
€·:‚ 1 sd 33 C €·:€Æ|3 €·:€¸ €·:S
€·:‚|1 1 sl 00 121 €Š:€ö|* €·:‚|*
€Š:‚_‚ 2 sd 13 123 ore:€² ore:€• ore:€ï
€Š:‚_€Ğ 1 sl 00 12 ore:İ €Š:‚_‚
€·:‚|4 1 sl 00 121 ore:€ƒ €·:‚|*
€Š:ğ 1 sd 33 ‚ ore:€² ore:İ
€·:‚|5 1 sl 00 123 €Š:€İ €·:‚|* €Š:€İ|1
€€:‚|20 1 sd 33  ore:€¨ ore:oc:€® €Š:€‹_ ore:oc: ore:oc:€³
€·:‚|2 1 sl 00 123 ore: €·:‚|* ore:~
€·:‚|3 1 sl 00 121 €Š:€ê|* €·:‚|*
€·:€á_€¹ 4 sd 33 €ã €Š:€¹_€ä|* ore:€ÿ ore:‚
€Š:6 9 sl 00 1 €·:‚
€·:©|1 1 sd 33 ‚ €·:© €Š:€‹_€µ €Š:_€µ
€Š:€Ñ|2 1 sd 33 €Ò €Š:€—|13 ore:€•
€·:©|2 1 sd 33 ‚ €·:©|1 €Š:_€µ €Š:€¹_€µ
€·:©|3 1 sd 33 ‚ €·:©|2 €Š:€¹_€µ €Š:€ú_€µ
€€:‚|17 1 sd 33 ‚ ore:€‡ ore:oc:€ ore:oc: ore:oc:‚ ore:oc:‚
€·:©|4 1 sd 33 ‚ €·:©|3 €Š:€ú_€µ €Š:__€
€É:€Ê_q|3 1 sd 33 … ore:€• €Š:€¹ €É:€Ê_€Ë
€€:‚|19 1 sd 33 ‚ ore:€¨ ore:oc:‚ ore:oc:€ ore:oc: ore:oc:€³
€Š:€×_€Ø|2 8 sd 33 €Ì ore: ore:€Ö
€Š:€ª_€Ğ 1 sd 33 €Ì €Š:€¨ €Š:€ª_eye
€·:|1 1 sd 33 €¶ €·:
€Š:_€Œ 9 sd 11 1 ore:€”
€·:|2 1 sd 33 €¶ €·:|1
€·:© 1 sd 33 ¢ €·:€¸|4 €Š:€‹_€µ
€Š:€‹_ 16 sd 32 €Õ ore:€²
€·:|3 1 sd 33 €¶ €·:|2
€€:‚|10 1 sd 32 ‚ ore:oc:€… €Š:€‹_€Œ ore:oc:€³
€Š:u_‚ 1 sd 33 €Ò €Š:u €Š:€¢
€·:|4 1 sd 33 €¶ €·:|3
€€:‚|11 1 sd 32 “ ore:oc:€… ore:oc:€ ore:oc:€³
€·:|5 1 sd 33 €¶ €·:|4
€€:‚|8 1 sd 32 ‚ ore:oc:€ €Š:€‹_€Œ ore:oc:€³
€Š:€‹_‚ 1 sd 22  ore:€²
€€:‚|9 1 sd 32 ‚ ore:oc:€ ore:oc:€… ore:oc:€³
€€:‚ 1 sd 33  ore:€” €Š:‚ €Š:€ª_eye ore:oc:€ ore:oc:€³
€€:‚|15 1 sd 33  ore:€ÿ ore:oc:‚ ore:oc:€… ore:oc:‚  ore:€¨ ore:oc:€³
€€:è|28 16 sd 33 €± ore:6 €Š: €Š:€İ|1 €Š:b_L
€€:‚|16 1 sd 33 ‚ ore:€ƒ ore:oc:€® ore:oc:€ˆ ore:oc:‚! ore:oc:‚"
€€:‚|13 1 sd 33  ore:€² ore:oc:‚# ore:oc:€® ore:oc:‚! ore:€¨ ore:oc:€³
€€:‚|14 1 sd 33  ore:€” ore:oc:‚$ ore:oc:€ ore:oc:‚ ore:€¨ ore:oc:€³
€·:® 1 sd 33 €¶ €Š:5
€€:è|24 1 sd 33  ore:oc:‚% €Š:‚ ore:oc:€ ore:oc:‚& ore:oc:‚ 
€É:‚' 1 sd 33 ‚( €Š:€â €Š:W ore:€Í ore:€ÿ
€€:è|23 1 sd 33  ore:oc:‚% €Š:‚ ore:oc:€® ore:oc:‚) ore:oc:‚
€€:è|27 1 sl 00 ‚* ore:€Ş ore:€Ö ore:+ ore:€Û ore:oc:‚+
€€:è|26 1 sd 33  €Š:€‹_€Œ €Š:‚ ore:oc:‚  €Š:L ore:oc:€³
€Š:dye|13 3 sl 00 123 ore:J ore:€˜ ore:~
€Š:€‹_€÷ 1 sd 32 €ø ore:€²
€Š:€¹_axe 1 sd 23 ‘ ore:€ÿ ore:€•
€Š:€×_€ß_€à|11 8 sd 33 €Ì €Š:€ß_€à ore:J
€Š:‚, 1 sd 22  €Š:‚,_‚-
€Š:bed|5 1 sl 00 12 €Š:bed ore:Æ
€·:€¸ 1 sl 00 ‚. €·:ó|* ore:€–
€€:‚|7 1 sd 32 ‚ ore:oc:€® ore:oc:€ ore:oc:€³
€Š:€â|4 4 sd 22  ore:‚/
€€:‚|5 1 sd 33 ‚0 ore:€‡ €Š: ore:oc:€… ore:oc:Ù ore:oc:€³
€€:‚|6 1 sd 32 ‚ ore:oc:€® €Š:€‹_€Œ ore:oc:€³
€Š:€â_\ 6 sd 31 111 €Š:€â
€Š:bed|5 1 sd 32 €î €Š:€—|5 ore:€ï
€€:€Ê|1 1 sd 33 ‚1 €Š:€‹_€Œ ore:€ƒ €Š:€‹_ ore:oc:Q
€€:‚ 1 sd 33  €Š:€‹_€Œ €Š: ore:oc:€® ore:oc:Ù ore:oc:€
€€:€Ê 1 sd 33 ‚1 ore:€² ore:€¯ ore:oc:€® €Š:8_9
€€:€Ê|3 1 sd 33 €¼ €Š:€‹_€Œ ore:oc:Q ore:€‡
€€:€Ê|2 1 sd 33 ‚1 €Š:€‹_€Œ ore:oc:Q €Š:€‹_ ore:€ƒ
€·:©|5 1 sd 33 ‚ €·:©|4 €Š:__€ €Š:‚2_Ì
€€:‚|3 1 sd 33 ‚0 €Š:€‹_€Œ €Š: ore:oc:€® ore:oc:Ù ore:oc:€³
€€:€Ê|5 1 sd 33 ‚0 ore:€² ore:oc:€® ore:N ore:€Ğ ore:oc:€†
€·:©|6 1 sd 33 ‚ €·:©|5 €Š:‚2_Ì €Š:‚3
€€:‚|4 1 sd 33 ‚0 ore:€ƒ €Š: ore:oc:€ ore:oc:Ù ore:oc:€³
€€:€Ê|4 1 sd 33  ore:€” ore: ore:oc:€… €Š:€ª_eye ore:€¨ ore:oc:€³
€·:©|7 1 sd 33 ‚ €·:©|6 €Š:‚3 €Š:€Ç_î
€€:‚|1 1 sd 33  ore:€ƒ €Š: ore:oc:€ ore:oc:Ù ore:oc:€
€·:©|8 1 sd 33 ‚ €·:©|7 €Š:€Ç_î €Š:€‹_V
€€:‚|2 1 sd 33  ore:€‡ €Š: ore:oc:€… ore:oc:Ù ore:oc:€
€€:€Ê|6 1 sd 33 ‚0 ore:€² ore:oc:€ ore:N ore:€Ğ ore:oc:€†
€Š:U_ 4 sd 33 	 €Š:€Ã|3
€·:)|1 9 sl 00 1 €·:)|2
€É:
 4 sd 33  ore:€• €Š:€Ã
€·:Ğ|2 1 sd 33 €¶ €·:€¸|17
€Š:dye|13 2 sl 00 1 €Š:”_•|1
€·:‚4|1 1 sd 33 $ €·:
€Š:bed|10 1 sl 00 12 €Š:bed ore:
€Š:€—|5 1 sl 00 12 ore:Æ €Š:€—
€Š:€—|8 1 sl 00 12 ore: €Š:€—
€Š:P|3 3 sd 21 11 €Š:€—|3
€·:‚5 1 sd 33 €Ì €Š:€£|* €Š:€Ğ|*
€·:‚6 1 sl 00 123 ore:İ €·:‚7 ore:€–
€€:‚8 1 sl 00 12 €€:‚8 €€:q
€É:‚9 1 sd 33 ‚( €Š:€â €Š:9 ore:€Í ore:€²
€·:B|3 1 sl 00 1 €·:B|3
€Š:€Ñ|12 1 sd 33 €Ò €Š:€—|3 ore:€•
€·:‚: 1 sd 33 ‚; ore:€” €·:t|1
€Š:€Ó_€Ô|1 6 sd 32 €Õ €Š:‚<_€Ó
€Š:dye|13 2 sl 00 12 ore: ore:~
€·:€Ä|1 3 sd 32 “ €·:€¸|3 €·:€Æ|2 €·:€¸
€Š:€Ñ|1 1 sd 33 €Ò €Š:€—|14 ore:€•
€Š:^_‚= 1 sd 12 11 €Š:^_\
€Š:‚>_ç_¸_¹ 1 sd 21 11 ore:€²
€Š:€â_Ï 1 sd 13 122 ore:€Ó ore:€•
€Š:€×_€Ø|6 8 sd 33 €Ì ore: ore:~
€Š:€‘_e 1 sd 33 f ore:€”
€É:‚? 1 sd 33 ‚( €Š:€â €Š:W ore:€Í ore:€”
€€:‚@ 1 sd 33  ore:oc:€ ore:Ú ore:oc:€³ ore:€‡ ore:€¨ €Š:ã_ä
€Š:€Ñ|10 1 sd 33 €Ò €Š:€—|5 ore:€•
€·:‚A 1 sd 32 €í ore:€” €Š:€ö|* €Š:€¨|*
€Š:€â_¸_¹ 1 sd 21 11 ore:€â
€Š:l 1 sd 33 ‚B ore:€Ó ore:€–
€Š:€×_€Ø_€Ù|4 16 sd 32 €Õ ore:?
€Š:_‚C 1 sd 33 ¢ ore:€– ore:ã
€Š:P|15 3 sd 21 11 €Š:€—|15
€€:è|29 6 sl 00 12 ore:oc:‚D ore:€ÿ
€Š:end_rod 4 sd 12 12 €Š:_rod €Š:__`_a
€É:É_key 1 sl 00 12 €É:v_key €Š:€ª_eye
€€:‚E 1 sd 33  ore:€² ore:€” ore:oc:€­ ore:oc:€® ore:oc:€³
€É:€Ê_ 1 sd 33 €¼ €Š: ore:€• €É:€Ê_€Ë
€·:% 1 sd 32 1 €Š:€ª_Í|* €·:%|9 ore:€– €Š:W|*
€Š:‚<_€Ó 1 sl 00 12 ore:€Ó €Š:Ê
€Š:€‘_€÷ 1 sd 32 €ø ore:€”
€Š:‚ 2 sd 32 €Õ ore:€ï
€Š:dye|12 1 sl 00 1 €Š:red_€|1
€·:0 4 sd 32 1 ore:€– €·:2 ore:€â ore:İ
€É:€Ê_one_‚F 1 sd 33 … ore:€• €Š:| €É:€Ê_€Ë
€·:‚G 8 sd 33 €Ì €Š:€ù|* €·:t|1
€Š:‚H 1 sd 31 111 €Š:¾
€·:‚I 1 sl 00 123 €Š:l|* ore:€– €Š:‚J_eye|*
€Š: 4 sd 12 12 €Š:€İ,€Š:€İ|1 ore:€•
€Š:._g 1 sd 32 h €Š:€Ã|4
€Š:Ş 1 sd 12 12 ore:€• ore:€Ó
€·:ó 8 sl 00 12 €Š:€ª_Í|* €·:F|*
€Š:ğ 1 sd 33 ‚K ore:€² ore:€¤
€·:>|1 1 sd 33 €Å €·:€¸|17 ore:Å €·:@ €·:€¸
€Š:dye|7 2 sl 00 12 ore:j ore:€Ü
€Š:€×_€ß_€à 8 sd 33 €Ì €Š:€ß_€à ore:€Ü
€Š:map 1 sd 33 €Ì ore:† €Š:‚
€Š:‚	_€’ 6 sd 33 €“ ore:€² €Š:€â_¸_¹ ore:€–
€Š:bed|6 1 sd 32 €î €Š:€—|6 ore:€ï
€Š:‚L 1 sd 33 ‚M ore:€ï ore:€²
€€:‚N 1 sd 33 ‚O ore:€” ore:€˜ ore: ore:oc:€ ore: ore:J
€·:‚P 1 sl 00 ‚Q ore: ore:´ €Š: |* ore:‚R ore:€¤ ore:‚S €Š:€ª_Í|* ore:z
€Š:€Ñ 1 sd 33 €Ò €Š:€—|15 ore:€•
€Š:5 9 sl 00 1 €·:®
€Š:‚T 1 sd 33 €Ì ore:€• €Š:€—,€Š:€—|1,€Š:€—|2,€Š:€—|3,€Š:€—|4,€Š:€—|5,€Š:€—|6,€Š:€—|7,€Š:€—|8,€Š:€—|9,€Š:€—|10,€Š:€—|11,€Š:€—|12,€Š:€—|13,€Š:€—|14,€Š:€—|15
€Š:€‹_Ï 1 sd 13 122 ore:€² ore:€•
€Š:€â_\|5 6 sd 31 111 €Š:I,€Š:I|1,€Š:I|2,€Š:I|3
€Š:‚U 3 sd 33 €Ò ore:€ï ore:€•
€Š:I 4 sd 22  €Š:€â
€Š:dye|15 3 sl 00 1 ore:€´
€·:>|5 1 sd 33 €Å €·:€¸|17 ore:‚ €·:@ €·:€¸
€€:‚V|1 1 sl 00 12 €€:‚V|1 €€:q
€Š:„_' 1 sd 22  ore:€ï
€€:‚V 1 sl 00 12 €€:‚V €€:q
€·:€Ä|2 1 sd 33 ‚ €·:€Æ|3 €·:€¸ ore:€”
€Š:€—|3 1 sl 00 12 ore:m €Š:€—
€·:B 1 sd 33 C ore:€Ó €Š:€â_\|3,€Š:€â_\ €Š:€¢|*
€·:‚W 1 sd 33 €¼ ore:€½ €Š:€ª_Í|* €·:‚X
€Š:€—|1 1 sl 00 12 ore:! €Š:€—
€Š:bed|15 1 sl 00 12 €Š:bed ore:€Û
€Š:P|6 3 sd 21 11 €Š:€—|6
€Š:A_\|5 6 sd 31 111 €Š:€Ã|5
€Š:€×_€ß_€à|1 8 sd 33 €Ì €Š:€ß_€à ore:!
€Š:._ 4 sd 33 	 €Š:€Ã|4
€Š:€À_€ó 3 sd 23 €Õ €Š:€Ã|2
€Š:™ 1 sd 33 ‚Y €Š:€‹_€µ ore:€²
€Š:_V 1 sd 33 €¶ €Š:_€Œ
€Š:€‹_V 9 sd 11 1 €Š:€‹_€µ
€·:‚Z 1 sd 33 ‚ €·:€Æ|3 €Š:€ª_€Ğ|* €·:€¸
€·:‚ 9 sl 00 1 €·:‚|1
€·:€¸|1 1 sd 33 ¢ €Š:_|* ore:€ï
€·:‚[ 1 sd 33 ‚\ €·:©|8 ore:€½ ore:€²
€Š:bed|1 1 sd 32 €î €Š:€—|1 ore:€ï
€€:‚] 4 sd 33 { ore:€¯ ore:oc:‚^
€·:‚_ 1 sl 00 123 €Š:l|* €·:€¸ €Š:Ş|*
€Š:€Ç_€È 1 sd 22  €Š:‰
€€:‚` 1 sd 33  ore:€² ore:‚a ore:N ore:oc:€ ore:oc:€³
€Š:A_€ä 1 sd 13 112 ore:€ï ore:€•
€Š:€À_€Á_€é 1 sd 32 €Â €Š:€£ €Š:€Ã|2
€·:%|9 1 sd 33 ‚1 ore:€² ore:€ÿ ore:´ €·:‚b
€·:‚c 1 sd 33 ‚d ore:€² €Š:€â_H|* ore:€•
€€:€­|‚e 4 sd 33 ¢ €Š:€‹_€Œ €Š:
€·:>|7 1 sd 33 €Å €·:€¸|17 ore:€ €·:@ €·:€¸
€Š:€è_€ó 3 sd 23 €Õ €Š:€Ã|1
€Š:bed|9 1 sd 32 €î €Š:€—|9 ore:€ï
€Š:€_on_a_€£ 1 sd 22 ‚f €Š:c_rod €Š:€
€Š:€×_€Ø_€Ù|14 16 sd 32 €Õ ore:Ç
€Š:€—|12 1 sl 00 12 ore: €Š:€—
€€:q|4 1 sd 33 ‚g ore:oc:€… ore:oc:‚h ore:€ÿ ore:oc:€³ ore:N
€€:q|3 1 sd 33 ‚g ore:oc:€ ore:oc:‚h ore:€” ore:oc:€³ ore:N
€€:q|2 1 sd 33 ‚g ore:oc:€® ore:oc:‚h ore:€² ore:oc:€³ ore:N
€€:q|1 1 sd 33 ‚i €Š:€‹_€Œ €Š:Ş ore:† ore:oc:‚h
€€:q 1 sd 33  ore:€ƒ ore:oc:‚  ore:† ore:oc:€® ore:€§
€Š:bed|10 1 sd 32 €î €Š:€—|10 ore:€ï
€É:
|3 4 sd 33  ore:€• €Š:€Ã|3
€Š:|2 1 sd 33 €Ì ore:‚ ore:€Û
€Š:‚j 8 sd 31 121 €Š:¾ €Š:dye|3
€·:€¸|2 1 sl 00 123 €Š:€ª_Í|* ore:€– €·:€¸
€€:¯|1 1 sl 00 12 €€:¯|* ore:€˜
€€:¯|2 1 sl 00 12 €€:¯|* ore:
€Š:dye|4 9 sd 11 1 €Š:‚k_€µ
€Š:€Ã|5 4 sd 11 1 €Š:û|1
€€:¯ 1 sl 00 12 €€:¯|* ore:€Û
€Š:3_|1 8 sl 00 4 ore:! €Š:5 €Š:6
€Š:_€µ 1 sd 33 €¶ ore:€–
€€:¯|4 1 sl 00 12 €€:¯|* ore:J
€€:¯|5 1 sl 00 12 €€:¯|* ore:
€Š:‚l 1 sd 22 ‚m ore:€²
€€:¯|3 1 sl 00 12 €€:¯|* ore:
€Š:¾ 9 sd 11 1 €Š:hay_€µ
€€:¯|8 1 sl 00 12 €€:¯|* ore:j
€€:¯|9 1 sl 00 12 €€:¯|* ore:~
€€:¯|6 1 sl 00 12 €€:¯|* ore:€Ş
€€:¯|7 1 sl 00 12 €€:¯|* ore:
€·:‚n_€Ã|1 4 sl 00 1 €·:‚n_log|1
€Š:€×_€Ø_€Ù|1 16 sd 32 €Õ ore:‚o
€É:
|1 4 sd 33  ore:€• €Š:€Ã|1
€Š:Y_€µ 1 sd 22  €Š:Y
€·:|2 4 sd 22  €·:|1
€€:‚p 1 sd 33 €± ore:€” €Š:‚_‚	 ore:oc:€ˆ ore:oc:€³
€·:0|2 4 sd 32 1 ore:€– €·:2 ore:€â €Š:L|*
€€:¯|12 1 sl 00 12 €€:¯|* ore:m
€€:¯|10 1 sl 00 12 €€:¯|* ore:Æ
€Š:€¹_€÷ 1 sd 32 €ø ore:€ÿ
€€:¯|11 1 sl 00 12 €€:¯|* ore:+
€Š:bed|3 1 sl 00 12 €Š:bed ore:m
€Š:bow 1 sd 33 ‚q ore:€• ore:€½
€€:¯|15 1 sl 00 12 €€:¯|* ore:€Ü
€€:¯|13 1 sl 00 12 €€:¯|* ore:€Ö
€€:¯|14 1 sl 00 12 €€:¯|* ore:!
€Š:€ò_oak_€Á_€é 1 sd 32 €Â €Š:€£ €Š:€Ã|5
€Š:€İ 9 sd 11 1 €Š:€İ_€µ
€·:¥_‚r 1 sd 33 ¦ ore:€ï ore:€•
€Š:‚ 1 sd 33 ¢ ore:€² ore:€–
€É:‚s|3 2 sd 33 C ore:€• ore:İ ore:‚t
€€:q 2 sl 00 11 €€:q
€Š:€×_€ß_€à|8 8 sd 33 €Ì €Š:€ß_€à ore:
€É:‚s|4 4 sd 33 €¼ ore:İ ore:€• ore:‚t
€·:> 1 sd 33 €Å €·:€¸|17 ore:‚u €·:@ €·:€¸
€Š:‚v_‚w 1 sd 33 €Ì ore:€• ore:€ê
€€:€Ê|18 1 sd 33 ‚O ore:€” ore:oc:Û €Š:l ore:oc:€ ore:N ore:oc:€³
€€:€Ê|17 1 sd 33 ‚O ore:€ï €Š:ğ €Š:l ore:€Ğ ore:N ore:oc:€®
€·:‚X 1 sd 23 ‚x €·:€¸ ore:€â
€É:È|2 1 sl 00 12 €É:–_key €Š:€â_H
€€:€Ê|24 1 sd 33 ‚O ore:€” €Š:€Ø_Ì €Š:‚ ore:oc:€ ore:N ore:oc:€³
€€:‚y 1 sd 33 ‚z ore:€² ore:oc:€
€€:€Ê|23 1 sd 33 ‚O ore:€ï €Š:€‹_ €Š:‚ €Š:Ñ ore:N ore:oc:€®
€·:|5 9 sl 00 1 €·:|6
€€:€Ê|26 1 sd 33 €¼ ore:€² €Š:‚{ ore:oc:Ù
€€:€Ê|25 1 sd 33  ore:€” ore:N ore:€² ore:oc:Q ore:oc:€…
€€:€Ê|20 1 sd 33  ore:€² ore:N ore:€• ore:oc:€® ore:oc:€³
€€:€Ê|19 1 sd 33  ore:€” €Š:‚ ore:oc:€ €Š:‡_map|* €Š:‚|
€Š:€ò_oak_g 1 sd 32 h €Š:€Ã|5
€€:€Ê|22 1 sd 33 ‚} ore: ore:oc:€… ore:‚~ ore:€² ore:oc:€³
€€:€Ê|21 1 sd 33  ore:€² ore:€Û ore:oc:€® ore:€• €Š:8_9
€Š:dye|9 1 sl 00 1 €Š:red_€|7
€Š:ù 4 sd 13 123 €Š:| ore:€• ore:€ö
€Š:A_€ó 3 sd 23 €Õ €Š:€Ã
€·:‚|1 1 sd 33 €¶ €·:‚
€Š:€Ğ 1 sd 33 €¶ €·:€Ï
€€:€Ê|27 1 sd 33  ore:€ö ore:oc:€® €Š:€‹_€Œ ore:€ê ore:oc:€³
€€:€Ê|29 1 sd 33  ore:€” ore:€Ğ €Š:€ú ore:oc:€ €Š:l ore:oc:€³ ore:N
€Š:¤_‚ 1 sd 11 1 €Š:¤
€Š:€â|1 1 sl 00 12 ore:‚/ €Š:Y
€€:€Ê|28 1 sd 33  ore:oc:‚% ore:oc:€ ore:€ƒ ore:€² ore:oc:€³
€Š:€Ó 9 sl 00 1 €·:
€·:‚€ 1 sl 00 ‚ €Š:€ö|* €Š:†|* €Š:€Ø_Ì|* ore:€Û
€Š:€â_\|4 6 sd 31 111 €Š:€È_€µ
€Š:€Á 3 sd 32 €Â €Š:€Ã €Š:€£
€€:€Ê|31 1 sd 32 ‚ ore:€§ ore:oc:€® ore:oc:€†
€€:€Ê|30 1 sd 33 ‚1 ore:oc:° ore:# ore:oc:‚‚ ore:oc:‚ƒ
€Š:red_T_ 4 sd 33 	 €Š:red_T,€Š:red_T|1,€Š:red_T|2
€Š:€×_€ß_€à|9 8 sd 33 €Ì €Š:€ß_€à ore:€Ş
€Š:€×_€ß_€à|10 8 sd 33 €Ì €Š:€ß_€à ore:
€Š:€â_‚„ 6 sd 31 111 €Š:red_T,€Š:red_T|1,€Š:red_T|2
€·:0|4 2 sd 33 ‚ €Š:€ª_Í|* €·:0|2 ore:€ÿ
€Š:€×_€Ø_€Ù|7 16 sd 32 €Õ ore:‚…
€€:‚† 1 sd 33 ‚‡ ore:€§ ore:oc:‚  ore:€ƒ ore:oc:€³
€Š:P|7 3 sd 21 11 €Š:€—|7
€€:‚†|2 1 sd 33 ‚O €Š:€‹_€Œ ore:oc:‚ˆ ore:oc:€… ore:oc:‚N ore:oc: ore:oc:Š
€€:‚†|3 1 sd 33 ‚‰ ore:€Û ore:€˜ ore: ore:J ore:oc:Û ore: ore:+ ore:€Ö ore:€Ü
€€:‚†|4 1 sl 00 12 €Š:€õ ore:oc:€®
€Š:€—|13 1 sl 00 12 ore: €Š:€—
€Š:€¹_, 1 sd 32 - ore:€ÿ
€Š:€â|5 2 sl 00 12 ore:‚/ ore:€Ó
€É:‚Š 1 sd 32 ‚‹ ore:€ğ €Š:†
€€:€Ê|19 1 sl 00 12 €€:€Ê|19 €Š:‡_map|*
€Š:€£ 4 sd 12 11 ore:€ï
€Š:I|3 1 sd 12 11 €Š:€â_\|5
€·:B|2 1 sl 00 1 €·:B|2
€Š:€ò_oak_ 4 sd 33 	 €Š:€Ã|5
€Š:‚Œ_Á 1 sd 32 ‚‹ €Š:_rod ore:€Ó
€€:‚†|5 1 sd 33 ‚O ore:oc:° ore:oc: ore:oc:€ˆ ore:oc:‚ ore:oc:€º ore:oc:Q
€·:€á_‚r 4 sd 33 €ã €Š:A_€ä|* €Š:€Ã €Š:log
€€:‚ 4 sd 33  ore:€² ore:oc:‚ €Š:ğ €Š:L ore:oc:‚
€·:‚n_€Ã 4 sl 00 1 €·:‚n_log
€·:€Ä|3 1 sd 33 … €·:€Æ|3 €·:€¸|1 €·:€¸
€Š:€â_axe 1 sd 23 ‘ ore:€Ó ore:€•
€Š:€‘_€ 1 sd 33 €Ì €Š:_€Œ €Š:€
€·:@|250 1 sl 00 ‚. ore:€ÿ ore:ú
€Š:€Ñ|4 1 sd 33 €Ò €Š:€—|11 ore:€•
€·:‚‘ 1 sd 13 112 €·:©|8 €Š:€£|*
€Š:€¹_€µ 1 sd 33 €¶ ore:€ÿ
€·:‚7 1 sd 33  ore:€â ore:€Ó ore:İ
€Š:€×_€Ø|4 8 sd 33 €Ì ore: ore:+
€€:‚’ 1 sd 33  ore:€² ore:€” ore:oc:Q ore:oc:€ ore:oc:€³
€Š:€×_€Ø|3 8 sd 33 €Ì ore: ore:m
€Š:A_\ 6 sd 31 111 €Š:€Ã
€·: 9 sl 00 1 €·:|1
€Š:ã 1 sd 22  ore:ú
€·:|4 2 sl 00 121 €·: ore:ú
€Š:_‚ 4 sd 11 1 €Š:
€É:
|2 4 sd 33  ore:€• €Š:€Ã|2
€Š:red_T|1 1 sd 12 11 €Š:€â_‚„
€Š:€Ç_€È_€Á 6 sd 32 €Õ €Š:€Ç_€È
€Š:‚,_‚- 1 sl 00 12 €Š:_ ore:€ğ
€·:€¸|5 1 sd 33 €Ì €·:€¸|3 ore:€ÿ
€Š:‚“ 1 sd 33 ‚” ore:€ï €Š:€õ
€·:€¸|12 9 sl 00 1 €·:Ğ
€·:|2 9 sl 00 1 €·:|3
€Š:‚k_€µ 1 sd 33 €¶ €Š:dye|4
€€:q|3 1 sl 00 1 €€:q|3
€Š:P|10 3 sd 21 11 €Š:€—|10
€€:q|2 1 sl 00 1 €€:q|2
€€:q|1 1 sl 00 1 €€:q|1
€Š:€×_€ß_€à|6 8 sd 33 €Ì €Š:€ß_€à ore:~
€Š:€×_€Ø_€Ù|12 16 sd 32 €Õ ore:‚•
€Š:bed|12 1 sl 00 12 €Š:bed ore:
€Š:€‹_axe 1 sd 23 ‘ ore:€² ore:€•
€Š:€—|9 1 sl 00 12 ore:€Ş €Š:€—
€·:>|4 1 sd 33 €Å €·:€¸|17 ore:ò €·:@ €·:€¸
€Š:T_ 4 sd 33 	 €Š:T,€Š:T|1,€Š:T|2
€Š:€ª_eye 1 sl 00 12 ore:‚– €Š:_
€€:€Ê|16 1 sd 33 ‚— ore:€² ore:oc:€® ore:N ore:oc:€³
€Š:‚˜ 1 sd 33 €Ì ore:€ï ore:€ÿ
€€:q 1 sl 00 1 €€:q
€€:q|4 1 sl 00 1 €€:q|4
€Š:bed 1 sd 32 €î €Š:€— ore:€ï
€·:>|6 1 sd 33 €Å €·:€¸|17 ore: €·:@ €·:€¸
€·:‚™ 1 sd 33  ore:€â ore:€Ó ore:€¾
€€:€Ê|7 1 sd 33 ‚0 ore:€” ore:oc:€ ore:N ore:€Ğ ore:oc:€†
€Š:(|1 4 sd 22 ˆ €Š:( €Š:6
€Š:€Ğ_· 1 sd 12 12 ore:İ €Š:·
€€:€Ê|13 1 sd 33  ore:€² ore:oc:Û ore:oc:€ ore:oc:‚š ore:oc:€³
€Š:P|4 3 sd 21 11 €Š:€—|4
€Š:sea_‚› 1 sd 33  ore:‚ ore:‚œ
€€:€Ê|12 1 sd 33  ore:€² ore:oc:Û ore:oc:€® ore:oc:‚ ore:oc:€³
€€:€Ê|15 1 sd 33 ‚— ore:€” ore:oc:€ €Š:€ú ore:oc:€³
€€:€Ê|14 1 sd 33  ore:€² ore:oc:Û ore:oc:€… ore:oc:‚ ore:oc:€³
€€:€Ê|9 1 sd 33 ‚0 ore:€² ore:oc:€ ore:N ore:€Ğ ore:oc:€³
€€:€Ê|8 1 sd 33 ‚0 ore:€² ore:oc:€® ore:N ore:€Ğ ore:oc:€³
€€:€Ê|11 1 sd 33 ‚— ore:€² ore:oc:€® ore:‚a ore:oc:€³
€€:€Ê|10 1 sd 33 ‚0 ore:€” ore:oc:€ ore:N ore:€Ğ ore:oc:€³
€Š:dye|1 2 sl 00 1 €Š:”_•|4
€Š:‚Ÿ_‚J_eye 1 sl 00 123 €Š:‚J_eye €Š:€ _€¡ €Š:½
€·:|2 9 sl 00 1 €·:|3
€·:%|1 1 sd 33 ‚  €Š:end_rod|* ore:€² ore:´
€Š:€â_hoe 1 sd 23 : ore:€Ó ore:€•
€Š:U_g 1 sd 32 h €Š:€Ã|3
€Š:€¹_hoe 1 sd 23 : ore:€ÿ ore:€•
€Š:_pie 1 sl 00 123 €Š: €Š:½ ore:egg
€Š:œ_‚¡ 6 sd 31 111 €Š:œ
€·:€Æ 4 sl 00   ore:€â ore:‚¢
€·:€¸|8 1 sl 00 12 €·:€¸|9 €Š:€‘_€ı
€Š:U_€Á 3 sd 32 €Â €Š:€Ã|3 €Š:€£
€Š:æ_ç_¸_¹ 1 sd 21 11 ore:€”
€Š:€Ø_Ì 3 sd 32 €ü ore:
€Š:€‹_€ó 3 sd 23 €Õ ore:€²
€·:€¸|17 9 sl 00 1 €·:Ğ|2
€Š:€×_€Ø_€Ù|10 16 sd 32 €Õ ore:‚£
€Š:€â|2 4 sd 22  ore:‚¤
€·:‚¥|‚¦ 1 sd 33 ‚§ €Š:€â|* €Š:€¢|*
€Š:ğ_· 1 sd 12 12 €Š:ğ €Š:·
€Š:€×_€Ø_€Ù|11 16 sd 32 €Õ ore:‚u
€Š:€Ñ|9 1 sd 33 €Ò €Š:€—|6 ore:€•
€Š:Y_€µ|1 1 sd 12 11 €Š:€â_\|7
€Š:bed|11 1 sl 00 12 €Š:bed ore:J
€·:‚b 4 sd 33 €¼ ore:€² ore:€– ore:İ
€É:‚s 1 sd 33 ‚¨ ore:€• ore:İ
€€:‚ƒ 1 sd 33 €± ore:€² ore:oc:€­ ore:oc:€® ore:oc:€³
€É:‚s|1 2 sd 33 C ore:€• ore:İ ore:€ï
€É:‚s|2 4 sd 33 €¼ ore:İ ore:€• ore:€ï
€Š:€—|6 1 sl 00 12 ore:~ €Š:€—
€Š:€ê 1 sd 22  €Š:€™_‚©
€·:‚ª 1 sd 33 … ore:€” ore:İ €·:t|1
€€:‚« 1 sd 33  ore:€² ore:oc:€® ore:oc:‚  ore:oc:€¦ ore:oc:€³
€·:‚ 1 sd 33 €¶ €Š:6
€É:€Ê_q|2 1 sd 33 … ore:€• €Š:_V €É:€Ê_€Ë
€Š:‚¬ 9 sl 00 1 €·:
€Š:3_|8 8 sl 00 4 ore: €Š:5 €Š:6
€Š:¶ 1 sd 33 $ ore:€Ó
€·: 1 sd 33 €¶ €Š:€Ó
€·:)|2 1 sd 33 €¶ €·:)|1
€·:)|1 1 sd 33 €¶ €·:)
€É:€Ê_‚­ 1 sd 33 €¼ €Š:dye|4 ore:€• €É:€Ê_€Ë
€·:B|1 1 sd 33 C ore:€² €Š:‚>_ç_¸_¹|* €Š:Ñ|*
€É:
|4 4 sd 33  ore:€• €Š:€Ã|4
€€:‚® 1 sd 33 ‚0 ore:€² ore:oc:€® ore:N ore:€• ore:oc:€³
€·:)|3 1 sd 33 €¶ €·:)|2
€Š:‚¯_€’ 6 sd 33 C ore:€² ore:€• €Š:_
€·:0|3 2 sd 33 ‚ €Š:€ª_Í|* €·:0 ore:€û
€Š:dye|10 2 sl 00 12 ore: ore:€Ü
€€:‚° 1 sd 33  €Š:€‹_€Œ ore:oc:‚± ore:€ê ore:oc:‚² ore:oc:Q
€Š:€Ã 4 sd 11 1 €Š:log
€€:è|8 4 sd 33 … ore:€ƒ €Š: ore:oc:‚ 
€·:‚y 1 sd 33 ‚³ ore:€˜ ore:€² ore:€–
€€:è|7 8 sd 33 … €Š:€‹_€Œ €Š: ore:oc:‚ 
€€:è|10 1 sd 33 ‚i €Š:€‹_€Œ €Š: ore:oc:‚  ore:oc:€®
€€:è|9 2 sd 33 … ore:€‡ €Š: ore:oc:‚ 
€€:è|2 8 sl 00 123 ore:€” €Š:€à ore:
€€:è|1 1 sl 00 ‚* €Š:b_L €Š:½ ore:€ğ €Š:‚Ÿ_‚J_eye ore:€´
€€:è|6 8 sd 33 ‚´ ore:€² ore:€ƒ ore:† €Š:
€É:€Ê_q|4 1 sd 33 … ore:€• €Š:€ú €É:€Ê_€Ë
€€:è|5 1 sd 33 ‚µ €Š:€‹_€Œ ore:oc:€³ ore:€ƒ
€·:‚¶ 1 sd 33 €± ore:€– €·:€Æ|2 €Š:€İ|* €Š:W|*
€É:‚· 4 sd 33 { ore:€ï ore:€•
€€:è 1 sd 31 121 ore:€• ore:í
€·:|3 2 sl 00 121 €·: ore:€Û
€·: 1 sd 33 €¶ €Š:‚¬
€·:‚¸ 1 sd 32 ‚¹ €·:t|1
€Š:dye|5 2 sl 00 12 ore:J ore:€˜
€Š:red_T 1 sd 22  €Š:5|1
€Š:€‹_€ı 1 sd 33 €ş ore:€² ore:€•
€Š:€â_\|7 6 sd 31 111 €Š:Y_€µ,€Š:Y_€µ|1,€Š:Y_€µ|2
€€:è|20 1 sd 33  €Š:€‹_€Œ ore:oc:€® €Š: ore:€Ğ ore:oc:€³
€€:è|18 1 sd 33 ‚º ore:oc:€ €Š:€â_H ore:€” ore:oc:‚  ore:oc:‚N ore:oc:€… ore:oc:€³
€€:è|21 1 sd 33  ore:€ƒ ore:oc:€… ore:€¾ ore:€Ğ ore:oc:€³
€€:è|15 1 sd 32 ‚» €Š:€â_H
€€:è|14 1 sd 32 €Õ €Š:€â_H
€€:è|17 1 sd 33 ‚O ore:€” €Š:€â_H ore:oc:‚! ore:oc:‚N ore:oc:€… ore:oc:€³
€€:è|16 1 sd 33 €¶ €Š:€â_H
€€:è|11 1 sd 33 ‚i ore:€ƒ €Š: ore:oc:‚  €Š:¡
€€:è|13 1 sd 33 €Ì ore:€½ ore:€¯
€€:è|12 1 sd 33 ‚¼ €Š:€‹_€Œ
€Š:€â_\|6 6 sd 31 111 €Š:€Ç_€È
€Š:dye|6 2 sl 00 12 ore:J ore:
€Š:€×_€ß_€à|7 8 sd 33 €Ì €Š:€ß_€à ore:j
€Š:&_' 1 sd 33 ‚½ €Š:€õ ore:€ÿ €Š:€¨
€Š:Y_€µ|2 2 sd 12 11 €Š:Y_€µ
€Š:‚{ 2 sd 33 ‚¾ ore:€½ ore:€ğ
€·:€¸|15 1 sd 33 €¼ €·:‚G €·:€¸|12 €·:€¸|6
€Š:€è_g 1 sd 32 h €Š:€Ã|1
€Š:_€µ 1 sd 33 €¶ ore:€”
€Š:€À_g 1 sd 32 h €Š:€Ã|2
€É:€Ê_‚¿ 1 sd 33 €Ì €Š:€¨ €É:€Ê_€Ë
€Š:‚À 1 sd 33 ‚Á ore:€Ó ore:€– €Š:Y
€Š:† 3 sd 31 111 ore:ş
€Š:€È_ 4 sd 33 	 €Š:€È_€µ
€Š:€×_€Ø|5 8 sd 33 €Ì ore: ore:Æ
€·:¥_€‹ 1 sd 33 ¦ ore:€² ore:€•
€Š:dye|9 2 sl 00 1 €Š:”_•|5
€·:Ğ|1 1 sd 33 €¶ €·:€¸|11
€·:0|1 4 sd 32 1 ore:€– €·:€» ore:€â €·:2
€Š:L 1 sd 32 €ü ore:€²
€Š:€â|6 4 sd 22  ore:‚Â
€Š:€×_€Ø|15 8 sd 33 €Ì ore: ore:€Û
]==],['craftmgr.lua']= [==[‚Ã ‚Ä, ‚8 = ‚Å(‚Æ, ‚Ç.‚È, '‚8')
if not ‚Ä ‚É
	‚Ê('Can\'t ‚Ë ‚8 ‚Ì.')
	‚Í
end

‚Ã ‚Î = ‚Æ('lib.‚Î')
‚Ã ‚Ï = ‚Æ('lib.‚Ï')
‚Ã ‚Ğ = ‚Æ('lib.‚Ğ')
‚Ã ‚Ñ = ‚Æ('lib.‚Ñ')
‚Ã ‚Ò = ‚Æ('lib.‚Ò')
‚Ã ‚Ó = ‚Æ('lib.‚Ó')

‚Ã „ = ‚Æ('lib.‚Ô.„')
‚Ã ‚v = ‚Æ('lib.‚Ô.‚v')

-----------------------
-- ‚Õ ‚Ö ‚×
-----------------------
‚Ã ‚Õ = {['‚Ø'] = '', ['‚Ù'] = nil}

‚Ú ‚Õ.new()
	‚Ã o = {}
	‚Û(o, ‚Õ)
	‚Õ.__‚Ü = ‚Õ
	o.‚Ø = ''
	o.‚Ù = nil
	‚Í o
end
-----------------------
-- ‚Õ ‚Ö end
-----------------------

‚Ã ‚İ = ‚Ş
‚Ã ‚ß = {}
‚Ã ‚à = ‚á

‚Ã ‚Ú ‚â(‚ã)
	‚Ê('‚ä ‚å!')
	‚Ê(‚ã.‚Ø)
end

‚Ã ‚æ = {}

‚æ.‚ç = ‚Õ.new()
‚æ.‚ç.‚Ø = '‚ç'
‚æ.‚ç.‚Ù = ‚Ú(‚ã)
	if ‚ã ~= nil ‚É
		if ‚æ[‚ã] ~= nil ‚É
			‚Ê(‚æ[‚ã].‚Ø)
			‚Í
		‚è
			‚Ê('No ‚é ‚ã.')
		end
	end
	‚Ã ‚ê = {}
	for k, v in ‚ë(‚æ) do
		'.‚ì(‚ê, v.‚Ø)
	end
	'.‚í(‚ê)
	‚Ã ‚î = ''
	for k, v in ‚ï(‚ê) do
		‚î = ‚î .. v .. '\n'
	end
	‚Î.‚ğ(‚î)
end

‚æ.‚ñ = ‚Õ.new()
‚æ.‚ñ.‚Ø = '‚ñ'
‚æ.‚ñ.‚Ù = ‚Ú()
	if ‚à ‚É
		io.‚ò:‚ó('‚ô has ‚õ ‚ö. ‚÷ you ‚ø to ‚ù all ‚ú ‚û? [y/n/C]')
		‚Ã ‚ü = io.‚ı:‚ş('*l')
		if €½.‚ÿ(‚ü) == 'y' ‚É
			‚æ.‚ù.‚Ù()
			‚İ = ‚á
		ƒ  €½.‚ÿ(‚ü) == 'n' ‚É
			‚İ = ‚á
		end
	‚è
		‚İ = ‚á
	end
end

‚æ.ƒ = ‚Õ.new()
‚æ.ƒ.‚Ø = 'ƒ'
‚æ.ƒ.‚Ù = ‚Ú()
	‚Ï.‚Ë()
	‚Ê('ƒ ƒ ƒ.')
end

‚æ.ƒ = ‚Õ.new()
‚æ.ƒ.‚Ø = 'ƒ'
‚æ.ƒ.‚Ù = ‚Ú()
	‚Ó.ƒ()
	‚Ê('ƒ ƒ.')
end

‚æ.‚ù = ‚Õ.new()
‚æ.‚ù.‚Ø = '‚ù'
‚æ.‚ù.‚Ù = ‚Ú()
	‚Ï.‚ù()
	‚Ê('ƒ ƒ	 ƒ.')
end

‚æ.ƒ
 = ‚Õ.new()
‚æ.ƒ
.‚Ø = 'ƒ
 <„> <ƒ/ƒ> [ƒ]'
‚æ.ƒ
.‚Ù = ‚Ú(ƒ, ...)
	if ƒ == nil ‚É
		‚æ.‚ç.‚Ù('ƒ
')
		‚Í
	end

	‚Ã ƒ = {}
	ƒ.„ = ‚Ú(ƒ, ƒ)
		if ƒ == nil ‚É
			‚æ.‚ç.‚Ù('ƒ
')
			‚Í
		ƒ  (ƒ ~= 'ƒ') and (ƒ ~= 'ƒ') ‚É
			‚æ.‚ç.‚Ù('ƒ
')
			‚Í
		end
		‚Ã ƒ = (ƒ == 'ƒ') and ‚Ş or ‚á
		
		-- ƒ ƒ ‚ß
		if ‚Ó.ƒ(8) ~= nil ‚É
			‚Ó.ƒ(8)
			if not ‚Ó.ƒ() ‚É
				‚Ê('ƒ ƒ.')
				‚Í
			end
		end
		
		-- ƒ ƒ
		‚Ã ƒ = {1, 2, 3, 5, 6, 7, 9, 10, 11}
		‚Ã ƒ = {}
		for k, v in ‚ï(ƒ) do
			‚Ã ƒ = ‚Ó.ƒ(v)
			if ƒ ~= nil ‚É
				ƒ[k] = ~ƒ
				if ƒ == ‚Ş ‚É
					ƒ[k]:ƒ()
				ƒ  ƒ == nil ‚É
					if ƒ[k].ƒ == 0 ‚É
						ƒ[k]:ƒ()
					end
				end
			end
		end
		
		‚Ã ƒ = {}
		‚Ã w, h, ox, oy
		if ƒ ‚É
			-- ƒ ƒ
			w, h, ox, oy = 3, 3, 0, 0
			‚Ã ‚Ú r(n)
				‚Ã d = ‚á
				for i = (n-1)*3+1, n*3 do
					d = d or (ƒ[i] ~= nil)
				end
				‚Í d
			end
			‚Ã ‚Ú c(n)
				‚Ã d = ‚á
				for i = 0, 2 do
					d = d or (ƒ[(i*3)+n] ~= nil)
				end
				‚Í d
			end
			
			if c(1) and c(3) ‚É
				w, ox = 3, 0
			ƒ  (c(1) and c(2)) or (c(2) and c(3)) ‚É
				w, ox = 2, c(1) and 1 or 2
			ƒ  c(1) or c(2) or c(3) ‚É
				w, ox = 1, c(1) and 1 or (c(2) and 2 or 3)
			‚è
				w, ox = 0, 0
			end
			
			if r(1) and r(3) ‚É
				h, oy = 3, 0
			ƒ  (r(1) and r(2)) or (r(2) and r(3)) ‚É
				h, oy = 2, r(1) and 1 or 2
			ƒ  r(1) or r(2) or r(3) ‚É
				h, oy = 1, r(1) and 1 or (r(2) and 2 or 3)
			‚è
				h, oy = 0, 0
			end
			
			‚Ã ‚Ú xy(x, y, w, h)
				‚Í x + y * w
			end
			for y = 1, h do
				for x = 1, w do
					ƒ[xy(x-1, y-1, w, h)+1] = ƒ[xy(x+ox-2, y+oy-2, 3, 3)+2]
				end
			end
		‚è
			w, h = 0, 0
			for k, v in ‚ë(ƒ) do
				ƒ[#ƒ+1] = v
			end
		end
		
		-- ƒ  ‚v
		if not ‚.„.ƒ!(1) ‚É
			‚Ê('Can\'t ƒ!!')
			‚Í
		end
		‚Ã ƒ = ‚Ó.ƒ(8)
		
		-- Put „ in ‚ß
		‚ß = „.new({ƒ" = w, ƒ# = h}, ƒ, ƒ, ƒ)
		‚Ê('Put „ in ‚ß.')
	end
	
	if ƒ[€½.‚ÿ(ƒ)] == nil ‚É
		‚æ.‚ç.‚Ù('ƒ
')
		‚Í
	‚è
		ƒ[€½.‚ÿ(ƒ)](...)
	end
	
	‚Ó.ƒ$()
end

‚æ.ƒ% = ‚Õ.new()
‚æ.ƒ%.‚Ø = 'ƒ%/see/ƒ&/ƒ' <‚ß/‚v>'
‚æ.ƒ%.‚Ù = ‚Ú(it)
	if it == nil ‚É
		‚æ.‚ç.‚Ù('ƒ%')
		‚Í
	end
	
	‚Ã sit
	if it == '‚ß' ‚É
		sit = ‚ß
	‚è
		sit = ‚Ï.ƒ((~‚v.new(it))
	end
	
	‚Ã ƒ = {}
	ƒ.„ = ‚Ú(ii)
		‚Ê(ii)
	end
	
	if sit == nil ‚É
		‚Ê('ƒ) to ƒ%.')
		‚Í
	ƒ  ƒ*(sit) == „ ‚É
		ƒ.„(sit)
	end
end

‚æ.see = ‚æ.ƒ%
‚æ.ƒ& = ‚æ.ƒ%
‚æ.ƒ' = ‚æ.ƒ%

‚æ.ƒ+ = ‚Õ.new()
‚æ.ƒ+.‚Ø = 'ƒ+ <‚ß/‚v>'
‚æ.ƒ+.‚Ù = ‚Ú(it)
	if it == nil ‚É
		‚æ.‚ç.‚Ù('ƒ+')
		‚Í
	ƒ  it == '‚ß' ‚É
		if ‚ß == nil ‚É
			‚Ê('ƒ) to ƒ+.')
			‚Í
		‚è
			‚Ï.ƒ+(‚ß)
			if ƒ*(‚ß) == „ ‚É
				‚à = ‚Ş
				‚Ê('ƒ ƒ+.')
			end
		end
	‚è
		‚Ï.ƒ+(~‚v.new(it))
		‚à = ‚Ş
		‚Ê('ƒ, ƒ+ to raw.')
	end
end

‚æ.ƒ- = ‚Õ.new()
‚æ.ƒ-.‚Ø = 'ƒ-'
‚æ.ƒ-.‚Ù = ‚Ú()
	‚ß = nil
	‚Ê('ƒ. ƒ/.')
end

‚æ.ƒ0 = ‚Õ.new()
‚æ.ƒ0.‚Ø = 'ƒ0 <‚v>'
‚æ.ƒ0.‚Ù = ‚Ú(it)
	if it == nil ‚É
		‚æ.‚ç.‚Ù('ƒ0')
		‚Í
	end

	‚Ã ƒ1 = ‚Ï.ƒ0(‚v.new(it))
	if ƒ*(ƒ1) == „ ‚É
		‚à = ‚Ş
		‚Ê('ƒ2 „.')
	ƒ  ƒ*(ƒ1) == ‚v ‚É
		‚à = ‚Ş
		‚Ê('Raw ƒ3.')
	‚è
		‚Ê('ƒ) ƒ3.')
	end
end

‚æ.ƒ4 = ‚Õ.new()
‚æ.ƒ4.‚Ø = 'ƒ4 <raw/„>'
‚æ.ƒ4.‚Ù = ‚Ú(ƒ)
	‚Ã ‚î = ''
	if ƒ == 'raw' ‚É
		‚î = 'ƒ5 of raw:\n'
		for k, v in ‚ï(‚Ğ.db) do
			‚î = ‚î .. ƒ6(v) .. '\n'
		end
	ƒ  ƒ == '„' ‚É
		‚î = 'ƒ5 of „:\n'
		for k, v in ‚Ò.ƒ7() do
			‚î = ‚î .. ƒ6(~k) .. '\n'
		end
	‚è
		‚æ.‚ç.‚Ù('ƒ4')
		‚Í
	end
	‚Î.‚ğ(‚î)
end

‚æ.ƒ = ‚Õ.new()
‚æ.ƒ.‚Ø = 'ƒ <‚ß>'
‚æ.ƒ.‚Ù = ‚Ú(sl)
	‚Ó.ƒ(ƒ6(sl))
end

‚æ.ƒ8 = ‚Õ.new()
‚æ.ƒ8.‚Ø = 'ƒ8 <‚v>'
‚æ.ƒ8.‚Ù = ‚Ú(it)
	‚Ã sit
	if it ~= nil ‚É
		sit = ‚v.new(it)
	‚è
		‚æ.‚ç.‚Ù('ƒ8')
		‚Í
	end
	
	if ‚Ï.ƒ((sit) ~= nil ‚É
		if ƒ*(‚Ï.ƒ((sit)) ~= ‚v ‚É
			‚Ã ‚î
			if ƒ*(‚Ï.ƒ((sit)) == „ ‚É
				‚î = 'ƒ: ' .. ƒ6(‚Ï.ƒ((sit).ƒ) .. '\n'
			end
			‚Ã ƒ9, ƒ: = ‚Ï.ƒ8(sit)
			for k, v in ‚ï(ƒ9) do
				‚î = ‚î .. ƒ6(v) .. '\n'
			end
			‚Î.‚ğ(‚î)
		‚è
			‚Ê('It\'s an ‚v')
		end
	‚è
		‚Ê('Can\'t ƒ;.')
	end
end

‚æ.ƒ! = ‚Õ.new()
‚æ.ƒ!.‚Ø = 'ƒ! <‚v>'
‚æ.ƒ!.‚Ù = ‚Ú(it)
	‚Ã sit
	if it ~= nil ‚É
		sit = ‚v.new(it)
	‚è
		‚æ.‚ç.‚Ù('ƒ!')
		‚Í
	end
	
	if ‚Ï.ƒ<(sit) ‚É
		if ‚Ï.ƒ!(sit) ‚É
			‚Ê('ƒ= ƒ.')
		‚è
			‚Ê('ƒ ƒ>.')
		end
	‚è
		‚Ê('Not ƒ? ƒ@ to ƒ!.')
	end
end

‚æ.ƒA = ‚Õ.new()
‚æ.ƒA.‚Ø = 'ƒA'
‚æ.ƒA.‚Ù = ‚Ú(...)
	if ‚Ó.ƒB() ‚É
		‚Ê('ƒC.')
	‚è
		‚Ê('Can\'t ƒA!')
	end
end

ƒD ‚İ do
	io.‚ò:‚ó('ƒE>')
	‚Ã ƒF = ‚Î.ƒG(io.‚ı:‚ş('*l'))
	‚Ã ƒH = €½.‚ÿ('.ƒ0(ƒF, 1))
	if ‚æ[ƒH] ~= nil ‚É
		‚æ[ƒH].‚Ù('.ƒI(ƒF))
	‚è
		‚Ê('‚Õ ƒJ.')
	end
end]==],['crafttweaker.log']= [==[[ƒK][ƒL][ƒM] ƒN ƒO ƒP ƒQ: [[ƒR]]
[ƒK][ƒL][ƒM] ƒS ƒT for ƒU ƒV ƒW [ƒR]
[ƒK][ƒL][ƒM] ƒX ƒY ƒZ in: 0ms
[ƒ[][ƒL][ƒM] ƒ\: ƒ] ƒ^
[ƒ[][ƒL][ƒM] ƒ\: ƒ_ ƒ` ‚v ƒ^
[ƒ[][ƒL][ƒM] ƒN ƒO ƒP ƒQ: [[ƒR], [ƒa | ƒb]]
[ƒ[][ƒL][ƒM] ƒS ƒT for ƒU ƒV ƒW [ƒb | ƒa]
[ƒ[][ƒL][ƒM] ƒX ƒY ƒZ in: 0ms
[ƒc][ƒL][ƒM] ƒd ƒe for ƒf ƒg
[ƒh][ƒL][ƒM] ƒi the ƒj
ƒk:
ƒe.ƒl("€€:ƒm", <€€:€:11>, [[<ore:€ƒ>, <ore:oc:€„>, <ore:oc:€…>], [ƒn, <ore:oc:€†>, ƒn]]);
ƒe.ƒl("€€:ƒo", <€€:€:12>, [[<ore:€‡>, <ore:oc:€ˆ>, <ore:oc:€‰>], [ƒn, <ore:oc:€†>, ƒn]]);
ƒe.ƒl("€€:ƒp", <€€:€:10>, [[<€Š:€‹_€Œ>, <ore:oc:€>, <ore:oc:€>], [ƒn, <ore:oc:€†>, ƒn]]);
ƒe.ƒq("€Š:€_dye_ƒr_ƒs", <€Š:dye:11>, [<€Š:€_€>]);
ƒe.ƒl("€Š:€‘_€’", <€Š:€‘_€’> * 6, [[<ore:€”>, ƒn, <ore:€”>], [<ore:€”>, <ore:€•>, <ore:€”>], [<ore:€”>, <ore:€–>, <ore:€”>]]);
ƒe.ƒq("€Š:red_€—", <€Š:€—:14>, [<ore:€˜>, <€Š:€—>]);
ƒe.ƒl("€Š:€™_€š_ƒr_€ _€¡", <€Š:€™_€š>, [[ƒn, <€Š:€œ_€™>, ƒn], [<€Š:€>, <€Š:€_€Ÿ>, <€Š:€ _€¡>], [ƒn, <€Š:€¢>, ƒn]]);
ƒe.ƒl("€·:ƒt_€£", <€Š:€£> * 16, [[<ore:€¤>], [<ore:€¤>]]);
ƒe.ƒl("€€:ƒu", <€€:€:8>, [[<ore:oc:€¦>, <ore:oc:€>, <ore:€§>], [ƒn, <ore:oc:€†>, <ore:€¨>]]);
ƒe.ƒl("€€:ƒv", <€€:€:9> * 2, [[<€Š:€ª_eye>, ƒn, <€Š:€ª_eye>], [<ore:oc:€«>, <ore:oc:€¦>, <ore:oc:€«>], [<ore:oc:€…>, ƒn, <ore:oc:€…>]]);
ƒe.ƒl("€€:ƒw", <€€:€:6>, [[<ore:oc:€­>, <ore:oc:€®>, ƒn], [ƒn, <ore:oc:€†>, ƒn]]);
ƒe.ƒl("€€:ƒx", <€€:€:7>, [[<ore:€¯>, <ore:oc:€>, ƒn], [ƒn, <ore:oc:€†>, ƒn]]);
ƒe.ƒl("€€:ƒy", <€€:€°>, [[<ore:€²>, <ore:oc:€­>, <ore:€²>], [<ore:oc:€­>, <ore:oc:€«>, <ore:oc:€­>], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒl("€Š:€´_€µ", <€Š:€´_€µ>, [[<€Š:dye:15>, <€Š:dye:15>, <€Š:dye:15>], [<€Š:dye:15>, <€Š:dye:15>, <€Š:dye:15>], [<€Š:dye:15>, <€Š:dye:15>, <€Š:dye:15>]]);
ƒe.ƒq("€·:€Ê_‚F", <€·:€¸:7>, [<€·:€¸:9>, <ore:€”>, <€Š:€¹:*>]);
ƒe.ƒl("€€:ƒz", <€€:€:1>, [[<ore:oc:€®>, <ore:oc:€>, <ore:oc:€º>], [ƒn, <ore:oc:€†>, ƒn]]);
ƒe.ƒl("€€:ƒ{", <€€:€:4>, [[<ore:€§>, <ore:oc:€®>, ƒn], [ƒn, <ore:oc:€†>, ƒn]]);
ƒe.ƒl("€·:€»_ƒ@", <€·:€»>, [[<ore:€–>, <ore:€•>, <ore:€–>], [<ore:€•>, <ore:€½>, <ore:€•>], [<ore:€–>, <ore:€•>, <ore:€–>]]);
ƒe.ƒl("€€:ƒ|", <€€:€:5>, [[<ore:€¾>, <ore:oc:€>, <ore:€¯>], [ƒn, <ore:oc:€†>, ƒn]]);
ƒe.ƒl("€Š:€‹_€Œ", <€Š:€‹_€Œ> * 9, [[<ore:€²>]]);
ƒe.ƒl("€€:ƒ}", <€€:€:2>, [[<ore:oc:€>, <ore:oc:€>, <ore:oc:€¿>], [ƒn, <ore:oc:€†>, ƒn]]);
ƒe.ƒl("€€:ƒ~", <€€:€:3>, [[<ore:oc:€…>, <ore:oc:€>, <ore:oc:€‰>], [ƒn, <ore:oc:€†>, ƒn]]);
ƒe.ƒl("€Š:€À_€Á", <€Š:€À_€Á> * 3, [[<€Š:€Ã:2>, <€Š:€£>, <€Š:€Ã:2>], [<€Š:€Ã:2>, <€Š:€£>, <€Š:€Ã:2>]]);
ƒe.ƒl("€·:ƒ_;", <€·:€Ä:5>, [[<€·:€Æ:3>, <€·:€¸>, <€·:€Æ:3>], [<€·:€Æ:3>, <€·:€¸:1>, <€·:€Æ:3>], [<€·:€Æ:3>, <€Š:€Ç_€È_€Á:*>, <€·:€Æ:3>]]);
ƒe.ƒl("€É:€Ê_€Ë", <€É:€Ê_€Ë> * 2, [[<ore:€•>, <ore:€•>, <ore:€•>], [<ore:€•>, <ore:€Í>, <ore:€•>], [<ore:€•>, <ore:€•>, <ore:€•>]]);
ƒe.ƒl("€Š:€Ç_€Î_€µ", <€Š:€Ç_€Î_€µ>, [[<€Š:€Ç_€Î>, <€Š:€Ç_€Î>, <€Š:€Ç_€Î>], [<€Š:€Ç_€Î>, <€Š:€Ç_€Î>, <€Š:€Ç_€Î>], [<€Š:€Ç_€Î>, <€Š:€Ç_€Î>, <€Š:€Ç_€Î>]]);
ƒe.ƒl("€É:ƒ€_ƒ_U", <€É:ƒ€:4>.ƒ‚({è: "U"}) * 4, [[<ore:İ>, <€Š:A_\:3>, <ore:İ>], [<€Š:A_\:3>, <€Š:A_\:3>, <€Š:A_\:3>], [<ore:İ>, <€Š:A_\:3>, <ore:İ>]]);
ƒe.ƒq("€·:ƒƒ_€Ğ", <€·:€Ï> * 9, [<€Š:€Ğ:*>]);
ƒe.ƒl("€Š:ƒ„_€Ñ", <€Š:€Ñ:13>, [[<€Š:€—:2>, <€Š:€—:2>, <€Š:€—:2>], [<€Š:€—:2>, <€Š:€—:2>, <€Š:€—:2>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒq("€Š:red_bed_ƒr_ƒ…_bed", <€Š:bed:14>, [<€Š:bed>, <ore:€˜>]);
ƒe.ƒl("€Š:€Ó_€Ô", <€Š:€Ó_€Ô> * 6, [[<€Š:€Ó>, <€Š:€Ó>, <€Š:€Ó>], [<€Š:€Ó>, <€Š:€Ó>, <€Š:€Ó>]]);
ƒe.ƒq("€Š:ƒ„_€—", <€Š:€—:2>, [<ore:€Ö>, <€Š:€—>]);
ƒe.ƒl("€Š:ƒ†_€×_€Ø_€Ù", <€Š:€×_€Ø_€Ù:5> * 16, [[<ore:€Ú>, <ore:€Ú>, <ore:€Ú>], [<ore:€Ú>, <ore:€Ú>, <ore:€Ú>]]);
ƒe.ƒq("€Š:ƒ‡_dye", <€Š:dye:8> * 2, [<ore:€Û>, <ore:€Ü>]);
ƒe.ƒl("€Š:€İ_€µ", <€Š:€İ_€µ>, [[<€Š:€İ>, <€Š:€İ>, <€Š:€İ>], [<€Š:€İ>, <€Š:€İ>, <€Š:€İ>], [<€Š:€İ>, <€Š:€İ>, <€Š:€İ>]]);
ƒe.ƒq("€Š:ƒˆ_bed_ƒr_ƒ…_bed", <€Š:bed:9>, [<€Š:bed>, <ore:€Ş>]);
ƒe.ƒl("€·:‚b_ƒ‰", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ‰"}), [[ƒn, <€Š:ƒ‹_€õ:*>, ƒn], [<ore:€ÿ>, <€·:‚b>, <ore:€ÿ>], [<ore:€²>, <ore:€²>, <ore:€²>]]);
ƒe.ƒl("€Š:ƒ„_€×_€ß_€à", <€Š:€×_€ß_€à:2> * 8, [[<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <ore:€Ö>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>]]);
ƒe.ƒl("€·:€á_€â", <€·:€á_€â> * 4, [[ƒn, <€Š:€â_€ä:*>, ƒn], [<€Š:€â_€ä:*>, <ore:€Ó>, <€Š:€â_€ä:*>], [<ore:€Ó>, <ore:€å>, <ore:€Ó>]]);
ƒe.ƒq("€Š:ƒŒ_€—", <€Š:€—:15>, [<ore:€Û>, <€Š:€—>]);
ƒe.ƒl("€Š:€æ_€ç", <€Š:€æ_€ç> * 9, [[<€Š:€æ>]]);
ƒe.ƒq("€Š:€´_ƒ_ƒr_€µ", <€Š:dye:15> * 9, [<€Š:€´_€µ>]);
ƒe.ƒl("€É:ƒ€_ƒ_€ò_oak", <€É:ƒ€:1>.ƒ‚({è: "€ò_oak"}) * 2, [[<€Š:€Ã:5>, <ore:İ>, <€Š:€Ã:5>], [<€Š:€Ã:5>, <€Š:€Ã:5>, <€Š:€Ã:5>], [<€Š:€Ã:5>, <ore:İ>, <€Š:€Ã:5>]]);
ƒe.ƒl("€Š:€è_€Á_€é", <€Š:€è_€Á_€é>, [[<€Š:€£>, <€Š:€Ã:1>, <€Š:€£>], [<€Š:€£>, <€Š:€Ã:1>, <€Š:€£>]]);
ƒe.ƒl("€Š:€ê_€ë", <€Š:€ê_€ë>, [[<ore:€ê>, ƒn, <ore:€ê>], [<ore:€ê>, <ore:€ê>, <ore:€ê>], [<ore:€ê>, <ore:€ê>, <ore:€ê>]]);
ƒe.ƒl("€·:ƒ_ƒ", <€·:€Ä:7>, [[ƒn, <€·:€¸:1>, ƒn], [<€·:€Æ:2>, <€·:€¸>, <€·:€Æ:2>]]);
ƒe.ƒq("€€:ƒ", ƒn, []);
ƒe.ƒl("€Š:€_bed", <€Š:bed:4>, [[<€Š:€—:4>, <€Š:€—:4>, <€Š:€—:4>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒl("€Š:€æ", <€Š:€æ>, [[<ore:€ğ>, <ore:€ğ>, <ore:€ğ>], [<ore:€ğ>, <ore:€ğ>, <ore:€ğ>], [<ore:€ğ>, <ore:€ğ>, <ore:€ğ>]]);
ƒe.ƒq("€Š:ƒ‘", ƒn, []);
ƒe.ƒl("€Š:€‹_€µ", <€Š:€‹_€µ>, [[<ore:€²>, <ore:€²>, <ore:€²>], [<ore:€²>, <ore:€²>, <ore:€²>], [<ore:€²>, <ore:€²>, <ore:€²>]]);
ƒe.ƒq("€·:ƒ’_ƒI", <€·:€ñ:1> * 9, [<€·:€ñ:2>]);
ƒe.ƒl("€Š:€ò_oak_€ó", <€Š:€ò_oak_€ó> * 3, [[<€Š:€Ã:5>, <€Š:€Ã:5>], [<€Š:€Ã:5>, <€Š:€Ã:5>], [<€Š:€Ã:5>, <€Š:€Ã:5>]]);
ƒe.ƒq("€Š:€ô_€õ", <€Š:€ô_€õ>, [<€Š:€õ>, <ore:€Û>, <ore:€ö>]);
ƒe.ƒl("€Š:€ê_€÷", <€Š:€ê_€÷>, [[<ore:€ê>, <ore:€ê>, <ore:€ê>], [<ore:€ê>, ƒn, <ore:€ê>]]);
ƒe.ƒl("€Š:æ_ƒ“_bed", <€Š:bed:3>, [[<€Š:€—:3>, <€Š:€—:3>, <€Š:€—:3>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒl("€Š:€‘_€ù", <€Š:€‘_€ù>, [[<ore:€”>, <ore:€”>, <ore:€”>], [<ore:€”>, <€Š:€ù>, <ore:€”>], [<ore:€”>, <ore:€”>, <ore:€”>]]);
ƒe.ƒl("€Š:€ú_€µ", <€Š:€ú_€µ>, [[<ore:€û>, <ore:€û>, <ore:€û>], [<ore:€û>, <ore:€û>, <ore:€û>], [<ore:€û>, <ore:€û>, <ore:€û>]]);
ƒe.ƒl("€Š:€_pot", <€Š:€_pot>, [[<€Š:€È>, ƒn, <€Š:€È>], [ƒn, <€Š:€È>, ƒn]]);
ƒe.ƒl("€Š:€¹_€ı", <€Š:€¹_€ı>, [[<ore:€ÿ>, <ore:€ÿ>, <ore:€ÿ>], [ƒn, <ore:€•>, ƒn], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒq("€Š:æ_ƒ‡_dye_ƒr_ƒ”_ƒ•", <€Š:dye:7>, [<€Š:red_€:8>]);
ƒe.ƒq("€·:ƒ–", <€·:€Æ:5> * 4, [<€·:€Æ:2>, <€·:€Æ>, <€·:€Æ:2>, <€·:€Æ>]);
ƒe.ƒl("€É:€Ê__max", <€É:€Ê_:1>, [[<€Š:>, <€Š:>, <€Š:>], [<ore:€•>, <€É:€Ê_€Ë>, <ore:€•>], [<ore:€•>, <ore:€•>, <ore:€•>]]);
ƒe.ƒl("€Š:ƒ„_€×_€Ø_€Ù", <€Š:€×_€Ø_€Ù:2> * 16, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
ƒe.ƒl("€€:ƒ—", <€€:>, [[<€Š:€‹_€Œ>, <ore:oc:>, <€Š:€‹_€Œ>], [<ore:oc:€º>, <ore:oc:>, <ore:oc:€º>], [<€Š:€‹_€Œ>, <ore:oc:€>, <€Š:€‹_€Œ>]]);
ƒe.ƒl("€Š:€Ç_€È_", <€Š:€Ç_€È_> * 4, [[<€Š:€Ç_€È>, ƒn, ƒn], [<€Š:€Ç_€È>, <€Š:€Ç_€È>, ƒn], [<€Š:€Ç_€È>, <€Š:€Ç_€È>, <€Š:€Ç_€È>]]);
ƒe.ƒl("€É:
_€ò_oak", <€É:
:5> * 4, [[<ore:€•>, <€Š:€Ã:5>, <ore:€•>], [<€Š:€Ã:5>, <€Š:€Ã:5>, <€Š:€Ã:5>], [<ore:€•>, <€Š:€Ã:5>, <ore:€•>]]);
ƒe.ƒq("€Š:ß_€—", <€Š:€—:10>, [<ore:>, <€Š:€—>]);
ƒe.ƒl("€·:€Ø_ƒ˜", <€·::1> * 4, [[<€·:>, <€·:>], [<€·:>, <€·:>]]);
ƒe.ƒl("€Š:€ _€×_€ß_€à", <€Š:€×_€ß_€à:12> * 8, [[<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <ore:>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>]]);
ƒe.ƒl("€€:ƒ™", <€€:>, [[<ore:oc:€…>, <ore:>, <ore:oc:€…>], [<ore:oc:€³>, <ore:€ÿ>, <ore:oc:€³>], [<ore:€¨>, <€Š:_>, <ore:€¨>]]);
ƒe.ƒl("€Š:ƒ„_bed", <€Š:bed:2>, [[<€Š:€—:2>, <€Š:€—:2>, <€Š:€—:2>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒl("€Š:€‹_€ä", <€Š:€‹_€ä>, [[<ore:€²>], [<ore:€²>], [<ore:€•>]]);
ƒe.ƒl("€Š:€è_€Á", <€Š:€è_€Á> * 3, [[<€Š:€Ã:1>, <€Š:€£>, <€Š:€Ã:1>], [<€Š:€Ã:1>, <€Š:€£>, <€Š:€Ã:1>]]);
ƒe.ƒl("€Š:ƒš_€×_€Ø", <€Š:€×_€Ø:13> * 8, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
ƒe.ƒl("€Š:lit_", <€Š:lit_>, [[<€Š:>], [<€Š:>]]);
ƒe.ƒl("€€:ƒ›", <€€:>, [[<ore:€ÿ>, <ore:oc:>, <ore:€ÿ>], [<€Š:€‹_>, <ore:€Ğ>, <€Š:€‹_>], [<ore:oc:€°>, <ore:oc:€³>, <ore:oc:>]]);
ƒe.ƒl("€·:ƒœ_€Ó_7", <€·::7>, [[<€·::6>, <€·::6>, <€·::6>], [<€·::6>, <€·::6>, <€·::6>], [<€·::6>, <€·::6>, <€·::6>]]);
ƒe.ƒl("€·:ƒœ_€Ó_6", <€·::6>, [[<€·::5>, <€·::5>, <€·::5>], [<€·::5>, <€·::5>, <€·::5>], [<€·::5>, <€·::5>, <€·::5>]]);
ƒe.ƒl("€·:€á_", <€·:€á_> * 4, [[ƒn, <€Š:€‘_€ä:*>, ƒn], [<€Š:€‘_€ä:*>, <ore:€”>, <€Š:€‘_€ä:*>], [<ore:€”>, <ore: >, <ore:€”>]]);
ƒe.ƒq("€Š:æ_ƒ‡_dye_ƒr_ink_ƒ", <€Š:dye:7> * 3, [<ore:€Û>, <ore:€Ü>, <ore:€Ü>]);
ƒe.ƒl("€·:ƒœ_€Ó_1", <€·::1>, [[<€·:>, <€·:>, <€·:>], [<€·:>, <€·:>, <€·:>], [<€·:>, <€·:>, <€·:>]]);
ƒe.ƒl("€·:ƒœ_€Ó_5", <€·::5>, [[<€·::4>, <€·::4>, <€·::4>], [<€·::4>, <€·::4>, <€·::4>], [<€·::4>, <€·::4>, <€·::4>]]);
ƒe.ƒl("€·:ƒœ_€Ó_4", <€·::4>, [[<€·::3>, <€·::3>, <€·::3>], [<€·::3>, <€·::3>, <€·::3>], [<€·::3>, <€·::3>, <€·::3>]]);
ƒe.ƒl("€·:ƒ_ƒU", <€·:ƒŸ>, [[<ore:€•>, <€·:€¸:2>, <ore:€•>], [<ore:€•>, <€·:ª>.ƒ‚({ƒ : {ƒ¡: {ƒ¢: 1 as ƒ£}, id: "€Š:ƒ¤"}, No_ƒ¥: 1 as ƒ£}), <ore:€•>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€·:ƒœ_€Ó_3", <€·::3>, [[<€·::2>, <€·::2>, <€·::2>], [<€·::2>, <€·::2>, <€·::2>], [<€·::2>, <€·::2>, <€·::2>]]);
ƒe.ƒl("€·:ƒœ_€Ó_2", <€·::2>, [[<€·::1>, <€·::1>, <€·::1>], [<€·::1>, <€·::1>, <€·::1>], [<€·::1>, <€·::1>, <€·::1>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_ƒ§", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒ§"}), [[<€Š:ƒ¨:1>, <€Š:ƒ¨:1>, <€Š:ƒ¨:1>], [<€Š:ƒ¨:1>, <€Š:€Ç_î:*>, <€Š:ƒ¨:1>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€Š:ƒ©_€×_€Ø", <€Š:€×_€Ø:1> * 8, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:!>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
ƒe.ƒl("€·:€»_ƒª", <€·:">, [[<ore:#>, <ore:€•>, <ore:#>], [<ore:€•>, <ore:€½>, <ore:€•>], [<ore:#>, <ore:€•>, <ore:#>]]);
ƒe.ƒl("€·:ƒt_€Ğ", <€Š:€Ğ> * 4, [[<ore:€¤>, <ore:€¤>, <ore:€¤>], [<ore:€¤>, ƒn, <ore:€¤>], [<ore:€¤>, <ore:€¤>, <ore:€¤>]]);
ƒe.ƒq("€·:%_›_ƒ«", <€·:%:8>, [<€·:%:9>, <€Š:&_':*>, <€Š:&_':*>]);
ƒe.ƒq("€·:ƒœ_(_ƒ¬", <€Š:(> * 9, [<€·:)>]);
ƒe.ƒq("€·:ƒœ_€Ó_2_ƒ¬", <€·::1> * 9, [<€·::2>]);
ƒe.ƒl("€€:ƒ­", <€€:>, [[<ore:€²>, <ore:oc:€…>, <ore:€²>], [<ore:€¾>, <ore:oc:*>, <ore:€¾>], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒq("€Š:€_bed_ƒr_ƒ…_bed", <€Š:bed:4>, [<€Š:bed>, <ore:+>]);
ƒe.ƒl("€Š:€‘_,", <€Š:€‘_,>, [[<ore:€”>, ƒn, <ore:€”>], [<ore:€”>, ƒn, <ore:€”>]]);
ƒe.ƒl("€Š:._€ó", <€Š:._€ó> * 3, [[<€Š:€Ã:4>, <€Š:€Ã:4>], [<€Š:€Ã:4>, <€Š:€Ã:4>], [<€Š:€Ã:4>, <€Š:€Ã:4>]]);
ƒe.ƒl("€·:€Ø_ƒ®_€ò", <€·:/:3> * 8, [[<€·::3>, <€·::3>, <€·::3>], [<€·::3>, <€·:€¸:5>, <€·::3>], [<€·::3>, <€·::3>, <€·::3>]]);
ƒe.ƒl("€·:ƒ¯_ƒ°_ƒ±", <€·:0:6>, [[<ore:€–>, <€·:2>, <ore:€–>], [<ore:€”>, <€Š:_€µ:*>, <ore:€”>]]);
ƒe.ƒl("€·:ƒ²_ƒ’_V", <€·:€ñ:2>, [[<€·:€ñ:1>, <€·:€ñ:1>, <€·:€ñ:1>], [<€·:€ñ:1>, <€·:€ñ:1>, <€·:€ñ:1>], [<€·:€ñ:1>, <€·:€ñ:1>, <€·:€ñ:1>]]);
ƒe.ƒq("€Š:ƒˆ_3_", <€Š:3_:9> * 8, [<ore:€Ş>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:6>, <€Š:6>, <€Š:6>, <€Š:6>]);
ƒe.ƒq("€·:%_ƒ³", <€·:%:6>, [<€·:%:9>, <€Š:7:*>, <€Š:7:*>]);
ƒe.ƒl("€·:ƒ´_gen_ƒµ", <€·:ı:1>, [[<€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒ§"}), <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒ¶"}), <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒ·"})], [<€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_‚|"}), <€·:€¸>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_"})], [<€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_€æ"}), <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒ¸"}), <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_tnt"})]]);
ƒe.ƒl("€Š:8_9", <€Š:8_9>, [[<ore:€ğ>], [<€Š:9>]]);
ƒe.ƒl("€Š:€‘_hoe", <€Š:€‘_hoe>, [[<ore:€”>, <ore:€”>], [ƒn, <ore:€•>], [ƒn, <ore:€•>]]);
ƒe.ƒq("€Š:;_<", <€Š:;_<> * 3, [<ore:=>, <€Š:_>, <€Š:€İ> | <€Š:€İ:1>]);
ƒe.ƒl("€Š:ƒŒ_€×_€ß_€à", <€Š:€×_€ß_€à:15> * 8, [[<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <ore:€Û>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>]]);
ƒe.ƒl("€Š:", <€Š:> * 9, [[<€Š:_€µ>]]);
ƒe.ƒl("€Š:€ú", <€Š:€ú> * 9, [[<€Š:€ú_€µ>]]);
ƒe.ƒl("€·:lux_ƒ¹_€", <€·:>:3>, [[<€·:€¸:17>, <ore:?>, <€·:€¸:17>], [<€·:€¸:17>, <€·:@>, <€·:€¸:17>], [<€·:€¸:17>, <€·:€¸>, <€·:€¸:17>]]);
ƒe.ƒl("€Š:A_€ı", <€Š:A_€ı>, [[<ore:€ï>, <ore:€ï>, <ore:€ï>], [ƒn, <ore:€•>, ƒn], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€·:B_ƒº", <€·:B:3>, [[<ore:D>, <€·:E>, <ore:D>], [<ore:D>, <€·:B:2>, <ore:D>], [<ore:D>, <€·:E>, <ore:D>]]);
ƒe.ƒl("€·:€Ø_ƒ»", <€·:F>, [[ƒn, ƒn, <ore:€²>], [ƒn, <ore:€•>, <ore:€²>], [<ore:€²>, ƒn, ƒn]]);
ƒe.ƒq("€Š:ƒš_3_", <€Š:3_:13> * 8, [<ore:>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:6>, <€Š:6>, <€Š:6>, <€Š:6>]);
ƒe.ƒl("€Š:oak_", <€Š:oak_> * 4, [[<€Š:€Ã>, ƒn, ƒn], [<€Š:€Ã>, <€Š:€Ã>, ƒn], [<€Š:€Ã>, <€Š:€Ã>, <€Š:€Ã>]]);
ƒe.ƒl("€Š:€â_H", <€Š:€â_H>, [[<ore:€â>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_ice", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ice"}), [[<€Š: :*>, <€Š: :*>, <€Š: :*>], [<€Š: :*>, <€Š:ice:*>, <€Š: :*>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€·:ƒ¼", <€·:€Æ:2> * 4, [[<€Š:I:*>, <€Š:I:*>], [<€Š:I:*>, <€Š:I:*>]]);
ƒe.ƒq("€Š:æ_ƒ“_dye_ƒr_‚k_ƒ", <€Š:dye:12> * 2, [<ore:J>, <ore:€Ü>]);
ƒe.ƒl("€Š:€ _€×_€Ø", <€Š:€×_€Ø:12> * 8, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
ƒe.ƒq("€·:%_ƒ½", <€·:%:4>, [<€·:%:9>, <€Š:K_L:*>, <€Š:K_L:*>]);
ƒe.ƒl("€€:ƒ¾", <€€:M>, [[<ore:€²>, <ore:oc:€­>, <ore:€²>], [<ore:oc:€­>, <ore:N>, <ore:oc:€­>], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒq("€€:ƒ¿", <€€:O>, [<€Š:P>, <ore:oc:Q>]);
ƒe.ƒl("€·:‚_ƒÀ", <€·:R>, [[<ore:€â>, <€·:€¸:2>, <ore:€â>], [<ore:€â>, <€·:S>, <ore:€â>], [<ore:€â>, <€·:€¸:2>, <ore:€â>]]);
ƒe.ƒl("€Š:T", <€Š:T>, [[<€Š:5>, <€Š:5>], [<€Š:5>, <€Š:5>]]);
ƒe.ƒq("€Š:€_3_", <€Š:3_:4> * 8, [<ore:+>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:6>, <€Š:6>, <€Š:6>, <€Š:6>]);
ƒe.ƒl("€Š:U_€Á_€é", <€Š:U_€Á_€é>, [[<€Š:€£>, <€Š:€Ã:3>, <€Š:€£>], [<€Š:€£>, <€Š:€Ã:3>, <€Š:€£>]]);
ƒe.ƒl("€Š:_V_ƒr_€µ", <€Š:_V> * 9, [[<€Š:_€µ>]]);
ƒe.ƒq("€€:ƒÁ", <€€:€:9> * 2, [<€€:€:9>, <€€:€:9>]);
ƒe.ƒl("€Š:W", <€Š:W>, [[ƒn, <€Š:_>, ƒn], [<€Š:_>, <€Š:Y>, <€Š:_>], [<ore:€â>, <ore:€â>, <ore:€â>]]);
ƒe.ƒl("€Š:Z", <€Š:Z>, [[<€Š:_>, <ore:€–>, <€Š:_>], [<ore:€â>, <ore:€â>, <ore:€â>]]);
ƒe.ƒq("€Š:red_3_", <€Š:3_:14> * 8, [<ore:€˜>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:6>, <€Š:6>, <€Š:6>, <€Š:6>]);
ƒe.ƒq("€·:ƒœ_(_3_ƒ¬", <€·:):2> * 9, [<€·:):3>]);
ƒe.ƒl("€Š:€À_A_\", <€Š:A_\:2> * 6, [[<€Š:€Ã:2>, <€Š:€Ã:2>, <€Š:€Ã:2>]]);
ƒe.ƒq("€·:ƒ", <€·:€õ>, [<€Š:€õ:*> | <€Š:€ô_€õ:*> | <€Š:]_€õ:*>, <ore:€”>, <€Š:€¨:*>]);
ƒe.ƒl("€Š:^_€µ", <€Š:^_€µ> * 4, [[<€Š:__`_a>, <€Š:__`_a>], [<€Š:__`_a>, <€Š:__`_a>]]);
ƒe.ƒq("€·:%_ƒÂ", <€·:%:2>, [<€·:%:9>, <€Š:b_L:*>, <€Š:b_L:*>]);
ƒe.ƒl("€Š:A_H", <€Š:A_H>, [[<ore:€ï>]]);
ƒe.ƒl("€Š:€â_", <€Š:€â_> * 4, [[<€Š:€Ó>, ƒn, ƒn], [<€Š:€Ó>, <€Š:€Ó>, ƒn], [<€Š:€Ó>, <€Š:€Ó>, <€Š:€Ó>]]);
ƒe.ƒl("€Š:c_rod", <€Š:c_rod>, [[ƒn, ƒn, <ore:€•>], [ƒn, <ore:€•>, <ore:€½>], [<ore:€•>, ƒn, <ore:€½>]]);
ƒe.ƒl("€Š:€‹_e", <€Š:€‹_e>, [[<ore:€²>, <ore:€²>, <ore:€²>], [<ore:€²>, ƒn, <ore:€²>], [<ore:€²>, ƒn, <ore:€²>]]);
ƒe.ƒq("€·:%_ƒÃ", <€·:%:3>, [<€·:%:9>, <ore:5>, <ore:5>]);
ƒe.ƒl("€É:ƒ€_ƒÄ_oak", <€É:ƒ€:2>.ƒ‚({è: "oak"}) * 4, [[<ore:İ>, <€Š:€Ã>, <ore:İ>], [<€Š:€Ã>, <€Š:€Ã>, <€Š:€Ã>], [<ore:İ>, <€Š:€Ã>, <ore:İ>]]);
ƒe.ƒl("€Š:g", <€Š:g>, [[<€Š:€Ã>, ƒn, <€Š:€Ã>], [<€Š:€Ã>, <€Š:€Ã>, <€Š:€Ã>]]);
ƒe.ƒl("€Š:ƒˆ_P", <€Š:P:9> * 3, [[<€Š:€—:9>, <€Š:€—:9>]]);
ƒe.ƒq("€Š:ƒ·_dye_ƒr_red_ƒ", <€Š:dye:9> * 2, [<ore:€˜>, <ore:€Ü>]);
ƒe.ƒl("€Š:i", <€Š:i>, [[<ore:€ï>, <ore:€ï>, <ore:€ï>], [<ore:€ï>, <ore:€–>, <ore:€ï>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒl("€É:ƒ€_ƒ_€À", <€É:ƒ€:1>.ƒ‚({è: "€À"}) * 2, [[<€Š:€Ã:2>, <ore:İ>, <€Š:€Ã:2>], [<€Š:€Ã:2>, <€Š:€Ã:2>, <€Š:€Ã:2>], [<€Š:€Ã:2>, <ore:İ>, <€Š:€Ã:2>]]);
ƒe.ƒl("€·:ƒœ_(", <€·:)>, [[<€Š:(>, <€Š:(>, <€Š:(>], [<€Š:(>, <€Š:(>, <€Š:(>], [<€Š:(>, <€Š:(>, <€Š:(>]]);
ƒe.ƒq("€Š:ƒ‡_3_", <€Š:3_:7> * 8, [<ore:j>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:6>, <€Š:6>, <€Š:6>, <€Š:6>]);
ƒe.ƒq("€·:k", <€·:k>, [<€Š:l:*>, <€·:€¸>, <€Š:€‹_€ı:*>]);
ƒe.ƒq("€Š:æ_ƒ“_3_", <€Š:3_:3> * 8, [<ore:m>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:6>, <€Š:6>, <€Š:6>, <€Š:6>]);
ƒe.ƒl("€€:ƒÅ", <€€:n>, [[<ore:€²>, <€Š:>, <ore:€²>], [<€Š:>, <ore:oc:€®>, <ore:>], [<ore:€²>, <€Š:>, <ore:€²>]]);
ƒe.ƒq("€€:ƒÆ", <€€:p>, [<€€:p>, <€€:q>]);
ƒe.ƒl("€Š:._A_\", <€Š:A_\:4> * 6, [[<€Š:€Ã:4>, <€Š:€Ã:4>, <€Š:€Ã:4>]]);
ƒe.ƒq("€Š:ƒ‡_bed_ƒr_ƒ…_bed", <€Š:bed:7>, [<€Š:bed>, <ore:j>]);
ƒe.ƒq("€Š:€¡_€š", <€Š:€¡_€š>, [<€Š:€ _€¡>, <€Š:red_€¡>, <€Š:€¢>]);
ƒe.ƒq("€Š:red_dye_ƒr_ƒÇ", <€Š:dye:1>, [<€Š:red_€:4>]);
ƒe.ƒl("€·:ƒÈ_ƒÉ", <€·:r>, [[ƒn, ƒn, <ore:€”>], [ƒn, <€·:t:1>, ƒn], [<€·:t:1>, ƒn, ƒn]]);
ƒe.ƒq("€Š:red_dye_ƒr_u", <€Š:dye:1>, [<€Š:u>]);
ƒe.ƒl("€É:key_v", <€É:v_key>, [[<ore:€ƒ>, <ore:€”>], [ƒn, <ore:€”>], [ƒn, <€É:€Ê_€Ë>]]);
ƒe.ƒl("€Š:x", <€Š:x>, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:z>, <ore:>], [<€Š:€¨>, <€Š:€¨>, <€Š:€¨>]]);
ƒe.ƒl("€Š:tnt", <€Š:tnt>, [[<ore:=>, <€Š:5> | <€Š:5:1>, <ore:=>], [<€Š:5> | <€Š:5:1>, <ore:=>, <€Š:5> | <€Š:5:1>], [<ore:=>, <€Š:5> | <€Š:5:1>, <ore:=>]]);
ƒe.ƒl("€·:ƒ´_gen_top", <€·:ı:2>, [[<€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒÊ"}), <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒË"}), <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒÌ"})], [<€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒÍ"}), <€·:€¸>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_€ª"})], [<€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ice"}), <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_K"})]]);
ƒe.ƒl("€Š:æ_ƒ‡_bed", <€Š:bed:8>, [[<€Š:€—:8>, <€Š:€—:8>, <€Š:€—:8>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒq("€Š:|_and_}", <€Š:|_and_}>, [<ore:€²>, <€Š:|>]);
ƒe.ƒq("€Š:ƒ©_dye_ƒr_ƒ©_ƒÇ", <€Š:dye:14>, [<€Š:red_€:5>]);
ƒe.ƒq("€Š:ƒ·_bed_ƒr_ƒ…_bed", <€Š:bed:6>, [<€Š:bed>, <ore:~>]);
ƒe.ƒl("€É:€Ê__min", <€É:€Ê_:2>, [[<ore:€•>, <ore:€•>, <ore:€•>], [<ore:€•>, <€É:€Ê_€Ë>, <ore:€•>], [<€Š:>, <€Š:>, <€Š:>]]);
ƒe.ƒl("€Š:€ _P", <€Š:P:12> * 3, [[<€Š:€—:12>, <€Š:€—:12>]]);
ƒe.ƒl("€Š:U_€ó", <€Š:U_€ó> * 3, [[<€Š:€Ã:3>, <€Š:€Ã:3>], [<€Š:€Ã:3>, <€Š:€Ã:3>], [<€Š:€Ã:3>, <€Š:€Ã:3>]]);
ƒe.ƒq("€·:ƒœ_‚¬_4_ƒ¬", <€·::3> * 9, [<€·::4>]);
ƒe.ƒl("€Š:ƒŒ_€×_€Ø_€Ù", <€Š:€×_€Ø_€Ù:15> * 16, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <ore:€>, <ore:€>]]);
ƒe.ƒq("€·:ƒÎ_€Ø", <€·:€Æ:4> * 4, [<ore:5>, <ore:>, <ore:5>, <ore:>]);
ƒe.ƒl("€Š:_", <€Š::1>, [[<ore:‚>, <ore:‚>, <ore:‚>], [<ore:‚>, <ore:‚>, <ore:‚>], [<ore:‚>, <ore:‚>, <ore:‚>]]);
ƒe.ƒl("€É:ƒ€_ƒÄ_U", <€É:ƒ€:2>.ƒ‚({è: "U"}) * 4, [[<ore:İ>, <€Š:€Ã:3>, <ore:İ>], [<€Š:€Ã:3>, <€Š:€Ã:3>, <€Š:€Ã:3>], [<ore:İ>, <€Š:€Ã:3>, <ore:İ>]]);
ƒe.ƒl("€Š:ƒ“_P", <€Š:P:11> * 3, [[<€Š:€—:11>, <€Š:€—:11>]]);
ƒe.ƒl("€Š:€‹_€ë", <€Š:€‹_€ë>, [[<ore:€²>, ƒn, <ore:€²>], [<ore:€²>, <ore:€²>, <ore:€²>], [<ore:€²>, <ore:€²>, <ore:€²>]]);
ƒe.ƒq("€·:ƒ", <€·:ƒ>, [<€Š:l:*>, <€·:€¸>, <€Š:„_':*>]);
ƒe.ƒq("€·:ƒœ_€Ó_1_ƒ¬", <€·:> * 9, [<€·::1>]);
ƒe.ƒl("€É:€Ê_q_€¨", <€É:€Ê_q>, [[<ore:€•>, <ore:€•>, <ore:€•>], [<€Š:€¨>, <€É:€Ê_€Ë>, <€Š:€¨>], [<ore:€•>, <ore:€•>, <ore:€•>]]);
ƒe.ƒl("€Š:ƒÏ", <€Š:map>, [[<€Š:†>, <€Š:†>, <€Š:†>], [<€Š:†>, <€Š:‡_map:*>, <€Š:†>], [<€Š:†>, <€Š:†>, <€Š:†>]]);
ƒe.ƒl("€Š:red_€Ç_€È", <€Š:red_€Ç_€È>, [[<€Š:‰>, <€Š:€Ç_€Î>], [<€Š:€Ç_€Î>, <€Š:‰>]]);
ƒe.ƒl("€€:ƒĞ", <€€:Š>, [[<ore:oc:Œ>, <ore:oc:Œ>, <ore:oc:Œ>], [<ore:oc:Œ>, <ore:oc:>, <ore:oc:>]]);
ƒe.ƒl("€Š:€À_", <€Š:€À_> * 4, [[<€Š:€Ã:2>, ƒn, ƒn], [<€Š:€Ã:2>, <€Š:€Ã:2>, ƒn], [<€Š:€Ã:2>, <€Š:€Ã:2>, <€Š:€Ã:2>]]);
ƒe.ƒl("€Š:æ_ƒ‡_€×_€Ø", <€Š:€×_€Ø:8> * 8, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
ƒe.ƒl("€Š:ƒ…_€×_€Ø_€Ù", <€Š:€×_€Ø_€Ù> * 16, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
ƒe.ƒl("€Š:€‘_axe", <€Š:€‘_axe>, [[<ore:€”>, <ore:€”>], [<ore:€”>, <ore:€•>], [ƒn, <ore:€•>]]);
ƒe.ƒl("€Š:æ_ƒ“_€×_€Ø_€Ù", <€Š:€×_€Ø_€Ù:3> * 16, [[<ore:’>, <ore:’>, <ore:’>], [<ore:’>, <ore:’>, <ore:’>]]);
ƒe.ƒq("€Š:€ _3_", <€Š:3_:12> * 8, [<ore:>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:6>, <€Š:6>, <€Š:6>, <€Š:6>]);
ƒe.ƒl("€Š:ƒˆ_€×_€Ø", <€Š:€×_€Ø:9> * 8, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:€Ş>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
ƒe.ƒl("€·:ƒ_ƒÑ", <€·:€Ä> * 3, [[<ore:#>, <ore:#>, <ore:#>], [<€·:€Æ:2>, <€·:€¸>, <€·:€Æ:2>]]);
ƒe.ƒq("€Š:€_dye_ƒr_ƒÒ", <€Š:dye:11> * 2, [<€Š:”_•>]);
ƒe.ƒl("€Š:€â_€ä", <€Š:€â_€ä>, [[<ore:€Ó>], [<ore:€Ó>], [<ore:€•>]]);
ƒe.ƒl("€Š:€â_€È_", <€Š:€â_€È_> * 4, [[<€Š:I> | <€Š:I:1> | <€Š:I:2> | <€Š:I:3>, ƒn, ƒn], [<€Š:I> | <€Š:I:1> | <€Š:I:2> | <€Š:I:3>, <€Š:I> | <€Š:I:1> | <€Š:I:2> | <€Š:I:3>, ƒn], [<€Š:I> | <€Š:I:1> | <€Š:I:2> | <€Š:I:3>, <€Š:I> | <€Š:I:1> | <€Š:I:2> | <€Š:I:3>, <€Š:I> | <€Š:I:1> | <€Š:I:2> | <€Š:I:3>]]);
ƒe.ƒq("€É:key_–", <€É:–_key>, [<€É:v_key>, <€Š:—_tag>]);
ƒe.ƒl("€·:ƒ¦_ƒÓ", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒ¸"}), [[<ore:€Ó>, <ore:€Ó>, <ore:€Ó>], [<ore:€Ó>, <ore:€²>, <ore:€Ó>], [<ore:€–>, <€Š:¶:*>, <ore:€–>]]);
ƒe.ƒl("€Š:ƒÔ", <€Š:€â:3> * 2, [[<ore:€Ó>, <€Š:Y>], [<€Š:Y>, <ore:€Ó>]]);
ƒe.ƒl("€Š:._€Á", <€Š:._€Á> * 3, [[<€Š:€Ã:4>, <€Š:€£>, <€Š:€Ã:4>], [<€Š:€Ã:4>, <€Š:€£>, <€Š:€Ã:4>]]);
ƒe.ƒl("€·:ƒ¯_ƒÕ_ƒª", <€·:˜:1> * 8, [[<€Š:™:*>], [ƒn], [<€·:0:2>]]);
ƒe.ƒl("€·:š_ƒÖ", <€·:š>, [[<€Š:end_€â:*>, <€·:€Æ:3>, <€Š:end_€â:*>], [<€·:€Æ:3>, <ore:›_œ_>, <€·:€Æ:3>], [<€Š:end_€â:*>, <€·:€Æ:3>, <€Š:end_€â:*>]]);
ƒe.ƒl("€Š:end_", <€Š:end_> * 4, [[<€Š:end_€â>, <€Š:end_€â>], [<€Š:end_€â>, <€Š:end_€â>]]);
ƒe.ƒq("€Š:ƒ©_bed_ƒr_ƒ…_bed", <€Š:bed:1>, [<€Š:bed>, <ore:!>]);
ƒe.ƒl("€Š:ƒˆ_€Ñ", <€Š:€Ñ:6>, [[<€Š:€—:9>, <€Š:€—:9>, <€Š:€—:9>], [<€Š:€—:9>, <€Š:€—:9>, <€Š:€—:9>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒq("€·:ƒœ_€Ó_5_ƒ¬", <€·::4> * 9, [<€·::5>]);
ƒe.ƒq("€Š:ƒ„_dye_ƒr_‚k_ink_ƒ", <€Š:dye:13> * 4, [<ore:J>, <ore:€˜>, <ore:€˜>, <ore:€Ü>]);
ƒe.ƒl("€Š:€‹_hoe", <€Š:€‹_hoe>, [[<ore:€²>, <ore:€²>], [ƒn, <ore:€•>], [ƒn, <ore:€•>]]);
ƒe.ƒl("€Š:œ", <€Š:œ>, [[<€Š: >, <€Š: >], [<€Š: >, <€Š: >]]);
ƒe.ƒl("€Š:U_€Ã", <€Š:€Ã:3> * 4, [[<€Š:log:3>]]);
ƒe.ƒl("€Š:._€Á_€é", <€Š:._€Á_€é>, [[<€Š:€£>, <€Š:€Ã:4>, <€Š:€£>], [<€Š:€£>, <€Š:€Ã:4>, <€Š:€£>]]);
ƒe.ƒl("€Š:¡", <€Š:¡>, [[ƒn, <ore:€”>, ƒn], [<ore:€”>, <ore:€–>, <ore:€”>], [ƒn, <ore:€”>, ƒn]]);
ƒe.ƒl("€Š:ƒ„_P", <€Š:P:2> * 3, [[<€Š:€—:2>, <€Š:€—:2>]]);
ƒe.ƒq("€·:%_ƒ×", <€·:%:5>, [<€·:%:9>, <€Š: :*>, <€Š: :*>]);
ƒe.ƒq("€·:%_›_ƒØ", <€·:%:7>, [<€·:%:9>, <€Š:™:*>, <€Š:™:*>]);
ƒe.ƒq("€Š:€_€—", <€Š:€—:4>, [<ore:+>, <€Š:€—>]);
ƒe.ƒl("€É:ƒ€_ƒÄ_€À", <€É:ƒ€:2>.ƒ‚({è: "€À"}) * 4, [[<ore:İ>, <€Š:€Ã:2>, <ore:İ>], [<€Š:€Ã:2>, <€Š:€Ã:2>, <€Š:€Ã:2>], [<ore:İ>, <€Š:€Ã:2>, <ore:İ>]]);
ƒe.ƒl("€Š:ƒš_€×_€ß_€à", <€Š:€×_€ß_€à:13> * 8, [[<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <ore:>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>]]);
ƒe.ƒl("€Š:£_¤", <€Š:£_¤>, [[<€Š:_€Œ>, <€Š:_€Œ>, <€Š:_€Œ>], [<€Š:_€Œ>, <€Š:¤>, <€Š:_€Œ>], [<€Š:_€Œ>, <€Š:_€Œ>, <€Š:_€Œ>]]);
ƒe.ƒl("€·:¥_", <€·:¥_>, [[ƒn, <ore:€”>, <ore:€”>], [ƒn, ƒn, <ore:€”>], [<ore:€•>, <ore:€”>, <ore:€”>]]);
ƒe.ƒl("€·:ƒÙ", <€·:§> * 4, [[<€·:€¸>], [<€·:€Æ:3>]]);
ƒe.ƒl("€·:;_axe", <€·:¨>, [[<€·:©:8>, <€·:©:8>], [<€·:©:8>, <€Š:€£:*>], [ƒn, <€Š:€£:*>]]);
ƒe.ƒl("€Š:€Ø_€Ù", <€Š:€Ø_€Ù> * 16, [[<€Š:€Ø>, <€Š:€Ø>, <€Š:€Ø>], [<€Š:€Ø>, <€Š:€Ø>, <€Š:€Ø>]]);
ƒe.ƒl("€Š:€¹_e", <€Š:€¹_e>, [[<ore:€ÿ>, <ore:€ÿ>, <ore:€ÿ>], [<ore:€ÿ>, ƒn, <ore:€ÿ>], [<ore:€ÿ>, ƒn, <ore:€ÿ>]]);
ƒe.ƒq("€·:€‘_ƒÚ_ƒÛ", <€·:ª:1>, [<€·:ª>, <€·:€¸:10>]);
ƒe.ƒl("€Š:", <€Š:>, [[<ore:‚>, <ore:‚>], [<ore:‚>, <ore:‚>]]);
ƒe.ƒl("€·:«", <€·:«>, [[<ore:€–>, <ore:­>, <ore:€–>], [<ore:€²>, <€·:€¸>, <ore:€²>], [<ore:€²>, <ore:€²>, <ore:€²>]]);
ƒe.ƒl("€Š:€‘_€ä", <€Š:€‘_€ä>, [[<ore:€”>], [<ore:€”>], [<ore:€•>]]);
ƒe.ƒq("€Š:ƒÜ", ƒn, []);
ƒe.ƒl("€Š:ß_€×_€Ø", <€Š:€×_€Ø:10> * 8, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
ƒe.ƒl("€Š:€‹_V_ƒr_ƒİ", <€Š:€‹_V>, [[<€Š:€‹_€Œ>, <€Š:€‹_€Œ>, <€Š:€‹_€Œ>], [<€Š:€‹_€Œ>, <€Š:€‹_€Œ>, <€Š:€‹_€Œ>], [<€Š:€‹_€Œ>, <€Š:€‹_€Œ>, <€Š:€‹_€Œ>]]);
ƒe.ƒl("€Š:ƒŞ_T", <€Š:T:1>, [[<€Š:€â_\:1>], [<€Š:€â_\:1>]]);
ƒe.ƒq("€·:ƒœ_5_1_ƒ¬", <€·:®> * 9, [<€·:®:1>]);
ƒe.ƒl("€Š:€‘_€ı", <€Š:€‘_€ı>, [[<ore:€”>, <ore:€”>, <ore:€”>], [ƒn, <ore:€•>, ƒn], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€Š:€à", <€Š:€à>, [[<€Š:€à_€ç>, <€Š:€à_€ç>], [<€Š:€à_€ç>, <€Š:€à_€ç>]]);
ƒe.ƒl("€Š:€Á_€é", <€Š:€Á_€é>, [[<€Š:€£>, <€Š:€Ã>, <€Š:€£>], [<€Š:€£>, <€Š:€Ã>, <€Š:€£>]]);
ƒe.ƒl("€€:ƒß", <€€:¯>, [[<ore:oc:°>, <ore:oc:°>, <ore:oc:°>], [<ore:oc:°>, <ore:oc:°>, <ore:oc:°>], [<ore:oc:°>, <ore:oc:°>, <ore:oc:°>]]);
ƒe.ƒq("€Š:ƒ„_dye_ƒr_ƒà", <€Š:dye:13>, [<€Š:red_€:2>]);
ƒe.ƒl("€Š:€è_A_\", <€Š:A_\:1> * 6, [[<€Š:€Ã:1>, <€Š:€Ã:1>, <€Š:€Ã:1>]]);
ƒe.ƒl("€Š:±", <€Š:±> * 3, [[<ore:€•>, ƒn, <ore:€•>], [<ore:€•>, <ore:€•>, <ore:€•>], [<ore:€•>, ƒn, <ore:€•>]]);
ƒe.ƒl("€·:ƒá_ƒâ", <€·:³>, [[<€Š:dye:13> | <€·:€¸:3> | <€Š:dye:5>, <ore:€²>, <€Š:dye:13> | <€·:€¸:3> | <€Š:dye:5>], [<ore:€²>, <ore:´>, <ore:€²>], [<€Š:dye:13> | <€·:€¸:3> | <€Š:dye:5>, <ore:€²>, <€Š:dye:13> | <€·:€¸:3> | <€Š:dye:5>]]);
ƒe.ƒq("€É:key_µ", <€É:µ_key>, [<€É:v_key>, <€Š:€ô_€õ>]);
ƒe.ƒl("€Š:_", <€Š:_>, [[<ore:€–>], [<ore:€•>]]);
ƒe.ƒl("€Š:¶_·", <€Š:¶_·>, [[<€Š:¶>], [<€Š:·>]]);
ƒe.ƒl("€Š:A_¸_¹", <€Š:A_¸_¹>, [[<ore:€ï>, <ore:€ï>]]);
ƒe.ƒq("€Š:ƒ…_3_", <€Š:3_> * 8, [<ore:€Ü>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:6>, <€Š:6>, <€Š:6>, <€Š:6>]);
ƒe.ƒq("€Š:ƒ‡_€—", <€Š:€—:7>, [<ore:j>, <€Š:€—>]);
ƒe.ƒl("€·:€Ø_ƒ®_ƒã", <€·:/> * 8, [[<ore:>, <ore:>, <ore:>], [<ore:>, <€·:€¸:5>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
ƒe.ƒl("€Š:ƒ©_P", <€Š:P:1> * 3, [[<€Š:€—:1>, <€Š:€—:1>]]);
ƒe.ƒq("€·:ƒœ_(_1_ƒ¬", <€·:)> * 9, [<€·:):1>]);
ƒe.ƒl("€Š:ƒ‡_bed", <€Š:bed:7>, [[<€Š:€—:7>, <€Š:€—:7>, <€Š:€—:7>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒl("€Š:º", <€Š:º>, [[<€Š:¼_L>, <€Š:¼_L>, <€Š:¼_L>], [<€Š:½>, <ore:egg>, <€Š:½>], [<€Š:¾>, <€Š:¾>, <€Š:¾>]]);
ƒe.ƒl("€·:¥_€â", <€·:¥_€â>, [[ƒn, <ore:€Ó>, <ore:€Ó>], [ƒn, ƒn, <ore:€Ó>], [<ore:€•>, <ore:€Ó>, <ore:€Ó>]]);
ƒe.ƒl("€Š:ƒ©_€Ñ", <€Š:€Ñ:14>, [[<€Š:€—:1>, <€Š:€—:1>, <€Š:€—:1>], [<€Š:€—:1>, <€Š:€—:1>, <€Š:€—:1>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€Š:€ê_,", <€Š:€ê_,>, [[<ore:€ê>, ƒn, <ore:€ê>], [<ore:€ê>, ƒn, <ore:€ê>]]);
ƒe.ƒl("€É:ƒ€_ƒÄ_€è", <€É:ƒ€:2>.ƒ‚({è: "€è"}) * 4, [[<ore:İ>, <€Š:€Ã:1>, <ore:İ>], [<€Š:€Ã:1>, <€Š:€Ã:1>, <€Š:€Ã:1>], [<ore:İ>, <€Š:€Ã:1>, <ore:İ>]]);
ƒe.ƒl("€·:ƒ_ƒä", <€·:€Ä:4>, [[<€·:€Æ:3>, <€·:€Æ:3>, <€·:€Æ:3>], [ƒn, <€·:€¸:1>, <€·:€¸>], [<€·:€Æ:3>, <€·:€Æ:3>, <€·:€Æ:3>]]);
ƒe.ƒl("€Š:À_Á", <€Š:À_Á>, [[<ore:€•>, <ore:€•>, <ore:€•>], [ƒn, <ore:€•>, ƒn], [<ore:€•>, <€Š:€â_\>, <ore:€•>]]);
ƒe.ƒq("€·:›_‚r_€Ã", <€·:t> * 4, [<€·:t:1>]);
ƒe.ƒl("€·:š_ƒå", <€·:Ã>, [[<€Š:end_€â:*>, <€Š:end_rod:*>, <€Š:end_€â:*>], [<€Š:end_€â:*>, <€Š:€¹_€ı:*>, <€Š:end_€â:*>], [<€·:€Æ:3>, <€·:€Æ:3>, <€·:€Æ:3>]]);
ƒe.ƒl("€·:ƒ¦_¶", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), [[<ore:€²>, <ore:€²>, <ore:€²>], [<ore:€²>, <€·:‚b>, <ore:€²>], [<ore:€–>, <€Š:¶:*>, <ore:€–>]]);
ƒe.ƒl("€Š:ƒ·_€×_€Ø_€Ù", <€Š:€×_€Ø_€Ù:6> * 16, [[<ore:Å>, <ore:Å>, <ore:Å>], [<ore:Å>, <ore:Å>, <ore:Å>]]);
ƒe.ƒq("€Š:ƒ†_3_", <€Š:3_:5> * 8, [<ore:Æ>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:6>, <€Š:6>, <€Š:6>, <€Š:6>]);
ƒe.ƒl("€·:ƒ¯_ƒÕ_ƒ@", <€·:˜> * 8, [[<€Š:™:*>], [ƒn], [<€·:0>]]);
ƒe.ƒl("€Š:€ê_e", <€Š:€ê_e>, [[<ore:€ê>, <ore:€ê>, <ore:€ê>], [<ore:€ê>, ƒn, <ore:€ê>], [<ore:€ê>, ƒn, <ore:€ê>]]);
ƒe.ƒl("€Š:U_A_\", <€Š:A_\:3> * 6, [[<€Š:€Ã:3>, <€Š:€Ã:3>, <€Š:€Ã:3>]]);
ƒe.ƒq("€·:ƒæ", <€·:€Æ:1> * 4, [<€·:€Æ>, <€·:€Æ>, <€·:€Æ>, <€·:€Æ>]);
ƒe.ƒl("€·:lux_ƒ¹_red", <€·:>:2>, [[<€·:€¸:17>, <ore:Ç>, <€·:€¸:17>], [<€·:€¸:17>, <€·:@>, <€·:€¸:17>], [<€·:€¸:17>, <€·:€¸>, <€·:€¸:17>]]);
ƒe.ƒq("€É:È_ƒç", <€É:È:1>, [<€É:É_key>, <€Š:€â_H>]);
ƒe.ƒl("€Š:€ _€Ñ", <€Š:€Ñ:3>, [[<€Š:€—:12>, <€Š:€—:12>, <€Š:€—:12>], [<€Š:€—:12>, <€Š:€—:12>, <€Š:€—:12>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€Š:€_€×_€ß_€à", <€Š:€×_€ß_€à:4> * 8, [[<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <ore:+>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>]]);
ƒe.ƒl("€É:ƒ€_ƒÄ_€ò_oak", <€É:ƒ€:2>.ƒ‚({è: "€ò_oak"}) * 4, [[<ore:İ>, <€Š:€Ã:5>, <ore:İ>], [<€Š:€Ã:5>, <€Š:€Ã:5>, <€Š:€Ã:5>], [<ore:İ>, <€Š:€Ã:5>, <ore:İ>]]);
ƒe.ƒq("€Š:‚<_I", <€Š:I:1>, [<€Š:I>, <€Š:Ê>]);
ƒe.ƒl("€·:_¡", <€·:Ë>, [[<ore:€â>, <ore:€–>, <ore:€â>], [<ore:€–>, <€Š:_:*>, <ore:€–>], [<ore:€â>, <ore:€–>, <ore:€â>]]);
ƒe.ƒl("€É:ƒ€_ƒè_€ò_oak", <€É:ƒ€:3>.ƒ‚({è: "€ò_oak"}) * 2, [[<€Š:A_\:5>, <ore:İ>, <€Š:A_\:5>], [<€Š:A_\:5>, <€Š:A_\:5>, <€Š:A_\:5>], [<€Š:A_\:5>, <ore:İ>, <€Š:A_\:5>]]);
ƒe.ƒl("€É:ƒ€_ƒ_U", <€É:ƒ€:1>.ƒ‚({è: "U"}) * 2, [[<€Š:€Ã:3>, <ore:İ>, <€Š:€Ã:3>], [<€Š:€Ã:3>, <€Š:€Ã:3>, <€Š:€Ã:3>], [<€Š:€Ã:3>, <ore:İ>, <€Š:€Ã:3>]]);
ƒe.ƒq("€·:E_ƒé", <€·:E>, [<€Š:€Ø_Ì:*>, <€Š:€ª_Í:*>, <€Š:€ª_Í:*>]);
ƒe.ƒq("€Š:€õ", <€Š:€õ>, [<ore:†>, <ore:†>, <ore:†>, <ore:€ê>]);
ƒe.ƒl("€É:ƒ€_ƒè_oak", <€É:ƒ€:3>.ƒ‚({è: "oak"}) * 2, [[<€Š:A_\>, <ore:İ>, <€Š:A_\>], [<€Š:A_\>, <€Š:A_\>, <€Š:A_\>], [<€Š:A_\>, <ore:İ>, <€Š:A_\>]]);
ƒe.ƒl("€Š:A_Ï", <€Š:A_Ï>, [[<ore:€ï>], [<ore:€•>], [<ore:€•>]]);
ƒe.ƒl("€Š:ƒš_bed", <€Š:bed:13>, [[<€Š:€—:13>, <€Š:€—:13>, <€Š:€—:13>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒq("€·:ƒê_€µ_to_V", <€·:€¸:11> * 9, [<€·:Ğ:1>]);
ƒe.ƒq("€É:È_µ", <€É:È:3>, [<€É:µ_key>, <€Š:€â_H>]);
ƒe.ƒq("€Š:ƒ·_3_", <€Š:3_:6> * 8, [<ore:~>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:6>, <€Š:6>, <€Š:6>, <€Š:6>]);
ƒe.ƒl("€Š:Ñ", <€Š:Ñ>, [[<ore:€²>, ƒn, <ore:€²>], [<ore:€²>, ƒn, <ore:€²>], [<ore:€²>, <ore:€²>, <ore:€²>]]);
ƒe.ƒl("€É:€Ê_Ó_ƒë", <€É:€Ê_Ó>, [[<€Š:_>, <ore:€•>, <€Š:_>], [<ore:€•>, <€É:€Ê_€Ë>, <ore:€•>], [<€Š:>, <ore:€•>, <€Š:>]]);
ƒe.ƒl("€É:€Ê_Ó_ƒì", <€É:€Ê_Ó:1>, [[<€Š:W>, <ore:€•>, <€Š:W>], [<ore:€•>, <€É:€Ê_€Ë>, <ore:€•>], [<€Š:>, <ore:€•>, <€Š:>]]);
ƒe.ƒq("€Š:red_dye_ƒr_ƒí", <€Š:dye:1>, [<€Š:red_€>]);
ƒe.ƒq("€Š:ƒ„_3_", <€Š:3_:2> * 8, [<ore:€Ö>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:6>, <€Š:6>, <€Š:6>, <€Š:6>]);
ƒe.ƒq("€·:ƒî_ƒï", <€·:Õ>, [<€Š:€—:*>, <€Š:i:*>]);
ƒe.ƒl("€·:ƒğ_‚r", <€·:t:2> * 5, [[<ore:Ö>, <ore:€ï>], [<ore:€ï>, <ore:Ö>]]);
ƒe.ƒl("€Š:€¹_Ï", <€Š:€¹_Ï>, [[<ore:€ÿ>], [<ore:€•>], [<ore:€•>]]);
ƒe.ƒl("€€:ƒñ", <€€:×>, [[<ore:oc:Ù>, <ore:Ú>, <ore:oc:Û>], [<ore:N>, ƒn, <ore:€¨>], [<ore:€²>, <€Š:K_L>, <ore:€²>]]);
ƒe.ƒl("€Š:T_\", <€Š:€â_\:1> * 6, [[<€Š:T> | <€Š:T:1> | <€Š:T:2>, <€Š:T> | <€Š:T:1> | <€Š:T:2>, <€Š:T> | <€Š:T:1> | <€Š:T:2>]]);
ƒe.ƒl("€Š:hay_€µ", <€Š:hay_€µ>, [[<€Š:¾>, <€Š:¾>, <€Š:¾>], [<€Š:¾>, <€Š:¾>, <€Š:¾>], [<€Š:¾>, <€Š:¾>, <€Š:¾>]]);
ƒe.ƒl("€Š:€Ó_\", <€Š:€â_\:3> * 6, [[<€Š:€Ó>, <€Š:€Ó>, <€Š:€Ó>]]);
ƒe.ƒq("€·:ƒ_ƒò", <€·:Ü>, [<€Š:„_':*>, <ore:İ>, <€Š:Ş:*>]);
ƒe.ƒl("€Š:ß_à_box", <€Š:ß_à_box>, [[<€Š:à_á>], [<ore:İ>], [<€Š:à_á>]]);
ƒe.ƒl("€Š:ƒ‡_€Ñ", <€Š:€Ñ:8>, [[<€Š:€—:7>, <€Š:€—:7>, <€Š:€—:7>], [<€Š:€—:7>, <€Š:€—:7>, <€Š:€—:7>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€Š:æ_ƒ“_€×_€ß_€à", <€Š:€×_€ß_€à:3> * 8, [[<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <ore:m>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>]]);
ƒe.ƒl("€·:¥_€¹", <€·:¥_€¹>, [[ƒn, <ore:€ÿ>, <ore:€ÿ>], [ƒn, ƒn, <ore:€ÿ>], [<ore:€•>, <ore:€ÿ>, <ore:€ÿ>]]);
ƒe.ƒl("€€:ƒó", <€€:â>, [[<ore:€¨>, <€Š:ã_ä>, <ore:€¨>], [<€Š:ã_ä>, <ore:oc:€…>, <ore:>], [<ore:€¨>, <€Š:ã_ä>, <ore:€¨>]]);
ƒe.ƒq("€·:ƒœ_‚¬_5_ƒ¬", <€·::4> * 9, [<€·::5>]);
ƒe.ƒl("€Š:·", <€Š:·>, [[<ore:€²>, ƒn, <ore:€²>], [<ore:€²>, <ore:€²>, <ore:€²>]]);
ƒe.ƒq("€·:ƒœ_€Ó_4_ƒ¬", <€·::3> * 9, [<€·::4>]);
ƒe.ƒl("€Š:€Ğ", <€Š:€Ğ>, [[<ore:€ï>, <ore:€ï>, <ore:€ï>], [<ore:€ï>, ƒn, <ore:€ï>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒl("€Š:ƒ‡_€×_€Ø", <€Š:€×_€Ø:7> * 8, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:j>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
ƒe.ƒl("€Š:€’", <€Š:€’> * 16, [[<ore:€²>, ƒn, <ore:€²>], [<ore:€²>, <ore:€•>, <ore:€²>], [<ore:€²>, ƒn, <ore:€²>]]);
ƒe.ƒl("€Š:ƒ†_€×_€ß_€à", <€Š:€×_€ß_€à:5> * 8, [[<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <ore:Æ>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>]]);
ƒe.ƒl("€É:ƒ€_ƒô_€ò_oak", <€É:ƒ€>.ƒ‚({è: "€ò_oak"}), [[<€Š:€Ã:5>, <€Š:€Ã:5>, <€Š:€Ã:5>], [ƒn, <ore:İ>, ƒn], [<€Š:€Ã:5>, <€Š:€Ã:5>, <€Š:€Ã:5>]]);
ƒe.ƒq("€€:ƒõ", <€€:‚Ê>.ƒ‚({ƒö: 1 as ƒ£, ƒ÷: 0 as ƒ£, ƒø: 0 as ƒ£, ƒù: 0 as ƒ£, ƒú: 0 as ƒ£, ƒû: 0 as ƒ£, ƒü: [], ƒı: 0, ƒş: []}), [<€€:‚Ê>, <€Š:ã_ä>]);
ƒe.ƒq("€€:ƒÿ", <€€:‚Ê>.ƒ‚({ƒö: 4 as ƒ£, ƒ÷: 0 as ƒ£, ƒø: 0 as ƒ£, ƒù: 0 as ƒ£, ƒú: 0 as ƒ£, ƒû: 0 as ƒ£, ƒü: [], ƒı: 0, ƒş: []}), [<€€:‚Ê>, <€Š:ã>]);
ƒe.ƒl("€Š:€¹_€ä", <€Š:€¹_€ä>, [[<ore:€ÿ>], [<ore:€ÿ>], [<ore:€•>]]);
ƒe.ƒl("€Š:€_€Ñ", <€Š:€Ñ:11>, [[<€Š:€—:4>, <€Š:€—:4>, <€Š:€—:4>], [<€Š:€—:4>, <€Š:€—:4>, <€Š:€—:4>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€·:B_„ ", <€·:B:2>, [[<ore:€ÿ>, <€Š:æ_ç_¸_¹:*>, <ore:€ÿ>], [<ore:€ÿ>, <€·:B:1>, <ore:€ÿ>], [<ore:€ÿ>, <€Š:æ_ç_¸_¹:*>, <ore:€ÿ>]]);
ƒe.ƒl("€Š:red_bed", <€Š:bed:14>, [[<€Š:€—:14>, <€Š:€—:14>, <€Š:€—:14>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒl("€Š:€ò_oak_€Á", <€Š:€ò_oak_€Á> * 3, [[<€Š:€Ã:5>, <€Š:€£>, <€Š:€Ã:5>], [<€Š:€Ã:5>, <€Š:€£>, <€Š:€Ã:5>]]);
ƒe.ƒq("€€:„", <€€:è:28> * 9, [<€€:¯>]);
ƒe.ƒl("€Š:€‘_Ï", <€Š:€‘_Ï>, [[<ore:€”>], [<ore:€•>], [<ore:€•>]]);
ƒe.ƒl("€É:„_'", <€É:é>, [[<ore:ê>, <ore:ê>, <ore:ê>], [<ore:ê>, ƒn, <ore:ê>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_K", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_K"}), [[<ore:€”>, <ore:€”>, <ore:€”>], [<ore:€”>, <€Š:K_L:*>, <ore:€”>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒq("€€:„", ƒn, []);
ƒe.ƒq("€€:„", <€€:‚Ê>.ƒ‚({ƒö: 0 as ƒ£, ƒ÷: 0 as ƒ£, ƒø: 1 as ƒ£, ƒù: 0 as ƒ£, ƒú: 0 as ƒ£, ƒû: 0 as ƒ£, ƒü: [], ƒı: 0, ƒş: []}), [<€€:‚Ê>, <€Š:€‹_€µ>]);
ƒe.ƒq("€€:„", <€€:‚Ê>.ƒ‚({ƒö: 0 as ƒ£, ƒ÷: 0 as ƒ£, ƒø: 1 as ƒ£, ƒù: 0 as ƒ£, ƒú: 0 as ƒ£, ƒû: 0 as ƒ£, ƒü: [], ƒı: 0, ƒş: []}), [<€€:‚Ê>, <€Š:_€µ>]);
ƒe.ƒq("€€:„", <€€:‚Ê>.ƒ‚({ƒö: 0 as ƒ£, ƒ÷: 0 as ƒ£, ƒø: 1 as ƒ£, ƒù: 0 as ƒ£, ƒú: 0 as ƒ£, ƒû: 0 as ƒ£, ƒü: [], ƒı: 0, ƒş: []}), [<€€:‚Ê>, <€Š:€ú_€µ>]);
ƒe.ƒq("€€:„", <€€:‚Ê>.ƒ‚({ƒö: 0 as ƒ£, ƒ÷: 0 as ƒ£, ƒø: 1 as ƒ£, ƒù: 0 as ƒ£, ƒú: 0 as ƒ£, ƒû: 0 as ƒ£, ƒü: [], ƒı: 0, ƒş: []}), [<€€:‚Ê>, <€Š:€¹_€µ>]);
ƒe.ƒl("€·:„_can_„	", <€·:ë>, [[<ore:€â>, <ore:€â>, <ore:€â>], [<ore:€Ó>, <€Š:L:*>, <ore:€Ó>], [<ore:€Ó>, <ore:€Ó>, <ore:€Ó>]]);
ƒe.ƒl("€É:€Ê_q_€‹", <€É:€Ê_q:1>, [[<ore:€•>, <ore:€•>, <ore:€•>], [<€Š:€‹_V>, <€É:€Ê_€Ë>, <€Š:€‹_V>], [<ore:€•>, <ore:€•>, <ore:€•>]]);
ƒe.ƒl("€Š:red_€×_€ß_€à", <€Š:€×_€ß_€à:14> * 8, [[<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <ore:€˜>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>]]);
ƒe.ƒl("€É:ƒ€_ƒè_€À", <€É:ƒ€:3>.ƒ‚({è: "€À"}) * 2, [[<€Š:A_\:2>, <ore:İ>, <€Š:A_\:2>], [<€Š:A_\:2>, <€Š:A_\:2>, <€Š:A_\:2>], [<€Š:A_\:2>, <ore:İ>, <€Š:A_\:2>]]);
ƒe.ƒl("€Š:¤_€µ", <€Š:¤_€µ>, [[<€Š:¤>, <€Š:¤>, <€Š:¤>], [<€Š:¤>, <€Š:¤>, <€Š:¤>], [<€Š:¤>, <€Š:¤>, <€Š:¤>]]);
ƒe.ƒq("€É:È_v", <€É:È>, [<€É:v_key>, <€Š:€â_H>]);
ƒe.ƒq("€Š:_", <€Š:_> * 2, [<€Š:_rod>]);
ƒe.ƒq("€Š:ƒ“_3_", <€Š:3_:11> * 8, [<ore:J>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:6>, <€Š:6>, <€Š:6>, <€Š:6>]);
ƒe.ƒl("€Š:ƒ“_€×_€Ø", <€Š:€×_€Ø:11> * 8, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:J>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
ƒe.ƒl("€Š:€™_€š_ƒr_red_€¡", <€Š:€™_€š>, [[ƒn, <€Š:€œ_€™>, ƒn], [<€Š:€>, <€Š:€_€Ÿ>, <€Š:red_€¡>], [ƒn, <€Š:€¢>, ƒn]]);
ƒe.ƒl("€Š:€‹_,", <€Š:€‹_,>, [[<ore:€²>, ƒn, <ore:€²>], [<ore:€²>, ƒn, <ore:€²>]]);
ƒe.ƒq("€Š:„
", ƒn, []);
ƒe.ƒl("€Š:€¹_€ë", <€Š:€¹_€ë>, [[<ore:€ÿ>, ƒn, <ore:€ÿ>], [<ore:€ÿ>, <ore:€ÿ>, <ore:€ÿ>], [<ore:€ÿ>, <ore:€ÿ>, <ore:€ÿ>]]);
ƒe.ƒl("€Š:€‘_€ë", <€Š:€‘_€ë>, [[<ore:€”>, ƒn, <ore:€”>], [<ore:€”>, <ore:€”>, <ore:€”>], [<ore:€”>, <ore:€”>, <ore:€”>]]);
ƒe.ƒl("€€:„", <€€:ì>, [[<ore:€²>, <ore:oc:€®>, <ore:€²>], [<€Š:€‹_>, <ore:€Ğ>, <€Š:€‹_>], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒl("€Š:„_red_T", <€Š:red_T:2> * 4, [[<€Š:red_T>, <€Š:red_T>], [<€Š:red_T>, <€Š:red_T>]]);
ƒe.ƒl("€·:ƒ’_€Œ", <€·:€ñ:1>, [[<ore:í>], [<ore:€•>], [<ore:€ÿ>]]);
ƒe.ƒq("€·:ƒ¯_2_€»", <€·:0:5> * 4, [<€·:2>, <€·:€»>, <ore:€–>]);
ƒe.ƒq("€Š:ƒ„_bed_ƒr_ƒ…_bed", <€Š:bed:2>, [<€Š:bed>, <ore:€Ö>]);
ƒe.ƒl("€·:ƒ_„", <€·:€Ä:8>, [[<€·:€Æ:3>, <€Š:€ª_Í:*>, <€·:€Æ:3>], [<€Š:€Ç_î:*>, <€·:€¸:1>, <€Š:€Ç_î:*>], [<€·:€Æ:3>, <€·:€¸:2>, <€·:€Æ:3>]]);
ƒe.ƒq("€Š:„", ƒn, []);
ƒe.ƒl("€€:„", <€€:ï>, [[<ore:€²>, <€Š:ğ>, <ore:€²>], [<ore:N>, <ore:oc:€…>, <ore:N>], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒl("€·:€Ê_„_„", <€·:€¸:16>, [[<€·:€¸:10>, <€·:€¸:17>, <€·:€¸:10>], [<€·:€¸:17>, <€·:€¸:15>, <€·:€¸:17>], [<€·:€¸:10>, <€·:€¸:17>, <€·:€¸:10>]]);
ƒe.ƒq("€Š:ƒ©_dye_ƒr_red_€", <€Š:dye:14> * 2, [<ore:€˜>, <ore:+>]);
ƒe.ƒl("€Š:€è_", <€Š:€è_> * 4, [[<€Š:€Ã:1>, ƒn, ƒn], [<€Š:€Ã:1>, <€Š:€Ã:1>, ƒn], [<€Š:€Ã:1>, <€Š:€Ã:1>, <€Š:€Ã:1>]]);
ƒe.ƒl("€É:ƒ€_ƒ_oak", <€É:ƒ€:4>.ƒ‚({è: "oak"}) * 4, [[<ore:İ>, <€Š:A_\>, <ore:İ>], [<€Š:A_\>, <€Š:A_\>, <€Š:A_\>], [<ore:İ>, <€Š:A_\>, <ore:İ>]]);
ƒe.ƒl("€Š:ƒŒ_bed", <€Š:bed:15>, [[<€Š:€—:15>, <€Š:€—:15>, <€Š:€—:15>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒq("€€:„", ƒn, []);
ƒe.ƒq("€Š:æ_ƒ‡_dye_ƒr_„_„", <€Š:dye:7>, [<€Š:red_€:3>]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_"}), [[<€Š::*>, <€Š::*>, <€Š::*>], [<€Š::*>, <€Š:_€µ:*>, <€Š::*>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_K"}), <ore:€–>]]);
ƒe.ƒl("€€:„", <€€:ñ>, [[<ore:€ÿ>, <ore:oc:€…>, <ore:€ÿ>], [<€Š:€‹_>, <ore:€Ğ>, <€Š:€‹_>], [<ore:€ÿ>, <ore:oc:€³>, <ore:€ÿ>]]);
ƒe.ƒq("€Š:æ_ƒ‡_dye_ƒr_ƒ…_ƒÇ", <€Š:dye:7>, [<€Š:red_€:6>]);
ƒe.ƒq("€·:€Ø_ƒ®_„", <€·:/:1>, [<€·:/>, <€Š:_:*>]);
ƒe.ƒl("€Š:€È_€µ", <€Š:€È_€µ>, [[<€Š:€È>, <€Š:€È>], [<€Š:€È>, <€Š:€È>]]);
ƒe.ƒl("€·:ƒ¯_„", <€·:2> * 64, [[<€Š:€â_\>, <€Š:€â_\>, <€Š:€â_\>], [<ore:>, <ore:€–>, <ore:>], [<€Š:€â_\>, <€Š:€â_\>, <€Š:€â_\>]]);
ƒe.ƒl("€Š:€¢", <€Š:€¢> * 4, [[<ore:€ï>, ƒn, <ore:€ï>], [ƒn, <ore:€ï>, ƒn]]);
ƒe.ƒl("€Š:€½_to_€—", <€Š:€—>, [[<ore:€½>, <ore:€½>], [<ore:€½>, <ore:€½>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_€æ", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_€æ"}), [[<€Š:€æ_€ç:*>, <€Š:€æ_€ç:*>, <€Š:€æ_€ç:*>], [<€Š:€æ_€ç:*>, <€Š:€æ:*>, <€Š:€æ_€ç:*>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€Š:€¹", <€Š:€¹> * 9, [[<€Š:€¹_€µ>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_ƒÌ", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒÌ"}), [[<€Š:^_€µ:*>, <€Š:^_€µ:*>, <€Š:^_€µ:*>], [<€Š:^_€µ:*>, <€Š:end_rod:*>, <€Š:^_€µ:*>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€Š:ƒš_€×_€Ø_€Ù", <€Š:€×_€Ø_€Ù:13> * 16, [[<ore:ò>, <ore:ò>, <ore:ò>], [<ore:ò>, <ore:ò>, <ore:ò>]]);
ƒe.ƒq("€Š:ƒš_bed_ƒr_ƒ…_bed", <€Š:bed:13>, [<€Š:bed>, <ore:>]);
ƒe.ƒl("€·:S", <€·:S>, [[<€·:€Æ:3>, <€·:€Æ:3>, <€·:€Æ:3>], [<€·:ó>, <€·:€¸>, <€·:ó>]]);
ƒe.ƒl("€€:„", <€€:ô>, [[<ore:€²>, <ore:oc:€­>, <ore:€²>], [<ore:€”>, <ore:oc:€®>, <ore:€”>], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒq("€Š:ƒŒ_3_", <€Š:3_:15> * 8, [<ore:€Û>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:6>, <€Š:6>, <€Š:6>, <€Š:6>]);
ƒe.ƒl("€·:„", <€·:õ>, [[<€·:€Æ:3>, <€·:€Æ:3>, <€·:€Æ:3>], [<ore:€¾>, <€·:€¸>, <ore:€¾>], [<€·:€Æ:3>, <€·:€Æ:3>, <€·:€Æ:3>]]);
ƒe.ƒq("€Š:ß_3_", <€Š:3_:10> * 8, [<ore:>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:6>, <€Š:6>, <€Š:6>, <€Š:6>]);
ƒe.ƒl("€Š:ß_€Ñ", <€Š:€Ñ:5>, [[<€Š:€—:10>, <€Š:€—:10>, <€Š:€—:10>], [<€Š:€—:10>, <€Š:€—:10>, <€Š:€—:10>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€Š:ƒ†_P", <€Š:P:5> * 3, [[<€Š:€—:5>, <€Š:€—:5>]]);
ƒe.ƒl("€É:ƒ€_ƒô_€è", <€É:ƒ€>.ƒ‚({è: "€è"}), [[<€Š:€Ã:1>, <€Š:€Ã:1>, <€Š:€Ã:1>], [ƒn, <ore:İ>, ƒn], [<€Š:€Ã:1>, <€Š:€Ã:1>, <€Š:€Ã:1>]]);
ƒe.ƒl("€€:„", <€€:ö>, [[<ore:€”>, <ore:oc:€>, <ore:€”>], [<€Š:€‹_>, <ore:€Ğ>, <€Š:€‹_>], [<ore:€”>, <ore:oc:€³>, <ore:€”>]]);
ƒe.ƒq("€Š:„", ƒn, []);
ƒe.ƒl("€Š:€À_€Ã", <€Š:€Ã:2> * 4, [[<€Š:log:2>]]);
ƒe.ƒl("€Š:æ_ƒ‡_€×_€Ø_€Ù", <€Š:€×_€Ø_€Ù:8> * 16, [[<ore:÷>, <ore:÷>, <ore:÷>], [<ore:÷>, <ore:÷>, <ore:÷>]]);
ƒe.ƒl("€Š:ø_ù", <€Š:ø_ù> * 2, [[ƒn, <ore:ú>, ƒn], [<ore:ú>, <€Š:ù>, <ore:ú>], [ƒn, <ore:ú>, ƒn]]);
ƒe.ƒl("€Š:tnt_·", <€Š:tnt_·>, [[<€Š:tnt>], [<€Š:·>]]);
ƒe.ƒl("€Š:ƒ…_€×_€Ø", <€Š:€×_€Ø> * 8, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:€Ü>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
ƒe.ƒl("€Š:red_P", <€Š:P:14> * 3, [[<€Š:€—:14>, <€Š:€—:14>]]);
ƒe.ƒl("€Š:._€Ã", <€Š:€Ã:4> * 4, [[<€Š:û>]]);
ƒe.ƒl("€Š:A_hoe", <€Š:A_hoe>, [[<ore:€ï>, <ore:€ï>], [ƒn, <ore:€•>], [ƒn, <ore:€•>]]);
ƒe.ƒl("€·:„_€â_adv", <€·:€¸:5> * 9, [[<€·:€¸:3>, <€·:€¸:3>, <€·:€¸:3>], [<€·:€¸:3>, <ore:ü>, <€·:€¸:3>], [<€·:€¸:3>, <€·:€¸:3>, <€·:€¸:3>]]);
ƒe.ƒq("€·:ƒœ_€Ó_7_ƒ¬", <€·::6> * 9, [<€·::7>]);
ƒe.ƒq("€Š:„", ƒn, []);
ƒe.ƒq("€·:€Ê_„", <€·:€¸:6>, [<€·:€¸:9>, <ore:€”>, <ore:€¾>]);
ƒe.ƒq("€Š:æ_ƒ‡_bed_ƒr_ƒ…_bed", <€Š:bed:8>, [<€Š:bed>, <ore:>]);
ƒe.ƒl("€Š:^_", <€Š:^_> * 4, [[<€Š:^_€µ>, ƒn, ƒn], [<€Š:^_€µ>, <€Š:^_€µ>, ƒn], [<€Š:^_€µ>, <€Š:^_€µ>, <€Š:^_€µ>]]);
ƒe.ƒq("€·:B_ƒA_256", <€·:B:1>, [<€·:B:1>]);
ƒe.ƒq("€·:B_ƒA_„", <€·:B:4>, [<€·:B:4>]);
ƒe.ƒq("€Š:ƒ“_€—", <€Š:€—:11>, [<ore:J>, <€Š:€—>]);
ƒe.ƒl("€·:ƒ‹_V_to_€µ", <€·:Ğ>, [[<€·:€¸:12>, <€·:€¸:12>, <€·:€¸:12>], [<€·:€¸:12>, <€·:€¸:12>, <€·:€¸:12>], [<€·:€¸:12>, <€·:€¸:12>, <€·:€¸:12>]]);
ƒe.ƒq("€·:ƒ´_gen", <€·:ı>, [<€·:ı:1>, <€·:ı:2>]);
ƒe.ƒl("€Š:½", <€Š:½>, [[<ore:ş>]]);
ƒe.ƒl("€É:ƒ€_ƒè_.", <€É:ƒ€:3>.ƒ‚({è: "."}) * 2, [[<€Š:A_\:4>, <ore:İ>, <€Š:A_\:4>], [<€Š:A_\:4>, <€Š:A_\:4>, <€Š:A_\:4>], [<€Š:A_\:4>, <ore:İ>, <€Š:A_\:4>]]);
ƒe.ƒl("€Š:9", <€Š:9>, [[<ore:€ï>, <ore:€ï>, <ore:€ï>], [<ore:€Ó>, <ore:€²>, <ore:€Ó>], [<ore:€Ó>, <ore:€–>, <ore:€Ó>]]);
ƒe.ƒl("€€:„", <€€:Q>, [[<ore:€²>, <ore:oc:‚ >, <ore:€²>], [<ore:€ƒ>, <ore:†>, <ore:€ƒ>], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒl("€Š:€ _bed", <€Š:bed:12>, [[<€Š:€—:12>, <€Š:€—:12>, <€Š:€—:12>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒl("€Š:ƒ“_bed", <€Š:bed:11>, [[<€Š:€—:11>, <€Š:€—:11>, <€Š:€—:11>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒl("€Š:æ_ƒ‡_P", <€Š:P:8> * 3, [[<€Š:€—:8>, <€Š:€—:8>]]);
ƒe.ƒl("€Š:ƒ…_€Ñ", <€Š:€Ñ:15>, [[<€Š:€—>, <€Š:€—>, <€Š:€—>], [<€Š:€—>, <€Š:€—>, <€Š:€—>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€Š:„_T", <€Š:T:2> * 4, [[<€Š:T>, <€Š:T>], [<€Š:T>, <€Š:T>]]);
ƒe.ƒl("€Š:end_‚", <€Š:end_‚>, [[<ore:>, <ore:>, <ore:>], [<ore:>, <€Š:€ª_eye>, <ore:>], [<ore:>, <€Š:‚_‚>, <ore:>]]);
ƒe.ƒl("€Š:æ_ƒ‡_€Ñ", <€Š:€Ñ:7>, [[<€Š:€—:8>, <€Š:€—:8>, <€Š:€—:8>], [<€Š:€—:8>, <€Š:€—:8>, <€Š:€—:8>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€Š:€â_€ı", <€Š:€â_€ı>, [[<ore:€Ó>, <ore:€Ó>, <ore:€Ó>], [ƒn, <ore:€•>, ƒn], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€·:€á_€‹", <€·:€á_€‹> * 4, [[ƒn, <€Š:€‹_€ä:*>, ƒn], [<€Š:€‹_€ä:*>, <ore:€²>, <€Š:€‹_€ä:*>], [<ore:€²>, <ore:‚>, <ore:€²>]]);
ƒe.ƒl("€Š:A_axe", <€Š:A_axe>, [[<ore:€ï>, <ore:€ï>], [<ore:€ï>, <ore:€•>], [ƒn, <ore:€•>]]);
ƒe.ƒl("€Š:‚", <€Š:‚>, [[<ore:€Ó>, <ore:€Ó>, <ore:€Ó>], [<ore:€Ó>, <€Š:bow>, <ore:€Ó>], [<ore:€Ó>, <ore:€–>, <ore:€Ó>]]);
ƒe.ƒl("€·:ƒœ_5_1", <€·:®:1>, [[<€·:®>, <€·:®>, <€·:®>], [<€·:®>, <€·:®>, <€·:®>], [<€·:®>, <€·:®>, <€·:®>]]);
ƒe.ƒl("€Š:ƒˆ_€×_€Ø_€Ù", <€Š:€×_€Ø_€Ù:9> * 16, [[<ore:‚>, <ore:‚>, <ore:‚>], [<ore:‚>, <ore:‚>, <ore:‚>]]);
ƒe.ƒl("€É:ƒ€_ƒÄ_.", <€É:ƒ€:2>.ƒ‚({è: "."}) * 4, [[<ore:İ>, <€Š:€Ã:4>, <ore:İ>], [<€Š:€Ã:4>, <€Š:€Ã:4>, <€Š:€Ã:4>], [<ore:İ>, <€Š:€Ã:4>, <ore:İ>]]);
ƒe.ƒl("€Š:‚_‚	", <€Š:‚_‚	>, [[<ore:>, <ore:>, <ore:>], [<€Š:Y>, <€Š:Y>, <€Š:Y>], [<€Š:A_\> | <€Š:A_\:1> | <€Š:A_\:2> | <€Š:A_\:3> | <€Š:A_\:4> | <€Š:A_\:5>, <€Š:A_\> | <€Š:A_\:1> | <€Š:A_\:2> | <€Š:A_\:3> | <€Š:A_\:4> | <€Š:A_\:5>, <€Š:A_\> | <€Š:A_\:1> | <€Š:A_\:2> | <€Š:A_\:3> | <€Š:A_\:4> | <€Š:A_\:5>]]);
ƒe.ƒl("€Š:Y_", <€Š:Y_> * 4, [[<€Š:Y_€µ> | <€Š:Y_€µ:1> | <€Š:Y_€µ:2>, ƒn, ƒn], [<€Š:Y_€µ> | <€Š:Y_€µ:1> | <€Š:Y_€µ:2>, <€Š:Y_€µ> | <€Š:Y_€µ:1> | <€Š:Y_€µ:2>, ƒn], [<€Š:Y_€µ> | <€Š:Y_€µ:1> | <€Š:Y_€µ:2>, <€Š:Y_€µ> | <€Š:Y_€µ:1> | <€Š:Y_€µ:2>, <€Š:Y_€µ> | <€Š:Y_€µ:1> | <€Š:Y_€µ:2>]]);
ƒe.ƒl("€Š:ƒ…_P", <€Š:P> * 3, [[<€Š:€—>, <€Š:€—>]]);
ƒe.ƒl("€Š:€è_€Ã", <€Š:€Ã:1> * 4, [[<€Š:log:1>]]);
ƒe.ƒq("€·:B_ƒA_16", <€·:B>, [<€·:B>]);
ƒe.ƒl("€Š:red_€×_€Ø", <€Š:€×_€Ø:14> * 8, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:€˜>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
ƒe.ƒl("€·:€Ø_ƒ®_ƒA", <€·:/:2> * 8, [[<€·:>, <€·:>, <€·:>], [<€·:>, <€·:€¸:5>, <€·:>], [<€·:>, <€·:>, <€·:>]]);
ƒe.ƒl("€Š:^_\", <€Š:^_\> * 6, [[<€Š:^_€µ>, <€Š:^_€µ>, <€Š:^_€µ>]]);
ƒe.ƒl("€Š:ƒš_P", <€Š:P:13> * 3, [[<€Š:€—:13>, <€Š:€—:13>]]);
ƒe.ƒq("€·:ƒœ_‚¬_2_ƒ¬", <€·::1> * 9, [<€·::2>]);
ƒe.ƒq("€·:„ _„!_„"_0", <€·:‚>, [<ore:>, <€·:‚:*>, <ore:>]);
ƒe.ƒl("€·:‚", <€·:‚>, [[<€·:€Æ:3>, <€·:€¸>, <€·:€Æ:3>], [<€·:€Æ:3>, <€·:S>, <€·:€Æ:3>], [<€·:€Æ:3>, <€·:€¸>, <€·:€Æ:3>]]);
ƒe.ƒq("€·:„ _„!_„"_1", <€·:‚:1>, [<€Š:€ö:*>, <€·:‚:*>, <€Š:€ö:*>]);
ƒe.ƒl("€Š:‚_‚", <€Š:‚_‚> * 2, [[<ore:€²>], [<ore:€•>], [<ore:€ï>]]);
ƒe.ƒq("€Š:‚_€Ğ", <€Š:‚_€Ğ>, [<ore:İ>, <€Š:‚_‚>]);
ƒe.ƒq("€·:„ _„!_„"_4", <€·:‚:4>, [<ore:€ƒ>, <€·:‚:*>, <ore:€ƒ>]);
ƒe.ƒl("€Š:ğ", <€Š:ğ>, [[<ore:€²>, ƒn, <ore:€²>], [<ore:€²>, <ore:İ>, <ore:€²>], [ƒn, <ore:€²>, ƒn]]);
ƒe.ƒq("€·:„ _„!_„"_5", <€·:‚:5>, [<€Š:€İ>, <€·:‚:*>, <€Š:€İ:1>]);
ƒe.ƒl("€€:„#", <€€:‚:20>, [[<ore:€¨>, <ore:oc:€®>, <ore:€¨>], [<€Š:€‹_>, <ore:oc:>, <€Š:€‹_>], [<ore:€¨>, <ore:oc:€³>, <ore:€¨>]]);
ƒe.ƒq("€·:„ _„!_„"_2", <€·:‚:2>, [<ore:>, <€·:‚:*>, <ore:~>]);
ƒe.ƒq("€·:„ _„!_„"_3", <€·:‚:3>, [<€Š:€ê:*>, <€·:‚:*>, <€Š:€ê:*>]);
ƒe.ƒl("€·:€á_€¹", <€·:€á_€¹> * 4, [[ƒn, <€Š:€¹_€ä:*>, ƒn], [<€Š:€¹_€ä:*>, <ore:€ÿ>, <€Š:€¹_€ä:*>], [<ore:€ÿ>, <ore:‚>, <ore:€ÿ>]]);
ƒe.ƒl("€É:ƒ€_ƒè_€è", <€É:ƒ€:3>.ƒ‚({è: "€è"}) * 2, [[<€Š:A_\:1>, <ore:İ>, <€Š:A_\:1>], [<€Š:A_\:1>, <€Š:A_\:1>, <€Š:A_\:1>], [<€Š:A_\:1>, <ore:İ>, <€Š:A_\:1>]]);
ƒe.ƒq("€·:ƒ’_V", <€·:€ñ>, []);
ƒe.ƒq("€·:ƒœ_6_ƒ¬", <€Š:6> * 9, [<€·:‚>]);
ƒe.ƒl("€·:©_1", <€·:©:1>, [[ƒn, <€·:©>, ƒn], [<€Š:€‹_€µ>, <€Š:_€µ>, <€Š:€‹_€µ>], [ƒn, <€·:©>, ƒn]]);
ƒe.ƒl("€Š:ƒš_€Ñ", <€Š:€Ñ:2>, [[<€Š:€—:13>, <€Š:€—:13>, <€Š:€—:13>], [<€Š:€—:13>, <€Š:€—:13>, <€Š:€—:13>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€·:©_2", <€·:©:2>, [[ƒn, <€·:©:1>, ƒn], [<€Š:_€µ>, <€Š:€¹_€µ>, <€Š:_€µ>], [ƒn, <€·:©:1>, ƒn]]);
ƒe.ƒl("€·:©_3", <€·:©:3>, [[ƒn, <€·:©:2>, ƒn], [<€Š:€¹_€µ>, <€Š:€ú_€µ>, <€Š:€¹_€µ>], [ƒn, <€·:©:2>, ƒn]]);
ƒe.ƒl("€€:„$", <€€:‚:17>, [[<ore:€‡>, <ore:oc:€>, <ore:€‡>], [<ore:oc:>, <ore:oc:‚>, <ore:oc:‚>], [<ore:€‡>, <ore:oc:€>, <ore:€‡>]]);
ƒe.ƒl("€·:©_4", <€·:©:4>, [[ƒn, <€·:©:3>, ƒn], [<€Š:€ú_€µ>, <€Š:__€>, <€Š:€ú_€µ>], [ƒn, <€·:©:3>, ƒn]]);
ƒe.ƒl("€É:€Ê_q_€¹", <€É:€Ê_q:3>, [[<ore:€•>, <ore:€•>, <ore:€•>], [<€Š:€¹>, <€É:€Ê_€Ë>, <€Š:€¹>], [<ore:€•>, <ore:€•>, <ore:€•>]]);
ƒe.ƒl("€€:„%", <€€:‚:19>, [[<ore:€¨>, <ore:oc:‚>, <ore:€¨>], [<ore:oc:‚>, <ore:oc:€>, <ore:oc:>], [<ore:€¨>, <ore:oc:€³>, <ore:€¨>]]);
ƒe.ƒl("€Š:ƒ„_€×_€Ø", <€Š:€×_€Ø:2> * 8, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:€Ö>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
ƒe.ƒl("€Š:€ª_€Ğ", <€Š:€ª_€Ğ>, [[<€Š:€¨>, <€Š:€¨>, <€Š:€¨>], [<€Š:€¨>, <€Š:€ª_eye>, <€Š:€¨>], [<€Š:€¨>, <€Š:€¨>, <€Š:€¨>]]);
ƒe.ƒl("€·:ƒœ_‚¬_1", <€·::1>, [[<€·:>, <€·:>, <€·:>], [<€·:>, <€·:>, <€·:>], [<€·:>, <€·:>, <€·:>]]);
ƒe.ƒl("€Š:_€Œ", <€Š:_€Œ> * 9, [[<ore:€”>]]);
ƒe.ƒl("€·:ƒœ_‚¬_2", <€·::2>, [[<€·::1>, <€·::1>, <€·::1>], [<€·::1>, <€·::1>, <€·::1>], [<€·::1>, <€·::1>, <€·::1>]]);
ƒe.ƒl("€·:©_0", <€·:©>, [[ƒn, <€·:€¸:4>, ƒn], [<€·:€¸:4>, <€Š:€‹_€µ>, <€·:€¸:4>], [ƒn, <€·:€¸:4>, ƒn]]);
ƒe.ƒl("€Š:€‹_", <€Š:€‹_> * 16, [[<ore:€²>, <ore:€²>, <ore:€²>], [<ore:€²>, <ore:€²>, <ore:€²>]]);
ƒe.ƒl("€·:ƒœ_‚¬_3", <€·::3>, [[<€·::2>, <€·::2>, <€·::2>], [<€·::2>, <€·::2>, <€·::2>], [<€·::2>, <€·::2>, <€·::2>]]);
ƒe.ƒl("€€:„&", <€€:‚:10>, [[<ore:oc:€…>, <€Š:€‹_€Œ>, <ore:oc:€…>], [ƒn, <ore:oc:€³>, ƒn]]);
ƒe.ƒl("€Š:u_‚", <€Š:u_‚>, [[<€Š:u>, <€Š:u>, <€Š:u>], [<€Š:u>, <€Š:u>, <€Š:u>], [ƒn, <€Š:€¢>, ƒn]]);
ƒe.ƒl("€·:ƒœ_‚¬_4", <€·::4>, [[<€·::3>, <€·::3>, <€·::3>], [<€·::3>, <€·::3>, <€·::3>], [<€·::3>, <€·::3>, <€·::3>]]);
ƒe.ƒl("€€:„'", <€€:‚:11>, [[<ore:oc:€…>, <ore:oc:€…>, <ore:oc:€…>], [<ore:oc:€>, <ore:oc:€³>, <ore:oc:€>]]);
ƒe.ƒl("€·:ƒœ_‚¬_5", <€·::5>, [[<€·::4>, <€·::4>, <€·::4>], [<€·::4>, <€·::4>, <€·::4>], [<€·::4>, <€·::4>, <€·::4>]]);
ƒe.ƒl("€€:„(", <€€:‚:8>, [[<ore:oc:€>, <€Š:€‹_€Œ>, <ore:oc:€>], [ƒn, <ore:oc:€³>, ƒn]]);
ƒe.ƒl("€Š:€‹_‚", <€Š:€‹_‚>, [[<ore:€²>, <ore:€²>], [<ore:€²>, <ore:€²>]]);
ƒe.ƒl("€€:„)", <€€:‚:9>, [[<ore:oc:€>, <ore:oc:€…>, <ore:oc:€>], [ƒn, <ore:oc:€³>, ƒn]]);
ƒe.ƒl("€€:„*", <€€:‚>, [[<ore:€”>, <€Š:‚>, <ore:€”>], [<€Š:€ª_eye>, <ore:oc:€>, <€Š:€ª_eye>], [<ore:€”>, <ore:oc:€³>, <ore:€”>]]);
ƒe.ƒl("€€:„+", <€€:‚:15>, [[<ore:€ÿ>, <ore:oc:‚>, <ore:€ÿ>], [<ore:oc:€…>, <ore:oc:‚ >, <ore:oc:€…>], [<ore:€¨>, <ore:oc:€³>, <ore:€¨>]]);
ƒe.ƒl("€€:„,", <€€:è:28> * 16, [[<ore:6>, <€Š:>, <ore:6>], [<€Š:>, <€Š:€İ:1>, <€Š:>], [<ore:6>, <€Š:b_L>, <ore:6>]]);
ƒe.ƒl("€€:„-", <€€:‚:16>, [[<ore:€ƒ>, <ore:oc:€®>, <ore:€ƒ>], [<ore:oc:€ˆ>, <ore:oc:‚!>, <ore:oc:‚">], [<ore:€ƒ>, <ore:oc:€®>, <ore:€ƒ>]]);
ƒe.ƒl("€€:„.", <€€:‚:13>, [[<ore:€²>, <ore:oc:‚#>, <ore:€²>], [<ore:oc:€®>, <ore:oc:‚!>, <ore:oc:€®>], [<ore:€¨>, <ore:oc:€³>, <ore:€¨>]]);
ƒe.ƒl("€€:„/", <€€:‚:14>, [[<ore:€”>, <ore:oc:‚$>, <ore:€”>], [<ore:oc:€>, <ore:oc:‚>, <ore:oc:€>], [<ore:€¨>, <ore:oc:€³>, <ore:€¨>]]);
ƒe.ƒl("€·:ƒœ_5", <€·:®>, [[<€Š:5>, <€Š:5>, <€Š:5>], [<€Š:5>, <€Š:5>, <€Š:5>], [<€Š:5>, <€Š:5>, <€Š:5>]]);
ƒe.ƒl("€€:„0", <€€:è:24>, [[<ore:oc:‚%>, <€Š:‚>, <ore:oc:‚%>], [<ore:oc:€>, <ore:oc:‚&>, <ore:oc:€>], [<ore:oc:‚%>, <ore:oc:‚ >, <ore:oc:‚%>]]);
ƒe.ƒl("€É:‚'", <€É:‚'>, [[<€Š:€â>, <€Š:€â>, <€Š:€â>], [<€Š:W>, <ore:€Í>, <€Š:W>], [<€Š:€â>, <ore:€ÿ>, <€Š:€â>]]);
ƒe.ƒl("€€:„1", <€€:è:23>, [[<ore:oc:‚%>, <€Š:‚>, <ore:oc:‚%>], [<ore:oc:€®>, <ore:oc:‚)>, <ore:oc:€®>], [<ore:oc:‚%>, <ore:oc:‚>, <ore:oc:‚%>]]);
ƒe.ƒq("€€:„2", <€€:è:27>, [<ore:€Ş>, <ore:€Ö>, <ore:+>, <ore:€Û>, <ore:oc:‚+>]);
ƒe.ƒl("€€:„3", <€€:è:26>, [[<€Š:€‹_€Œ>, <€Š:‚>, <€Š:€‹_€Œ>], [<ore:oc:‚ >, <€Š:L>, <ore:oc:‚ >], [<€Š:€‹_€Œ>, <ore:oc:€³>, <€Š:€‹_€Œ>]]);
ƒe.ƒq("€Š:ƒ„_dye_ƒr_‚k_red_ƒ·", <€Š:dye:13> * 3, [<ore:J>, <ore:€˜>, <ore:~>]);
ƒe.ƒl("€Š:€‹_€÷", <€Š:€‹_€÷>, [[<ore:€²>, <ore:€²>, <ore:€²>], [<ore:€²>, ƒn, <ore:€²>]]);
ƒe.ƒl("€Š:€¹_axe", <€Š:€¹_axe>, [[<ore:€ÿ>, <ore:€ÿ>], [<ore:€ÿ>, <ore:€•>], [ƒn, <ore:€•>]]);
ƒe.ƒl("€Š:ƒ“_€×_€ß_€à", <€Š:€×_€ß_€à:11> * 8, [[<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <ore:J>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>]]);
ƒe.ƒl("€Š:‚,", <€Š:‚,>, [[<€Š:‚,_‚->, <€Š:‚,_‚->], [<€Š:‚,_‚->, <€Š:‚,_‚->]]);
ƒe.ƒq("€Š:ƒ†_bed_ƒr_ƒ…_bed", <€Š:bed:5>, [<€Š:bed>, <ore:Æ>]);
ƒe.ƒq("€·:_‚", <€·:€¸>, [<€·:ó:*>, <ore:€–>, <ore:€–>, <ore:€–>, <ore:€–>]);
ƒe.ƒl("€€:„4", <€€:‚:7>, [[<ore:oc:€®>, <ore:oc:€>, <ore:oc:€®>], [ƒn, <ore:oc:€³>, ƒn]]);
ƒe.ƒl("€Š:„5_ƒÔ", <€Š:€â:4> * 4, [[<ore:‚/>, <ore:‚/>], [<ore:‚/>, <ore:‚/>]]);
ƒe.ƒl("€€:„6", <€€:‚:5>, [[<ore:€‡>, <€Š:>, <ore:€‡>], [<ore:oc:€…>, <ore:oc:Ù>, ƒn], [<ore:€‡>, <ore:oc:€³>, <ore:€‡>]]);
ƒe.ƒl("€€:„7", <€€:‚:6>, [[<ore:oc:€®>, <€Š:€‹_€Œ>, <ore:oc:€®>], [ƒn, <ore:oc:€³>, ƒn]]);
ƒe.ƒl("€Š:€â_\", <€Š:€â_\> * 6, [[<€Š:€â>, <€Š:€â>, <€Š:€â>]]);
ƒe.ƒl("€Š:ƒ†_bed", <€Š:bed:5>, [[<€Š:€—:5>, <€Š:€—:5>, <€Š:€—:5>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒl("€€:„8", <€€:€Ê:1>, [[<€Š:€‹_€Œ>, <ore:€ƒ>, <€Š:€‹_€Œ>], [<€Š:€‹_>, <ore:oc:Q>, <€Š:€‹_>], [<€Š:€‹_€Œ>, <ore:€ƒ>, <€Š:€‹_€Œ>]]);
ƒe.ƒl("€€:„9", <€€:‚>, [[<€Š:€‹_€Œ>, <€Š:>, <€Š:€‹_€Œ>], [<ore:oc:€®>, <ore:oc:Ù>, <ore:oc:€®>], [<€Š:€‹_€Œ>, <ore:oc:€>, <€Š:€‹_€Œ>]]);
ƒe.ƒl("€€:„:", <€€:€Ê>, [[<ore:€²>, <ore:€¯>, <ore:€²>], [<ore:oc:€®>, <€Š:8_9>, <ore:oc:€®>], [<ore:€²>, <ore:€¯>, <ore:€²>]]);
ƒe.ƒl("€€:„;", <€€:€Ê:3>, [[<€Š:€‹_€Œ>, <ore:oc:Q>, <€Š:€‹_€Œ>], [<ore:oc:Q>, <ore:€‡>, <ore:oc:Q>], [<€Š:€‹_€Œ>, <ore:oc:Q>, <€Š:€‹_€Œ>]]);
ƒe.ƒl("€€:„<", <€€:€Ê:2>, [[<€Š:€‹_€Œ>, <ore:oc:Q>, <€Š:€‹_€Œ>], [<€Š:€‹_>, <ore:€ƒ>, <€Š:€‹_>], [<€Š:€‹_€Œ>, <ore:oc:Q>, <€Š:€‹_€Œ>]]);
ƒe.ƒl("€·:©_5", <€·:©:5>, [[ƒn, <€·:©:4>, ƒn], [<€Š:__€>, <€Š:‚2_Ì>, <€Š:__€>], [ƒn, <€·:©:4>, ƒn]]);
ƒe.ƒl("€€:„=", <€€:‚:3>, [[<€Š:€‹_€Œ>, <€Š:>, <€Š:€‹_€Œ>], [<ore:oc:€®>, <ore:oc:Ù>, ƒn], [<€Š:€‹_€Œ>, <ore:oc:€³>, <€Š:€‹_€Œ>]]);
ƒe.ƒl("€€:„>", <€€:€Ê:5>, [[<ore:€²>, <ore:oc:€®>, <ore:€²>], [<ore:N>, <ore:€Ğ>, ƒn], [<ore:€²>, <ore:oc:€†>, <ore:€²>]]);
ƒe.ƒl("€·:©_6", <€·:©:6>, [[ƒn, <€·:©:5>, ƒn], [<€Š:‚2_Ì>, <€Š:‚3>, <€Š:‚2_Ì>], [ƒn, <€·:©:5>, ƒn]]);
ƒe.ƒl("€€:„?", <€€:‚:4>, [[<ore:€ƒ>, <€Š:>, <ore:€ƒ>], [<ore:oc:€>, <ore:oc:Ù>, ƒn], [<ore:€ƒ>, <ore:oc:€³>, <ore:€ƒ>]]);
ƒe.ƒl("€€:„@", <€€:€Ê:4>, [[<ore:€”>, <ore:>, <ore:€”>], [<ore:oc:€…>, <€Š:€ª_eye>, <ore:oc:€…>], [<ore:€¨>, <ore:oc:€³>, <ore:€¨>]]);
ƒe.ƒl("€·:©_7", <€·:©:7>, [[ƒn, <€·:©:6>, ƒn], [<€Š:‚3>, <€Š:€Ç_î>, <€Š:‚3>], [ƒn, <€·:©:6>, ƒn]]);
ƒe.ƒl("€€:„A", <€€:‚:1>, [[<ore:€ƒ>, <€Š:>, <ore:€ƒ>], [<ore:oc:€>, <ore:oc:Ù>, <ore:oc:€>], [<ore:€ƒ>, <ore:oc:€>, <ore:€ƒ>]]);
ƒe.ƒl("€·:©_8", <€·:©:8>, [[ƒn, <€·:©:7>, ƒn], [<€Š:€Ç_î>, <€Š:€‹_V>, <€Š:€Ç_î>], [ƒn, <€·:©:7>, ƒn]]);
ƒe.ƒl("€€:„B", <€€:‚:2>, [[<ore:€‡>, <€Š:>, <ore:€‡>], [<ore:oc:€…>, <ore:oc:Ù>, <ore:oc:€…>], [<ore:€‡>, <ore:oc:€>, <ore:€‡>]]);
ƒe.ƒl("€€:„C", <€€:€Ê:6>, [[<ore:€²>, <ore:oc:€>, <ore:€²>], [<ore:N>, <ore:€Ğ>, ƒn], [<ore:€²>, <ore:oc:€†>, <ore:€²>]]);
ƒe.ƒl("€Š:U_", <€Š:U_> * 4, [[<€Š:€Ã:3>, ƒn, ƒn], [<€Š:€Ã:3>, <€Š:€Ã:3>, ƒn], [<€Š:€Ã:3>, <€Š:€Ã:3>, <€Š:€Ã:3>]]);
ƒe.ƒq("€·:ƒœ_(_2_ƒ¬", <€·:):1> * 9, [<€·:):2>]);
ƒe.ƒl("€É:
_oak", <€É:
> * 4, [[<ore:€•>, <€Š:€Ã>, <ore:€•>], [<€Š:€Ã>, <€Š:€Ã>, <€Š:€Ã>], [<ore:€•>, <€Š:€Ã>, <ore:€•>]]);
ƒe.ƒl("€·:ƒÛ_V_to_€µ", <€·:Ğ:2>, [[<€·:€¸:17>, <€·:€¸:17>, <€·:€¸:17>], [<€·:€¸:17>, <€·:€¸:17>, <€·:€¸:17>], [<€·:€¸:17>, <€·:€¸:17>, <€·:€¸:17>]]);
ƒe.ƒq("€Š:ƒ„_dye_ƒr_„D", <€Š:dye:13> * 2, [<€Š:”_•:1>]);
ƒe.ƒl("€·:‚4", <€·:‚4:1>, [[<€·:>, <€·:>, <€·:>], [<€·:>, ƒn, <€·:>], [<€·:>, <€·:>, <€·:>]]);
ƒe.ƒq("€Š:ß_bed_ƒr_ƒ…_bed", <€Š:bed:10>, [<€Š:bed>, <ore:>]);
ƒe.ƒq("€Š:ƒ†_€—", <€Š:€—:5>, [<ore:Æ>, <€Š:€—>]);
ƒe.ƒq("€Š:æ_ƒ‡_€—", <€Š:€—:8>, [<ore:>, <€Š:€—>]);
ƒe.ƒl("€Š:æ_ƒ“_P", <€Š:P:3> * 3, [[<€Š:€—:3>, <€Š:€—:3>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_ƒ¶", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒ¶"}), [[<€Š:dye:4>, <€Š:dye:4>, <€Š:dye:4>], [<€Š:dye:4>, <€Š:_€µ:*>, <€Š:dye:4>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€·:„E_€Ğ", <€·:‚5>, [[<€Š:€£:*>, <€Š:€£:*>, <€Š:€£:*>], [<€Š:€£:*>, <€Š:€Ğ:*>, <€Š:€£:*>], [<€Š:€£:*>, <€Š:€£:*>, <€Š:€£:*>]]);
ƒe.ƒq("€·:„_€Ğ", <€·:‚6>, [<ore:İ>, <€·:‚7>, <ore:€–>]);
ƒe.ƒq("€€:„F", <€€:‚8>, [<€€:‚8>, <€€:q>]);
ƒe.ƒl("€É:„G_v", <€É:‚9>, [[<€Š:€â>, <€Š:€â>, <€Š:€â>], [<€Š:9>, <ore:€Í>, <€Š:9>], [<€Š:€â>, <ore:€²>, <€Š:€â>]]);
ƒe.ƒq("€·:B_ƒA_ƒº", <€·:B:3>, [<€·:B:3>]);
ƒe.ƒl("€Š:æ_ƒ“_€Ñ", <€Š:€Ñ:12>, [[<€Š:€—:3>, <€Š:€—:3>, <€Š:€—:3>], [<€Š:€—:3>, <€Š:€—:3>, <€Š:€—:3>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€·:„H_„!", <€·:„I:1>, [[<ore:€Û>, <ore:€ÿ>, <ore:€Û>], [<€·:ª>.ƒ‚({ƒ : {id: "€Š:„H"}, No_ƒ¥: 1 as ƒ£}), <€·:„I>, <€Š:€ª_Í:*>], [<ore:€Û>, <ore:€ÿ>, <ore:€Û>]]);
ƒe.ƒl("€·:„J_ƒÉ", <€·:‚:>, [[ƒn, <ore:€”>, <ore:€”>], [ƒn, <€·:t:1>, <ore:€”>], [<€·:t:1>, ƒn, ƒn]]);
ƒe.ƒl("€Š:‚<_€Ó_€Ô", <€Š:€Ó_€Ô:1> * 6, [[<€Š:‚<_€Ó>, <€Š:‚<_€Ó>, <€Š:‚<_€Ó>], [<€Š:‚<_€Ó>, <€Š:‚<_€Ó>, <€Š:‚<_€Ó>]]);
ƒe.ƒq("€Š:ƒ„_dye_ƒr_ß_and_ƒ·", <€Š:dye:13> * 2, [<ore:>, <ore:~>]);
ƒe.ƒl("€·:ƒ_„K", <€·:€Ä:1> * 3, [[<€·:€¸:3>, <€·:€¸:3>, <€·:€¸:3>], [<€·:€Æ:2>, <€·:€¸>, <€·:€Æ:2>]]);
ƒe.ƒl("€Š:red_€Ñ", <€Š:€Ñ:1>, [[<€Š:€—:14>, <€Š:€—:14>, <€Š:€—:14>], [<€Š:€—:14>, <€Š:€—:14>, <€Š:€—:14>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€Š:^_‚=", <€Š:^_‚=>, [[<€Š:^_\>], [<€Š:^_\>]]);
ƒe.ƒl("€Š:‚>_ç_¸_¹", <€Š:‚>_ç_¸_¹>, [[<ore:€²>, <ore:€²>]]);
ƒe.ƒl("€Š:€â_Ï", <€Š:€â_Ï>, [[<ore:€Ó>], [<ore:€•>], [<ore:€•>]]);
ƒe.ƒl("€Š:ƒ·_€×_€Ø", <€Š:€×_€Ø:6> * 8, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:~>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
ƒe.ƒl("€Š:€‘_e", <€Š:€‘_e>, [[<ore:€”>, <ore:€”>, <ore:€”>], [<ore:€”>, ƒn, <ore:€”>], [<ore:€”>, ƒn, <ore:€”>]]);
ƒe.ƒl("€É:‚'_„L", <€É:‚?>, [[<€Š:€â>, <€Š:€â>, <€Š:€â>], [<€Š:W>, <ore:€Í>, <€Š:W>], [<€Š:€â>, <ore:€”>, <€Š:€â>]]);
ƒe.ƒl("€€:„M", <€€:‚@>, [[<ore:oc:€>, <ore:Ú>, <ore:oc:€>], [<ore:oc:€³>, <ore:€‡>, <ore:oc:€³>], [<ore:€¨>, <€Š:ã_ä>, <ore:€¨>]]);
ƒe.ƒl("€Š:ƒ†_€Ñ", <€Š:€Ñ:10>, [[<€Š:€—:5>, <€Š:€—:5>, <€Š:€—:5>], [<€Š:€—:5>, <€Š:€—:5>, <€Š:€—:5>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€·:„ _€µ", <€·:‚A>, [[ƒn, <ore:€”>, ƒn], [<€Š:€ö:*>, <€Š:€¨:*>, <€Š:€ö:*>]]);
ƒe.ƒl("€Š:€â_¸_¹", <€Š:€â_¸_¹>, [[<ore:€â>, <ore:€â>]]);
ƒe.ƒl("€Š:l", <€Š:l>, [[<ore:€Ó>, <ore:€Ó>, <ore:€Ó>], [<ore:€Ó>, ƒn, <ore:€Ó>], [<ore:€Ó>, <ore:€–>, <ore:€Ó>]]);
ƒe.ƒl("€Š:€_€×_€Ø_€Ù", <€Š:€×_€Ø_€Ù:4> * 16, [[<ore:?>, <ore:?>, <ore:?>], [<ore:?>, <ore:?>, <ore:?>]]);
ƒe.ƒl("€Š:_‚C", <€Š:_‚C>, [[ƒn, <ore:€–>, ƒn], [<ore:€–>, <ore:ã>, <ore:€–>], [ƒn, <ore:€–>, ƒn]]);
ƒe.ƒl("€Š:ƒŒ_P", <€Š:P:15> * 3, [[<€Š:€—:15>, <€Š:€—:15>]]);
ƒe.ƒq("€€:„N", <€€:è:29> * 6, [<ore:oc:‚D>, <ore:€ÿ>]);
ƒe.ƒl("€Š:end_rod", <€Š:end_rod> * 4, [[<€Š:_rod>], [<€Š:__`_a>]]);
ƒe.ƒq("€É:key_ƒç", <€É:É_key>, [<€É:v_key>, <€Š:€ª_eye>]);
ƒe.ƒl("€€:„O", <€€:‚E>, [[<ore:€²>, <ore:€”>, <ore:€²>], [<ore:oc:€­>, <ore:oc:€®>, <ore:oc:€­>], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒl("€É:€Ê__„P", <€É:€Ê_>, [[<€Š:>, <ore:€•>, <€Š:>], [<ore:€•>, <€É:€Ê_€Ë>, <ore:€•>], [<€Š:>, <ore:€•>, <€Š:>]]);
ƒe.ƒl("€·:%_‚'", <€·:%>, [[<€Š:€ª_Í:*>, <€·:%:9>, <€Š:€ª_Í:*>], [<ore:€–>, <€Š:W:*>, <ore:€–>]]);
ƒe.ƒq("€Š:‚<_€Ó", <€Š:‚<_€Ó>, [<ore:€Ó>, <€Š:Ê>]);
ƒe.ƒl("€Š:€‘_€÷", <€Š:€‘_€÷>, [[<ore:€”>, <ore:€”>, <ore:€”>], [<ore:€”>, ƒn, <ore:€”>]]);
ƒe.ƒl("€Š:‚", <€Š:‚> * 2, [[<ore:€ï>, <ore:€ï>, <ore:€ï>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒq("€Š:æ_ƒ“_dye_ƒr_ƒ“_„Q", <€Š:dye:12>, [<€Š:red_€:1>]);
ƒe.ƒl("€·:ƒ¯_ƒ°_ƒ@", <€·:0> * 4, [[<ore:€–>, <€·:2>, <ore:€–>], [<ore:€â>, <ore:İ>, <ore:€â>]]);
ƒe.ƒl("€É:ƒ€_ƒ_€À", <€É:ƒ€:4>.ƒ‚({è: "€À"}) * 4, [[<ore:İ>, <€Š:A_\:2>, <ore:İ>], [<€Š:A_\:2>, <€Š:A_\:2>, <€Š:A_\:2>], [<ore:İ>, <€Š:A_\:2>, <ore:İ>]]);
ƒe.ƒl("€É:€Ê_one_‚F", <€É:€Ê_one_‚F>, [[<ore:€•>, <ore:€•>, <ore:€•>], [<€Š:|>, <€É:€Ê_€Ë>, <€Š:|>], [<ore:€•>, <ore:€•>, <ore:€•>]]);
ƒe.ƒl("€É:ƒ€_ƒ_€è", <€É:ƒ€:1>.ƒ‚({è: "€è"}) * 2, [[<€Š:€Ã:1>, <ore:İ>, <€Š:€Ã:1>], [<€Š:€Ã:1>, <€Š:€Ã:1>, <€Š:€Ã:1>], [<€Š:€Ã:1>, <ore:İ>, <€Š:€Ã:1>]]);
ƒe.ƒl("€·:›_€ù", <€·:‚G> * 8, [[<€Š:€ù:*>, <€Š:€ù:*>, <€Š:€ù:*>], [<€Š:€ù:*>, <€·:t:1>, <€Š:€ù:*>], [<€Š:€ù:*>, <€Š:€ù:*>, <€Š:€ù:*>]]);
ƒe.ƒl("€Š:‚H", <€Š:‚H>, [[<€Š:¾>, <€Š:¾>, <€Š:¾>]]);
ƒe.ƒq("€·:‚I", <€·:‚I>, [<€Š:l:*>, <ore:€–>, <€Š:‚J_eye:*>]);
ƒe.ƒl("€Š:", <€Š:> * 4, [[<€Š:€İ> | <€Š:€İ:1>], [<ore:€•>]]);
ƒe.ƒl("€Š:._g", <€Š:._g>, [[<€Š:€Ã:4>, ƒn, <€Š:€Ã:4>], [<€Š:€Ã:4>, <€Š:€Ã:4>, <€Š:€Ã:4>]]);
ƒe.ƒl("€Š:Ş", <€Š:Ş>, [[<ore:€•>], [<ore:€Ó>]]);
ƒe.ƒq("€·:€ª_„R", <€·:ó> * 8, [<€Š:€ª_Í:*>, <€·:F:*>]);
ƒe.ƒl("€·:ƒt_ğ", <€Š:ğ>, [[<ore:€²>, <ore:€¤>, <ore:€²>], [<ore:€²>, <ore:€¤>, <ore:€²>], [ƒn, <ore:€²>, ƒn]]);
ƒe.ƒl("€·:lux_ƒ¹_ƒ·", <€·:>:1>, [[<€·:€¸:17>, <ore:Å>, <€·:€¸:17>], [<€·:€¸:17>, <€·:@>, <€·:€¸:17>], [<€·:€¸:17>, <€·:€¸>, <€·:€¸:17>]]);
ƒe.ƒl("€É:ƒ€_ƒô_.", <€É:ƒ€>.ƒ‚({è: "."}), [[<€Š:€Ã:4>, <€Š:€Ã:4>, <€Š:€Ã:4>], [ƒn, <ore:İ>, ƒn], [<€Š:€Ã:4>, <€Š:€Ã:4>, <€Š:€Ã:4>]]);
ƒe.ƒq("€Š:æ_ƒ‡_dye_ƒr_ƒ‡_ƒ", <€Š:dye:7> * 2, [<ore:j>, <ore:€Ü>]);
ƒe.ƒl("€Š:ƒ…_€×_€ß_€à", <€Š:€×_€ß_€à> * 8, [[<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <ore:€Ü>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>]]);
ƒe.ƒl("€Š:map", <€Š:map>, [[<ore:†>, <ore:†>, <ore:†>], [<ore:†>, <€Š:‚>, <ore:†>], [<ore:†>, <ore:†>, <ore:†>]]);
ƒe.ƒl("€Š:‚	_€’", <€Š:‚	_€’> * 6, [[<ore:€²>, ƒn, <ore:€²>], [<ore:€²>, <€Š:€â_¸_¹>, <ore:€²>], [<ore:€²>, <ore:€–>, <ore:€²>]]);
ƒe.ƒl("€Š:ƒ·_bed", <€Š:bed:6>, [[<€Š:€—:6>, <€Š:€—:6>, <€Š:€—:6>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒl("€Š:‚L", <€Š:‚L>, [[<ore:€ï>, <ore:€²>, <ore:€ï>], [<ore:€ï>, <ore:€ï>, <ore:€ï>], [ƒn, <ore:€ï>, ƒn]]);
ƒe.ƒl("€·:„S_„!", <€·:„I>, [[<ore:€ö>, <ore:€²>, <ore:€ö>], [<ore:€²>, <€·:ª>.ƒ‚({ƒ : {id: "€Š:„S"}, No_ƒ¥: 1 as ƒ£}), <ore:€²>], [<€·:€¸>, <ore:€²>, <€·:€¸>]]);
ƒe.ƒl("€€:„T", <€€:‚N>, [[<ore:€”>, <ore:€˜>, <ore:€”>], [<ore:>, <ore:oc:€>, <ore:>], [<ore:€”>, <ore:J>, <ore:€”>]]);
ƒe.ƒq("€·:œ_", <€·:‚P>, [<ore:>, <ore:´>, <€Š: :*>, <ore:‚R>, <ore:€¤>, <ore:‚S>, <€Š:€ª_Í:*>, <ore:z>]);
ƒe.ƒl("€É:ƒ€_ƒô_€À", <€É:ƒ€>.ƒ‚({è: "€À"}), [[<€Š:€Ã:2>, <€Š:€Ã:2>, <€Š:€Ã:2>], [ƒn, <ore:İ>, ƒn], [<€Š:€Ã:2>, <€Š:€Ã:2>, <€Š:€Ã:2>]]);
ƒe.ƒl("€Š:ƒŒ_€Ñ", <€Š:€Ñ>, [[<€Š:€—:15>, <€Š:€—:15>, <€Š:€—:15>], [<€Š:€—:15>, <€Š:€—:15>, <€Š:€—:15>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒq("€·:ƒœ_5_ƒ¬", <€Š:5> * 9, [<€·:®>]);
ƒe.ƒl("€Š:‚T", <€Š:‚T>, [[<ore:€•>, <ore:€•>, <ore:€•>], [<ore:€•>, <€Š:€—> | <€Š:€—:1> | <€Š:€—:2> | <€Š:€—:3> | <€Š:€—:4> | <€Š:€—:5> | <€Š:€—:6> | <€Š:€—:7> | <€Š:€—:8> | <€Š:€—:9> | <€Š:€—:10> | <€Š:€—:11> | <€Š:€—:12> | <€Š:€—:13> | <€Š:€—:14> | <€Š:€—:15>, <ore:€•>], [<ore:€•>, <ore:€•>, <ore:€•>]]);
ƒe.ƒl("€Š:€‹_Ï", <€Š:€‹_Ï>, [[<ore:€²>], [<ore:€•>], [<ore:€•>]]);
ƒe.ƒl("€Š:€â_€È_\", <€Š:€â_\:5> * 6, [[<€Š:I> | <€Š:I:1> | <€Š:I:2> | <€Š:I:3>, <€Š:I> | <€Š:I:1> | <€Š:I:2> | <€Š:I:3>, <€Š:I> | <€Š:I:1> | <€Š:I:2> | <€Š:I:3>]]);
ƒe.ƒl("€Š:‚U", <€Š:‚U> * 3, [[<ore:€ï>, <ore:€ï>, <ore:€ï>], [<ore:€ï>, <ore:€ï>, <ore:€ï>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€Š:I", <€Š:I> * 4, [[<€Š:€â>, <€Š:€â>], [<€Š:€â>, <€Š:€â>]]);
ƒe.ƒq("€Š:€´_ƒ_ƒr_€´", <€Š:dye:15> * 3, [<ore:€´>]);
ƒe.ƒl("€·:lux_ƒ¹_ƒˆ", <€·:>:5>, [[<€·:€¸:17>, <ore:‚>, <€·:€¸:17>], [<€·:€¸:17>, <€·:@>, <€·:€¸:17>], [<€·:€¸:17>, <€·:€¸>, <€·:€¸:17>]]);
ƒe.ƒq("€€:„U", <€€:‚V:1>, [<€€:‚V:1>, <€€:q>]);
ƒe.ƒl("€Š:„_'", <€Š:„_'>, [[<ore:€ï>, <ore:€ï>], [<ore:€ï>, <ore:€ï>]]);
ƒe.ƒq("€€:„V", <€€:‚V>, [<€€:‚V>, <€€:q>]);
ƒe.ƒl("€·:ƒ_K", <€·:€Ä:2>, [[<€·:€Æ:3>, <€·:€Æ:3>, <€·:€Æ:3>], [<€·:€Æ:3>, <€·:€¸>, <€·:€Æ:3>], [<€·:€Æ:3>, <ore:€”>, <€·:€Æ:3>]]);
ƒe.ƒq("€Š:æ_ƒ“_€—", <€Š:€—:3>, [<ore:m>, <€Š:€—>]);
ƒe.ƒl("€·:B_16", <€·:B>, [[<ore:€Ó>, <€Š:€â_\:3> | <€Š:€â_\>, <ore:€Ó>], [<ore:€Ó>, <€Š:€¢:*>, <ore:€Ó>], [<ore:€Ó>, <€Š:€â_\:3> | <€Š:€â_\>, <ore:€Ó>]]);
ƒe.ƒl("€·:„W", <€·:‚W>, [[<ore:€½>, <€Š:€ª_Í:*>, <ore:€½>], [<€Š:€ª_Í:*>, <€·:‚X>, <€Š:€ª_Í:*>], [<ore:€½>, <€Š:€ª_Í:*>, <ore:€½>]]);
ƒe.ƒq("€Š:ƒ©_€—", <€Š:€—:1>, [<ore:!>, <€Š:€—>]);
ƒe.ƒq("€Š:ƒŒ_bed_ƒr_ƒ…_bed", <€Š:bed:15>, [<€Š:bed>, <ore:€Û>]);
ƒe.ƒl("€Š:ƒ·_P", <€Š:P:6> * 3, [[<€Š:€—:6>, <€Š:€—:6>]]);
ƒe.ƒl("€Š:€ò_oak_A_\", <€Š:A_\:5> * 6, [[<€Š:€Ã:5>, <€Š:€Ã:5>, <€Š:€Ã:5>]]);
ƒe.ƒl("€Š:ƒ©_€×_€ß_€à", <€Š:€×_€ß_€à:1> * 8, [[<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <ore:!>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>]]);
ƒe.ƒl("€Š:._", <€Š:._> * 4, [[<€Š:€Ã:4>, ƒn, ƒn], [<€Š:€Ã:4>, <€Š:€Ã:4>, ƒn], [<€Š:€Ã:4>, <€Š:€Ã:4>, <€Š:€Ã:4>]]);
ƒe.ƒl("€·:‚b_¶", <€·:‚b>.ƒ‚({ƒŠ: "€·:¶"}), [[<ore:„X>, <ore:„X>, <ore:„X>], [<ore:„X>, <€·:‚b>, <ore:„X>], [<ore:„X>, <ore:„X>, <ore:„X>]]);
ƒe.ƒl("€Š:€À_€ó", <€Š:€À_€ó> * 3, [[<€Š:€Ã:2>, <€Š:€Ã:2>], [<€Š:€Ã:2>, <€Š:€Ã:2>], [<€Š:€Ã:2>, <€Š:€Ã:2>]]);
ƒe.ƒl("€Š:™", <€Š:™>, [[<€Š:€‹_€µ>, <€Š:€‹_€µ>, <€Š:€‹_€µ>], [ƒn, <ore:€²>, ƒn], [<ore:€²>, <ore:€²>, <ore:€²>]]);
ƒe.ƒl("€Š:_V_ƒr_ƒİ", <€Š:_V>, [[<€Š:_€Œ>, <€Š:_€Œ>, <€Š:_€Œ>], [<€Š:_€Œ>, <€Š:_€Œ>, <€Š:_€Œ>], [<€Š:_€Œ>, <€Š:_€Œ>, <€Š:_€Œ>]]);
ƒe.ƒl("€Š:€‹_V_ƒr_€µ", <€Š:€‹_V> * 9, [[<€Š:€‹_€µ>]]);
ƒe.ƒl("€·:„Y_€Ğ", <€·:‚Z>, [[<€·:€Æ:3>, <€·:€Æ:3>, <€·:€Æ:3>], [<€·:€Æ:3>, <€Š:€ª_€Ğ:*>, <€·:€Æ:3>], [<€·:€Æ:3>, <€·:€¸>, <€·:€Æ:3>]]);
ƒe.ƒq("€·:›_‚r", <€·:t:1>, []);
ƒe.ƒq("€·:ƒœ_6_1_ƒ¬", <€·:‚> * 9, [<€·:‚:1>]);
ƒe.ƒl("€·:_„Z", <€·:€¸:1>, [[ƒn, <€Š:_:*>, ƒn], [<€Š:_:*>, <ore:€ï>, <€Š:_:*>], [ƒn, <€Š:_:*>, ƒn]]);
ƒe.ƒl("€·:„[_bow", <€·:‚[>, [[ƒn, <€·:©:8>, <ore:€½>], [<ore:€²>, ƒn, <ore:€½>], [ƒn, <€·:©:8>, <ore:€½>]]);
ƒe.ƒl("€É:ƒ€_ƒ_.", <€É:ƒ€:4>.ƒ‚({è: "."}) * 4, [[<ore:İ>, <€Š:A_\:4>, <ore:İ>], [<€Š:A_\:4>, <€Š:A_\:4>, <€Š:A_\:4>], [<ore:İ>, <€Š:A_\:4>, <ore:İ>]]);
ƒe.ƒl("€Š:ƒ©_bed", <€Š:bed:1>, [[<€Š:€—:1>, <€Š:€—:1>, <€Š:€—:1>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒl("€€:„\", <€€:‚]> * 4, [[<ore:€¯>, <ore:oc:‚^>, <ore:€¯>], [<ore:oc:‚^>, <ore:€¯>, <ore:oc:‚^>], [<ore:€¯>, <ore:oc:‚^>, <ore:€¯>]]);
ƒe.ƒq("€·:‚_", <€·:‚_>, [<€Š:l:*>, <€·:€¸>, <€Š:Ş:*>]);
ƒe.ƒl("€Š:€Ç_€È", <€Š:€Ç_€È>, [[<€Š:‰>, <€Š:‰>], [<€Š:‰>, <€Š:‰>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_ƒ·", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒ·"}), [[<€Š:dye:9>, <€Š:dye:9>, <€Š:dye:9>], [<€Š:dye:9>, <€Š:€—:6>, <€Š:dye:9>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€€:„]", <€€:‚`>, [[<ore:€²>, <ore:‚a>, <ore:€²>], [<ore:N>, <ore:oc:€>, <ore:N>], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒl("€Š:A_€ä", <€Š:A_€ä>, [[<ore:€ï>], [<ore:€ï>], [<ore:€•>]]);
ƒe.ƒl("€Š:€À_€Á_€é", <€Š:€À_€Á_€é>, [[<€Š:€£>, <€Š:€Ã:2>, <€Š:€£>], [<€Š:€£>, <€Š:€Ã:2>, <€Š:€£>]]);
ƒe.ƒl("€·:%_ƒÖ", <€·:%:9>, [[<ore:€²>, <ore:€ÿ>, <ore:€²>], [<ore:´>, <€·:‚b>, <ore:´>], [<ore:€²>, <ore:€ÿ>, <ore:€²>]]);
ƒe.ƒl("€·:‚c", <€·:‚c>, [[ƒn, ƒn, <ore:€²>], [ƒn, <€Š:€â_H:*>, ƒn], [<ore:€•>, ƒn, ƒn]]);
ƒe.ƒl("€€:„^", <€€:€­:‚e> * 4, [[ƒn, <€Š:€‹_€Œ>, ƒn], [<€Š:€‹_€Œ>, <€Š:>, <€Š:€‹_€Œ>], [ƒn, <€Š:€‹_€Œ>, ƒn]]);
ƒe.ƒl("€·:lux_ƒ¹_ƒŒ", <€·:>:7>, [[<€·:€¸:17>, <ore:€>, <€·:€¸:17>], [<€·:€¸:17>, <€·:@>, <€·:€¸:17>], [<€·:€¸:17>, <€·:€¸>, <€·:€¸:17>]]);
ƒe.ƒl("€Š:€è_€ó", <€Š:€è_€ó> * 3, [[<€Š:€Ã:1>, <€Š:€Ã:1>], [<€Š:€Ã:1>, <€Š:€Ã:1>], [<€Š:€Ã:1>, <€Š:€Ã:1>]]);
ƒe.ƒl("€Š:ƒˆ_bed", <€Š:bed:9>, [[<€Š:€—:9>, <€Š:€—:9>, <€Š:€—:9>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒl("€Š:€_on_a_€£", <€Š:€_on_a_€£>, [[<€Š:c_rod>, ƒn], [ƒn, <€Š:€>]]);
ƒe.ƒl("€Š:red_€×_€Ø_€Ù", <€Š:€×_€Ø_€Ù:14> * 16, [[<ore:Ç>, <ore:Ç>, <ore:Ç>], [<ore:Ç>, <ore:Ç>, <ore:Ç>]]);
ƒe.ƒq("€Š:€ _€—", <€Š:€—:12>, [<ore:>, <€Š:€—>]);
ƒe.ƒl("€€:„_", <€€:q:4>, [[<ore:oc:€…>, <ore:oc:‚h>, <ore:€ÿ>], [<ore:oc:€³>, <ore:oc:‚h>, <ore:N>], [<ore:oc:€…>, <ore:oc:‚h>, <ore:€ÿ>]]);
ƒe.ƒl("€€:„`", <€€:q:3>, [[<ore:oc:€>, <ore:oc:‚h>, <ore:€”>], [<ore:oc:€³>, <ore:oc:‚h>, <ore:N>], [<ore:oc:€>, <ore:oc:‚h>, <ore:€”>]]);
ƒe.ƒl("€€:„a", <€€:q:2>, [[<ore:oc:€®>, <ore:oc:‚h>, <ore:€²>], [<ore:oc:€³>, <ore:oc:‚h>, <ore:N>], [<ore:oc:€®>, <ore:oc:‚h>, <ore:€²>]]);
ƒe.ƒl("€€:„b", <€€:q:1>, [[<€Š:€‹_€Œ>, <€Š:Ş>, <€Š:€‹_€Œ>], [<ore:†>, <ore:oc:‚h>, <ore:†>], [<€Š:€‹_€Œ>, <ore:†>, <€Š:€‹_€Œ>]]);
ƒe.ƒl("€€:„c", <€€:q>, [[<ore:€ƒ>, <ore:oc:‚ >, <ore:€ƒ>], [<ore:†>, <ore:oc:€®>, <ore:†>], [<ore:€ƒ>, <ore:€§>, <ore:€ƒ>]]);
ƒe.ƒl("€Š:ß_bed", <€Š:bed:10>, [[<€Š:€—:10>, <€Š:€—:10>, <€Š:€—:10>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒl("€É:
_U", <€É:
:3> * 4, [[<ore:€•>, <€Š:€Ã:3>, <ore:€•>], [<€Š:€Ã:3>, <€Š:€Ã:3>, <€Š:€Ã:3>], [<ore:€•>, <€Š:€Ã:3>, <ore:€•>]]);
ƒe.ƒl("€Š:€ò_", <€Š::2>, [[<ore:‚>, <ore:‚>, <ore:‚>], [<ore:‚>, <ore:€Û>, <ore:‚>], [<ore:‚>, <ore:‚>, <ore:‚>]]);
ƒe.ƒl("€Š:‚j", <€Š:‚j> * 8, [[<€Š:¾>, <€Š:dye:3>, <€Š:¾>]]);
ƒe.ƒq("€·:_eye", <€·:€¸:2>, [<€Š:€ª_Í:*>, <ore:€–>, <€·:€¸>]);
ƒe.ƒq("€€:„d", <€€:¯:1>, [<€€:¯:*>, <ore:€˜>]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_‚|", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_‚|"}), [[<€Š:_rod:*>, <€Š:_rod:*>, <€Š:_rod:*>], [<€Š:_rod:*>, <€Š:‚Œ_Á:*>, <€Š:_rod:*>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒq("€€:„e", <€€:¯:2>, [<€€:¯:*>, <ore:>]);
ƒe.ƒl("€Š:‚k_„f", <€Š:dye:4> * 9, [[<€Š:‚k_€µ>]]);
ƒe.ƒl("€Š:€ò_oak_€Ã", <€Š:€Ã:5> * 4, [[<€Š:û:1>]]);
ƒe.ƒq("€€:„g", <€€:¯>, [<€€:¯:*>, <ore:€Û>]);
ƒe.ƒq("€Š:ƒ©_3_", <€Š:3_:1> * 8, [<ore:!>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:6>, <€Š:6>, <€Š:6>, <€Š:6>]);
ƒe.ƒl("€Š:_€µ", <€Š:_€µ>, [[<ore:€–>, <ore:€–>, <ore:€–>], [<ore:€–>, <ore:€–>, <ore:€–>], [<ore:€–>, <ore:€–>, <ore:€–>]]);
ƒe.ƒq("€€:„h", <€€:¯:4>, [<€€:¯:*>, <ore:J>]);
ƒe.ƒq("€€:„i", <€€:¯:5>, [<€€:¯:*>, <ore:>]);
ƒe.ƒl("€Š:‚l", <€Š:‚l>, [[ƒn, <ore:€²>], [<ore:€²>, ƒn]]);
ƒe.ƒq("€€:„j", <€€:¯:3>, [<€€:¯:*>, <ore:>]);
ƒe.ƒl("€Š:¾", <€Š:¾> * 9, [[<€Š:hay_€µ>]]);
ƒe.ƒq("€€:„k", <€€:¯:8>, [<€€:¯:*>, <ore:j>]);
ƒe.ƒq("€€:„l", <€€:¯:9>, [<€€:¯:*>, <ore:~>]);
ƒe.ƒq("€€:„m", <€€:¯:6>, [<€€:¯:*>, <ore:€Ş>]);
ƒe.ƒq("€€:„n", <€€:¯:7>, [<€€:¯:*>, <ore:>]);
ƒe.ƒq("€·:‚n_log_to_€Ã_„o", <€·:‚n_€Ã:1> * 4, [<€·:‚n_log:1>]);
ƒe.ƒl("€Š:ƒ©_€×_€Ø_€Ù", <€Š:€×_€Ø_€Ù:1> * 16, [[<ore:‚o>, <ore:‚o>, <ore:‚o>], [<ore:‚o>, <ore:‚o>, <ore:‚o>]]);
ƒe.ƒl("€É:
_€è", <€É:
:1> * 4, [[<ore:€•>, <€Š:€Ã:1>, <ore:€•>], [<€Š:€Ã:1>, <€Š:€Ã:1>, <€Š:€Ã:1>], [<ore:€•>, <€Š:€Ã:1>, <ore:€•>]]);
ƒe.ƒq("€Š:„p", ƒn, []);
ƒe.ƒl("€Š:Y_€µ", <€Š:Y_€µ>, [[<€Š:Y>, <€Š:Y>], [<€Š:Y>, <€Š:Y>]]);
ƒe.ƒl("€·:€Ø_„q", <€·::2> * 4, [[<€·::1>, <€·::1>], [<€·::1>, <€·::1>]]);
ƒe.ƒl("€€:„r", <€€:‚p>, [[<ore:€”>, <€Š:‚_‚	>, <ore:€”>], [<€Š:‚_‚	>, <ore:oc:€ˆ>, <€Š:‚_‚	>], [<ore:€”>, <ore:oc:€³>, <ore:€”>]]);
ƒe.ƒl("€·:ƒ¯_ƒ°_ƒª", <€·:0:2> * 4, [[<ore:€–>, <€·:2>, <ore:€–>], [<ore:€â>, <€Š:L:*>, <ore:€â>]]);
ƒe.ƒq("€€:„s", <€€:¯:12>, [<€€:¯:*>, <ore:m>]);
ƒe.ƒq("€€:„t", <€€:¯:10>, [<€€:¯:*>, <ore:Æ>]);
ƒe.ƒl("€Š:€¹_€÷", <€Š:€¹_€÷>, [[<ore:€ÿ>, <ore:€ÿ>, <ore:€ÿ>], [<ore:€ÿ>, ƒn, <ore:€ÿ>]]);
ƒe.ƒq("€€:„u", <€€:¯:11>, [<€€:¯:*>, <ore:+>]);
ƒe.ƒl("€·:‚b_„v", <€·:‚b>.ƒ‚({ƒŠ: "€·:„v"}), [[<ore:€²>, <€Š:9:*> | <€Š:8_9:*>, <ore:€²>], [<ore:€²>, <€·:‚b>, <ore:€²>], [<ore:€²>, <€Š:9:*> | <€Š:8_9:*>, <ore:€²>]]);
ƒe.ƒq("€Š:æ_ƒ“_bed_ƒr_ƒ…_bed", <€Š:bed:3>, [<€Š:bed>, <ore:m>]);
ƒe.ƒl("€Š:bow", <€Š:bow>, [[ƒn, <ore:€•>, <ore:€½>], [<ore:€•>, ƒn, <ore:€½>], [ƒn, <ore:€•>, <ore:€½>]]);
ƒe.ƒq("€€:„w", <€€:¯:15>, [<€€:¯:*>, <ore:€Ü>]);
ƒe.ƒq("€€:„x", <€€:¯:13>, [<€€:¯:*>, <ore:€Ö>]);
ƒe.ƒq("€€:„y", <€€:¯:14>, [<€€:¯:*>, <ore:!>]);
ƒe.ƒl("€Š:€ò_oak_€Á_€é", <€Š:€ò_oak_€Á_€é>, [[<€Š:€£>, <€Š:€Ã:5>, <€Š:€£>], [<€Š:€£>, <€Š:€Ã:5>, <€Š:€£>]]);
ƒe.ƒl("€Š:€İ", <€Š:€İ> * 9, [[<€Š:€İ_€µ>]]);
ƒe.ƒl("€·:¥_‚r", <€·:¥_‚r>, [[ƒn, <ore:€ï>, <ore:€ï>], [ƒn, ƒn, <ore:€ï>], [<ore:€•>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒl("€Š:‚", <€Š:‚>, [[ƒn, <ore:€²>, ƒn], [<ore:€²>, <ore:€–>, <ore:€²>], [ƒn, <ore:€²>, ƒn]]);
ƒe.ƒl("€É:„z_v_„{", <€É:‚s:3> * 2, [[<ore:€•>, <ore:İ>, <ore:€•>], [<ore:€•>, <ore:‚t>, <ore:€•>], [<ore:€•>, <ore:İ>, <ore:€•>]]);
ƒe.ƒq("€€:„|", <€€:q> * 2, [<€€:q>, <€€:q>]);
ƒe.ƒl("€Š:æ_ƒ‡_€×_€ß_€à", <€Š:€×_€ß_€à:8> * 8, [[<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <ore:>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>]]);
ƒe.ƒq("€€:„}", <€€:q:1>.ƒ‚({"oc:„~": 15}), [<€€:q:1>, <ore:€Ü>]);
ƒe.ƒl("€É:„z_v_„", <€É:‚s:4> * 4, [[<ore:İ>, <ore:€•>, <ore:İ>], [<ore:€•>, <ore:‚t>, <ore:€•>], [<ore:İ>, <ore:€•>, <ore:İ>]]);
ƒe.ƒl("€·:lux_ƒ¹_ƒ“", <€·:>>, [[<€·:€¸:17>, <ore:‚u>, <€·:€¸:17>], [<€·:€¸:17>, <€·:@>, <€·:€¸:17>], [<€·:€¸:17>, <€·:€¸>, <€·:€¸:17>]]);
ƒe.ƒl("€Š:‚v_‚w", <€Š:‚v_‚w>, [[<ore:€•>, <ore:€•>, <ore:€•>], [<ore:€•>, <ore:€ê>, <ore:€•>], [<ore:€•>, <ore:€•>, <ore:€•>]]);
ƒe.ƒl("€€:„€", <€€:€Ê:18>, [[<ore:€”>, <ore:oc:Û>, <ore:€”>], [<€Š:l>, <ore:oc:€>, <ore:N>], [<ore:€”>, <ore:oc:€³>, <ore:€”>]]);
ƒe.ƒl("€€:„", <€€:€Ê:17>, [[<ore:€ï>, <€Š:ğ>, <ore:€ï>], [<€Š:l>, <ore:€Ğ>, <ore:N>], [<ore:€ï>, <ore:oc:€®>, <ore:€ï>]]);
ƒe.ƒl("€·:„‚_„ƒ", <€·:‚X>, [[ƒn, <€·:€¸>], [<ore:€â>, <ore:€â>], [<ore:€â>, <ore:€â>]]);
ƒe.ƒq("€É:È_–", <€É:È:2>, [<€É:–_key>, <€Š:€â_H>]);
ƒe.ƒl("€€:„„", <€€:€Ê:24>, [[<ore:€”>, <€Š:€Ø_Ì>, <ore:€”>], [<€Š:‚>, <ore:oc:€>, <ore:N>], [<ore:€”>, <ore:oc:€³>, <ore:€”>]]);
ƒe.ƒl("€€:„…", <€€:‚y>, [[<ore:€²>, ƒn, <ore:€²>], [ƒn, <ore:oc:€>, ƒn], [ƒn, <ore:€²>, ƒn]]);
ƒe.ƒl("€€:„†", <€€:€Ê:23>, [[<ore:€ï>, <€Š:€‹_>, <ore:€ï>], [<€Š:‚>, <€Š:Ñ>, <ore:N>], [<ore:€ï>, <ore:oc:€®>, <ore:€ï>]]);
ƒe.ƒq("€·:ƒœ_€Ó_6_ƒ¬", <€·::5> * 9, [<€·::6>]);
ƒe.ƒl("€€:„‡", <€€:€Ê:26>, [[<ore:€²>, <€Š:‚{>, <ore:€²>], [<€Š:‚{>, <ore:oc:Ù>, <€Š:‚{>], [<ore:€²>, <€Š:‚{>, <ore:€²>]]);
ƒe.ƒl("€€:„ˆ", <€€:€Ê:25>, [[<ore:€”>, <ore:N>, <ore:€”>], [<ore:€²>, <ore:oc:Q>, <ore:€²>], [<ore:€”>, <ore:oc:€…>, <ore:€”>]]);
ƒe.ƒl("€€:„‰", <€€:€Ê:20>, [[<ore:€²>, <ore:N>, <ore:€²>], [<ore:€•>, <ore:oc:€®>, <ore:€•>], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒl("€€:„Š", <€€:€Ê:19>, [[<ore:€”>, <€Š:‚>, <ore:€”>], [<ore:oc:€>, <€Š:‡_map:*>, <ore:oc:€>], [<ore:€”>, <€Š:‚|>, <ore:€”>]]);
ƒe.ƒl("€Š:€ò_oak_g", <€Š:€ò_oak_g>, [[<€Š:€Ã:5>, ƒn, <€Š:€Ã:5>], [<€Š:€Ã:5>, <€Š:€Ã:5>, <€Š:€Ã:5>]]);
ƒe.ƒl("€€:„‹", <€€:€Ê:22>, [[<ore:>, <ore:>, <ore:>], [<ore:oc:€…>, <ore:‚~>, <ore:oc:€…>], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒl("€É:ƒ€_ƒ_.", <€É:ƒ€:1>.ƒ‚({è: "."}) * 2, [[<€Š:€Ã:4>, <ore:İ>, <€Š:€Ã:4>], [<€Š:€Ã:4>, <€Š:€Ã:4>, <€Š:€Ã:4>], [<€Š:€Ã:4>, <ore:İ>, <€Š:€Ã:4>]]);
ƒe.ƒl("€€:„Œ", <€€:€Ê:21>, [[<ore:€²>, <ore:€Û>, <ore:€²>], [<ore:oc:€®>, <ore:€•>, <ore:oc:€®>], [<ore:€²>, <€Š:8_9>, <ore:€²>]]);
ƒe.ƒq("€Š:ƒ·_dye_ƒr_ƒ·_ƒÇ", <€Š:dye:9>, [<€Š:red_€:7>]);
ƒe.ƒl("€Š:ù", <€Š:ù> * 4, [[<€Š:|>], [<ore:€•>], [<ore:€ö>]]);
ƒe.ƒl("€Š:A_€ó", <€Š:A_€ó> * 3, [[<€Š:€Ã>, <€Š:€Ã>], [<€Š:€Ã>, <€Š:€Ã>], [<€Š:€Ã>, <€Š:€Ã>]]);
ƒe.ƒl("€·:ƒœ_6_1", <€·:‚:1>, [[<€·:‚>, <€·:‚>, <€·:‚>], [<€·:‚>, <€·:‚>, <€·:‚>], [<€·:‚>, <€·:‚>, <€·:‚>]]);
ƒe.ƒl("€·:ƒƒ_€Ğ_to_€Ğ", <€Š:€Ğ>, [[<€·:€Ï>, <€·:€Ï>, <€·:€Ï>], [<€·:€Ï>, <€·:€Ï>, <€·:€Ï>], [<€·:€Ï>, <€·:€Ï>, <€·:€Ï>]]);
ƒe.ƒl("€€:„", <€€:€Ê:27>, [[<ore:€ö>, <ore:oc:€®>, <ore:€ö>], [<€Š:€‹_€Œ>, <ore:€ê>, <€Š:€‹_€Œ>], [<ore:€ö>, <ore:oc:€³>, <ore:€ö>]]);
ƒe.ƒl("€€:„", <€€:€Ê:29>, [[<ore:€”>, <ore:€Ğ>, <ore:€”>], [<€Š:€ú>, <ore:oc:€>, <€Š:€ú>], [<€Š:l>, <ore:oc:€³>, <ore:N>]]);
ƒe.ƒl("€Š:¤_‚", <€Š:¤_‚>, [[<€Š:¤>]]);
ƒe.ƒq("€Š:„", <€Š:€â:1>, [<ore:‚/>, <€Š:Y>]);
ƒe.ƒl("€€:„", <€€:€Ê:28>, [[<ore:oc:‚%>, <ore:oc:€>, <ore:oc:‚%>], [<ore:€ƒ>, <ore:€²>, <ore:€ƒ>], [<ore:oc:‚%>, <ore:oc:€³>, <ore:oc:‚%>]]);
ƒe.ƒq("€·:ƒœ_€Ó_ƒ¬", <€Š:€Ó> * 9, [<€·:>]);
ƒe.ƒq("€·:‚€", <€·:‚€>, [<€Š:€ö:*>, <€Š:†:*>, <€Š:€Ø_Ì:*>, <ore:€Û>]);
ƒe.ƒl("€Š:€È_\", <€Š:€â_\:4> * 6, [[<€Š:€È_€µ>, <€Š:€È_€µ>, <€Š:€È_€µ>]]);
ƒe.ƒl("€Š:€Á", <€Š:€Á> * 3, [[<€Š:€Ã>, <€Š:€£>, <€Š:€Ã>], [<€Š:€Ã>, <€Š:€£>, <€Š:€Ã>]]);
ƒe.ƒl("€€:„‘", <€€:€Ê:31>, [[<ore:€§>, <ore:oc:€®>, <ore:€§>], [ƒn, <ore:oc:€†>, ƒn]]);
ƒe.ƒl("€€:„’", <€€:€Ê:30>, [[<ore:oc:°>, <ore:#>, <ore:oc:°>], [<ore:oc:‚‚>, <ore:oc:‚ƒ>, <ore:oc:‚‚>], [<ore:oc:°>, <ore:#>, <ore:oc:°>]]);
ƒe.ƒl("€É:ƒ€_ƒè_U", <€É:ƒ€:3>.ƒ‚({è: "U"}) * 2, [[<€Š:A_\:3>, <ore:İ>, <€Š:A_\:3>], [<€Š:A_\:3>, <€Š:A_\:3>, <€Š:A_\:3>], [<€Š:A_\:3>, <ore:İ>, <€Š:A_\:3>]]);
ƒe.ƒq("€€:„“", <€€:q:1>.ƒ‚({"oc:„”": {"oc:fs.„•": "„–"}, "oc:„~": 2, „—: {„˜: "„™ („š „›)"}, "oc:„œ": "€€:„–"}), [<ore:oc:„>, <ore:oc:ƒ>]);
ƒe.ƒl("€Š:red_T_", <€Š:red_T_> * 4, [[<€Š:red_T> | <€Š:red_T:1> | <€Š:red_T:2>, ƒn, ƒn], [<€Š:red_T> | <€Š:red_T:1> | <€Š:red_T:2>, <€Š:red_T> | <€Š:red_T:1> | <€Š:red_T:2>, ƒn], [<€Š:red_T> | <€Š:red_T:1> | <€Š:red_T:2>, <€Š:red_T> | <€Š:red_T:1> | <€Š:red_T:2>, <€Š:red_T> | <€Š:red_T:1> | <€Š:red_T:2>]]);
ƒe.ƒl("€Š:ƒˆ_€×_€ß_€à", <€Š:€×_€ß_€à:9> * 8, [[<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <ore:€Ş>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>]]);
ƒe.ƒq("€€:„", <€€:q>.ƒ‚({"oc:„”": {"oc:„Ÿ": 0 as ƒ£, "oc:„ ": [108, 111, 99, 97, 108, 32, 105, 110, 105, 116, 10, 100, 111, 10, 32, 32, 108, 111, 99, 97, 108, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 95, 105, 110, 118, 111, 107, 101, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 105, 110, 118, 111, 107, 101, 10, 32, 32, 108, 111, 99, 97, 108, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 109, 101, 116, 104, 111, 100, 44, 32, 46, 46, 46, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 114, 101, 115, 117, 108, 116, 32, 61, 32, 116, 97, 98, 108, 101, 46, 112, 97, 99, 107, 40, 112, 99, 97, 108, 108, 40, 99, 111, 109, 112, 111, 110, 101, 110, 116, 95, 105, 110, 118, 111, 107, 101, 44, 32, 97, 100, 100, 114, 101, 115, 115, 44, 32, 109, 101, 116, 104, 111, 100, 44, 32, 46, 46, 46, 41, 41, 10, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 114, 101, 115, 117, 108, 116, 91, 49, 93, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 115, 117, 108, 116, 91, 50, 93, 10, 32, 32, 32, 32, 101, 108, 115, 101, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 116, 97, 98, 108, 101, 46, 117, 110, 112, 97, 99, 107, 40, 114, 101, 115, 117, 108, 116, 44, 32, 50, 44, 32, 114, 101, 115, 117, 108, 116, 46, 110, 41, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 10, 32, 32, 45, 45, 32, 98, 97, 99, 107, 119, 97, 114, 100, 115, 32, 99, 111, 109, 112, 97, 116, 105, 98, 105, 108, 105, 116, 121, 44, 32, 109, 97, 121, 32, 114, 101, 109, 111, 118, 101, 32, 108, 97, 116, 101, 114, 10, 32, 32, 108, 111, 99, 97, 108, 32, 101, 101, 112, 114, 111, 109, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 101, 101, 112, 114, 111, 109, 34, 41, 40, 41, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 32, 61, 32, 102, 117, 110, 99, 116, 105, 111, 110, 40, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 101, 101, 112, 114, 111, 109, 44, 32, 34, 103, 101, 116, 68, 97, 116, 97, 34, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 32, 61, 32, 102, 117, 110, 99, 116, 105, 111, 110, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 101, 101, 112, 114, 111, 109, 44, 32, 34, 115, 101, 116, 68, 97, 116, 97, 34, 44, 32, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 101, 110, 100, 10, 10, 32, 32, 100, 111, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 115, 99, 114, 101, 101, 110, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 115, 99, 114, 101, 101, 110, 34, 41, 40, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 103, 112, 117, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 103, 112, 117, 34, 41, 40, 41, 10, 32, 32, 32, 32, 105, 102, 32, 103, 112, 117, 32, 97, 110, 100, 32, 115, 99, 114, 101, 101, 110, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 103, 112, 117, 44, 32, 34, 98, 105, 110, 100, 34, 44, 32, 115, 99, 114, 101, 101, 110, 41, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 32, 32, 108, 111, 99, 97, 108, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 104, 97, 110, 100, 108, 101, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 111, 112, 101, 110, 34, 44, 32, 34, 47, 105, 110, 105, 116, 46, 108, 117, 97, 34, 41, 10, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 104, 97, 110, 100, 108, 101, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 98, 117, 102, 102, 101, 114, 32, 61, 32, 34, 34, 10, 32, 32, 32, 32, 114, 101, 112, 101, 97, 116, 10, 32, 32, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 100, 97, 116, 97, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 114, 101, 97, 100, 34, 44, 32, 104, 97, 110, 100, 108, 101, 44, 32, 109, 97, 116, 104, 46, 104, 117, 103, 101, 41, 10, 32, 32, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 100, 97, 116, 97, 32, 97, 110, 100, 32, 114, 101, 97, 115, 111, 110, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 32, 32, 98, 117, 102, 102, 101, 114, 32, 61, 32, 98, 117, 102, 102, 101, 114, 32, 46, 46, 32, 40, 100, 97, 116, 97, 32, 111, 114, 32, 34, 34, 41, 10, 32, 32, 32, 32, 117, 110, 116, 105, 108, 32, 110, 111, 116, 32, 100, 97, 116, 97, 10, 32, 32, 32, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 99, 108, 111, 115, 101, 34, 44, 32, 104, 97, 110, 100, 108, 101, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 108, 111, 97, 100, 40, 98, 117, 102, 102, 101, 114, 44, 32, 34, 61, 105, 110, 105, 116, 34, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 108, 111, 99, 97, 108, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 105, 102, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 105, 110, 105, 116, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 105, 102, 32, 110, 111, 116, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 10, 32, 32, 32, 32, 102, 111, 114, 32, 97, 100, 100, 114, 101, 115, 115, 32, 105, 110, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 102, 105, 108, 101, 115, 121, 115, 116, 101, 109, 34, 41, 32, 100, 111, 10, 32, 32, 32, 32, 32, 32, 105, 110, 105, 116, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 32, 32, 105, 102, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 98, 114, 101, 97, 107, 10, 32, 32, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 32, 32, 105, 102, 32, 110, 111, 116, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 101, 114, 114, 111, 114, 40, 34, 110, 111, 32, 98, 111, 111, 116, 97, 98, 108, 101, 32, 109, 101, 100, 105, 117, 109, 32, 102, 111, 117, 110, 100, 34, 32, 46, 46, 32, 40, 114, 101, 97, 115, 111, 110, 32, 97, 110, 100, 32, 40, 34, 58, 32, 34, 32, 46, 46, 32, 116, 111, 115, 116, 114, 105, 110, 103, 40, 114, 101, 97, 115, 111, 110, 41, 41, 32, 111, 114, 32, 34, 34, 41, 44, 32, 48, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 98, 101, 101, 112, 40, 49, 48, 48, 48, 44, 32, 48, 46, 50, 41, 10, 101, 110, 100, 10, 105, 110, 105, 116, 40, 41, 10] as ƒ£[] as ƒ£[], "oc:„•": "„¡ (Lua „¢)"}}), [<ore:oc:„ >, <ore:oc:ƒ>]);
ƒe.ƒl("€Š:ß_€×_€ß_€à", <€Š:€×_€ß_€à:10> * 8, [[<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <ore:>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>]]);
ƒe.ƒl("€Š:red_T_\", <€Š:€â_‚„> * 6, [[<€Š:red_T> | <€Š:red_T:1> | <€Š:red_T:2>, <€Š:red_T> | <€Š:red_T:1> | <€Š:red_T:2>, <€Š:red_T> | <€Š:red_T:1> | <€Š:red_T:2>]]);
ƒe.ƒl("€·:ƒ¯_ƒ°_ƒª_„£", <€·:0:4> * 2, [[ƒn, <€Š:€ª_Í:*>, ƒn], [<€·:0:2>, <ore:€ÿ>, <€·:0:2>], [ƒn, <€Š:€ª_Í:*>, ƒn]]);
ƒe.ƒl("€Š:ƒ‡_€×_€Ø_€Ù", <€Š:€×_€Ø_€Ù:7> * 16, [[<ore:‚…>, <ore:‚…>, <ore:‚…>], [<ore:‚…>, <ore:‚…>, <ore:‚…>]]);
ƒe.ƒq("€€:„¤", <€€:q:1>.ƒ‚({"oc:„~": 4}), [<€€:q:1>, <ore:J>]);
ƒe.ƒl("€€:„¥", <€€:‚†>, [[<ore:€§>, ƒn, ƒn], [<ore:oc:‚ >, <ore:€ƒ>, ƒn], [<ore:oc:€³>, <ore:€ƒ>, ƒn]]);
ƒe.ƒq("€€:„¦", <€€:q:1>.ƒ‚({"oc:„~": 3}), [<€€:q:1>, <ore:>]);
ƒe.ƒl("€Š:ƒ‡_P", <€Š:P:7> * 3, [[<€Š:€—:7>, <€Š:€—:7>]]);
ƒe.ƒl("€€:„§", <€€:‚†:2>, [[<€Š:€‹_€Œ>, <ore:oc:‚ˆ>, <€Š:€‹_€Œ>], [<ore:oc:€…>, <ore:oc:‚N>, <ore:oc:>], [<€Š:€‹_€Œ>, <ore:oc:Š>, <€Š:€‹_€Œ>]]);
ƒe.ƒq("€€:„¨", <€€:q:1>.ƒ‚({"oc:„~": 2}), [<€€:q:1>, <ore:>]);
ƒe.ƒl("€€:„©", <€€:‚†:3>, [[<ore:€Û>, <ore:€˜>, <ore:>], [<ore:J>, <ore:oc:Û>, <ore:>], [<ore:+>, <ore:€Ö>, <ore:€Ü>]]);
ƒe.ƒq("€€:„ª", <€€:q:1>.ƒ‚({"oc:„~": 1}), [<€€:q:1>, <ore:€˜>]);
ƒe.ƒq("€€:„«", <€€:‚†:4>, [<€Š:€õ>, <ore:oc:€®>]);
ƒe.ƒq("€€:„¬", <€€:q:1>.ƒ‚({"oc:„~": 0}), [<€€:q:1>, <ore:€Û>]);
ƒe.ƒq("€Š:ƒš_€—", <€Š:€—:13>, [<ore:>, <€Š:€—>]);
ƒe.ƒq("€€:„­", <€€:q:1>.ƒ‚({"oc:„”": {"oc:fs.„•": "„®"}, "oc:„~": 6, „—: {„˜: "„¯ („° „±)"}, "oc:„œ": "€€:„®"}), [<ore:oc:„>, <ore:oc:€¦>]);
ƒe.ƒl("€Š:€¹_,", <€Š:€¹_,>, [[<ore:€ÿ>, ƒn, <ore:€ÿ>], [<ore:€ÿ>, ƒn, <ore:€ÿ>]]);
ƒe.ƒq("€Š:„²", <€Š:€â:5> * 2, [<ore:‚/>, <ore:€Ó>]);
ƒe.ƒq("€Š:„³", ƒn, []);
ƒe.ƒl("€É:„´_‚Š", <€É:‚Š>, [[ƒn, <ore:€ğ>, ƒn], [<€Š:†>, <€Š:†>, <€Š:†>]]);
ƒe.ƒq("€€:„µ", <€€:€Ê:19>, [<€€:€Ê:19>, <€Š:‡_map:*>]);
ƒe.ƒl("€Š:€£", <€Š:€£> * 4, [[<ore:€ï>], [<ore:€ï>]]);
ƒe.ƒl("€Š:ƒŞ_I", <€Š:I:3>, [[<€Š:€â_\:5>], [<€Š:€â_\:5>]]);
ƒe.ƒq("€·:B_ƒA_„ ", <€·:B:2>, [<€·:B:2>]);
ƒe.ƒq("€€:„¶", <€€:q:1>.ƒ‚({"oc:„~": 8}), [<€€:q:1>, <ore:j>]);
ƒe.ƒq("€€:„·", <€€:q:1>.ƒ‚({"oc:„~": 7}), [<€€:q:1>, <ore:>]);
ƒe.ƒq("€€:„¸", <€€:q:1>.ƒ‚({"oc:„~": 6}), [<€€:q:1>, <ore:€Ş>]);
ƒe.ƒq("€€:„¹", <€€:q:1>.ƒ‚({"oc:„~": 5}), [<€€:q:1>, <ore:>]);
ƒe.ƒl("€Š:€ò_oak_", <€Š:€ò_oak_> * 4, [[<€Š:€Ã:5>, ƒn, ƒn], [<€Š:€Ã:5>, <€Š:€Ã:5>, ƒn], [<€Š:€Ã:5>, <€Š:€Ã:5>, <€Š:€Ã:5>]]);
ƒe.ƒl("€Š:‚Œ_Á", <€Š:‚Œ_Á>, [[ƒn, <€Š:_rod>, ƒn], [<ore:€Ó>, <ore:€Ó>, <ore:€Ó>]]);
ƒe.ƒl("€€:„º", <€€:‚†:5>, [[<ore:oc:°>, <ore:oc:>, <ore:oc:°>], [<ore:oc:€ˆ>, <ore:oc:‚>, <ore:oc:€º>], [<ore:oc:°>, <ore:oc:Q>, <ore:oc:°>]]);
ƒe.ƒl("€É:ƒ€_ƒ_oak", <€É:ƒ€:1>.ƒ‚({è: "oak"}) * 2, [[<€Š:€Ã>, <ore:İ>, <€Š:€Ã>], [<€Š:€Ã>, <€Š:€Ã>, <€Š:€Ã>], [<€Š:€Ã>, <ore:İ>, <€Š:€Ã>]]);
ƒe.ƒl("€·:€á_‚r", <€·:€á_‚r> * 4, [[ƒn, <€Š:A_€ä:*>, ƒn], [<€Š:A_€ä:*>, <€Š:€Ã>, <€Š:A_€ä:*>], [<€Š:€Ã>, <€Š:log>, <€Š:€Ã>]]);
ƒe.ƒq("€€:„»", <€€:q:1>.ƒ‚({"oc:„~": 14}), [<€€:q:1>, <ore:!>]);
ƒe.ƒq("€€:„¼", <€€:q:1>.ƒ‚({"oc:„~": 13}), [<€€:q:1>, <ore:€Ö>]);
ƒe.ƒq("€€:„½", <€€:q:1>.ƒ‚({"oc:„~": 12}), [<€€:q:1>, <ore:m>]);
ƒe.ƒl("€€:„¾", <€€:‚> * 4, [[<ore:€²>, <ore:oc:‚>, <ore:€²>], [<€Š:ğ>, <€Š:L>, <€Š:ğ>], [<ore:€²>, <ore:oc:‚>, <ore:€²>]]);
ƒe.ƒq("€€:„¿", <€€:q:1>.ƒ‚({"oc:„~": 11}), [<€€:q:1>, <ore:+>]);
ƒe.ƒq("€Š:„À", ƒn, []);
ƒe.ƒq("€€:„Á", <€€:q:1>.ƒ‚({"oc:„~": 10}), [<€€:q:1>, <ore:Æ>]);
ƒe.ƒq("€€:„Â", <€€:q:1>.ƒ‚({"oc:„~": 9}), [<€€:q:1>, <ore:~>]);
ƒe.ƒq("€·:‚n_log_to_€Ã_raw", <€·:‚n_€Ã> * 4, [<€·:‚n_log>]);
ƒe.ƒl("€·:ƒ_b", <€·:€Ä:3>, [[<€·:€Æ:3>, <€·:€Æ:3>, <€·:€Æ:3>], [<€·:€¸:1>, <€·:€¸>, <€·:€¸:1>], [<€·:€Æ:3>, <€·:€Æ:3>, <€·:€Æ:3>]]);
ƒe.ƒl("€Š:€â_axe", <€Š:€â_axe>, [[<ore:€Ó>, <ore:€Ó>], [<ore:€Ó>, <ore:€•>], [ƒn, <ore:€•>]]);
ƒe.ƒq("€€:„Ã", ƒn, []);
ƒe.ƒl("€Š:€‘_€", <€Š:€‘_€>, [[<€Š:_€Œ>, <€Š:_€Œ>, <€Š:_€Œ>], [<€Š:_€Œ>, <€Š:€>, <€Š:_€Œ>], [<€Š:_€Œ>, <€Š:_€Œ>, <€Š:_€Œ>]]);
ƒe.ƒq("€·:sun_‚", <€·:@:250>, [<ore:€ÿ>, <ore:ú>, <ore:ú>, <ore:ú>, <ore:ú>]);
ƒe.ƒl("€Š:ƒ“_€Ñ", <€Š:€Ñ:4>, [[<€Š:€—:11>, <€Š:€—:11>, <€Š:€—:11>], [<€Š:€—:11>, <€Š:€—:11>, <€Š:€—:11>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€·:„Ä", <€·:‚‘>, [[<€·:©:8>], [<€·:©:8>], [<€Š:€£:*>]]);
ƒe.ƒl("€Š:€¹_€µ", <€Š:€¹_€µ>, [[<ore:€ÿ>, <ore:€ÿ>, <ore:€ÿ>], [<ore:€ÿ>, <ore:€ÿ>, <ore:€ÿ>], [<ore:€ÿ>, <ore:€ÿ>, <ore:€ÿ>]]);
ƒe.ƒl("€·:„_can", <€·:‚7>, [[<ore:€â>, <ore:€â>, <ore:€â>], [<ore:€Ó>, <ore:İ>, <ore:€Ó>], [<ore:€Ó>, <ore:€Ó>, <ore:€Ó>]]);
ƒe.ƒl("€Š:€_€×_€Ø", <€Š:€×_€Ø:4> * 8, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:+>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
ƒe.ƒl("€€:„Å", <€€:‚’>, [[<ore:€²>, <ore:€”>, <ore:€²>], [<ore:oc:Q>, <ore:oc:€>, <ore:oc:Q>], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒl("€Š:æ_ƒ“_€×_€Ø", <€Š:€×_€Ø:3> * 8, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:m>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
ƒe.ƒl("€Š:oak_A_\", <€Š:A_\> * 6, [[<€Š:€Ã>, <€Š:€Ã>, <€Š:€Ã>]]);
ƒe.ƒq("€·:ƒœ_‚¬_1_ƒ¬", <€·:> * 9, [<€·::1>]);
ƒe.ƒl("€Š:ã", <€Š:ã>, [[<ore:ú>, <ore:ú>], [<ore:ú>, <ore:ú>]]);
ƒe.ƒq("€·:€Ø_ã", <€·::4> * 2, [<€·:>, <ore:ú>, <€·:>]);
ƒe.ƒl("€Š:_‚", <€Š:_‚> * 4, [[<€Š:>]]);
ƒe.ƒl("€É:
_€À", <€É:
:2> * 4, [[<ore:€•>, <€Š:€Ã:2>, <ore:€•>], [<€Š:€Ã:2>, <€Š:€Ã:2>, <€Š:€Ã:2>], [<ore:€•>, <€Š:€Ã:2>, <ore:€•>]]);
ƒe.ƒl("€Š:ƒŞ_red_T", <€Š:red_T:1>, [[<€Š:€â_‚„>], [<€Š:€â_‚„>]]);
ƒe.ƒl("€Š:€Ç_€È_€Á", <€Š:€Ç_€È_€Á> * 6, [[<€Š:€Ç_€È>, <€Š:€Ç_€È>, <€Š:€Ç_€È>], [<€Š:€Ç_€È>, <€Š:€Ç_€È>, <€Š:€Ç_€È>]]);
ƒe.ƒq("€Š:‚,_‚-", <€Š:‚,_‚->, [<€Š:_>, <ore:€ğ>]);
ƒe.ƒl("€·:„_€â", <€·:€¸:5>, [[<€·:€¸:3>, <€·:€¸:3>, <€·:€¸:3>], [<€·:€¸:3>, <ore:€ÿ>, <€·:€¸:3>], [<€·:€¸:3>, <€·:€¸:3>, <€·:€¸:3>]]);
ƒe.ƒl("€Š:‚“", <€Š:‚“>, [[<ore:€ï>, <ore:€ï>, <ore:€ï>], [<€Š:€õ>, <€Š:€õ>, <€Š:€õ>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒq("€·:ƒ‹_€µ_to_V", <€·:€¸:12> * 9, [<€·:Ğ>]);
ƒe.ƒq("€·:ƒœ_‚¬_3_ƒ¬", <€·::2> * 9, [<€·::3>]);
ƒe.ƒl("€Š:‚k_€µ", <€Š:‚k_€µ>, [[<€Š:dye:4>, <€Š:dye:4>, <€Š:dye:4>], [<€Š:dye:4>, <€Š:dye:4>, <€Š:dye:4>], [<€Š:dye:4>, <€Š:dye:4>, <€Š:dye:4>]]);
ƒe.ƒq("€€:„Æ", <€€:q:3>, [<€€:q:3>]);
ƒe.ƒl("€Š:ß_P", <€Š:P:10> * 3, [[<€Š:€—:10>, <€Š:€—:10>]]);
ƒe.ƒq("€€:„Ç", <€€:q:2>, [<€€:q:2>]);
ƒe.ƒq("€€:„È", <€€:q:1>, [<€€:q:1>]);
ƒe.ƒl("€Š:ƒ·_€×_€ß_€à", <€Š:€×_€ß_€à:6> * 8, [[<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <ore:~>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>]]);
ƒe.ƒl("€Š:€ _€×_€Ø_€Ù", <€Š:€×_€Ø_€Ù:12> * 16, [[<ore:‚•>, <ore:‚•>, <ore:‚•>], [<ore:‚•>, <ore:‚•>, <ore:‚•>]]);
ƒe.ƒq("€Š:€ _bed_ƒr_ƒ…_bed", <€Š:bed:12>, [<€Š:bed>, <ore:>]);
ƒe.ƒl("€É:ƒ€_ƒ_€è", <€É:ƒ€:4>.ƒ‚({è: "€è"}) * 4, [[<ore:İ>, <€Š:A_\:1>, <ore:İ>], [<€Š:A_\:1>, <€Š:A_\:1>, <€Š:A_\:1>], [<ore:İ>, <€Š:A_\:1>, <ore:İ>]]);
ƒe.ƒl("€Š:€‹_axe", <€Š:€‹_axe>, [[<ore:€²>, <ore:€²>], [<ore:€²>, <ore:€•>], [ƒn, <ore:€•>]]);
ƒe.ƒq("€Š:ƒˆ_€—", <€Š:€—:9>, [<ore:€Ş>, <€Š:€—>]);
ƒe.ƒl("€·:lux_ƒ¹_ƒš", <€·:>:4>, [[<€·:€¸:17>, <ore:ò>, <€·:€¸:17>], [<€·:€¸:17>, <€·:@>, <€·:€¸:17>], [<€·:€¸:17>, <€·:€¸>, <€·:€¸:17>]]);
ƒe.ƒl("€Š:T_", <€Š:T_> * 4, [[<€Š:T> | <€Š:T:1> | <€Š:T:2>, ƒn, ƒn], [<€Š:T> | <€Š:T:1> | <€Š:T:2>, <€Š:T> | <€Š:T:1> | <€Š:T:2>, ƒn], [<€Š:T> | <€Š:T:1> | <€Š:T:2>, <€Š:T> | <€Š:T:1> | <€Š:T:2>, <€Š:T> | <€Š:T:1> | <€Š:T:2>]]);
ƒe.ƒq("€Š:€ª_eye", <€Š:€ª_eye>, [<ore:‚–>, <€Š:_>]);
ƒe.ƒl("€€:„É", <€€:€Ê:16>, [[<ore:€²>, ƒn, <ore:€²>], [<ore:oc:€®>, <ore:N>, <ore:oc:€®>], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒl("€Š:‚˜", <€Š:‚˜>, [[<ore:€ï>, <ore:€ï>, <ore:€ï>], [<ore:€ï>, <ore:€ÿ>, <ore:€ï>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒq("€€:„Ê", <€€:q>, [<€€:q>]);
ƒe.ƒq("€€:„Ë", <€€:q:4>, [<€€:q:4>]);
ƒe.ƒl("€Š:ƒ…_bed", <€Š:bed>, [[<€Š:€—>, <€Š:€—>, <€Š:€—>], [<ore:€ï>, <ore:€ï>, <ore:€ï>]]);
ƒe.ƒl("€·:lux_ƒ¹_ƒ…", <€·:>:6>, [[<€·:€¸:17>, <ore:>, <€·:€¸:17>], [<€·:€¸:17>, <€·:@>, <€·:€¸:17>], [<€·:€¸:17>, <€·:€¸>, <€·:€¸:17>]]);
ƒe.ƒl("€É:ƒ€_ƒô_oak", <€É:ƒ€>.ƒ‚({è: "oak"}), [[<€Š:€Ã>, <€Š:€Ã>, <€Š:€Ã>], [ƒn, <ore:İ>, ƒn], [<€Š:€Ã>, <€Š:€Ã>, <€Š:€Ã>]]);
ƒe.ƒl("€·:„_can_ƒ±", <€·:‚™>, [[<ore:€â>, <ore:€â>, <ore:€â>], [<ore:€Ó>, <ore:€¾>, <ore:€Ó>], [<ore:€Ó>, <ore:€Ó>, <ore:€Ó>]]);
ƒe.ƒl("€€:„Ì", <€€:€Ê:7>, [[<ore:€”>, <ore:oc:€>, <ore:€”>], [<ore:N>, <ore:€Ğ>, ƒn], [<ore:€”>, <ore:oc:€†>, <ore:€”>]]);
ƒe.ƒl("€Š:„Í_(", <€Š:(:1> * 4, [[<€Š:(>, <€Š:6>], [<€Š:6>, <€Š:(>]]);
ƒe.ƒl("€Š:€Ğ_·", <€Š:€Ğ_·>, [[<ore:İ>], [<€Š:·>]]);
ƒe.ƒl("€€:„Î", <€€:€Ê:13>, [[<ore:€²>, <ore:oc:Û>, <ore:€²>], [<ore:oc:€>, <ore:oc:‚š>, <ore:oc:€>], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒq("€€:„Ï", ƒn, []);
ƒe.ƒl("€Š:€_P", <€Š:P:4> * 3, [[<€Š:€—:4>, <€Š:€—:4>]]);
ƒe.ƒl("€Š:sea_‚›", <€Š:sea_‚›>, [[<ore:‚>, <ore:‚œ>, <ore:‚>], [<ore:‚œ>, <ore:‚œ>, <ore:‚œ>], [<ore:‚>, <ore:‚œ>, <ore:‚>]]);
ƒe.ƒl("€€:„Ğ", <€€:€Ê:12>, [[<ore:€²>, <ore:oc:Û>, <ore:€²>], [<ore:oc:€®>, <ore:oc:‚>, <ore:oc:€®>], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒl("€€:„Ñ", <€€:€Ê:15>, [[<ore:€”>, ƒn, <ore:€”>], [<ore:oc:€>, <€Š:€ú>, <ore:oc:€>], [<ore:€”>, <ore:oc:€³>, <ore:€”>]]);
ƒe.ƒl("€€:„Ò", <€€:€Ê:14>, [[<ore:€²>, <ore:oc:Û>, <ore:€²>], [<ore:oc:€…>, <ore:oc:‚>, <ore:oc:€…>], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒl("€€:„Ó", <€€:€Ê:9>, [[<ore:€²>, <ore:oc:€>, <ore:€²>], [<ore:N>, <ore:€Ğ>, ƒn], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒl("€€:„Ô", <€€:€Ê:8>, [[<ore:€²>, <ore:oc:€®>, <ore:€²>], [<ore:N>, <ore:€Ğ>, ƒn], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒl("€€:„Õ", <€€:€Ê:11>, [[<ore:€²>, ƒn, <ore:€²>], [<ore:oc:€®>, <ore:‚a>, <ore:oc:€®>], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒl("€€:„Ö", <€€:€Ê:10>, [[<ore:€”>, <ore:oc:€>, <ore:€”>], [<ore:N>, <ore:€Ğ>, ƒn], [<ore:€”>, <ore:oc:€³>, <ore:€”>]]);
ƒe.ƒq("€Š:red_dye_ƒr_„×_„Ø", <€Š:dye:1> * 2, [<€Š:”_•:4>]);
ƒe.ƒq("€Š:‚Ÿ_‚J_eye", <€Š:‚Ÿ_‚J_eye>, [<€Š:‚J_eye>, <€Š:€ _€¡>, <€Š:½>]);
ƒe.ƒq("€·:ƒœ_€Ó_3_ƒ¬", <€·::2> * 9, [<€·::3>]);
ƒe.ƒl("€·:%_„Ù", <€·:%:1>, [[<€Š:end_rod:*>, ƒn, <€Š:end_rod:*>], [<ore:€²>, <ore:´>, <ore:€²>], [ƒn, <ore:€²>, ƒn]]);
ƒe.ƒl("€Š:€â_hoe", <€Š:€â_hoe>, [[<ore:€Ó>, <ore:€Ó>], [ƒn, <ore:€•>], [ƒn, <ore:€•>]]);
ƒe.ƒl("€Š:U_g", <€Š:U_g>, [[<€Š:€Ã:3>, ƒn, <€Š:€Ã:3>], [<€Š:€Ã:3>, <€Š:€Ã:3>, <€Š:€Ã:3>]]);
ƒe.ƒl("€Š:€¹_hoe", <€Š:€¹_hoe>, [[<ore:€ÿ>, <ore:€ÿ>], [ƒn, <ore:€•>], [ƒn, <ore:€•>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_ƒË", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒË"}), [[<€Š:€´> | <€Š:„Ú_„Û>, <€Š:€´> | <€Š:„Ú_„Û>, <€Š:€´> | <€Š:„Ú_„Û>], [<€Š:€´> | <€Š:„Ú_„Û>, <€Š:‚J_eye>, <€Š:€´> | <€Š:„Ú_„Û>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒq("€Š:_pie", <€Š:_pie>, [<€Š:>, <€Š:½>, <ore:egg>]);
ƒe.ƒl("€Š:œ_‚¡", <€Š:œ_‚¡> * 6, [[<€Š:œ>, <€Š:œ>, <€Š:œ>]]);
ƒe.ƒq("€·:„Ü", <€·:€Æ> * 4, [<ore:€â>, <ore:‚¢>, <ore:€â>, <ore:‚¢>]);
ƒe.ƒq("€·:€Ê_„İ", <€·:€¸:8>, [<€·:€¸:9>, <€Š:€‘_€ı>]);
ƒe.ƒl("€Š:U_€Á", <€Š:U_€Á> * 3, [[<€Š:€Ã:3>, <€Š:€£>, <€Š:€Ã:3>], [<€Š:€Ã:3>, <€Š:€£>, <€Š:€Ã:3>]]);
ƒe.ƒl("€Š:æ_ç_¸_¹", <€Š:æ_ç_¸_¹>, [[<ore:€”>, <ore:€”>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_ƒÊ", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒÊ"}), [[<€Š:¾> | <€Š:€Ÿ> | <€Š:€>, <€Š:¾> | <€Š:€Ÿ> | <€Š:€>, <€Š:¾> | <€Š:€Ÿ> | <€Š:€>], [<€Š:¾> | <€Š:€Ÿ> | <€Š:€>, <€Š:€œ_„Ş> | <€Š:€œ_„ß> | <€Š:€œ_„S> | <€Š:€œ_„à> | <€Š:€œ_„á> | <€Š:€œ_€™>, <€Š:¾> | <€Š:€Ÿ> | <€Š:€>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€Š:€Ø_Ì", <€Š:€Ø_Ì> * 3, [[<ore:>, ƒn, <ore:>], [ƒn, <ore:>, ƒn]]);
ƒe.ƒl("€Š:€‹_€ó", <€Š:€‹_€ó> * 3, [[<ore:€²>, <ore:€²>], [<ore:€²>, <ore:€²>], [<ore:€²>, <ore:€²>]]);
ƒe.ƒq("€·:ƒÛ_€µ_to_V", <€·:€¸:17> * 9, [<€·:Ğ:2>]);
ƒe.ƒl("€Š:ß_€×_€Ø_€Ù", <€Š:€×_€Ø_€Ù:10> * 16, [[<ore:‚£>, <ore:‚£>, <ore:‚£>], [<ore:‚£>, <ore:‚£>, <ore:‚£>]]);
ƒe.ƒl("€Š:„5_„", <€Š:€â:2> * 4, [[<ore:‚¤>, <ore:‚¤>], [<ore:‚¤>, <ore:‚¤>]]);
ƒe.ƒl("€·:„â_can", <€·:‚¥:‚¦>, [[<€Š:€â:*>, ƒn, ƒn], [<€Š:€â:*>, <€Š:€¢:*>, <€Š:€â:*>], [ƒn, <€Š:€â:*>, ƒn]]);
ƒe.ƒl("€Š:ğ_·", <€Š:ğ_·>, [[<€Š:ğ>], [<€Š:·>]]);
ƒe.ƒl("€Š:ƒ“_€×_€Ø_€Ù", <€Š:€×_€Ø_€Ù:11> * 16, [[<ore:‚u>, <ore:‚u>, <ore:‚u>], [<ore:‚u>, <ore:‚u>, <ore:‚u>]]);
ƒe.ƒl("€Š:ƒ·_€Ñ", <€Š:€Ñ:9>, [[<€Š:€—:6>, <€Š:€—:6>, <€Š:€—:6>], [<€Š:€—:6>, <€Š:€—:6>, <€Š:€—:6>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€Š:ƒŞ_Y_€µ", <€Š:Y_€µ:1>, [[<€Š:€â_\:7>], [<€Š:€â_\:7>]]);
ƒe.ƒq("€Š:ƒ“_bed_ƒr_ƒ…_bed", <€Š:bed:11>, [<€Š:bed>, <ore:J>]);
ƒe.ƒl("€·:‚b_ƒÖ", <€·:‚b> * 4, [[<ore:€²>, <ore:€–>, <ore:€²>], [<ore:€–>, <ore:İ>, <ore:€–>], [<ore:€²>, <ore:€–>, <ore:€²>]]);
ƒe.ƒl("€É:„z_v_„ã", <€É:‚s>, [[<ore:€•>, <ore:€•>, <ore:€•>], [ƒn, <ore:İ>, ƒn], [<ore:€•>, <ore:€•>, <ore:€•>]]);
ƒe.ƒl("€€:„ä", <€€:‚ƒ>, [[<ore:€²>, <ore:oc:€­>, <ore:€²>], [<ore:oc:€­>, <ore:oc:€®>, <ore:oc:€­>], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒl("€É:„z_v_„å", <€É:‚s:1> * 2, [[<ore:€•>, <ore:İ>, <ore:€•>], [<ore:€•>, <ore:€ï>, <ore:€•>], [<ore:€•>, <ore:İ>, <ore:€•>]]);
ƒe.ƒl("€É:„z_v_„æ", <€É:‚s:2> * 4, [[<ore:İ>, <ore:€•>, <ore:İ>], [<ore:€•>, <ore:€ï>, <ore:€•>], [<ore:İ>, <ore:€•>, <ore:İ>]]);
ƒe.ƒl("€É:ƒ€_ƒ_€ò_oak", <€É:ƒ€:4>.ƒ‚({è: "€ò_oak"}) * 4, [[<ore:İ>, <€Š:A_\:5>, <ore:İ>], [<€Š:A_\:5>, <€Š:A_\:5>, <€Š:A_\:5>], [<ore:İ>, <€Š:A_\:5>, <ore:İ>]]);
ƒe.ƒq("€Š:ƒ·_€—", <€Š:€—:6>, [<ore:~>, <€Š:€—>]);
ƒe.ƒl("€Š:€ê", <€Š:€ê>, [[<€Š:€™_‚©>, <€Š:€™_‚©>], [<€Š:€™_‚©>, <€Š:€™_‚©>]]);
ƒe.ƒl("€·:bag_of_„ç", <€·:‚ª>, [[<ore:€”>, <ore:€”>, <ore:€”>], [<ore:İ>, <€·:t:1>, <ore:İ>], [<ore:€”>, <ore:€”>, <ore:€”>]]);
ƒe.ƒl("€€:„è", <€€:‚«>, [[<ore:€²>, <ore:oc:€®>, <ore:€²>], [<ore:oc:‚ >, <ore:oc:€¦>, <ore:oc:‚ >], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒl("€·:ƒœ_6", <€·:‚>, [[<€Š:6>, <€Š:6>, <€Š:6>], [<€Š:6>, <€Š:6>, <€Š:6>], [<€Š:6>, <€Š:6>, <€Š:6>]]);
ƒe.ƒl("€É:€Ê_q_", <€É:€Ê_q:2>, [[<ore:€•>, <ore:€•>, <ore:€•>], [<€Š:_V>, <€É:€Ê_€Ë>, <€Š:_V>], [<ore:€•>, <ore:€•>, <ore:€•>]]);
ƒe.ƒq("€·:ƒœ_‚¬_ƒ¬", <€Š:‚¬> * 9, [<€·:>]);
ƒe.ƒq("€Š:æ_ƒ‡_3_", <€Š:3_:8> * 8, [<ore:>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:5>, <€Š:6>, <€Š:6>, <€Š:6>, <€Š:6>]);
ƒe.ƒl("€Š:¶", <€Š:¶>, [[<ore:€Ó>, <ore:€Ó>, <ore:€Ó>], [<ore:€Ó>, ƒn, <ore:€Ó>], [<ore:€Ó>, <ore:€Ó>, <ore:€Ó>]]);
ƒe.ƒl("€·:ƒœ_€Ó", <€·:>, [[<€Š:€Ó>, <€Š:€Ó>, <€Š:€Ó>], [<€Š:€Ó>, <€Š:€Ó>, <€Š:€Ó>], [<€Š:€Ó>, <€Š:€Ó>, <€Š:€Ó>]]);
ƒe.ƒl("€·:ƒœ_(_2", <€·:):2>, [[<€·:):1>, <€·:):1>, <€·:):1>], [<€·:):1>, <€·:):1>, <€·:):1>], [<€·:):1>, <€·:):1>, <€·:):1>]]);
ƒe.ƒl("€·:ƒœ_(_1", <€·:):1>, [[<€·:)>, <€·:)>, <€·:)>], [<€·:)>, <€·:)>, <€·:)>], [<€·:)>, <€·:)>, <€·:)>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_€ª", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_€ª"}), [[<€Š:€ª_Í:*>, <€Š:€ª_Í:*>, <€Š:€ª_Í:*>], [<€Š:€ª_Í:*>, <€Š:€¨:*>, <€Š:€ª_Í:*>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_ƒÍ", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒÍ"}), [[<€·:t:1>, <€·:t:1>, <€·:t:1>], [<€·:t:1>, <€Š:&_':*>, <€·:t:1>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€É:€Ê_‚­", <€É:€Ê_‚­>, [[<€Š:dye:4>, <ore:€•>, <€Š:dye:4>], [<ore:€•>, <€É:€Ê_€Ë>, <ore:€•>], [<€Š:dye:4>, <ore:€•>, <€Š:dye:4>]]);
ƒe.ƒl("€·:B_256", <€·:B:1>, [[<ore:€²>, <€Š:‚>_ç_¸_¹:*>, <ore:€²>], [<ore:€²>, <€Š:Ñ:*>, <ore:€²>], [<ore:€²>, <€Š:‚>_ç_¸_¹:*>, <ore:€²>]]);
ƒe.ƒl("€É:
_.", <€É:
:4> * 4, [[<ore:€•>, <€Š:€Ã:4>, <ore:€•>], [<€Š:€Ã:4>, <€Š:€Ã:4>, <€Š:€Ã:4>], [<ore:€•>, <€Š:€Ã:4>, <ore:€•>]]);
ƒe.ƒl("€€:„é", <€€:‚®>, [[<ore:€²>, <ore:oc:€®>, <ore:€²>], [<ore:N>, <ore:€•>, ƒn], [<ore:€²>, <ore:oc:€³>, <ore:€²>]]);
ƒe.ƒl("€·:ƒœ_(_3", <€·:):3>, [[<€·:):2>, <€·:):2>, <€·:):2>], [<€·:):2>, <€·:):2>, <€·:):2>], [<€·:):2>, <€·:):2>, <€·:):2>]]);
ƒe.ƒl("€Š:‚¯_€’", <€Š:‚¯_€’> * 6, [[<ore:€²>, <ore:€•>, <ore:€²>], [<ore:€²>, <€Š:_>, <ore:€²>], [<ore:€²>, <ore:€•>, <ore:€²>]]);
ƒe.ƒl("€·:ƒ¯_ƒ°_ƒ@_„£", <€·:0:3> * 2, [[ƒn, <€Š:€ª_Í:*>, ƒn], [<€·:0>, <ore:€û>, <€·:0>], [ƒn, <€Š:€ª_Í:*>, ƒn]]);
ƒe.ƒq("€Š:ƒ†_dye", <€Š:dye:10> * 2, [<ore:>, <ore:€Ü>]);
ƒe.ƒl("€€:„ê", <€€:‚°>, [[<€Š:€‹_€Œ>, <ore:oc:‚±>, <€Š:€‹_€Œ>], [<ore:€ê>, <ore:oc:‚²>, <ore:€ê>], [<€Š:€‹_€Œ>, <ore:oc:Q>, <€Š:€‹_€Œ>]]);
ƒe.ƒl("€Š:oak_€Ã", <€Š:€Ã> * 4, [[<€Š:log>]]);
ƒe.ƒl("€€:„ë", <€€:è:8> * 4, [[<ore:€ƒ>, <ore:€ƒ>, <ore:€ƒ>], [<€Š:>, <ore:oc:‚ >, <€Š:>], [<ore:€ƒ>, <ore:€ƒ>, <ore:€ƒ>]]);
ƒe.ƒl("€·:‚y", <€·:‚y>, [[ƒn, <ore:€˜>, <ore:€²>], [ƒn, <ore:€²>, <ore:€–>], [<ore:€²>, ƒn, ƒn]]);
ƒe.ƒl("€€:„ì", <€€:è:7> * 8, [[<€Š:€‹_€Œ>, <€Š:€‹_€Œ>, <€Š:€‹_€Œ>], [<€Š:>, <ore:oc:‚ >, <€Š:>], [<€Š:€‹_€Œ>, <€Š:€‹_€Œ>, <€Š:€‹_€Œ>]]);
ƒe.ƒl("€€:„í", <€€:è:10>, [[<€Š:€‹_€Œ>, <€Š:>, <€Š:€‹_€Œ>], [<ore:oc:‚ >, <ore:oc:€®>, <ore:oc:‚ >], [<€Š:€‹_€Œ>, <ore:oc:‚ >, <€Š:€‹_€Œ>]]);
ƒe.ƒl("€€:„î", <€€:è:9> * 2, [[<ore:€‡>, <ore:€‡>, <ore:€‡>], [<€Š:>, <ore:oc:‚ >, <€Š:>], [<ore:€‡>, <ore:€‡>, <ore:€‡>]]);
ƒe.ƒq("€€:„ï", <€€:è:2> * 8, [<ore:€”>, <€Š:€à>, <ore:>]);
ƒe.ƒq("€€:„ğ", <€€:è:1>, [<€Š:b_L>, <€Š:½>, <ore:€ğ>, <€Š:‚Ÿ_‚J_eye>, <ore:€´>]);
ƒe.ƒl("€€:„ñ", <€€:è:6> * 8, [[<ore:€²>, <ore:€²>, <ore:€²>], [<ore:€ƒ>, <ore:†>, <ore:€ƒ>], [ƒn, <€Š:>, ƒn]]);
ƒe.ƒl("€É:€Ê_q_€ú", <€É:€Ê_q:4>, [[<ore:€•>, <ore:€•>, <ore:€•>], [<€Š:€ú>, <€É:€Ê_€Ë>, <€Š:€ú>], [<ore:€•>, <ore:€•>, <ore:€•>]]);
ƒe.ƒl("€€:„ò", <€€:è:5>, [[<€Š:€‹_€Œ>, ƒn, ƒn], [<€Š:€‹_€Œ>, <ore:oc:€³>, ƒn], [<€Š:€‹_€Œ>, <ore:€ƒ>, ƒn]]);
ƒe.ƒl("€·:‚›", <€·:‚¶>, [[<ore:€–>, <€·:€Æ:2>, <ore:€–>], [<€·:€Æ:2>, <€Š:€İ:*>, <€·:€Æ:2>], [<ore:€–>, <€Š:W:*>, <ore:€–>]]);
ƒe.ƒl("€É:„z_
", <€É:‚·> * 4, [[<ore:€ï>, <ore:€•>, <ore:€ï>], [<ore:€•>, <ore:€ï>, <ore:€•>], [<ore:€ï>, <ore:€•>, <ore:€ï>]]);
ƒe.ƒl("€€:„ó", <€€:è>, [[<ore:€•>, <ore:í>, <ore:€•>]]);
ƒe.ƒq("€·:€Ø_€ò", <€·::3> * 2, [<€·:>, <ore:€Û>, <€·:>]);
ƒe.ƒl("€·:ƒœ_‚¬", <€·:>, [[<€Š:‚¬>, <€Š:‚¬>, <€Š:‚¬>], [<€Š:‚¬>, <€Š:‚¬>, <€Š:‚¬>], [<€Š:‚¬>, <€Š:‚¬>, <€Š:‚¬>]]);
ƒe.ƒl("€·:‚¸", <€·:‚¸>, [[ƒn, <€·:t:1>, ƒn], [<€·:t:1>, ƒn, <€·:t:1>]]);
ƒe.ƒl("€É:ƒ€_ƒô_U", <€É:ƒ€>.ƒ‚({è: "U"}), [[<€Š:€Ã:3>, <€Š:€Ã:3>, <€Š:€Ã:3>], [ƒn, <ore:İ>, ƒn], [<€Š:€Ã:3>, <€Š:€Ã:3>, <€Š:€Ã:3>]]);
ƒe.ƒq("€Š:ß_dye", <€Š:dye:5> * 2, [<ore:J>, <ore:€˜>]);
ƒe.ƒl("€Š:red_T", <€Š:red_T>, [[<€Š:5:1>, <€Š:5:1>], [<€Š:5:1>, <€Š:5:1>]]);
ƒe.ƒl("€Š:€‹_€ı", <€Š:€‹_€ı>, [[<ore:€²>, <ore:€²>, <ore:€²>], [ƒn, <ore:€•>, ƒn], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€Š:Y_\", <€Š:€â_\:7> * 6, [[<€Š:Y_€µ> | <€Š:Y_€µ:1> | <€Š:Y_€µ:2>, <€Š:Y_€µ> | <€Š:Y_€µ:1> | <€Š:Y_€µ:2>, <€Š:Y_€µ> | <€Š:Y_€µ:1> | <€Š:Y_€µ:2>]]);
ƒe.ƒl("€€:„ô", <€€:è:20>, [[<€Š:€‹_€Œ>, <ore:oc:€®>, <€Š:€‹_€Œ>], [<€Š:>, <ore:€Ğ>, <€Š:>], [<€Š:€‹_€Œ>, <ore:oc:€³>, <€Š:€‹_€Œ>]]);
ƒe.ƒl("€€:„õ", <€€:è:18>, [[<ore:oc:€>, <€Š:€â_H>, <ore:€”>], [<ore:oc:‚ >, <ore:oc:‚N>, <ore:oc:€…>], [<ore:oc:€>, <ore:oc:€³>, <ore:€”>]]);
ƒe.ƒl("€€:„ö", <€€:è:21>, [[<ore:€ƒ>, <ore:oc:€…>, <ore:€ƒ>], [<ore:€¾>, <ore:€Ğ>, <ore:€¾>], [<ore:€ƒ>, <ore:oc:€³>, <ore:€ƒ>]]);
ƒe.ƒl("€€:„÷", <€€:è:15>, [[ƒn, <€Š:€â_H>, ƒn], [<€Š:€â_H>, <€Š:€â_H>, <€Š:€â_H>]]);
ƒe.ƒl("€€:„ø", <€€:è:14>, [[<€Š:€â_H>, <€Š:€â_H>, <€Š:€â_H>], [<€Š:€â_H>, <€Š:€â_H>, <€Š:€â_H>]]);
ƒe.ƒl("€€:„ù", <€€:è:17>, [[<ore:€”>, <€Š:€â_H>, <ore:€”>], [<ore:oc:‚!>, <ore:oc:‚N>, <ore:oc:€…>], [<ore:€”>, <ore:oc:€³>, <ore:€”>]]);
ƒe.ƒl("€€:„ú", <€€:è:16>, [[<€Š:€â_H>, <€Š:€â_H>, <€Š:€â_H>], [<€Š:€â_H>, <€Š:€â_H>, <€Š:€â_H>], [<€Š:€â_H>, <€Š:€â_H>, <€Š:€â_H>]]);
ƒe.ƒl("€€:„û", <€€:è:11>, [[<ore:€ƒ>, <€Š:>, <ore:€ƒ>], [<ore:oc:‚ >, <€Š:¡>, <ore:oc:‚ >], [<ore:€ƒ>, <ore:oc:‚ >, <ore:€ƒ>]]);
ƒe.ƒl("€€:„ü", <€€:è:13>, [[<ore:€½>, <ore:€½>, <ore:€½>], [<ore:€½>, <ore:€¯>, <ore:€½>], [<ore:€½>, <ore:€½>, <ore:€½>]]);
ƒe.ƒl("€€:„ı", <€€:è:12>, [[ƒn, <€Š:€‹_€Œ>, ƒn], [<€Š:€‹_€Œ>, ƒn, <€Š:€‹_€Œ>], [ƒn, <€Š:€‹_€Œ>, ƒn]]);
ƒe.ƒl("€Š:€Ç_€È_\", <€Š:€â_\:6> * 6, [[<€Š:€Ç_€È>, <€Š:€Ç_€È>, <€Š:€Ç_€È>]]);
ƒe.ƒq("€Š:ƒˆ_dye", <€Š:dye:6> * 2, [<ore:J>, <ore:>]);
ƒe.ƒl("€·:„ _„!_3", <€·:‚:3>, [[<€Š:€ê:*>, <ore:€”>, <€Š:€ê:*>], [<ore:€”>, <€·:„I:1>, <ore:€”>], [<€·:ª>.ƒ‚({ƒ : {id: "€Š:bat"}, No_ƒ¥: 1 as ƒ£}), <ore:€”>, <€·:ª:1>.ƒ‚({ƒ : {id: "€Š:‚"}, No_ƒ¥: 1 as ƒ£})]]);
ƒe.ƒl("€·:„ _„!_2", <€·:‚:2>, [[<ore:>, <ore:€”>, <ore:~>], [<ore:€”>, <€·:„I:1>, <ore:€”>], [<€·:ª>.ƒ‚({ƒ : {id: "€Š:bat"}, No_ƒ¥: 1 as ƒ£}), <ore:€”>, <€·:ª:1>.ƒ‚({ƒ : {id: "€Š:‚"}, No_ƒ¥: 1 as ƒ£})]]);
ƒe.ƒl("€·:„ _„!_5", <€·:‚:5>, [[<€Š:€İ>, <ore:€”>, <€Š:€İ:1>], [<ore:€”>, <€·:„I:1>, <ore:€”>], [<€·:ª>.ƒ‚({ƒ : {id: "€Š:bat"}, No_ƒ¥: 1 as ƒ£}), <ore:€”>, <€·:ª:1>.ƒ‚({ƒ : {id: "€Š:‚"}, No_ƒ¥: 1 as ƒ£})]]);
ƒe.ƒl("€·:„ _„!_4", <€·:‚:4>, [[<ore:€ƒ>, <ore:€”>, <ore:€ƒ>], [<ore:€”>, <€·:„I:1>, <ore:€”>], [<€·:ª>.ƒ‚({ƒ : {id: "€Š:bat"}, No_ƒ¥: 1 as ƒ£}), <ore:€”>, <€·:ª:1>.ƒ‚({ƒ : {id: "€Š:‚"}, No_ƒ¥: 1 as ƒ£})]]);
ƒe.ƒl("€Š:ƒ‡_€×_€ß_€à", <€Š:€×_€ß_€à:7> * 8, [[<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <ore:j>, <€Š:€ß_€à>], [<€Š:€ß_€à>, <€Š:€ß_€à>, <€Š:€ß_€à>]]);
ƒe.ƒl("€Š:&_'", <€Š:&_'>, [[ƒn, <€Š:€õ>, ƒn], [<ore:€ÿ>, <€Š:€¨>, <ore:€ÿ>], [<€Š:€¨>, <€Š:€¨>, <€Š:€¨>]]);
ƒe.ƒl("€Š:‚=_Y_€µ", <€Š:Y_€µ:2> * 2, [[<€Š:Y_€µ>], [<€Š:Y_€µ>]]);
ƒe.ƒl("€Š:‚{", <€Š:‚{> * 2, [[<ore:€½>, <ore:€½>, ƒn], [<ore:€½>, <ore:€ğ>, ƒn], [ƒn, ƒn, <ore:€½>]]);
ƒe.ƒl("€·:€Ê_„_ƒ‹", <€·:€¸:15>, [[<€·:‚G>, <€·:€¸:12>, <€·:‚G>], [<€·:€¸:12>, <€·:€¸:6>, <€·:€¸:12>], [<€·:‚G>, <€·:€¸:12>, <€·:‚G>]]);
ƒe.ƒl("€Š:€è_g", <€Š:€è_g>, [[<€Š:€Ã:1>, ƒn, <€Š:€Ã:1>], [<€Š:€Ã:1>, <€Š:€Ã:1>, <€Š:€Ã:1>]]);
ƒe.ƒl("€Š:_€µ", <€Š:_€µ>, [[<ore:€”>, <ore:€”>, <ore:€”>], [<ore:€”>, <ore:€”>, <ore:€”>], [<ore:€”>, <ore:€”>, <ore:€”>]]);
ƒe.ƒl("€Š:€À_g", <€Š:€À_g>, [[<€Š:€Ã:2>, ƒn, <€Š:€Ã:2>], [<€Š:€Ã:2>, <€Š:€Ã:2>, <€Š:€Ã:2>]]);
ƒe.ƒl("€É:€Ê_‚¿", <€É:€Ê_‚¿>, [[<€Š:€¨>, <€Š:€¨>, <€Š:€¨>], [<€Š:€¨>, <€É:€Ê_€Ë>, <€Š:€¨>], [<€Š:€¨>, <€Š:€¨>, <€Š:€¨>]]);
ƒe.ƒl("€Š:‚À", <€Š:‚À>, [[<ore:€Ó>, <ore:€Ó>, <ore:€Ó>], [<ore:€–>, <ore:€–>, <€Š:Y>], [<ore:€Ó>, <ore:€Ó>, <ore:€Ó>]]);
ƒe.ƒl("€Š:†", <€Š:†> * 3, [[<ore:ş>, <ore:ş>, <ore:ş>]]);
ƒe.ƒl("€·:„ _„!_1", <€·:‚:1>, [[<€Š:€ö:*>, <ore:€”>, <€Š:€ö:*>], [<ore:€”>, <€·:„I:1>, <ore:€”>], [<€·:ª>.ƒ‚({ƒ : {id: "€Š:bat"}, No_ƒ¥: 1 as ƒ£}), <ore:€”>, <€·:ª:1>.ƒ‚({ƒ : {id: "€Š:‚"}, No_ƒ¥: 1 as ƒ£})]]);
ƒe.ƒl("€·:„ _„!_0", <€·:‚>, [[<ore:>, <ore:€”>, <ore:>], [<ore:€”>, <€·:„I:1>, <ore:€”>], [<€·:ª>.ƒ‚({ƒ : {id: "€Š:bat"}, No_ƒ¥: 1 as ƒ£}), <ore:€”>, <€·:ª:1>.ƒ‚({ƒ : {id: "€Š:‚"}, No_ƒ¥: 1 as ƒ£})]]);
ƒe.ƒl("€Š:€È_", <€Š:€È_> * 4, [[<€Š:€È_€µ>, ƒn, ƒn], [<€Š:€È_€µ>, <€Š:€È_€µ>, ƒn], [<€Š:€È_€µ>, <€Š:€È_€µ>, <€Š:€È_€µ>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_tnt", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_tnt"}), [[<€Š:=:*>, <€Š:=:*>, <€Š:=:*>], [<€Š:=:*>, <€Š:tnt:*>, <€Š:=:*>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€Š:ƒ†_€×_€Ø", <€Š:€×_€Ø:5> * 8, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:Æ>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
ƒe.ƒl("€·:¥_€‹", <€·:¥_€‹>, [[ƒn, <ore:€²>, <ore:€²>], [ƒn, ƒn, <ore:€²>], [<ore:€•>, <ore:€²>, <ore:€²>]]);
ƒe.ƒq("€Š:„ş", ƒn, []);
ƒe.ƒq("€Š:ƒ·_dye_ƒr_„ÿ", <€Š:dye:9> * 2, [<€Š:”_•:5>]);
ƒe.ƒq("€·:€‘_ƒÚ", <€·:ª>, []);
ƒe.ƒl("€·:ƒê_V_to_€µ", <€·:Ğ:1>, [[<€·:€¸:11>, <€·:€¸:11>, <€·:€¸:11>], [<€·:€¸:11>, <€·:€¸:11>, <€·:€¸:11>], [<€·:€¸:11>, <€·:€¸:11>, <€·:€¸:11>]]);
ƒe.ƒl("€·:ƒ¯_€»_ƒ@", <€·:0:1> * 4, [[<ore:€–>, <€·:€»>, <ore:€–>], [<ore:€â>, <€·:2>, <ore:€â>]]);
ƒe.ƒl("€Š:L", <€Š:L>, [[<ore:€²>, ƒn, <ore:€²>], [ƒn, <ore:€²>, ƒn]]);
ƒe.ƒl("€Š:„5_„²", <€Š:€â:6> * 4, [[<ore:‚Â>, <ore:‚Â>], [<ore:‚Â>, <ore:‚Â>]]);
ƒe.ƒl("€Š:ƒŒ_€×_€Ø", <€Š:€×_€Ø:15> * 8, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:€Û>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
Ore …  for <ore:€¤> :
-<€Š:log:*>
-<€Š:û:*>
-<€·:‚n_log:*>
Ore …  for <ore:€ï> :
-<€Š:€Ã:*>
-<€·:‚n_€Ã:*>
Ore …  for <ore:‚t> :
-<€Š:A_\:*>
Ore …  for <ore:Ö> :
-<€Š:oak_>
-<€Š:€è_>
-<€Š:€À_>
-<€Š:U_>
-<€Š:._>
-<€Š:€ò_oak_>
Ore …  for <ore:…> :
-<€Š:€Á>
-<€Š:€è_€Á>
-<€Š:€À_€Á>
-<€Š:U_€Á>
-<€Š:€ò_oak_€Á>
-<€Š:._€Á>
Ore …  for <ore:…> :
-<€Š:€Á_€é>
-<€Š:€è_€Á_€é>
-<€Š:€À_€Á_€é>
-<€Š:U_€Á_€é>
-<€Š:€ò_oak_€Á_€é>
-<€Š:._€Á_€é>
Ore …  for <ore:‚R> :
-<€Š:._€ó>
-<€Š:€À_€ó>
-<€Š:€ò_oak_€ó>
-<€Š:A_€ó>
-<€Š:U_€ó>
-<€Š:€è_€ó>
Ore …  for <ore:€•> :
-<€Š:€£>
Ore …  for <ore:´> :
-<€Š:…:*>
-<€·:‚n_…:*>
Ore …  for <ore:…> :
-<€Š:…:*>
-<€Š:…:*>
-<€·:‚n_…:*>
Ore …  for <ore:Ê> :
-<€Š:Ê>
Ore …  for <ore:…> :
-<€Š:_ore>
Ore …  for <ore:…> :
-<€Š:€‹_ore>
Ore …  for <ore:…	> :
-<€Š:‚k_ore>
Ore …  for <ore:…
> :
-<€Š:€¹_ore>
Ore …  for <ore:…> :
-<€Š:_ore>
Ore …  for <ore:…> :
-<€Š:€ú_ore>
Ore …  for <ore:…> :
-<€Š:Y_ore>
Ore …  for <ore:…> :
-<€Š:€İ_ore>
Ore …  for <ore:€²> :
-<€Š:€‹_V>
Ore …  for <ore:€”> :
-<€Š:_V>
Ore …  for <ore:„X> :
-<€Š:€È>
Ore …  for <ore:…> :
-<€Š:‰>
Ore …  for <ore:€ƒ> :
-<€Š:_€Œ>
Ore …  for <ore:í> :
-<€Š:€‹_€Œ>
Ore …  for <ore:€ÿ> :
-<€Š:€¹>
Ore …  for <ore:€û> :
-<€Š:€ú>
Ore …  for <ore:…> :
-<€Š:Y>
Ore …  for <ore:‚> :
-<€Š:_„R>
Ore …  for <ore:‚œ> :
-<€Š:_…>
Ore …  for <ore:€–> :
-<€Š:>
Ore …  for <ore:ú> :
-<€Š:ã_ä>
Ore …  for <ore:#> :
-<€Š:dye:4>
Ore …  for <ore: > :
-<€Š:_€µ>
Ore …  for <ore:‚> :
-<€Š:€‹_€µ>
Ore …  for <ore:‚~> :
-<€Š:‚k_€µ>
Ore …  for <ore:‚> :
-<€Š:€¹_€µ>
Ore …  for <ore:€¾> :
-<€Š:_€µ>
Ore …  for <ore:…> :
-<€Š:€ú_€µ>
Ore …  for <ore:…> :
-<€Š:Y_€µ>
Ore …  for <ore:­> :
-<€Š:€İ_€µ>
Ore …  for <ore:…> :
-<€Š:¾>
Ore …  for <ore:…> :
-<€Š:€Ÿ>
Ore …  for <ore:…> :
-<€Š:€>
Ore …  for <ore:…> :
-<€Š:€Ç_€Î>
Ore …  for <ore:ş> :
-<€Š:…>
Ore …  for <ore:…> :
-<€Š:…>
Ore …  for <ore:dye> :
-<€Š:dye:*>
-<€·:€¸:14>
Ore …  for <ore:†> :
-<€Š:†>
Ore …  for <ore:€ğ> :
-<€Š:€æ_€ç>
Ore …  for <ore:‚–> :
-<€Š:€ª_Í>
Ore …  for <ore:€´> :
-<€Š:€´>
Ore …  for <ore:=> :
-<€Š:=>
Ore …  for <ore:€½> :
-<€Š:€½>
Ore …  for <ore:z> :
-<€Š:€Ç_î>
Ore …  for <ore:€ê> :
-<€Š:€ê>
Ore …  for <ore:€ö> :
-<€Š:€ö>
Ore …  for <ore:egg> :
-<€Š:egg>
Ore …  for <ore:…> :
-<€Š:…_13>
-<€Š:…_cat>
-<€Š:…_…>
-<€Š:…_…>
-<€Š:…_far>
-<€Š:…_…>
-<€Š:…_…>
-<€Š:…_… >
-<€Š:…_…!>
-<€Š:…_…">
-<€Š:…_11>
-<€Š:…_…#>
Ore …  for <ore:(> :
-<€Š:(>
Ore …  for <ore:‚S> :
-<€Š:‚S>
Ore …  for <ore:€â> :
-<€Š:€â>
Ore …  for <ore:€Ó> :
-<€Š:€Ó>
Ore …  for <ore:6> :
-<€Š:6>
Ore …  for <ore:5> :
-<€Š:5:*>
Ore …  for <ore:T> :
-<€Š:T:*>
-<€Š:red_T:*>
Ore …  for <ore:‚¬> :
-<€Š:‚¬>
Ore …  for <ore:€¨> :
-<€Š:€¨>
Ore …  for <ore:ã> :
-<€Š:ã>
Ore …  for <ore:‚]> :
-<€Š:end_€â>
Ore …  for <ore:> :
-<€Š:>
Ore …  for <ore:‚a> :
-<€Š:„_'>
Ore …  for <ore:…$> :
-<€Š:€æ>
Ore …  for <ore:…%> :
-<€Š:>
Ore …  for <ore:…&> :
-<€Š::1>
Ore …  for <ore:…'> :
-<€Š::2>
Ore …  for <ore:‚¤> :
-<€Š:€â:1>
Ore …  for <ore:…(> :
-<€Š:€â:2>
Ore …  for <ore:‚/> :
-<€Š:€â:3>
Ore …  for <ore:…)> :
-<€Š:€â:4>
Ore …  for <ore:‚Â> :
-<€Š:€â:5>
Ore …  for <ore:…*> :
-<€Š:€â:6>
Ore …  for <ore:> :
-<€Š:€Ø>
Ore …  for <ore:> :
-<€Š:€Ø>
-<€Š:€×_€Ø:*>
Ore …  for <ore:…+> :
-<€Š:€Ø_€Ù>
Ore …  for <ore:Ú> :
-<€Š:€Ø_€Ù>
-<€Š:€×_€Ø_€Ù:*>
Ore …  for <ore:€Ğ> :
-<€Š:€Ğ>
-<€Š:€ª_€Ğ>
-<€Š:‚_€Ğ>
Ore …  for <ore:İ> :
-<€Š:€Ğ>
-<€Š:‚_€Ğ>
Ore …  for <ore:…,> :
-<€Š:€ª_€Ğ>
Ore …  for <ore:…-> :
-<€Š:‚_€Ğ>
Ore …  for <ore:€Û> :
-<€Š:dye>
Ore …  for <ore:€> :
-<€Š:€×_€Ø:15>
Ore …  for <ore:….> :
-<€Š:€×_€Ø_€Ù:15>
Ore …  for <ore:€˜> :
-<€Š:dye:1>
Ore …  for <ore:Ç> :
-<€Š:€×_€Ø:14>
Ore …  for <ore:…/> :
-<€Š:€×_€Ø_€Ù:14>
Ore …  for <ore:> :
-<€Š:dye:2>
Ore …  for <ore:ò> :
-<€Š:€×_€Ø:13>
Ore …  for <ore:…0> :
-<€Š:€×_€Ø_€Ù:13>
Ore …  for <ore:> :
-<€Š:dye:3>
Ore …  for <ore:‚•> :
-<€Š:€×_€Ø:12>
Ore …  for <ore:…1> :
-<€Š:€×_€Ø_€Ù:12>
Ore …  for <ore:J> :
-<€Š:dye:4>
-<€·:€¸:14>
Ore …  for <ore:‚u> :
-<€Š:€×_€Ø:11>
Ore …  for <ore:…2> :
-<€Š:€×_€Ø_€Ù:11>
Ore …  for <ore:> :
-<€Š:dye:5>
Ore …  for <ore:‚£> :
-<€Š:€×_€Ø:10>
Ore …  for <ore:…3> :
-<€Š:€×_€Ø_€Ù:10>
Ore …  for <ore:€Ş> :
-<€Š:dye:6>
Ore …  for <ore:‚> :
-<€Š:€×_€Ø:9>
Ore …  for <ore:…4> :
-<€Š:€×_€Ø_€Ù:9>
Ore …  for <ore:> :
-<€Š:dye:7>
Ore …  for <ore:÷> :
-<€Š:€×_€Ø:8>
Ore …  for <ore:…5> :
-<€Š:€×_€Ø_€Ù:8>
Ore …  for <ore:j> :
-<€Š:dye:8>
Ore …  for <ore:‚…> :
-<€Š:€×_€Ø:7>
Ore …  for <ore:…6> :
-<€Š:€×_€Ø_€Ù:7>
Ore …  for <ore:~> :
-<€Š:dye:9>
Ore …  for <ore:Å> :
-<€Š:€×_€Ø:6>
Ore …  for <ore:…7> :
-<€Š:€×_€Ø_€Ù:6>
Ore …  for <ore:Æ> :
-<€Š:dye:10>
Ore …  for <ore:€Ú> :
-<€Š:€×_€Ø:5>
Ore …  for <ore:…8> :
-<€Š:€×_€Ø_€Ù:5>
Ore …  for <ore:+> :
-<€Š:dye:11>
Ore …  for <ore:?> :
-<€Š:€×_€Ø:4>
Ore …  for <ore:…9> :
-<€Š:€×_€Ø_€Ù:4>
Ore …  for <ore:m> :
-<€Š:dye:12>
Ore …  for <ore:’> :
-<€Š:€×_€Ø:3>
Ore …  for <ore:…:> :
-<€Š:€×_€Ø_€Ù:3>
Ore …  for <ore:€Ö> :
-<€Š:dye:13>
-<€·:€¸:3>
Ore …  for <ore:> :
-<€Š:€×_€Ø:2>
Ore …  for <ore:…;> :
-<€Š:€×_€Ø_€Ù:2>
Ore …  for <ore:!> :
-<€Š:dye:14>
Ore …  for <ore:‚o> :
-<€Š:€×_€Ø:1>
Ore …  for <ore:…<> :
-<€Š:€×_€Ø_€Ù:1>
Ore …  for <ore:€Ü> :
-<€Š:dye:15>
Ore …  for <ore:> :
-<€Š:€×_€Ø>
Ore …  for <ore:…=> :
-<€Š:€×_€Ø_€Ù>
Ore …  for <ore:›_œ_> :
-<€·:‚P:1>
Ore …  for <ore:ü> :
-<€·:€ñ>
-<€·:€ñ:2>
Ore …  for <ore:…>> :
-<€·:€ñ:1>
Ore …  for <ore:€å> :
-<€·:>
Ore …  for <ore:…?> :
-<€·::1>
Ore …  for <ore:…@> :
-<€·::2>
Ore …  for <ore:…A> :
-<€·::3>
Ore …  for <ore:…B> :
-<€·::4>
Ore …  for <ore:…C> :
-<€·::5>
Ore …  for <ore:…D> :
-<€·::6>
Ore …  for <ore:…E> :
-<€·::7>
Ore …  for <ore:…F> :
-<€·:)>
Ore …  for <ore:…G> :
-<€·:):1>
Ore …  for <ore:…H> :
-<€·:):2>
Ore …  for <ore:…I> :
-<€·:):3>
Ore …  for <ore:…J> :
-<€·:®>
Ore …  for <ore:…K> :
-<€·:®:1>
Ore …  for <ore:…L> :
-<€·:‚>
Ore …  for <ore:…M> :
-<€·:‚:1>
Ore …  for <ore:…N> :
-<€·:>
Ore …  for <ore:…O> :
-<€·::1>
Ore …  for <ore:…P> :
-<€·::2>
Ore …  for <ore:…Q> :
-<€·::3>
Ore …  for <ore:…R> :
-<€·::4>
Ore …  for <ore:…S> :
-<€·::5>
Ore …  for <ore:…T> :
-<€·:€¸>
Ore …  for <ore:…U> :
-<€·:€¸:1>
Ore …  for <ore:…V> :
-<€·:€¸:2>
Ore …  for <ore:…W> :
-<€·:€¸:3>
Ore …  for <ore:…X> :
-<€·:€¸:4>
Ore …  for <ore:…Y> :
-<€·:€¸:5>
Ore …  for <ore:…Z> :
-<€·:€¸:6>
Ore …  for <ore:…[> :
-<€·:€¸:7>
Ore …  for <ore:…\> :
-<€·:€¸:8>
Ore …  for <ore:…]> :
-<€·:€¸:9>
Ore …  for <ore:…^> :
-<€·:€¸:10>
Ore …  for <ore:D> :
-<€·:€¸:11>
Ore …  for <ore:…_> :
-<€·:€¸:12>
Ore …  for <ore:…`> :
-<€·:€¸:13>
Ore …  for <ore:…a> :
-<€·:€¸:15>
-<€·:€¸:16>
Ore …  for <ore:…b> :
-<€·:€¸:17>
Ore …  for <ore:…c> :
-<€·:Ğ>
Ore …  for <ore:…d> :
-<€·:Ğ:1>
Ore …  for <ore:…e> :
-<€·:Ğ:2>
Ore …  for <ore:…f> :
-<€Š:€‹_€ó>
Ore …  for <ore:…g> :
-<€·:t:1>
Ore …  for <ore:‚“> :
-<€Š:‚“>
Ore …  for <ore:‚¢> :
-<€Š:I>
Ore …  for <ore:N> :
-<€Š:9>
-<€Š:8_9>
Ore …  for <ore:€§> :
-<€Š:_>
Ore …  for <ore:€¯> :
-<€Š:€ª_Í>
Ore …  for <ore:oc:‚> :
-<€€:€:7>
Ore …  for <ore:€‡> :
-<€€:è:29>
Ore …  for <ore:oc:‚%> :
-<€Š:end_€â>
-<€€:‚]>
Ore …  for <ore:€Í> :
-<€É:ƒ€:*>
Ore …  for <ore:ê> :
-<€É:
:*>
Ore …  for <ore:oc:‚ƒ> :
-<€€:‚ƒ>
Ore …  for <ore:oc:‚`> :
-<€€:‚`>
Ore …  for <ore:oc:€­> :
-<€€:€­:‚e>
Ore …  for <ore:oc:Q> :
-<€€:Q>
Ore …  for <ore:oc:ì> :
-<€€:ì>
Ore …  for <ore:oc:ñ> :
-<€€:ñ>
Ore …  for <ore:oc:ö> :
-<€€:ö>
Ore …  for <ore:oc:‚^> :
-<€€:¯>
Ore …  for <ore:oc:‚’> :
-<€€:‚’>
Ore …  for <ore:oc:×> :
-<€€:×>
Ore …  for <ore:oc:> :
-<€€:‚®>
Ore …  for <ore:oc:‚> :
-<€€:‚>
Ore …  for <ore:oc:‚@> :
-<€€:‚@>
Ore …  for <ore:oc:> :
-<€€:>
Ore …  for <ore:oc:Š> :
-<€€:Š>
Ore …  for <ore:oc:…h> :
-<€€:‚p>
Ore …  for <ore:oc:…i> :
-<€€:ô>
Ore …  for <ore:oc:> :
-<€€:‚E>
Ore …  for <ore:oc:ï> :
-<€€:ï>
Ore …  for <ore:oc:> :
-<€€:>
Ore …  for <ore:oc:> :
-<€€:>
Ore …  for <ore:oc:€°> :
-<€€:€°>
Ore …  for <ore:oc:n> :
-<€€:n>
Ore …  for <ore:oc:â> :
-<€€:â>
Ore …  for <ore:oc:‚N> :
-<€€:‚N>
Ore …  for <ore:oc:> :
-<€€:>
Ore …  for <ore:oc:‚«> :
-<€€:‚«>
Ore …  for <ore:oc:…j> :
-<€€:M>
Ore …  for <ore:oc:‚> :
-<€€:‚>
Ore …  for <ore:oc:…k> :
-<€€:O>
Ore …  for <ore:oc:‚D> :
-<€€:è>
Ore …  for <ore:oc:‚> :
-<€€:è:1>
Ore …  for <ore:oc:…l> :
-<€€:è:2>
Ore …  for <ore:oc:…m> :
-<€€:è:3>
Ore …  for <ore:oc:€³> :
-<€€:è:4>
Ore …  for <ore:oc:€†> :
-<€€:è:5>
Ore …  for <ore:oc:‚ > :
-<€€:è:6>
Ore …  for <ore:oc:€®> :
-<€€:è:7>
Ore …  for <ore:oc:€> :
-<€€:è:8>
Ore …  for <ore:oc:€…> :
-<€€:è:9>
Ore …  for <ore:oc:€> :
-<€€:è:10>
Ore …  for <ore:oc:Ù> :
-<€€:è:11>
Ore …  for <ore:oc:‚h> :
-<€€:è:12>
Ore …  for <ore:oc:€¦> :
-<€€:è:13>
Ore …  for <ore:oc:Œ> :
-<€€:è:14>
Ore …  for <ore:oc:> :
-<€€:è:15>
Ore …  for <ore:oc:> :
-<€€:è:16>
Ore …  for <ore:oc:…n> :
-<€€:è:17>
Ore …  for <ore:oc:…o> :
-<€€:è:18>
Ore …  for <ore:oc:‚)> :
-<€€:è:20>
Ore …  for <ore:oc:‚&> :
-<€€:è:21>
Ore …  for <ore:oc:‚²> :
-<€€:è:23>
Ore …  for <ore:oc:…p> :
-<€€:è:24>
Ore …  for <ore:oc:‚+> :
-<€€:è:26>
Ore …  for <ore:oc:…q> :
-<€€:è:27>
Ore …  for <ore:oc:°> :
-<€€:è:28>
Ore …  for <ore:oc:Û> :
-<€€:‚†>
Ore …  for <ore:oc:…r> :
-<€€:‚†:2>
Ore …  for <ore:oc:…s> :
-<€€:‚†:3>
Ore …  for <ore:oc:ƒ> :
-<€€:‚†:4>
Ore …  for <ore:oc:‚y> :
-<€€:‚y>
Ore …  for <ore:oc:…t> :
-<€€:‚°>
Ore …  for <ore:oc:…u> :
-<€€:‚†:5>
Ore …  for <ore:oc:€„> :
-<€€:‚>
Ore …  for <ore:oc:€ˆ> :
-<€€:‚:1>
Ore …  for <ore:oc:> :
-<€€:‚:2>
Ore …  for <ore:oc:‚!> :
-<€€:‚:3>
Ore …  for <ore:oc:‚> :
-<€€:‚:4>
Ore …  for <ore:oc:‚ > :
-<€€:‚:5>
Ore …  for <ore:oc:€º> :
-<€€:‚:6>
Ore …  for <ore:oc:‚#> :
-<€€:‚:7>
Ore …  for <ore:oc:€¿> :
-<€€:‚:8>
Ore …  for <ore:oc:‚$> :
-<€€:‚:9>
Ore …  for <ore:oc:€‰> :
-<€€:‚:10>
Ore …  for <ore:oc:‚> :
-<€€:‚:11>
Ore …  for <ore:oc:…v> :
-<€€:‚:13>
Ore …  for <ore:oc:…w> :
-<€€:‚:14>
Ore …  for <ore:oc:…x> :
-<€€:‚:15>
Ore …  for <ore:oc:…y> :
-<€€:‚:16>
Ore …  for <ore:oc:…z> :
-<€€:‚:17>
Ore …  for <ore:oc:…{> :
-<€€:‚:19>
Ore …  for <ore:oc:…|> :
-<€€:‚:20>
Ore …  for <ore:oc:‚"> :
-<€€:€:1>
Ore …  for <ore:oc:‚> :
-<€€:€:2>
Ore …  for <ore:oc:…}> :
-<€€:€:3>
Ore …  for <ore:oc:*> :
-<€€:€:4>
Ore …  for <ore:oc:…~> :
-<€€:€:5>
Ore …  for <ore:oc:€«> :
-<€€:€:6>
Ore …  for <ore:oc:> :
-<€€:€:7>
Ore …  for <ore:oc:…> :
-<€€:€:8>
Ore …  for <ore:oc:‚‚> :
-<€€:€:9>
Ore …  for <ore:oc:…€> :
-<€€:€:10>
Ore …  for <ore:oc:…> :
-<€€:€:11>
Ore …  for <ore:oc:…‚> :
-<€€:€:12>
Ore …  for <ore:oc:…ƒ> :
-<€€:€Ê>
Ore …  for <ore:oc:…„> :
-<€€:€Ê:1>
Ore …  for <ore:oc:……> :
-<€€:€Ê:2>
Ore …  for <ore:oc:…†> :
-<€€:€Ê:3>
Ore …  for <ore:oc:…‡> :
-<€€:€Ê:4>
Ore …  for <ore:oc:…ˆ> :
-<€€:€Ê:5>
Ore …  for <ore:oc:…‰> :
-<€€:€Ê:6>
Ore …  for <ore:oc:…Š> :
-<€€:€Ê:7>
Ore …  for <ore:oc:…‹> :
-<€€:€Ê:8>
Ore …  for <ore:oc:…Œ> :
-<€€:€Ê:9>
Ore …  for <ore:oc:…> :
-<€€:€Ê:10>
Ore …  for <ore:oc:…> :
-<€€:€Ê:11>
Ore …  for <ore:oc:…> :
-<€€:€Ê:12>
Ore …  for <ore:oc:…> :
-<€€:€Ê:13>
Ore …  for <ore:oc:…‘> :
-<€€:€Ê:14>
Ore …  for <ore:oc:…’> :
-<€€:€Ê:15>
Ore …  for <ore:oc:…“> :
-<€€:€Ê:16>
Ore …  for <ore:oc:…”> :
-<€€:€Ê:17>
Ore …  for <ore:oc:‚> :
-<€€:€Ê:18>
Ore …  for <ore:oc:…•> :
-<€€:€Ê:19>
Ore …  for <ore:oc:…–> :
-<€€:€Ê:20>
Ore …  for <ore:oc:…—> :
-<€€:€Ê:21>
Ore …  for <ore:oc:‚ˆ> :
-<€€:€Ê:22>
Ore …  for <ore:oc:…˜> :
-<€€:€Ê:23>
Ore …  for <ore:oc:‚> :
-<€€:€Ê:24>
Ore …  for <ore:oc:…™> :
-<€€:€Ê:25>
Ore …  for <ore:oc:…š> :
-<€€:€Ê:26>
Ore …  for <ore:oc:…›> :
-<€€:€Ê:27>
Ore …  for <ore:oc:‚±> :
-<€€:€Ê:28>
Ore …  for <ore:oc:…œ> :
-<€€:€Ê:29>
Ore …  for <ore:oc:mfu> :
-<€€:€Ê:30>
Ore …  for <ore:oc:…> :
-<€€:€Ê:31>
Ore …  for <ore:oc:„ > :
-<€€:q>
Ore …  for <ore:oc:„> :
-<€€:q:1>
Ore …  for <ore:oc:‚> :
-<€€:q:2>
Ore …  for <ore:oc:‚š> :
-<€€:q:3>
Ore …  for <ore:oc:‚> :
-<€€:q:4>
]==],['ct.lua']= [==[‚Ã á = ‚Æ('á')
‚Ã fs = ‚Æ('…')

‚Ã …Ÿ = {...}
‚Ã …  = á.…¡('.ƒ0(…Ÿ, 1))

if not fs.…¢(… ) ‚É
	if fs.…¢(…  .. '.lua') ‚É
		…  = …  .. '.lua'
	‚è
		‚Ê('…£ not …¤.')
		‚Í
	end
end

‚Ã …¥ = …¦(… )
‚Ã a, b = ‚Å(…¥, ‚Ç.‚È, '.ƒI(…Ÿ))
if not a ‚É
	‚Ã f = io.…§('ct.txt', 'w')
	f:‚ó(b)
	f:…¨()
	‚Ê('…© …ª.')
end]==],['ct.txt']= [==[/mnt/cf4/lib/‚Ñ.lua:54: …« to …¬ a nil …­
‚F ‚È:
	‚b:796: in …® '__…¯'
	/mnt/cf4/lib/‚Ñ.lua:54: in …° '‚ù'
	/mnt/cf4/lib/‚Ï.lua:27: in …° '‚ù'
	/mnt/cf4/ƒE.lua:102: in …° '‚Ù'
	/mnt/cf4/ƒE.lua:405: in …± ƒ
	[C]: in ‚Ú '‚Å'
	‚b:791: in …² '‚Å'
	/mnt/cf4/ct.lua:17: in …± ƒ
	/mnt/cf4/faf.lua:19: in …± ƒ
	(...…³ …´...)
	[C]: in ‚Ú '‚Å'
	‚b:791: in …² '‚Å'
	/lib/…µ.lua:63: in ‚Ú </lib/…µ.lua:59>]==],['db']={['crafting.db']= [==[€€:€|11 1 sd 32 €‚ ore:€ƒ ore:oc:€„ ore:oc:€… ore:oc:€†
€€:€|12 1 sd 32 €‚ ore:€‡ ore:oc:€ˆ ore:oc:€‰ ore:oc:€†
€€:€|10 1 sd 32 €‚ €Š:€‹_€Œ ore:oc:€ ore:oc:€ ore:oc:€†
€Š:dye|11 1 sl 00 1 €Š:€_€
€Š:€‘_€’ 6 sd 33 €“ ore:€” ore:€• ore:€–
€Š:€—|14 1 sl 00 12 ore:€˜ €Š:€—
€Š:€™_€š 1 sd 33 €› €Š:€œ_€™ €Š:€ €Š:€_€Ÿ €Š:€ _€¡ €Š:€¢
€Š:€£ 16 sd 12 11 ore:€¤
€€:€|8 1 sd 32 €¥ ore:oc:€¦ ore:oc:€ ore:€§ ore:oc:€† ore:€¨
€€:€|9 2 sd 33 €© €Š:€ª_eye ore:oc:€« ore:oc:€¦ ore:oc:€…
€€:€|6 1 sd 32 €¬ ore:oc:€­ ore:oc:€® ore:oc:€†
€€:€|7 1 sd 32 €¬ ore:€¯ ore:oc:€ ore:oc:€†
€€:€° 1 sd 33 €± ore:€² ore:oc:€­ ore:oc:€« ore:oc:€³
€Š:€´_€µ 1 sd 33 €¶ €Š:dye|15
€·:€¸|7 1 sl 00 123 €·:€¸|9 ore:€” €Š:€¹|*
€€:€|1 1 sd 32 €‚ ore:oc:€® ore:oc:€ ore:oc:€º ore:oc:€†
€€:€|4 1 sd 32 €¬ ore:€§ ore:oc:€® ore:oc:€†
€·:€» 1 sd 33 €¼ ore:€– ore:€• ore:€½
€€:€|5 1 sd 32 €‚ ore:€¾ ore:oc:€ ore:€¯ ore:oc:€†
€Š:€‹_€Œ 9 sd 11 1 ore:€²
€€:€|2 1 sd 32 €‚ ore:oc:€ ore:oc:€ ore:oc:€¿ ore:oc:€†
€€:€|3 1 sd 32 €‚ ore:oc:€… ore:oc:€ ore:oc:€‰ ore:oc:€†
€Š:€À_€Á 3 sd 32 €Â €Š:€Ã|2 €Š:€£
€·:€Ä|5 1 sd 33 €Å €·:€Æ|3 €·:€¸ €·:€¸|1 €Š:€Ç_€È_€Á|*
€É:€Ê_€Ë 2 sd 33 €Ì ore:€• ore:€Í
€Š:€Ç_€Î_€µ 1 sd 33 €¶ €Š:€Ç_€Î
€·:€Ï 9 sl 00 1 €Š:€Ğ|*
€Š:€Ñ|13 1 sd 33 €Ò €Š:€—|2 ore:€•
€Š:bed|14 1 sl 00 12 €Š:bed ore:€˜
€Š:€Ó_€Ô 6 sd 32 €Õ €Š:€Ó
€Š:€—|2 1 sl 00 12 ore:€Ö €Š:€—
€Š:€×_€Ø_€Ù|5 16 sd 32 €Õ ore:€Ú
€Š:dye|8 2 sl 00 12 ore:€Û ore:€Ü
€Š:€İ_€µ 1 sd 33 €¶ €Š:€İ
€Š:bed|9 1 sl 00 12 €Š:bed ore:€Ş
€Š:€×_€ß_€à|2 8 sd 33 €Ì €Š:€ß_€à ore:€Ö
€·:€á_€â 4 sd 33 €ã €Š:€â_€ä|* ore:€Ó ore:€å
€Š:€—|15 1 sl 00 12 ore:€Û €Š:€—
€Š:€æ_€ç 9 sd 11 1 €Š:€æ
€Š:dye|15 9 sl 00 1 €Š:€´_€µ
€Š:€è_€Á_€é 1 sd 32 €Â €Š:€£ €Š:€Ã|1
€Š:€ê_€ë 1 sd 33 €ì ore:€ê
€·:€Ä|7 1 sd 32 €í €·:€¸|1 €·:€Æ|2 €·:€¸
€Š:bed|4 1 sd 32 €î €Š:€—|4 ore:€ï
€Š:€æ 1 sd 33 €¶ ore:€ğ
€Š:€‹_€µ 1 sd 33 €¶ ore:€²
€·:€ñ|1 9 sl 00 1 €·:€ñ|2
€Š:€ò_oak_€ó 3 sd 23 €Õ €Š:€Ã|5
€Š:€ô_€õ 1 sl 00 123 €Š:€õ ore:€Û ore:€ö
€Š:€ê_€÷ 1 sd 32 €ø ore:€ê
€Š:bed|3 1 sd 32 €î €Š:€—|3 ore:€ï
€Š:€‘_€ù 1 sd 33 €Ì ore:€” €Š:€ù
€Š:€ú_€µ 1 sd 33 €¶ ore:€û
€Š:€_pot 1 sd 32 €ü €Š:€È
€Š:€¹_€ı 1 sd 33 €ş ore:€ÿ ore:€•
€Š:dye|7 1 sl 00 1 €Š:red_€|8
€·:€Æ|5 4 sl 00   €·:€Æ|2 €·:€Æ
€É:€Ê_|1 1 sd 33  €Š: ore:€• €É:€Ê_€Ë
€Š:€×_€Ø_€Ù|2 16 sd 32 €Õ ore:
€€: 1 sd 33  €Š:€‹_€Œ ore:oc: ore:oc:€º ore:oc: ore:oc:€
€Š:€Ç_€È_ 4 sd 33 	 €Š:€Ç_€È
€É:
|5 4 sd 33  ore:€• €Š:€Ã|5
€Š:€—|10 1 sl 00 12 ore: €Š:€—
€·:|1 4 sd 22  €·:
€Š:€×_€ß_€à|12 8 sd 33 €Ì €Š:€ß_€à ore:
€€: 1 sd 33  ore:oc:€… ore: ore:oc:€³ ore:€ÿ ore:€¨ €Š:_
€Š:bed|2 1 sd 32 €î €Š:€—|2 ore:€ï
€Š:€‹_€ä 1 sd 13 112 ore:€² ore:€•
€Š:€è_€Á 3 sd 32 €Â €Š:€Ã|1 €Š:€£
€Š:€×_€Ø|13 8 sd 33 €Ì ore: ore:
€Š:lit_ 1 sd 12 12 €Š: €Š:
€€: 1 sd 33  ore:€ÿ ore:oc: €Š:€‹_ ore:€Ğ ore:oc:€° ore:oc:€³ ore:oc:
€·:|7 1 sd 33 €¶ €·:|6
€·:|6 1 sd 33 €¶ €·:|5
€·:€á_ 4 sd 33 €ã €Š:€‘_€ä|* ore:€” ore: 
€Š:dye|7 3 sl 00 122 ore:€Û ore:€Ü
€·:|1 1 sd 33 €¶ €·:
€·:|5 1 sd 33 €¶ €·:|4
€·:|4 1 sd 33 €¶ €·:|3
€·:|3 1 sd 33 €¶ €·:|2
€·:|2 1 sd 33 €¶ €·:|1
€Š:€×_€Ø|1 8 sd 33 €Ì ore: ore:!
€·:" 1 sd 33 €¼ ore:# ore:€• ore:€½
€Š:€Ğ 4 sd 33 $ ore:€¤
€·:%|8 1 sl 00 122 €·:%|9 €Š:&_'|*
€Š:( 9 sl 00 1 €·:)
€·:|1 9 sl 00 1 €·:|2
€€: 1 sd 33  ore:€² ore:oc:€… ore:€¾ ore:oc:* ore:oc:€³
€Š:bed|4 1 sl 00 12 €Š:bed ore:+
€Š:€‘_, 1 sd 32 - ore:€”
€Š:._€ó 3 sd 23 €Õ €Š:€Ã|4
€·:/|3 8 sd 33 €Ì €·:|3 €·:€¸|5
€·:0|6 1 sd 32 1 ore:€– €·:2 ore:€” €Š:_€µ|*
€·:€ñ|2 1 sd 33 €¶ €·:€ñ|1
€Š:3_|9 8 sl 00 4 ore:€Ş €Š:5 €Š:6
€·:%|6 1 sl 00 122 €·:%|9 €Š:7|*
€Š:8_9 1 sd 12 12 ore:€ğ €Š:9
€Š:€‘_hoe 1 sd 23 : ore:€” ore:€•
€Š:;_< 3 sl 00 123 ore:= €Š:_ €Š:€İ,€Š:€İ|1
€Š:€×_€ß_€à|15 8 sd 33 €Ì €Š:€ß_€à ore:€Û
€Š: 9 sd 11 1 €Š:_€µ
€Š:€ú 9 sd 11 1 €Š:€ú_€µ
€·:>|3 1 sd 33 €Å €·:€¸|17 ore:? €·:@ €·:€¸
€Š:A_€ı 1 sd 33 €ş ore:€ï ore:€•
€·:B|3 1 sd 33 C ore:D €·:E €·:B|2
€·:F 1 sd 33 G ore:€² ore:€•
€Š:3_|13 8 sl 00 4 ore: €Š:5 €Š:6
€Š:oak_ 4 sd 33 	 €Š:€Ã
€Š:€â_H 1 sd 11 1 ore:€â
€·:€Æ|2 4 sd 22  €Š:I|*
€Š:dye|12 2 sl 00 12 ore:J ore:€Ü
€Š:€×_€Ø|12 8 sd 33 €Ì ore: ore:
€·:%|4 1 sl 00 122 €·:%|9 €Š:K_L|*
€€:M 1 sd 33 €± ore:€² ore:oc:€­ ore:N ore:oc:€³
€€:O 1 sl 00 12 €Š:P ore:oc:Q
€·:R 1 sd 33 C ore:€â €·:€¸|2 €·:S
€Š:T 1 sd 22  €Š:5
€Š:3_|4 8 sl 00 4 ore:+ €Š:5 €Š:6
€Š:U_€Á_€é 1 sd 32 €Â €Š:€£ €Š:€Ã|3
€Š:_V 9 sd 11 1 €Š:_€µ
€€:€|9 2 sl 00 11 €€:€|9
€Š:W 1 sd 33 X €Š:_ €Š:Y ore:€â
€Š:Z 1 sd 32 [ €Š:_ ore:€– ore:€â
€Š:3_|14 8 sl 00 4 ore:€˜ €Š:5 €Š:6
€·:)|2 9 sl 00 1 €·:)|3
€Š:A_\|2 6 sd 31 111 €Š:€Ã|2
€·:€õ 1 sl 00 123 €Š:€õ|*,€Š:€ô_€õ|*,€Š:]_€õ|* ore:€” €Š:€¨|*
€Š:^_€µ 4 sd 22  €Š:__`_a
€·:%|2 1 sl 00 122 €·:%|9 €Š:b_L|*
€Š:A_H 1 sd 11 1 ore:€ï
€Š:€â_ 4 sd 33 	 €Š:€Ó
€Š:c_rod 1 sd 33 d ore:€• ore:€½
€Š:€‹_e 1 sd 33 f ore:€²
€·:%|3 1 sl 00 122 €·:%|9 ore:5
€Š:g 1 sd 32 h €Š:€Ã
€Š:P|9 3 sd 21 11 €Š:€—|9
€Š:dye|9 2 sl 00 12 ore:€˜ ore:€Ü
€Š:i 1 sd 33 €Ì ore:€ï ore:€–
€·:) 1 sd 33 €¶ €Š:(
€Š:3_|7 8 sl 00 4 ore:j €Š:5 €Š:6
€·:k 1 sl 00 123 €Š:l|* €·:€¸ €Š:€‹_€ı|*
€Š:3_|3 8 sl 00 4 ore:m €Š:5 €Š:6
€€:n 1 sd 33 o ore:€² €Š: ore:oc:€® ore:
€€:p 1 sl 00 12 €€:p €€:q
€Š:A_\|4 6 sd 31 111 €Š:€Ã|4
€Š:bed|7 1 sl 00 12 €Š:bed ore:j
€Š:€¡_€š 1 sl 00 123 €Š:€ _€¡ €Š:red_€¡ €Š:€¢
€Š:dye|1 1 sl 00 1 €Š:red_€|4
€·:r 1 sd 33 s ore:€” €·:t|1
€Š:dye|1 1 sl 00 1 €Š:u
€É:v_key 1 sd 23 w ore:€ƒ ore:€” €É:€Ê_€Ë
€Š:x 1 sd 33 y ore: ore:z €Š:€¨
€Š:tnt 1 sd 33 { ore:= €Š:5,€Š:5|1
€Š:bed|8 1 sd 32 €î €Š:€—|8 ore:€ï
€Š:|_and_} 1 sl 00 12 ore:€² €Š:|
€Š:dye|14 1 sl 00 1 €Š:red_€|5
€Š:bed|6 1 sl 00 12 €Š:bed ore:~
€É:€Ê_|2 1 sd 33 y ore:€• €É:€Ê_€Ë €Š:
€Š:P|12 3 sd 21 11 €Š:€—|12
€Š:U_€ó 3 sd 23 €Õ €Š:€Ã|3
€·:|3 9 sl 00 1 €·:|4
€Š:€×_€Ø_€Ù|15 16 sd 32 €Õ ore:€
€·:€Æ|4 4 sl 00   ore:5 ore:
€Š:|1 1 sd 33 €¶ ore:‚
€Š:P|11 3 sd 21 11 €Š:€—|11
€Š:€‹_€ë 1 sd 33 €ì ore:€²
€·:ƒ 1 sl 00 123 €Š:l|* €·:€¸ €Š:„_'|*
€·: 9 sl 00 1 €·:|1
€É:€Ê_q 1 sd 33 … ore:€• €Š:€¨ €É:€Ê_€Ë
€Š:map 1 sd 33 €Ì €Š:† €Š:‡_map|*
€Š:red_€Ç_€È 1 sd 22 ˆ €Š:‰ €Š:€Ç_€Î
€€:Š 1 sd 32 ‹ ore:oc:Œ ore:oc: ore:oc:
€Š:€À_ 4 sd 33 	 €Š:€Ã|2
€Š:€×_€Ø|8 8 sd 33 €Ì ore: ore:
€Š:€×_€Ø_€Ù 16 sd 32 €Õ ore:
€Š:€‘_axe 1 sd 23 ‘ ore:€” ore:€•
€Š:€×_€Ø_€Ù|3 16 sd 32 €Õ ore:’
€Š:3_|12 8 sl 00 4 ore: €Š:5 €Š:6
€Š:€×_€Ø|9 8 sd 33 €Ì ore: ore:€Ş
€·:€Ä 3 sd 32 “ ore:# €·:€Æ|2 €·:€¸
€Š:dye|11 2 sl 00 1 €Š:”_•
€Š:€â_€ä 1 sd 13 112 ore:€Ó ore:€•
€Š:€â_€È_ 4 sd 33 	 €Š:I,€Š:I|1,€Š:I|2,€Š:I|3
€É:–_key 1 sl 00 12 €É:v_key €Š:—_tag
€Š:€â|3 2 sd 22 ˆ ore:€Ó €Š:Y
€Š:._€Á 3 sd 32 €Â €Š:€Ã|4 €Š:€£
€·:˜|1 8 sd 13 102 €Š:™|* €·:0|2
€·:š 1 sd 33 €¼ €Š:end_€â|* €·:€Æ|3 ore:›_œ_
€Š:end_ 4 sd 22  €Š:end_€â
€Š:bed|1 1 sl 00 12 €Š:bed ore:!
€Š:€Ñ|6 1 sd 33 €Ò €Š:€—|9 ore:€•
€·:|4 9 sl 00 1 €·:|5
€Š:dye|13 4 sl 00 Ÿ ore:J ore:€˜ ore:€Ü
€Š:€‹_hoe 1 sd 23 : ore:€² ore:€•
€Š:œ 1 sd 22  €Š: 
€Š:€Ã|3 4 sd 11 1 €Š:log|3
€Š:._€Á_€é 1 sd 32 €Â €Š:€£ €Š:€Ã|4
€Š:¡ 1 sd 33 ¢ ore:€” ore:€–
€Š:P|2 3 sd 21 11 €Š:€—|2
€·:%|5 1 sl 00 122 €·:%|9 €Š: |*
€·:%|7 1 sl 00 122 €·:%|9 €Š:™|*
€Š:€—|4 1 sl 00 12 ore:+ €Š:€—
€Š:€×_€ß_€à|13 8 sd 33 €Ì €Š:€ß_€à ore:
€Š:£_¤ 1 sd 33 €Ì €Š:_€Œ €Š:¤
€·:¥_ 1 sd 33 ¦ ore:€” ore:€•
€·:§ 4 sd 12 12 €·:€¸ €·:€Æ|3
€·:¨ 1 sd 23 ‘ €·:©|8 €Š:€£|*
€Š:€Ø_€Ù 16 sd 32 €Õ €Š:€Ø
€Š:€¹_e 1 sd 33 f ore:€ÿ
€·:ª|1 1 sl 00 12 €·:ª €·:€¸|10
€Š: 1 sd 22  ore:‚
€·:« 1 sd 33 ¬ ore:€– ore:­ ore:€² €·:€¸
€Š:€‘_€ä 1 sd 13 112 ore:€” ore:€•
€Š:€×_€Ø|10 8 sd 33 €Ì ore: ore:
€Š:€‹_V 1 sd 33 €¶ €Š:€‹_€Œ
€Š:T|1 1 sd 12 11 €Š:€â_\|1
€·:® 9 sl 00 1 €·:®|1
€Š:€‘_€ı 1 sd 33 €ş ore:€” ore:€•
€Š:€à 1 sd 22  €Š:€à_€ç
€Š:€Á_€é 1 sd 32 €Â €Š:€£ €Š:€Ã
€€:¯ 1 sd 33 €¶ ore:oc:°
€Š:dye|13 1 sl 00 1 €Š:red_€|2
€Š:A_\|1 6 sd 31 111 €Š:€Ã|1
€Š:± 3 sd 33 ² ore:€•
€·:³ 1 sd 33 €¼ €Š:dye|13,€·:€¸|3,€Š:dye|5 ore:€² ore:´
€É:µ_key 1 sl 00 12 €É:v_key €Š:€ô_€õ
€Š:_ 1 sd 12 12 ore:€– ore:€•
€Š:¶_· 1 sd 12 12 €Š:¶ €Š:·
€Š:A_¸_¹ 1 sd 21 11 ore:€ï
€Š:3_ 8 sl 00 4 ore:€Ü €Š:5 €Š:6
€Š:€—|7 1 sl 00 12 ore:j €Š:€—
€·:/ 8 sd 33 €Ì ore: €·:€¸|5
€Š:P|1 3 sd 21 11 €Š:€—|1
€·:) 9 sl 00 1 €·:)|1
€Š:bed|7 1 sd 32 €î €Š:€—|7 ore:€ï
€Š:º 1 sd 33 » €Š:¼_L €Š:½ ore:egg €Š:¾
€·:¥_€â 1 sd 33 ¦ ore:€Ó ore:€•
€Š:€Ñ|14 1 sd 33 €Ò €Š:€—|1 ore:€•
€Š:€ê_, 1 sd 32 - ore:€ê
€·:€Ä|4 1 sd 33 ¿ €·:€Æ|3 €·:€¸|1 €·:€¸
€Š:À_Á 1 sd 33 Â ore:€• €Š:€â_\
€·:t 4 sl 00 1 €·:t|1
€·:Ã 1 sd 33 Ä €Š:end_€â|* €Š:end_rod|* €Š:€¹_€ı|* €·:€Æ|3
€Š:€×_€Ø_€Ù|6 16 sd 32 €Õ ore:Å
€Š:3_|5 8 sl 00 4 ore:Æ €Š:5 €Š:6
€·:˜ 8 sd 13 102 €Š:™|* €·:0
€Š:€ê_e 1 sd 33 f ore:€ê
€Š:A_\|3 6 sd 31 111 €Š:€Ã|3
€·:€Æ|1 4 sl 00  €·:€Æ
€·:>|2 1 sd 33 €Å €·:€¸|17 ore:Ç €·:@ €·:€¸
€É:È|1 1 sl 00 12 €É:É_key €Š:€â_H
€Š:€Ñ|3 1 sd 33 €Ò €Š:€—|12 ore:€•
€Š:€×_€ß_€à|4 8 sd 33 €Ì €Š:€ß_€à ore:+
€Š:I|1 1 sl 00 12 €Š:I €Š:Ê
€·:Ë 1 sd 33 €¼ ore:€â ore:€– €Š:_|*
€·:E 1 sl 00 122 €Š:€Ø_Ì|* €Š:€ª_Í|*
€Š:€õ 1 sl 00 Î ore:† ore:€ê
€Š:A_Ï 1 sd 13 122 ore:€ï ore:€•
€Š:bed|13 1 sd 32 €î €Š:€—|13 ore:€ï
€·:€¸|11 9 sl 00 1 €·:Ğ|1
€É:È|3 1 sl 00 12 €É:µ_key €Š:€â_H
€Š:3_|6 8 sl 00 4 ore:~ €Š:5 €Š:6
€Š:Ñ 1 sd 33 Ò ore:€²
€É:€Ê_Ó 1 sd 33 Ô €Š:_ ore:€• €É:€Ê_€Ë €Š:
€É:€Ê_Ó|1 1 sd 33 Ô €Š:W ore:€• €É:€Ê_€Ë €Š:
€Š:dye|1 1 sl 00 1 €Š:red_€
€Š:3_|2 8 sl 00 4 ore:€Ö €Š:5 €Š:6
€·:Õ 1 sl 00 12 €Š:€—|* €Š:i|*
€·:t|2 5 sd 22 ˆ ore:Ö ore:€ï
€Š:€¹_Ï 1 sd 13 122 ore:€ÿ ore:€•
€€:× 1 sd 33 Ø ore:oc:Ù ore:Ú ore:oc:Û ore:N ore:€¨ ore:€² €Š:K_L
€Š:€â_\|1 6 sd 31 111 €Š:T,€Š:T|1,€Š:T|2
€Š:hay_€µ 1 sd 33 €¶ €Š:¾
€Š:€â_\|3 6 sd 31 111 €Š:€Ó
€·:Ü 1 sl 00 123 €Š:„_'|* ore:İ €Š:Ş|*
€Š:ß_à_box 1 sd 13 121 €Š:à_á ore:İ
€Š:€Ñ|8 1 sd 33 €Ò €Š:€—|7 ore:€•
€Š:€×_€ß_€à|3 8 sd 33 €Ì €Š:€ß_€à ore:m
€·:¥_€¹ 1 sd 33 ¦ ore:€ÿ ore:€•
€€:â 1 sd 33 o ore:€¨ €Š:ã_ä ore:oc:€… ore:
€·:|4 9 sl 00 1 €·:|5
€Š:· 1 sd 32 h ore:€²
€·:|3 9 sl 00 1 €·:|4
€Š:€Ğ 1 sd 33 $ ore:€ï
€Š:€×_€Ø|7 8 sd 33 €Ì ore: ore:j
€Š:€’ 16 sd 33 å ore:€² ore:€•
€Š:€×_€ß_€à|5 8 sd 33 €Ì €Š:€ß_€à ore:Æ
€Š:€¹_€ä 1 sd 13 112 ore:€ÿ ore:€•
€Š:€Ñ|11 1 sd 33 €Ò €Š:€—|4 ore:€•
€·:B|2 1 sd 33 C ore:€ÿ €Š:æ_ç_¸_¹|* €·:B|1
€Š:bed|14 1 sd 32 €î €Š:€—|14 ore:€ï
€Š:€ò_oak_€Á 3 sd 32 €Â €Š:€Ã|5 €Š:€£
€€:è|28 9 sl 00 1 €€:¯
€Š:€‘_Ï 1 sd 13 122 ore:€” ore:€•
€É:é 1 sd 32 €ø ore:ê
€·:ë 1 sd 33  ore:€â ore:€Ó €Š:L|*
€É:€Ê_q|1 1 sd 33 … ore:€• €Š:€‹_V €É:€Ê_€Ë
€Š:€×_€ß_€à|14 8 sd 33 €Ì €Š:€ß_€à ore:€˜
€Š:¤_€µ 1 sd 33 €¶ €Š:¤
€É:È 1 sl 00 12 €É:v_key €Š:€â_H
€Š:_ 2 sl 00 1 €Š:_rod
€Š:3_|11 8 sl 00 4 ore:J €Š:5 €Š:6
€Š:€×_€Ø|11 8 sd 33 €Ì ore: ore:J
€Š:€™_€š 1 sd 33 €› €Š:€œ_€™ €Š:€ €Š:€_€Ÿ €Š:red_€¡ €Š:€¢
€Š:€‹_, 1 sd 32 - ore:€²
€Š:€¹_€ë 1 sd 33 €ì ore:€ÿ
€Š:€‘_€ë 1 sd 33 €ì ore:€”
€€:ì 1 sd 33  ore:€² ore:oc:€® €Š:€‹_ ore:€Ğ ore:oc:€³
€Š:red_T|2 4 sd 22  €Š:red_T
€·:€ñ|1 1 sd 13 123 ore:í ore:€• ore:€ÿ
€·:0|5 4 sl 00 123 €·:2 €·:€» ore:€–
€Š:bed|2 1 sl 00 12 €Š:bed ore:€Ö
€·:€Ä|8 1 sd 33  €·:€Æ|3 €Š:€ª_Í|* €Š:€Ç_î|* €·:€¸|1 €·:€¸|2
€€:ï 1 sd 33  ore:€² €Š:ğ ore:N ore:oc:€… ore:oc:€³
€·:€¸|16 1 sd 33 €¼ €·:€¸|10 €·:€¸|17 €·:€¸|15
€Š:dye|14 2 sl 00 12 ore:€˜ ore:+
€Š:€è_ 4 sd 33 	 €Š:€Ã|1
€Š:bed|15 1 sd 32 €î €Š:€—|15 ore:€ï
€Š:dye|7 1 sl 00 1 €Š:red_€|3
€€:ñ 1 sd 33  ore:€ÿ ore:oc:€… €Š:€‹_ ore:€Ğ ore:oc:€³
€Š:dye|7 1 sl 00 1 €Š:red_€|6
€·:/|1 1 sl 00 12 €·:/ €Š:_|*
€Š:€È_€µ 1 sd 22  €Š:€È
€·:2 64 sd 33 … €Š:€â_\ ore: ore:€–
€Š:€¢ 4 sd 32 €ü ore:€ï
€Š:€— 1 sd 22  ore:€½
€Š:€¹ 9 sd 11 1 €Š:€¹_€µ
€Š:€×_€Ø_€Ù|13 16 sd 32 €Õ ore:ò
€Š:bed|13 1 sl 00 12 €Š:bed ore:
€·:S 1 sd 32 “ €·:€Æ|3 €·:ó €·:€¸
€€:ô 1 sd 33  ore:€² ore:oc:€­ ore:€” ore:oc:€® ore:oc:€³
€Š:3_|15 8 sl 00 4 ore:€Û €Š:5 €Š:6
€·:õ 1 sd 33 … €·:€Æ|3 ore:€¾ €·:€¸
€Š:3_|10 8 sl 00 4 ore: €Š:5 €Š:6
€Š:€Ñ|5 1 sd 33 €Ò €Š:€—|10 ore:€•
€Š:P|5 3 sd 21 11 €Š:€—|5
€€:ö 1 sd 33  ore:€” ore:oc:€ €Š:€‹_ ore:€Ğ ore:oc:€³
€Š:€Ã|2 4 sd 11 1 €Š:log|2
€Š:€×_€Ø_€Ù|8 16 sd 32 €Õ ore:÷
€Š:ø_ù 2 sd 33 ¢ ore:ú €Š:ù
€Š:tnt_· 1 sd 12 12 €Š:tnt €Š:·
€Š:€×_€Ø 8 sd 33 €Ì ore: ore:€Ü
€Š:P|14 3 sd 21 11 €Š:€—|14
€Š:€Ã|4 4 sd 11 1 €Š:û
€Š:A_hoe 1 sd 23 : ore:€ï ore:€•
€·:€¸|5 9 sd 33 €Ì €·:€¸|3 ore:ü
€·:|6 9 sl 00 1 €·:|7
€·:€¸|6 1 sl 00 123 €·:€¸|9 ore:€” ore:€¾
€Š:bed|8 1 sl 00 12 €Š:bed ore:
€Š:^_ 4 sd 33 	 €Š:^_€µ
€·:B|1 1 sl 00 1 €·:B|1
€·:B|4 1 sl 00 1 €·:B|4
€Š:€—|11 1 sl 00 12 ore:J €Š:€—
€·:Ğ 1 sd 33 €¶ €·:€¸|12
€·:ı 1 sl 00 12 €·:ı|1 €·:ı|2
€Š:½ 1 sd 11 1 ore:ş
€Š:9 1 sd 33 ÿ ore:€ï ore:€Ó ore:€² ore:€–
€€:Q 1 sd 33  ore:€² ore:oc:‚  ore:€ƒ ore:† ore:oc:€³
€Š:bed|12 1 sd 32 €î €Š:€—|12 ore:€ï
€Š:bed|11 1 sd 32 €î €Š:€—|11 ore:€ï
€Š:P|8 3 sd 21 11 €Š:€—|8
€Š:€Ñ|15 1 sd 33 €Ò €Š:€— ore:€•
€Š:T|2 4 sd 22  €Š:T
€Š:end_‚ 1 sd 33 ‚ ore: €Š:€ª_eye €Š:‚_‚
€Š:€Ñ|7 1 sd 33 €Ò €Š:€—|8 ore:€•
€Š:€â_€ı 1 sd 33 €ş ore:€Ó ore:€•
€·:€á_€‹ 4 sd 33 €ã €Š:€‹_€ä|* ore:€² ore:‚
€Š:A_axe 1 sd 23 ‘ ore:€ï ore:€•
€Š:‚ 1 sd 33 ‚ ore:€Ó €Š:bow ore:€–
€·:®|1 1 sd 33 €¶ €·:®
€Š:€×_€Ø_€Ù|9 16 sd 32 €Õ ore:‚
€Š:‚_‚	 1 sd 33 ‚
 ore: €Š:Y €Š:A_\,€Š:A_\|1,€Š:A_\|2,€Š:A_\|3,€Š:A_\|4,€Š:A_\|5
€Š:Y_ 4 sd 33 	 €Š:Y_€µ,€Š:Y_€µ|1,€Š:Y_€µ|2
€Š:P 3 sd 21 11 €Š:€—
€Š:€Ã|1 4 sd 11 1 €Š:log|1
€·:B 1 sl 00 1 €·:B
€Š:€×_€Ø|14 8 sd 33 €Ì ore: ore:€˜
€·:/|2 8 sd 33 €Ì €·: €·:€¸|5
€Š:^_\ 6 sd 31 111 €Š:^_€µ
€Š:P|13 3 sd 21 11 €Š:€—|13
€·:|1 9 sl 00 1 €·:|2
€·:‚ 1 sl 00 121 ore: €·:‚|*
€·:‚ 1 sd 33 C €·:€Æ|3 €·:€¸ €·:S
€·:‚|1 1 sl 00 121 €Š:€ö|* €·:‚|*
€Š:‚_‚ 2 sd 13 123 ore:€² ore:€• ore:€ï
€Š:‚_€Ğ 1 sl 00 12 ore:İ €Š:‚_‚
€·:‚|4 1 sl 00 121 ore:€ƒ €·:‚|*
€Š:ğ 1 sd 33 ‚ ore:€² ore:İ
€·:‚|5 1 sl 00 123 €Š:€İ €·:‚|* €Š:€İ|1
€€:‚|20 1 sd 33  ore:€¨ ore:oc:€® €Š:€‹_ ore:oc: ore:oc:€³
€·:‚|2 1 sl 00 123 ore: €·:‚|* ore:~
€·:‚|3 1 sl 00 121 €Š:€ê|* €·:‚|*
€·:€á_€¹ 4 sd 33 €ã €Š:€¹_€ä|* ore:€ÿ ore:‚
€Š:6 9 sl 00 1 €·:‚
€·:©|1 1 sd 33 ‚ €·:© €Š:€‹_€µ €Š:_€µ
€Š:€Ñ|2 1 sd 33 €Ò €Š:€—|13 ore:€•
€·:©|2 1 sd 33 ‚ €·:©|1 €Š:_€µ €Š:€¹_€µ
€·:©|3 1 sd 33 ‚ €·:©|2 €Š:€¹_€µ €Š:€ú_€µ
€€:‚|17 1 sd 33 ‚ ore:€‡ ore:oc:€ ore:oc: ore:oc:‚ ore:oc:‚
€·:©|4 1 sd 33 ‚ €·:©|3 €Š:€ú_€µ €Š:__€
€É:€Ê_q|3 1 sd 33 … ore:€• €Š:€¹ €É:€Ê_€Ë
€€:‚|19 1 sd 33 ‚ ore:€¨ ore:oc:‚ ore:oc:€ ore:oc: ore:oc:€³
€Š:€×_€Ø|2 8 sd 33 €Ì ore: ore:€Ö
€Š:€ª_€Ğ 1 sd 33 €Ì €Š:€¨ €Š:€ª_eye
€·:|1 1 sd 33 €¶ €·:
€Š:_€Œ 9 sd 11 1 ore:€”
€·:|2 1 sd 33 €¶ €·:|1
€·:© 1 sd 33 ¢ €·:€¸|4 €Š:€‹_€µ
€Š:€‹_ 16 sd 32 €Õ ore:€²
€·:|3 1 sd 33 €¶ €·:|2
€€:‚|10 1 sd 32 ‚ ore:oc:€… €Š:€‹_€Œ ore:oc:€³
€Š:u_‚ 1 sd 33 €Ò €Š:u €Š:€¢
€·:|4 1 sd 33 €¶ €·:|3
€€:‚|11 1 sd 32 “ ore:oc:€… ore:oc:€ ore:oc:€³
€·:|5 1 sd 33 €¶ €·:|4
€€:‚|8 1 sd 32 ‚ ore:oc:€ €Š:€‹_€Œ ore:oc:€³
€Š:€‹_‚ 1 sd 22  ore:€²
€€:‚|9 1 sd 32 ‚ ore:oc:€ ore:oc:€… ore:oc:€³
€€:‚ 1 sd 33  ore:€” €Š:‚ €Š:€ª_eye ore:oc:€ ore:oc:€³
€€:‚|15 1 sd 33  ore:€ÿ ore:oc:‚ ore:oc:€… ore:oc:‚  ore:€¨ ore:oc:€³
€€:è|28 16 sd 33 €± ore:6 €Š: €Š:€İ|1 €Š:b_L
€€:‚|16 1 sd 33 ‚ ore:€ƒ ore:oc:€® ore:oc:€ˆ ore:oc:‚! ore:oc:‚"
€€:‚|13 1 sd 33  ore:€² ore:oc:‚# ore:oc:€® ore:oc:‚! ore:€¨ ore:oc:€³
€€:‚|14 1 sd 33  ore:€” ore:oc:‚$ ore:oc:€ ore:oc:‚ ore:€¨ ore:oc:€³
€·:® 1 sd 33 €¶ €Š:5
€€:è|24 1 sd 33  ore:oc:‚% €Š:‚ ore:oc:€ ore:oc:‚& ore:oc:‚ 
€É:‚' 1 sd 33 ‚( €Š:€â €Š:W ore:€Í ore:€ÿ
€€:è|23 1 sd 33  ore:oc:‚% €Š:‚ ore:oc:€® ore:oc:‚) ore:oc:‚
€€:è|27 1 sl 00 ‚* ore:€Ş ore:€Ö ore:+ ore:€Û ore:oc:‚+
€€:è|26 1 sd 33  €Š:€‹_€Œ €Š:‚ ore:oc:‚  €Š:L ore:oc:€³
€Š:dye|13 3 sl 00 123 ore:J ore:€˜ ore:~
€Š:€‹_€÷ 1 sd 32 €ø ore:€²
€Š:€¹_axe 1 sd 23 ‘ ore:€ÿ ore:€•
€Š:€×_€ß_€à|11 8 sd 33 €Ì €Š:€ß_€à ore:J
€Š:‚, 1 sd 22  €Š:‚,_‚-
€Š:bed|5 1 sl 00 12 €Š:bed ore:Æ
€·:€¸ 1 sl 00 ‚. €·:ó|* ore:€–
€€:‚|7 1 sd 32 ‚ ore:oc:€® ore:oc:€ ore:oc:€³
€Š:€â|4 4 sd 22  ore:‚/
€€:‚|5 1 sd 33 ‚0 ore:€‡ €Š: ore:oc:€… ore:oc:Ù ore:oc:€³
€€:‚|6 1 sd 32 ‚ ore:oc:€® €Š:€‹_€Œ ore:oc:€³
€Š:€â_\ 6 sd 31 111 €Š:€â
€Š:bed|5 1 sd 32 €î €Š:€—|5 ore:€ï
€€:€Ê|1 1 sd 33 ‚1 €Š:€‹_€Œ ore:€ƒ €Š:€‹_ ore:oc:Q
€€:‚ 1 sd 33  €Š:€‹_€Œ €Š: ore:oc:€® ore:oc:Ù ore:oc:€
€€:€Ê 1 sd 33 ‚1 ore:€² ore:€¯ ore:oc:€® €Š:8_9
€€:€Ê|3 1 sd 33 €¼ €Š:€‹_€Œ ore:oc:Q ore:€‡
€€:€Ê|2 1 sd 33 ‚1 €Š:€‹_€Œ ore:oc:Q €Š:€‹_ ore:€ƒ
€·:©|5 1 sd 33 ‚ €·:©|4 €Š:__€ €Š:‚2_Ì
€€:‚|3 1 sd 33 ‚0 €Š:€‹_€Œ €Š: ore:oc:€® ore:oc:Ù ore:oc:€³
€€:€Ê|5 1 sd 33 ‚0 ore:€² ore:oc:€® ore:N ore:€Ğ ore:oc:€†
€·:©|6 1 sd 33 ‚ €·:©|5 €Š:‚2_Ì €Š:‚3
€€:‚|4 1 sd 33 ‚0 ore:€ƒ €Š: ore:oc:€ ore:oc:Ù ore:oc:€³
€€:€Ê|4 1 sd 33  ore:€” ore: ore:oc:€… €Š:€ª_eye ore:€¨ ore:oc:€³
€·:©|7 1 sd 33 ‚ €·:©|6 €Š:‚3 €Š:€Ç_î
€€:‚|1 1 sd 33  ore:€ƒ €Š: ore:oc:€ ore:oc:Ù ore:oc:€
€·:©|8 1 sd 33 ‚ €·:©|7 €Š:€Ç_î €Š:€‹_V
€€:‚|2 1 sd 33  ore:€‡ €Š: ore:oc:€… ore:oc:Ù ore:oc:€
€€:€Ê|6 1 sd 33 ‚0 ore:€² ore:oc:€ ore:N ore:€Ğ ore:oc:€†
€Š:U_ 4 sd 33 	 €Š:€Ã|3
€·:)|1 9 sl 00 1 €·:)|2
€É:
 4 sd 33  ore:€• €Š:€Ã
€·:Ğ|2 1 sd 33 €¶ €·:€¸|17
€Š:dye|13 2 sl 00 1 €Š:”_•|1
€·:‚4|1 1 sd 33 $ €·:
€Š:bed|10 1 sl 00 12 €Š:bed ore:
€Š:€—|5 1 sl 00 12 ore:Æ €Š:€—
€Š:€—|8 1 sl 00 12 ore: €Š:€—
€Š:P|3 3 sd 21 11 €Š:€—|3
€·:‚5 1 sd 33 €Ì €Š:€£|* €Š:€Ğ|*
€·:‚6 1 sl 00 123 ore:İ €·:‚7 ore:€–
€€:‚8 1 sl 00 12 €€:‚8 €€:q
€É:‚9 1 sd 33 ‚( €Š:€â €Š:9 ore:€Í ore:€²
€·:B|3 1 sl 00 1 €·:B|3
€Š:€Ñ|12 1 sd 33 €Ò €Š:€—|3 ore:€•
€·:‚: 1 sd 33 ‚; ore:€” €·:t|1
€Š:€Ó_€Ô|1 6 sd 32 €Õ €Š:‚<_€Ó
€Š:dye|13 2 sl 00 12 ore: ore:~
€·:€Ä|1 3 sd 32 “ €·:€¸|3 €·:€Æ|2 €·:€¸
€Š:€Ñ|1 1 sd 33 €Ò €Š:€—|14 ore:€•
€Š:^_‚= 1 sd 12 11 €Š:^_\
€Š:‚>_ç_¸_¹ 1 sd 21 11 ore:€²
€Š:€â_Ï 1 sd 13 122 ore:€Ó ore:€•
€Š:€×_€Ø|6 8 sd 33 €Ì ore: ore:~
€Š:€‘_e 1 sd 33 f ore:€”
€É:‚? 1 sd 33 ‚( €Š:€â €Š:W ore:€Í ore:€”
€€:‚@ 1 sd 33  ore:oc:€ ore:Ú ore:oc:€³ ore:€‡ ore:€¨ €Š:ã_ä
€Š:€Ñ|10 1 sd 33 €Ò €Š:€—|5 ore:€•
€·:‚A 1 sd 32 €í ore:€” €Š:€ö|* €Š:€¨|*
€Š:€â_¸_¹ 1 sd 21 11 ore:€â
€Š:l 1 sd 33 ‚B ore:€Ó ore:€–
€Š:€×_€Ø_€Ù|4 16 sd 32 €Õ ore:?
€Š:_‚C 1 sd 33 ¢ ore:€– ore:ã
€Š:P|15 3 sd 21 11 €Š:€—|15
€€:è|29 6 sl 00 12 ore:oc:‚D ore:€ÿ
€Š:end_rod 4 sd 12 12 €Š:_rod €Š:__`_a
€É:É_key 1 sl 00 12 €É:v_key €Š:€ª_eye
€€:‚E 1 sd 33  ore:€² ore:€” ore:oc:€­ ore:oc:€® ore:oc:€³
€É:€Ê_ 1 sd 33 €¼ €Š: ore:€• €É:€Ê_€Ë
€·:% 1 sd 32 1 €Š:€ª_Í|* €·:%|9 ore:€– €Š:W|*
€Š:‚<_€Ó 1 sl 00 12 ore:€Ó €Š:Ê
€Š:€‘_€÷ 1 sd 32 €ø ore:€”
€Š:‚ 2 sd 32 €Õ ore:€ï
€Š:dye|12 1 sl 00 1 €Š:red_€|1
€·:0 4 sd 32 1 ore:€– €·:2 ore:€â ore:İ
€É:€Ê_one_‚F 1 sd 33 … ore:€• €Š:| €É:€Ê_€Ë
€·:‚G 8 sd 33 €Ì €Š:€ù|* €·:t|1
€Š:‚H 1 sd 31 111 €Š:¾
€·:‚I 1 sl 00 123 €Š:l|* ore:€– €Š:‚J_eye|*
€Š: 4 sd 12 12 €Š:€İ,€Š:€İ|1 ore:€•
€Š:._g 1 sd 32 h €Š:€Ã|4
€Š:Ş 1 sd 12 12 ore:€• ore:€Ó
€·:ó 8 sl 00 12 €Š:€ª_Í|* €·:F|*
€Š:ğ 1 sd 33 ‚K ore:€² ore:€¤
€·:>|1 1 sd 33 €Å €·:€¸|17 ore:Å €·:@ €·:€¸
€Š:dye|7 2 sl 00 12 ore:j ore:€Ü
€Š:€×_€ß_€à 8 sd 33 €Ì €Š:€ß_€à ore:€Ü
€Š:map 1 sd 33 €Ì ore:† €Š:‚
€Š:‚	_€’ 6 sd 33 €“ ore:€² €Š:€â_¸_¹ ore:€–
€Š:bed|6 1 sd 32 €î €Š:€—|6 ore:€ï
€Š:‚L 1 sd 33 ‚M ore:€ï ore:€²
€€:‚N 1 sd 33 ‚O ore:€” ore:€˜ ore: ore:oc:€ ore: ore:J
€·:‚P 1 sl 00 ‚Q ore: ore:´ €Š: |* ore:‚R ore:€¤ ore:‚S €Š:€ª_Í|* ore:z
€Š:€Ñ 1 sd 33 €Ò €Š:€—|15 ore:€•
€Š:5 9 sl 00 1 €·:®
€Š:‚T 1 sd 33 €Ì ore:€• €Š:€—,€Š:€—|1,€Š:€—|2,€Š:€—|3,€Š:€—|4,€Š:€—|5,€Š:€—|6,€Š:€—|7,€Š:€—|8,€Š:€—|9,€Š:€—|10,€Š:€—|11,€Š:€—|12,€Š:€—|13,€Š:€—|14,€Š:€—|15
€Š:€‹_Ï 1 sd 13 122 ore:€² ore:€•
€Š:€â_\|5 6 sd 31 111 €Š:I,€Š:I|1,€Š:I|2,€Š:I|3
€Š:‚U 3 sd 33 €Ò ore:€ï ore:€•
€Š:I 4 sd 22  €Š:€â
€Š:dye|15 3 sl 00 1 ore:€´
€·:>|5 1 sd 33 €Å €·:€¸|17 ore:‚ €·:@ €·:€¸
€€:‚V|1 1 sl 00 12 €€:‚V|1 €€:q
€Š:„_' 1 sd 22  ore:€ï
€€:‚V 1 sl 00 12 €€:‚V €€:q
€·:€Ä|2 1 sd 33 ‚ €·:€Æ|3 €·:€¸ ore:€”
€Š:€—|3 1 sl 00 12 ore:m €Š:€—
€·:B 1 sd 33 C ore:€Ó €Š:€â_\|3,€Š:€â_\ €Š:€¢|*
€·:‚W 1 sd 33 €¼ ore:€½ €Š:€ª_Í|* €·:‚X
€Š:€—|1 1 sl 00 12 ore:! €Š:€—
€Š:bed|15 1 sl 00 12 €Š:bed ore:€Û
€Š:P|6 3 sd 21 11 €Š:€—|6
€Š:A_\|5 6 sd 31 111 €Š:€Ã|5
€Š:€×_€ß_€à|1 8 sd 33 €Ì €Š:€ß_€à ore:!
€Š:._ 4 sd 33 	 €Š:€Ã|4
€Š:€À_€ó 3 sd 23 €Õ €Š:€Ã|2
€Š:™ 1 sd 33 ‚Y €Š:€‹_€µ ore:€²
€Š:_V 1 sd 33 €¶ €Š:_€Œ
€Š:€‹_V 9 sd 11 1 €Š:€‹_€µ
€·:‚Z 1 sd 33 ‚ €·:€Æ|3 €Š:€ª_€Ğ|* €·:€¸
€·:‚ 9 sl 00 1 €·:‚|1
€·:€¸|1 1 sd 33 ¢ €Š:_|* ore:€ï
€·:‚[ 1 sd 33 ‚\ €·:©|8 ore:€½ ore:€²
€Š:bed|1 1 sd 32 €î €Š:€—|1 ore:€ï
€€:‚] 4 sd 33 { ore:€¯ ore:oc:‚^
€·:‚_ 1 sl 00 123 €Š:l|* €·:€¸ €Š:Ş|*
€Š:€Ç_€È 1 sd 22  €Š:‰
€€:‚` 1 sd 33  ore:€² ore:‚a ore:N ore:oc:€ ore:oc:€³
€Š:A_€ä 1 sd 13 112 ore:€ï ore:€•
€Š:€À_€Á_€é 1 sd 32 €Â €Š:€£ €Š:€Ã|2
€·:%|9 1 sd 33 ‚1 ore:€² ore:€ÿ ore:´ €·:‚b
€·:‚c 1 sd 33 ‚d ore:€² €Š:€â_H|* ore:€•
€€:€­|‚e 4 sd 33 ¢ €Š:€‹_€Œ €Š:
€·:>|7 1 sd 33 €Å €·:€¸|17 ore:€ €·:@ €·:€¸
€Š:€è_€ó 3 sd 23 €Õ €Š:€Ã|1
€Š:bed|9 1 sd 32 €î €Š:€—|9 ore:€ï
€Š:€_on_a_€£ 1 sd 22 ‚f €Š:c_rod €Š:€
€Š:€×_€Ø_€Ù|14 16 sd 32 €Õ ore:Ç
€Š:€—|12 1 sl 00 12 ore: €Š:€—
€€:q|4 1 sd 33 ‚g ore:oc:€… ore:oc:‚h ore:€ÿ ore:oc:€³ ore:N
€€:q|3 1 sd 33 ‚g ore:oc:€ ore:oc:‚h ore:€” ore:oc:€³ ore:N
€€:q|2 1 sd 33 ‚g ore:oc:€® ore:oc:‚h ore:€² ore:oc:€³ ore:N
€€:q|1 1 sd 33 ‚i €Š:€‹_€Œ €Š:Ş ore:† ore:oc:‚h
€€:q 1 sd 33  ore:€ƒ ore:oc:‚  ore:† ore:oc:€® ore:€§
€Š:bed|10 1 sd 32 €î €Š:€—|10 ore:€ï
€É:
|3 4 sd 33  ore:€• €Š:€Ã|3
€Š:|2 1 sd 33 €Ì ore:‚ ore:€Û
€Š:‚j 8 sd 31 121 €Š:¾ €Š:dye|3
€·:€¸|2 1 sl 00 123 €Š:€ª_Í|* ore:€– €·:€¸
€€:¯|1 1 sl 00 12 €€:¯|* ore:€˜
€€:¯|2 1 sl 00 12 €€:¯|* ore:
€Š:dye|4 9 sd 11 1 €Š:‚k_€µ
€Š:€Ã|5 4 sd 11 1 €Š:û|1
€€:¯ 1 sl 00 12 €€:¯|* ore:€Û
€Š:3_|1 8 sl 00 4 ore:! €Š:5 €Š:6
€Š:_€µ 1 sd 33 €¶ ore:€–
€€:¯|4 1 sl 00 12 €€:¯|* ore:J
€€:¯|5 1 sl 00 12 €€:¯|* ore:
€Š:‚l 1 sd 22 ‚m ore:€²
€€:¯|3 1 sl 00 12 €€:¯|* ore:
€Š:¾ 9 sd 11 1 €Š:hay_€µ
€€:¯|8 1 sl 00 12 €€:¯|* ore:j
€€:¯|9 1 sl 00 12 €€:¯|* ore:~
€€:¯|6 1 sl 00 12 €€:¯|* ore:€Ş
€€:¯|7 1 sl 00 12 €€:¯|* ore:
€·:‚n_€Ã|1 4 sl 00 1 €·:‚n_log|1
€Š:€×_€Ø_€Ù|1 16 sd 32 €Õ ore:‚o
€É:
|1 4 sd 33  ore:€• €Š:€Ã|1
€Š:Y_€µ 1 sd 22  €Š:Y
€·:|2 4 sd 22  €·:|1
€€:‚p 1 sd 33 €± ore:€” €Š:‚_‚	 ore:oc:€ˆ ore:oc:€³
€·:0|2 4 sd 32 1 ore:€– €·:2 ore:€â €Š:L|*
€€:¯|12 1 sl 00 12 €€:¯|* ore:m
€€:¯|10 1 sl 00 12 €€:¯|* ore:Æ
€Š:€¹_€÷ 1 sd 32 €ø ore:€ÿ
€€:¯|11 1 sl 00 12 €€:¯|* ore:+
€Š:bed|3 1 sl 00 12 €Š:bed ore:m
€Š:bow 1 sd 33 ‚q ore:€• ore:€½
€€:¯|15 1 sl 00 12 €€:¯|* ore:€Ü
€€:¯|13 1 sl 00 12 €€:¯|* ore:€Ö
€€:¯|14 1 sl 00 12 €€:¯|* ore:!
€Š:€ò_oak_€Á_€é 1 sd 32 €Â €Š:€£ €Š:€Ã|5
€Š:€İ 9 sd 11 1 €Š:€İ_€µ
€·:¥_‚r 1 sd 33 ¦ ore:€ï ore:€•
€Š:‚ 1 sd 33 ¢ ore:€² ore:€–
€É:‚s|3 2 sd 33 C ore:€• ore:İ ore:‚t
€€:q 2 sl 00 11 €€:q
€Š:€×_€ß_€à|8 8 sd 33 €Ì €Š:€ß_€à ore:
€É:‚s|4 4 sd 33 €¼ ore:İ ore:€• ore:‚t
€·:> 1 sd 33 €Å €·:€¸|17 ore:‚u €·:@ €·:€¸
€Š:‚v_‚w 1 sd 33 €Ì ore:€• ore:€ê
€€:€Ê|18 1 sd 33 ‚O ore:€” ore:oc:Û €Š:l ore:oc:€ ore:N ore:oc:€³
€€:€Ê|17 1 sd 33 ‚O ore:€ï €Š:ğ €Š:l ore:€Ğ ore:N ore:oc:€®
€·:‚X 1 sd 23 ‚x €·:€¸ ore:€â
€É:È|2 1 sl 00 12 €É:–_key €Š:€â_H
€€:€Ê|24 1 sd 33 ‚O ore:€” €Š:€Ø_Ì €Š:‚ ore:oc:€ ore:N ore:oc:€³
€€:‚y 1 sd 33 ‚z ore:€² ore:oc:€
€€:€Ê|23 1 sd 33 ‚O ore:€ï €Š:€‹_ €Š:‚ €Š:Ñ ore:N ore:oc:€®
€·:|5 9 sl 00 1 €·:|6
€€:€Ê|26 1 sd 33 €¼ ore:€² €Š:‚{ ore:oc:Ù
€€:€Ê|25 1 sd 33  ore:€” ore:N ore:€² ore:oc:Q ore:oc:€…
€€:€Ê|20 1 sd 33  ore:€² ore:N ore:€• ore:oc:€® ore:oc:€³
€€:€Ê|19 1 sd 33  ore:€” €Š:‚ ore:oc:€ €Š:‡_map|* €Š:‚|
€Š:€ò_oak_g 1 sd 32 h €Š:€Ã|5
€€:€Ê|22 1 sd 33 ‚} ore: ore:oc:€… ore:‚~ ore:€² ore:oc:€³
€€:€Ê|21 1 sd 33  ore:€² ore:€Û ore:oc:€® ore:€• €Š:8_9
€Š:dye|9 1 sl 00 1 €Š:red_€|7
€Š:ù 4 sd 13 123 €Š:| ore:€• ore:€ö
€Š:A_€ó 3 sd 23 €Õ €Š:€Ã
€·:‚|1 1 sd 33 €¶ €·:‚
€Š:€Ğ 1 sd 33 €¶ €·:€Ï
€€:€Ê|27 1 sd 33  ore:€ö ore:oc:€® €Š:€‹_€Œ ore:€ê ore:oc:€³
€€:€Ê|29 1 sd 33  ore:€” ore:€Ğ €Š:€ú ore:oc:€ €Š:l ore:oc:€³ ore:N
€Š:¤_‚ 1 sd 11 1 €Š:¤
€Š:€â|1 1 sl 00 12 ore:‚/ €Š:Y
€€:€Ê|28 1 sd 33  ore:oc:‚% ore:oc:€ ore:€ƒ ore:€² ore:oc:€³
€Š:€Ó 9 sl 00 1 €·:
€·:‚€ 1 sl 00 ‚ €Š:€ö|* €Š:†|* €Š:€Ø_Ì|* ore:€Û
€Š:€â_\|4 6 sd 31 111 €Š:€È_€µ
€Š:€Á 3 sd 32 €Â €Š:€Ã €Š:€£
€€:€Ê|31 1 sd 32 ‚ ore:€§ ore:oc:€® ore:oc:€†
€€:€Ê|30 1 sd 33 ‚1 ore:oc:° ore:# ore:oc:‚‚ ore:oc:‚ƒ
€Š:red_T_ 4 sd 33 	 €Š:red_T,€Š:red_T|1,€Š:red_T|2
€Š:€×_€ß_€à|9 8 sd 33 €Ì €Š:€ß_€à ore:€Ş
€Š:€×_€ß_€à|10 8 sd 33 €Ì €Š:€ß_€à ore:
€Š:€â_‚„ 6 sd 31 111 €Š:red_T,€Š:red_T|1,€Š:red_T|2
€·:0|4 2 sd 33 ‚ €Š:€ª_Í|* €·:0|2 ore:€ÿ
€Š:€×_€Ø_€Ù|7 16 sd 32 €Õ ore:‚…
€€:‚† 1 sd 33 ‚‡ ore:€§ ore:oc:‚  ore:€ƒ ore:oc:€³
€Š:P|7 3 sd 21 11 €Š:€—|7
€€:‚†|2 1 sd 33 ‚O €Š:€‹_€Œ ore:oc:‚ˆ ore:oc:€… ore:oc:‚N ore:oc: ore:oc:Š
€€:‚†|3 1 sd 33 ‚‰ ore:€Û ore:€˜ ore: ore:J ore:oc:Û ore: ore:+ ore:€Ö ore:€Ü
€€:‚†|4 1 sl 00 12 €Š:€õ ore:oc:€®
€Š:€—|13 1 sl 00 12 ore: €Š:€—
€Š:€¹_, 1 sd 32 - ore:€ÿ
€Š:€â|5 2 sl 00 12 ore:‚/ ore:€Ó
€É:‚Š 1 sd 32 ‚‹ ore:€ğ €Š:†
€€:€Ê|19 1 sl 00 12 €€:€Ê|19 €Š:‡_map|*
€Š:€£ 4 sd 12 11 ore:€ï
€Š:I|3 1 sd 12 11 €Š:€â_\|5
€·:B|2 1 sl 00 1 €·:B|2
€Š:€ò_oak_ 4 sd 33 	 €Š:€Ã|5
€Š:‚Œ_Á 1 sd 32 ‚‹ €Š:_rod ore:€Ó
€€:‚†|5 1 sd 33 ‚O ore:oc:° ore:oc: ore:oc:€ˆ ore:oc:‚ ore:oc:€º ore:oc:Q
€·:€á_‚r 4 sd 33 €ã €Š:A_€ä|* €Š:€Ã €Š:log
€€:‚ 4 sd 33  ore:€² ore:oc:‚ €Š:ğ €Š:L ore:oc:‚
€·:‚n_€Ã 4 sl 00 1 €·:‚n_log
€·:€Ä|3 1 sd 33 … €·:€Æ|3 €·:€¸|1 €·:€¸
€Š:€â_axe 1 sd 23 ‘ ore:€Ó ore:€•
€Š:€‘_€ 1 sd 33 €Ì €Š:_€Œ €Š:€
€·:@|250 1 sl 00 ‚. ore:€ÿ ore:ú
€Š:€Ñ|4 1 sd 33 €Ò €Š:€—|11 ore:€•
€·:‚‘ 1 sd 13 112 €·:©|8 €Š:€£|*
€Š:€¹_€µ 1 sd 33 €¶ ore:€ÿ
€·:‚7 1 sd 33  ore:€â ore:€Ó ore:İ
€Š:€×_€Ø|4 8 sd 33 €Ì ore: ore:+
€€:‚’ 1 sd 33  ore:€² ore:€” ore:oc:Q ore:oc:€ ore:oc:€³
€Š:€×_€Ø|3 8 sd 33 €Ì ore: ore:m
€Š:A_\ 6 sd 31 111 €Š:€Ã
€·: 9 sl 00 1 €·:|1
€Š:ã 1 sd 22  ore:ú
€·:|4 2 sl 00 121 €·: ore:ú
€Š:_‚ 4 sd 11 1 €Š:
€É:
|2 4 sd 33  ore:€• €Š:€Ã|2
€Š:red_T|1 1 sd 12 11 €Š:€â_‚„
€Š:€Ç_€È_€Á 6 sd 32 €Õ €Š:€Ç_€È
€Š:‚,_‚- 1 sl 00 12 €Š:_ ore:€ğ
€·:€¸|5 1 sd 33 €Ì €·:€¸|3 ore:€ÿ
€Š:‚“ 1 sd 33 ‚” ore:€ï €Š:€õ
€·:€¸|12 9 sl 00 1 €·:Ğ
€·:|2 9 sl 00 1 €·:|3
€Š:‚k_€µ 1 sd 33 €¶ €Š:dye|4
€€:q|3 1 sl 00 1 €€:q|3
€Š:P|10 3 sd 21 11 €Š:€—|10
€€:q|2 1 sl 00 1 €€:q|2
€€:q|1 1 sl 00 1 €€:q|1
€Š:€×_€ß_€à|6 8 sd 33 €Ì €Š:€ß_€à ore:~
€Š:€×_€Ø_€Ù|12 16 sd 32 €Õ ore:‚•
€Š:bed|12 1 sl 00 12 €Š:bed ore:
€Š:€‹_axe 1 sd 23 ‘ ore:€² ore:€•
€Š:€—|9 1 sl 00 12 ore:€Ş €Š:€—
€·:>|4 1 sd 33 €Å €·:€¸|17 ore:ò €·:@ €·:€¸
€Š:T_ 4 sd 33 	 €Š:T,€Š:T|1,€Š:T|2
€Š:€ª_eye 1 sl 00 12 ore:‚– €Š:_
€€:€Ê|16 1 sd 33 ‚— ore:€² ore:oc:€® ore:N ore:oc:€³
€Š:‚˜ 1 sd 33 €Ì ore:€ï ore:€ÿ
€€:q 1 sl 00 1 €€:q
€€:q|4 1 sl 00 1 €€:q|4
€Š:bed 1 sd 32 €î €Š:€— ore:€ï
€·:>|6 1 sd 33 €Å €·:€¸|17 ore: €·:@ €·:€¸
€·:‚™ 1 sd 33  ore:€â ore:€Ó ore:€¾
€€:€Ê|7 1 sd 33 ‚0 ore:€” ore:oc:€ ore:N ore:€Ğ ore:oc:€†
€Š:(|1 4 sd 22 ˆ €Š:( €Š:6
€Š:€Ğ_· 1 sd 12 12 ore:İ €Š:·
€€:€Ê|13 1 sd 33  ore:€² ore:oc:Û ore:oc:€ ore:oc:‚š ore:oc:€³
€Š:P|4 3 sd 21 11 €Š:€—|4
€Š:sea_‚› 1 sd 33  ore:‚ ore:‚œ
€€:€Ê|12 1 sd 33  ore:€² ore:oc:Û ore:oc:€® ore:oc:‚ ore:oc:€³
€€:€Ê|15 1 sd 33 ‚— ore:€” ore:oc:€ €Š:€ú ore:oc:€³
€€:€Ê|14 1 sd 33  ore:€² ore:oc:Û ore:oc:€… ore:oc:‚ ore:oc:€³
€€:€Ê|9 1 sd 33 ‚0 ore:€² ore:oc:€ ore:N ore:€Ğ ore:oc:€³
€€:€Ê|8 1 sd 33 ‚0 ore:€² ore:oc:€® ore:N ore:€Ğ ore:oc:€³
€€:€Ê|11 1 sd 33 ‚— ore:€² ore:oc:€® ore:‚a ore:oc:€³
€€:€Ê|10 1 sd 33 ‚0 ore:€” ore:oc:€ ore:N ore:€Ğ ore:oc:€³
€Š:dye|1 2 sl 00 1 €Š:”_•|4
€Š:‚Ÿ_‚J_eye 1 sl 00 123 €Š:‚J_eye €Š:€ _€¡ €Š:½
€·:|2 9 sl 00 1 €·:|3
€·:%|1 1 sd 33 ‚  €Š:end_rod|* ore:€² ore:´
€Š:€â_hoe 1 sd 23 : ore:€Ó ore:€•
€Š:U_g 1 sd 32 h €Š:€Ã|3
€Š:€¹_hoe 1 sd 23 : ore:€ÿ ore:€•
€Š:_pie 1 sl 00 123 €Š: €Š:½ ore:egg
€Š:œ_‚¡ 6 sd 31 111 €Š:œ
€·:€Æ 4 sl 00   ore:€â ore:‚¢
€·:€¸|8 1 sl 00 12 €·:€¸|9 €Š:€‘_€ı
€Š:U_€Á 3 sd 32 €Â €Š:€Ã|3 €Š:€£
€Š:æ_ç_¸_¹ 1 sd 21 11 ore:€”
€Š:€Ø_Ì 3 sd 32 €ü ore:
€Š:€‹_€ó 3 sd 23 €Õ ore:€²
€·:€¸|17 9 sl 00 1 €·:Ğ|2
€Š:€×_€Ø_€Ù|10 16 sd 32 €Õ ore:‚£
€Š:€â|2 4 sd 22  ore:‚¤
€·:‚¥|‚¦ 1 sd 33 ‚§ €Š:€â|* €Š:€¢|*
€Š:ğ_· 1 sd 12 12 €Š:ğ €Š:·
€Š:€×_€Ø_€Ù|11 16 sd 32 €Õ ore:‚u
€Š:€Ñ|9 1 sd 33 €Ò €Š:€—|6 ore:€•
€Š:Y_€µ|1 1 sd 12 11 €Š:€â_\|7
€Š:bed|11 1 sl 00 12 €Š:bed ore:J
€·:‚b 4 sd 33 €¼ ore:€² ore:€– ore:İ
€É:‚s 1 sd 33 ‚¨ ore:€• ore:İ
€€:‚ƒ 1 sd 33 €± ore:€² ore:oc:€­ ore:oc:€® ore:oc:€³
€É:‚s|1 2 sd 33 C ore:€• ore:İ ore:€ï
€É:‚s|2 4 sd 33 €¼ ore:İ ore:€• ore:€ï
€Š:€—|6 1 sl 00 12 ore:~ €Š:€—
€Š:€ê 1 sd 22  €Š:€™_‚©
€·:‚ª 1 sd 33 … ore:€” ore:İ €·:t|1
€€:‚« 1 sd 33  ore:€² ore:oc:€® ore:oc:‚  ore:oc:€¦ ore:oc:€³
€·:‚ 1 sd 33 €¶ €Š:6
€É:€Ê_q|2 1 sd 33 … ore:€• €Š:_V €É:€Ê_€Ë
€Š:‚¬ 9 sl 00 1 €·:
€Š:3_|8 8 sl 00 4 ore: €Š:5 €Š:6
€Š:¶ 1 sd 33 $ ore:€Ó
€·: 1 sd 33 €¶ €Š:€Ó
€·:)|2 1 sd 33 €¶ €·:)|1
€·:)|1 1 sd 33 €¶ €·:)
€É:€Ê_‚­ 1 sd 33 €¼ €Š:dye|4 ore:€• €É:€Ê_€Ë
€·:B|1 1 sd 33 C ore:€² €Š:‚>_ç_¸_¹|* €Š:Ñ|*
€É:
|4 4 sd 33  ore:€• €Š:€Ã|4
€€:‚® 1 sd 33 ‚0 ore:€² ore:oc:€® ore:N ore:€• ore:oc:€³
€·:)|3 1 sd 33 €¶ €·:)|2
€Š:‚¯_€’ 6 sd 33 C ore:€² ore:€• €Š:_
€·:0|3 2 sd 33 ‚ €Š:€ª_Í|* €·:0 ore:€û
€Š:dye|10 2 sl 00 12 ore: ore:€Ü
€€:‚° 1 sd 33  €Š:€‹_€Œ ore:oc:‚± ore:€ê ore:oc:‚² ore:oc:Q
€Š:€Ã 4 sd 11 1 €Š:log
€€:è|8 4 sd 33 … ore:€ƒ €Š: ore:oc:‚ 
€·:‚y 1 sd 33 ‚³ ore:€˜ ore:€² ore:€–
€€:è|7 8 sd 33 … €Š:€‹_€Œ €Š: ore:oc:‚ 
€€:è|10 1 sd 33 ‚i €Š:€‹_€Œ €Š: ore:oc:‚  ore:oc:€®
€€:è|9 2 sd 33 … ore:€‡ €Š: ore:oc:‚ 
€€:è|2 8 sl 00 123 ore:€” €Š:€à ore:
€€:è|1 1 sl 00 ‚* €Š:b_L €Š:½ ore:€ğ €Š:‚Ÿ_‚J_eye ore:€´
€€:è|6 8 sd 33 ‚´ ore:€² ore:€ƒ ore:† €Š:
€É:€Ê_q|4 1 sd 33 … ore:€• €Š:€ú €É:€Ê_€Ë
€€:è|5 1 sd 33 ‚µ €Š:€‹_€Œ ore:oc:€³ ore:€ƒ
€·:‚¶ 1 sd 33 €± ore:€– €·:€Æ|2 €Š:€İ|* €Š:W|*
€É:‚· 4 sd 33 { ore:€ï ore:€•
€€:è 1 sd 31 121 ore:€• ore:í
€·:|3 2 sl 00 121 €·: ore:€Û
€·: 1 sd 33 €¶ €Š:‚¬
€·:‚¸ 1 sd 32 ‚¹ €·:t|1
€Š:dye|5 2 sl 00 12 ore:J ore:€˜
€Š:red_T 1 sd 22  €Š:5|1
€Š:€‹_€ı 1 sd 33 €ş ore:€² ore:€•
€Š:€â_\|7 6 sd 31 111 €Š:Y_€µ,€Š:Y_€µ|1,€Š:Y_€µ|2
€€:è|20 1 sd 33  €Š:€‹_€Œ ore:oc:€® €Š: ore:€Ğ ore:oc:€³
€€:è|18 1 sd 33 ‚º ore:oc:€ €Š:€â_H ore:€” ore:oc:‚  ore:oc:‚N ore:oc:€… ore:oc:€³
€€:è|21 1 sd 33  ore:€ƒ ore:oc:€… ore:€¾ ore:€Ğ ore:oc:€³
€€:è|15 1 sd 32 ‚» €Š:€â_H
€€:è|14 1 sd 32 €Õ €Š:€â_H
€€:è|17 1 sd 33 ‚O ore:€” €Š:€â_H ore:oc:‚! ore:oc:‚N ore:oc:€… ore:oc:€³
€€:è|16 1 sd 33 €¶ €Š:€â_H
€€:è|11 1 sd 33 ‚i ore:€ƒ €Š: ore:oc:‚  €Š:¡
€€:è|13 1 sd 33 €Ì ore:€½ ore:€¯
€€:è|12 1 sd 33 ‚¼ €Š:€‹_€Œ
€Š:€â_\|6 6 sd 31 111 €Š:€Ç_€È
€Š:dye|6 2 sl 00 12 ore:J ore:
€Š:€×_€ß_€à|7 8 sd 33 €Ì €Š:€ß_€à ore:j
€Š:&_' 1 sd 33 ‚½ €Š:€õ ore:€ÿ €Š:€¨
€Š:Y_€µ|2 2 sd 12 11 €Š:Y_€µ
€Š:‚{ 2 sd 33 ‚¾ ore:€½ ore:€ğ
€·:€¸|15 1 sd 33 €¼ €·:‚G €·:€¸|12 €·:€¸|6
€Š:€è_g 1 sd 32 h €Š:€Ã|1
€Š:_€µ 1 sd 33 €¶ ore:€”
€Š:€À_g 1 sd 32 h €Š:€Ã|2
€É:€Ê_‚¿ 1 sd 33 €Ì €Š:€¨ €É:€Ê_€Ë
€Š:‚À 1 sd 33 ‚Á ore:€Ó ore:€– €Š:Y
€Š:† 3 sd 31 111 ore:ş
€Š:€È_ 4 sd 33 	 €Š:€È_€µ
€Š:€×_€Ø|5 8 sd 33 €Ì ore: ore:Æ
€·:¥_€‹ 1 sd 33 ¦ ore:€² ore:€•
€Š:dye|9 2 sl 00 1 €Š:”_•|5
€·:Ğ|1 1 sd 33 €¶ €·:€¸|11
€·:0|1 4 sd 32 1 ore:€– €·:€» ore:€â €·:2
€Š:L 1 sd 32 €ü ore:€²
€Š:€â|6 4 sd 22  ore:‚Â
€Š:€×_€Ø|15 8 sd 33 €Ì ore: ore:€Û
]==],['crafting.db.bak']= [==[#…¶:
#'ƒ, …· —' '‚v …· …¸' 'sd=ƒ/sl=ƒ' 'wh' '‚v ƒ' '‚v …¹ …º|…»'
€Š:bow 1 sd 33 …¼ €Š:€£ €Š:€½ 
€Š:€Ğ 1 sd 33 …½ €Š:€Ã 
€Š:„_' 1 sd 22  €Š:€Ã 
€Š:€¹_axe 1 sd 23 …¾ €Š:€¹ €Š:€£ 
€Š:€¹_€ı 1 sd 33 …¾ €Š:€¹ €Š:€£ 
€Š:¶ 1 sd 33 …½ €Š:€Ó 
€Š:_€Œ 9 sd 00 1 €Š:_V 
€Š:€‹_axe 1 sd 23 …¾ €Š:€‹_V €Š:€£ 
€Š:€‹_ 16 sd 32 €Õ €Š:€‹_V 
€Š:€‹_€Œ 9 sd 00 1 €Š:€‹_V 
€Š:€‹_€ı 1 sd 33 …¾ €Š:€‹_V €Š:€£ 
€Š:± 3 sd 33 …¿ €Š:€£ 
€Š:† 3 sd 31 111 €Š:… 
€Š:€Ã|0 4 sd 00 1 €Š:log|0 
€Š:€£ 4 sd 12 11 €Š:€Ã 
€Š:€â_axe 1 sd 23 …¾ €Š:€Ó €Š:€£ 
€Š:€â_H|0 1 sd 00 1 €Š:€â|0 
€Š:€â_H 1 sd 00 1 €Š:€â|0 
€Š:€â_€ı 1 sd 33 …¾ €Š:€Ó €Š:€£ 
€Š:A_€ı 1 sd 33 …¾ €Š:€Ã €Š:€£ 
€€:ö 1 sd 33  €Š:_V €€:è|8 €Š:€‹_ €Š:€Ğ €€:è|4 
€€:‚|7 1 sd 32 …À €€:è|7 €€:è|8 €€:è|4 
€€:‚|1 1 sd 33  €Š:_€Œ €Š: €€:è|8 €€:è|11 €€:è|10 
€€:Š 1 sd 32 ‹ €€:è|14 €€:è|15 €€:è|16 
€€:è|15 1 sd 32  €Š:€â_H 
€€:è|14 1 sd 32 €Õ €Š:€â_H 
€€:è|8 4 sd 33 … €Š:_€Œ €Š: €€:è|6 
€€:è|7 8 sd 33 … €Š:€‹_€Œ €Š: €€:è|6 
€€:è|16 1 sd 33 €¶ €Š:€â_H 
€€:è|6 8 sd 33 …Á €Š:€‹_V €Š:_€Œ €Š:† €Š: 
€€:n 1 sd 33 o €Š:€‹_V €Š: €€:è|7 €Š:€Ø 
]==],['oredict.db']= [==[ore:€¤=€Š:log|*,€Š:û|*,€·:‚n_log|*
ore:€ï=€Š:€Ã|*,€·:‚n_€Ã|*
ore:‚t=€Š:A_\|*
ore:Ö=€Š:oak_,€Š:€è_,€Š:€À_,€Š:U_,€Š:._,€Š:€ò_oak_
ore:…=€Š:€Á,€Š:€è_€Á,€Š:€À_€Á,€Š:U_€Á,€Š:€ò_oak_€Á,€Š:._€Á
ore:…=€Š:€Á_€é,€Š:€è_€Á_€é,€Š:€À_€Á_€é,€Š:U_€Á_€é,€Š:€ò_oak_€Á_€é,€Š:._€Á_€é
ore:‚R=€Š:._€ó,€Š:€À_€ó,€Š:€ò_oak_€ó,€Š:A_€ó,€Š:U_€ó,€Š:€è_€ó
ore:€•=€Š:€£
ore:´=€Š:…|*,€·:‚n_…|*
ore:…=€Š:…|*,€Š:…|*,€·:‚n_…|*
ore:Ê=€Š:Ê
ore:…=€Š:_ore
ore:…=€Š:€‹_ore
ore:…	=€Š:‚k_ore
ore:…
=€Š:€¹_ore
ore:…=€Š:_ore
ore:…=€Š:€ú_ore
ore:…=€Š:Y_ore
ore:…=€Š:€İ_ore
ore:€²=€Š:€‹_V
ore:€”=€Š:_V
ore:„X=€Š:€È
ore:…=€Š:‰
ore:€ƒ=€Š:_€Œ
ore:í=€Š:€‹_€Œ
ore:€ÿ=€Š:€¹
ore:€û=€Š:€ú
ore:…=€Š:Y
ore:‚=€Š:_„R
ore:‚œ=€Š:_…
ore:€–=€Š:
ore:ú=€Š:ã_ä
ore:#=€Š:dye|4
ore: =€Š:_€µ
ore:‚=€Š:€‹_€µ
ore:‚~=€Š:‚k_€µ
ore:‚=€Š:€¹_€µ
ore:€¾=€Š:_€µ
ore:…=€Š:€ú_€µ
ore:…=€Š:Y_€µ
ore:­=€Š:€İ_€µ
ore:…=€Š:¾
ore:…=€Š:€Ÿ
ore:…=€Š:€
ore:…=€Š:€Ç_€Î
ore:ş=€Š:…
ore:…=€Š:…
ore:dye=€Š:dye|*,€·:€¸|14
ore:†=€Š:†
ore:€ğ=€Š:€æ_€ç
ore:‚–=€Š:€ª_Í
ore:€´=€Š:€´
ore:==€Š:=
ore:€½=€Š:€½
ore:z=€Š:€Ç_î
ore:€ê=€Š:€ê
ore:€ö=€Š:€ö
ore:egg=€Š:egg
ore:…=€Š:…_13,€Š:…_cat,€Š:…_…,€Š:…_…,€Š:…_far,€Š:…_…,€Š:…_…,€Š:…_… ,€Š:…_…!,€Š:…_…",€Š:…_11,€Š:…_…#
ore:(=€Š:(
ore:‚S=€Š:‚S
ore:€â=€Š:€â
ore:€Ó=€Š:€Ó
ore:6=€Š:6
ore:5=€Š:5|*
ore:T=€Š:T|*,€Š:red_T|*
ore:‚¬=€Š:‚¬
ore:€¨=€Š:€¨
ore:ã=€Š:ã
ore:‚]=€Š:end_€â
ore:=€Š:
ore:‚a=€Š:„_'
ore:…$=€Š:€æ
ore:…%=€Š:
ore:…&=€Š:|1
ore:…'=€Š:|2
ore:‚¤=€Š:€â|1
ore:…(=€Š:€â|2
ore:‚/=€Š:€â|3
ore:…)=€Š:€â|4
ore:‚Â=€Š:€â|5
ore:…*=€Š:€â|6
ore:=€Š:€Ø
ore:=€Š:€Ø,€Š:€×_€Ø|*
ore:…+=€Š:€Ø_€Ù
ore:Ú=€Š:€Ø_€Ù,€Š:€×_€Ø_€Ù|*
ore:€Ğ=€Š:€Ğ,€Š:€ª_€Ğ,€Š:‚_€Ğ
ore:İ=€Š:€Ğ,€Š:‚_€Ğ
ore:…,=€Š:€ª_€Ğ
ore:…-=€Š:‚_€Ğ
ore:€Û=€Š:dye
ore:€=€Š:€×_€Ø|15
ore:….=€Š:€×_€Ø_€Ù|15
ore:€˜=€Š:dye|1
ore:Ç=€Š:€×_€Ø|14
ore:…/=€Š:€×_€Ø_€Ù|14
ore:=€Š:dye|2
ore:ò=€Š:€×_€Ø|13
ore:…0=€Š:€×_€Ø_€Ù|13
ore:=€Š:dye|3
ore:‚•=€Š:€×_€Ø|12
ore:…1=€Š:€×_€Ø_€Ù|12
ore:J=€Š:dye|4,€·:€¸|14
ore:‚u=€Š:€×_€Ø|11
ore:…2=€Š:€×_€Ø_€Ù|11
ore:=€Š:dye|5
ore:‚£=€Š:€×_€Ø|10
ore:…3=€Š:€×_€Ø_€Ù|10
ore:€Ş=€Š:dye|6
ore:‚=€Š:€×_€Ø|9
ore:…4=€Š:€×_€Ø_€Ù|9
ore:=€Š:dye|7
ore:÷=€Š:€×_€Ø|8
ore:…5=€Š:€×_€Ø_€Ù|8
ore:j=€Š:dye|8
ore:‚…=€Š:€×_€Ø|7
ore:…6=€Š:€×_€Ø_€Ù|7
ore:~=€Š:dye|9
ore:Å=€Š:€×_€Ø|6
ore:…7=€Š:€×_€Ø_€Ù|6
ore:Æ=€Š:dye|10
ore:€Ú=€Š:€×_€Ø|5
ore:…8=€Š:€×_€Ø_€Ù|5
ore:+=€Š:dye|11
ore:?=€Š:€×_€Ø|4
ore:…9=€Š:€×_€Ø_€Ù|4
ore:m=€Š:dye|12
ore:’=€Š:€×_€Ø|3
ore:…:=€Š:€×_€Ø_€Ù|3
ore:€Ö=€Š:dye|13,€·:€¸|3
ore:=€Š:€×_€Ø|2
ore:…;=€Š:€×_€Ø_€Ù|2
ore:!=€Š:dye|14
ore:‚o=€Š:€×_€Ø|1
ore:…<=€Š:€×_€Ø_€Ù|1
ore:€Ü=€Š:dye|15
ore:=€Š:€×_€Ø
ore:…==€Š:€×_€Ø_€Ù
ore:›_œ_=€·:‚P|1
ore:ü=€·:€ñ,€·:€ñ|2
ore:…>=€·:€ñ|1
ore:€å=€·:
ore:…?=€·:|1
ore:…@=€·:|2
ore:…A=€·:|3
ore:…B=€·:|4
ore:…C=€·:|5
ore:…D=€·:|6
ore:…E=€·:|7
ore:…F=€·:)
ore:…G=€·:)|1
ore:…H=€·:)|2
ore:…I=€·:)|3
ore:…J=€·:®
ore:…K=€·:®|1
ore:…L=€·:‚
ore:…M=€·:‚|1
ore:…N=€·:
ore:…O=€·:|1
ore:…P=€·:|2
ore:…Q=€·:|3
ore:…R=€·:|4
ore:…S=€·:|5
ore:…T=€·:€¸
ore:…U=€·:€¸|1
ore:…V=€·:€¸|2
ore:…W=€·:€¸|3
ore:…X=€·:€¸|4
ore:…Y=€·:€¸|5
ore:…Z=€·:€¸|6
ore:…[=€·:€¸|7
ore:…\=€·:€¸|8
ore:…]=€·:€¸|9
ore:…^=€·:€¸|10
ore:D=€·:€¸|11
ore:…_=€·:€¸|12
ore:…`=€·:€¸|13
ore:…a=€·:€¸|15,€·:€¸|16
ore:…b=€·:€¸|17
ore:…c=€·:Ğ
ore:…d=€·:Ğ|1
ore:…e=€·:Ğ|2
ore:…f=€Š:€‹_€ó
ore:…g=€·:t|1
ore:‚“=€Š:‚“
ore:‚¢=€Š:I
ore:N=€Š:9,€Š:8_9
ore:€§=€Š:_
ore:€¯=€Š:€ª_Í
ore:oc:‚=€€:€|7
ore:€‡=€€:è|29
ore:oc:‚%=€Š:end_€â,€€:‚]
ore:€Í=€É:ƒ€|*
ore:ê=€É:
|*
ore:oc:‚ƒ=€€:‚ƒ
ore:oc:‚`=€€:‚`
ore:oc:€­=€€:€­|‚e
ore:oc:Q=€€:Q
ore:oc:ì=€€:ì
ore:oc:ñ=€€:ñ
ore:oc:ö=€€:ö
ore:oc:‚^=€€:¯
ore:oc:‚’=€€:‚’
ore:oc:×=€€:×
ore:oc:=€€:‚®
ore:oc:‚=€€:‚
ore:oc:‚@=€€:‚@
ore:oc:=€€:
ore:oc:Š=€€:Š
ore:oc:…h=€€:‚p
ore:oc:…i=€€:ô
ore:oc:=€€:‚E
ore:oc:ï=€€:ï
ore:oc:=€€:
ore:oc:=€€:
ore:oc:€°=€€:€°
ore:oc:n=€€:n
ore:oc:â=€€:â
ore:oc:‚N=€€:‚N
ore:oc:=€€:
ore:oc:‚«=€€:‚«
ore:oc:…j=€€:M
ore:oc:‚=€€:‚
ore:oc:…k=€€:O
ore:oc:‚D=€€:è
ore:oc:‚=€€:è|1
ore:oc:…l=€€:è|2
ore:oc:…m=€€:è|3
ore:oc:€³=€€:è|4
ore:oc:€†=€€:è|5
ore:oc:‚ =€€:è|6
ore:oc:€®=€€:è|7
ore:oc:€=€€:è|8
ore:oc:€…=€€:è|9
ore:oc:€=€€:è|10
ore:oc:Ù=€€:è|11
ore:oc:‚h=€€:è|12
ore:oc:€¦=€€:è|13
ore:oc:Œ=€€:è|14
ore:oc:=€€:è|15
ore:oc:=€€:è|16
ore:oc:…n=€€:è|17
ore:oc:…o=€€:è|18
ore:oc:‚)=€€:è|20
ore:oc:‚&=€€:è|21
ore:oc:‚²=€€:è|23
ore:oc:…p=€€:è|24
ore:oc:‚+=€€:è|26
ore:oc:…q=€€:è|27
ore:oc:°=€€:è|28
ore:oc:Û=€€:‚†
ore:oc:…r=€€:‚†|2
ore:oc:…s=€€:‚†|3
ore:oc:ƒ=€€:‚†|4
ore:oc:‚y=€€:‚y
ore:oc:…t=€€:‚°
ore:oc:…u=€€:‚†|5
ore:oc:€„=€€:‚
ore:oc:€ˆ=€€:‚|1
ore:oc:=€€:‚|2
ore:oc:‚!=€€:‚|3
ore:oc:‚=€€:‚|4
ore:oc:‚ =€€:‚|5
ore:oc:€º=€€:‚|6
ore:oc:‚#=€€:‚|7
ore:oc:€¿=€€:‚|8
ore:oc:‚$=€€:‚|9
ore:oc:€‰=€€:‚|10
ore:oc:‚=€€:‚|11
ore:oc:…v=€€:‚|13
ore:oc:…w=€€:‚|14
ore:oc:…x=€€:‚|15
ore:oc:…y=€€:‚|16
ore:oc:…z=€€:‚|17
ore:oc:…{=€€:‚|19
ore:oc:…|=€€:‚|20
ore:oc:‚"=€€:€|1
ore:oc:‚=€€:€|2
ore:oc:…}=€€:€|3
ore:oc:*=€€:€|4
ore:oc:…~=€€:€|5
ore:oc:€«=€€:€|6
ore:oc:=€€:€|7
ore:oc:…=€€:€|8
ore:oc:‚‚=€€:€|9
ore:oc:…€=€€:€|10
ore:oc:…=€€:€|11
ore:oc:…‚=€€:€|12
ore:oc:…ƒ=€€:€Ê
ore:oc:…„=€€:€Ê|1
ore:oc:……=€€:€Ê|2
ore:oc:…†=€€:€Ê|3
ore:oc:…‡=€€:€Ê|4
ore:oc:…ˆ=€€:€Ê|5
ore:oc:…‰=€€:€Ê|6
ore:oc:…Š=€€:€Ê|7
ore:oc:…‹=€€:€Ê|8
ore:oc:…Œ=€€:€Ê|9
ore:oc:…=€€:€Ê|10
ore:oc:…=€€:€Ê|11
ore:oc:…=€€:€Ê|12
ore:oc:…=€€:€Ê|13
ore:oc:…‘=€€:€Ê|14
ore:oc:…’=€€:€Ê|15
ore:oc:…“=€€:€Ê|16
ore:oc:…”=€€:€Ê|17
ore:oc:‚=€€:€Ê|18
ore:oc:…•=€€:€Ê|19
ore:oc:…–=€€:€Ê|20
ore:oc:…—=€€:€Ê|21
ore:oc:‚ˆ=€€:€Ê|22
ore:oc:…˜=€€:€Ê|23
ore:oc:‚=€€:€Ê|24
ore:oc:…™=€€:€Ê|25
ore:oc:…š=€€:€Ê|26
ore:oc:…›=€€:€Ê|27
ore:oc:‚±=€€:€Ê|28
ore:oc:…œ=€€:€Ê|29
ore:oc:mfu=€€:€Ê|30
ore:oc:…=€€:€Ê|31
ore:oc:„ =€€:q
ore:oc:„=€€:q|1
ore:oc:‚=€€:q|2
ore:oc:‚š=€€:q|3
ore:oc:‚=€€:q|4
]==],['raw.db']= [==[€Š:€Ó
€Š:€¹
€Š:€Ø
€Š:_V
€Š:€‹_V
€Š:€‹_€Œ
€Š:log
€Š:
€Š:…
€Š:5
€Š:€â
€Š:€½
€€:è|4
]==]},['deprecatrace.log']= [==[‚F ‚È:
	/mnt/cf4/lib/‚Ô/‚v.lua:74: in …Â '…Ã'
	/mnt/cf4/lib/‚Ğ.lua:52: in …° 'get'
	/mnt/cf4/lib/‚Ğ.lua:60: in …° 'has'
	/mnt/cf4/lib/‚Ï.lua:65: in ‚Ã '…Ä'
	/mnt/cf4/lib/‚Ï.lua:81: in …° 'ƒ8'
	/mnt/cf4/ƒE.lua:354: in …° '‚Ù'
	/mnt/cf4/ƒE.lua:404: in …± ƒ
	/mnt/cf4/faf.lua:19: in …± ƒ
	[C]: in ‚Ú '‚Å'
	‚b:791: in …² '‚Å'
	/mnt/cf4/ct.lua:17: in …± ƒ
	(...…³ …´...)
	[C]: in ‚Ú '‚Å'
	‚b:791: in …² '‚Å'
	/lib/…µ.lua:63: in ‚Ú </lib/…µ.lua:59>
]==],['faf.lua']= [==[-- …Å and …Æ, for …Ç.
-- …È …É ƒ …Ê.

‚Ã á = ‚Æ('á')
‚Ã fs = ‚Æ('…')

‚Ã …Ÿ = {...}
‚Ã …  = á.…¡('.ƒ0(…Ÿ, 1))

if not fs.…¢(… ) ‚É
	if fs.…¢(…  .. '.lua') ‚É
		…  = …  .. '.lua'
	‚è
		‚Ê('…£ not …¤.')
		‚Í
	end
end

…¦(… )('.ƒI(…Ÿ))
for k, v in ‚ë(…Ë.ƒ) do
	if k:…Ì('lib.') == 1 ‚É
		…Ë.ƒ[k] = nil
	end
end]==],['failed.txt']= [==[ƒe.ƒl("€É:ƒ€_ƒ_U", <€É:ƒ€:4>.ƒ‚({è: "U"}) * 4, [[<ore:İ>, <€Š:A_\:3>, <ore:İ>], [<€Š:A_\:3>, <€Š:A_\:3>, <€Š:A_\:3>], [<ore:İ>, <€Š:A_\:3>, <ore:İ>]]);
ƒe.ƒl("€·:‚b_ƒ‰", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ‰"}), [[ƒn, <€Š:ƒ‹_€õ:*>, ƒn], [<ore:€ÿ>, <€·:‚b>, <ore:€ÿ>], [<ore:€²>, <ore:€²>, <ore:€²>]]);
ƒe.ƒl("€É:ƒ€_ƒ_€ò_oak", <€É:ƒ€:1>.ƒ‚({è: "€ò_oak"}) * 2, [[<€Š:€Ã:5>, <ore:İ>, <€Š:€Ã:5>], [<€Š:€Ã:5>, <€Š:€Ã:5>, <€Š:€Ã:5>], [<€Š:€Ã:5>, <ore:İ>, <€Š:€Ã:5>]]);
ƒe.ƒq("€€:ƒ", ƒn, []);
ƒe.ƒq("€Š:ƒ‘", ƒn, []);
ƒe.ƒl("€·:ƒ_ƒU", <€·:ƒŸ>, [[<ore:€•>, <€·:€¸:2>, <ore:€•>], [<ore:€•>, <€·:ª>.ƒ‚({ƒ : {ƒ¡: {ƒ¢: 1 as ƒ£}, id: "€Š:ƒ¤"}, No_ƒ¥: 1 as ƒ£}), <ore:€•>], [ƒn, <ore:€•>, ƒn]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_ƒ§", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒ§"}), [[<€Š:ƒ¨:1>, <€Š:ƒ¨:1>, <€Š:ƒ¨:1>], [<€Š:ƒ¨:1>, <€Š:€Ç_î:*>, <€Š:ƒ¨:1>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€·:ƒ´_gen_ƒµ", <€·:ı:1>, [[<€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒ§"}), <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒ¶"}), <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒ·"})], [<€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_‚|"}), <€·:€¸>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_"})], [<€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_€æ"}), <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒ¸"}), <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_tnt"})]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_ice", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ice"}), [[<€Š: :*>, <€Š: :*>, <€Š: :*>], [<€Š: :*>, <€Š:ice:*>, <€Š: :*>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€É:ƒ€_ƒÄ_oak", <€É:ƒ€:2>.ƒ‚({è: "oak"}) * 4, [[<ore:İ>, <€Š:€Ã>, <ore:İ>], [<€Š:€Ã>, <€Š:€Ã>, <€Š:€Ã>], [<ore:İ>, <€Š:€Ã>, <ore:İ>]]);
ƒe.ƒl("€É:ƒ€_ƒ_€À", <€É:ƒ€:1>.ƒ‚({è: "€À"}) * 2, [[<€Š:€Ã:2>, <ore:İ>, <€Š:€Ã:2>], [<€Š:€Ã:2>, <€Š:€Ã:2>, <€Š:€Ã:2>], [<€Š:€Ã:2>, <ore:İ>, <€Š:€Ã:2>]]);
ƒe.ƒl("€·:ƒ´_gen_top", <€·:ı:2>, [[<€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒÊ"}), <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒË"}), <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒÌ"})], [<€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒÍ"}), <€·:€¸>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_€ª"})], [<€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ice"}), <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_K"})]]);
ƒe.ƒl("€É:ƒ€_ƒÄ_U", <€É:ƒ€:2>.ƒ‚({è: "U"}) * 4, [[<ore:İ>, <€Š:€Ã:3>, <ore:İ>], [<€Š:€Ã:3>, <€Š:€Ã:3>, <€Š:€Ã:3>], [<ore:İ>, <€Š:€Ã:3>, <ore:İ>]]);
ƒe.ƒl("€·:ƒ¦_ƒÓ", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒ¸"}), [[<ore:€Ó>, <ore:€Ó>, <ore:€Ó>], [<ore:€Ó>, <ore:€²>, <ore:€Ó>], [<ore:€–>, <€Š:¶:*>, <ore:€–>]]);
ƒe.ƒl("€É:ƒ€_ƒÄ_€À", <€É:ƒ€:2>.ƒ‚({è: "€À"}) * 4, [[<ore:İ>, <€Š:€Ã:2>, <ore:İ>], [<€Š:€Ã:2>, <€Š:€Ã:2>, <€Š:€Ã:2>], [<ore:İ>, <€Š:€Ã:2>, <ore:İ>]]);
ƒe.ƒq("€Š:ƒÜ", ƒn, []);
ƒe.ƒl("€É:ƒ€_ƒÄ_€è", <€É:ƒ€:2>.ƒ‚({è: "€è"}) * 4, [[<ore:İ>, <€Š:€Ã:1>, <ore:İ>], [<€Š:€Ã:1>, <€Š:€Ã:1>, <€Š:€Ã:1>], [<ore:İ>, <€Š:€Ã:1>, <ore:İ>]]);
ƒe.ƒl("€·:ƒ¦_¶", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), [[<ore:€²>, <ore:€²>, <ore:€²>], [<ore:€²>, <€·:‚b>, <ore:€²>], [<ore:€–>, <€Š:¶:*>, <ore:€–>]]);
ƒe.ƒl("€É:ƒ€_ƒÄ_€ò_oak", <€É:ƒ€:2>.ƒ‚({è: "€ò_oak"}) * 4, [[<ore:İ>, <€Š:€Ã:5>, <ore:İ>], [<€Š:€Ã:5>, <€Š:€Ã:5>, <€Š:€Ã:5>], [<ore:İ>, <€Š:€Ã:5>, <ore:İ>]]);
ƒe.ƒl("€É:ƒ€_ƒè_€ò_oak", <€É:ƒ€:3>.ƒ‚({è: "€ò_oak"}) * 2, [[<€Š:A_\:5>, <ore:İ>, <€Š:A_\:5>], [<€Š:A_\:5>, <€Š:A_\:5>, <€Š:A_\:5>], [<€Š:A_\:5>, <ore:İ>, <€Š:A_\:5>]]);
ƒe.ƒl("€É:ƒ€_ƒ_U", <€É:ƒ€:1>.ƒ‚({è: "U"}) * 2, [[<€Š:€Ã:3>, <ore:İ>, <€Š:€Ã:3>], [<€Š:€Ã:3>, <€Š:€Ã:3>, <€Š:€Ã:3>], [<€Š:€Ã:3>, <ore:İ>, <€Š:€Ã:3>]]);
ƒe.ƒl("€É:ƒ€_ƒè_oak", <€É:ƒ€:3>.ƒ‚({è: "oak"}) * 2, [[<€Š:A_\>, <ore:İ>, <€Š:A_\>], [<€Š:A_\>, <€Š:A_\>, <€Š:A_\>], [<€Š:A_\>, <ore:İ>, <€Š:A_\>]]);
ƒe.ƒl("€É:ƒ€_ƒô_€ò_oak", <€É:ƒ€>.ƒ‚({è: "€ò_oak"}), [[<€Š:€Ã:5>, <€Š:€Ã:5>, <€Š:€Ã:5>], [ƒn, <ore:İ>, ƒn], [<€Š:€Ã:5>, <€Š:€Ã:5>, <€Š:€Ã:5>]]);
ƒe.ƒq("€€:ƒõ", <€€:‚Ê>.ƒ‚({ƒö: 1 as ƒ£, ƒ÷: 0 as ƒ£, ƒø: 0 as ƒ£, ƒù: 0 as ƒ£, ƒú: 0 as ƒ£, ƒû: 0 as ƒ£, ƒü: [], ƒı: 0, ƒş: []}), [<€€:‚Ê>, <€Š:ã_ä>]);
ƒe.ƒq("€€:ƒÿ", <€€:‚Ê>.ƒ‚({ƒö: 4 as ƒ£, ƒ÷: 0 as ƒ£, ƒø: 0 as ƒ£, ƒù: 0 as ƒ£, ƒú: 0 as ƒ£, ƒû: 0 as ƒ£, ƒü: [], ƒı: 0, ƒş: []}), [<€€:‚Ê>, <€Š:ã>]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_K", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_K"}), [[<ore:€”>, <ore:€”>, <ore:€”>], [<ore:€”>, <€Š:K_L:*>, <ore:€”>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒq("€€:„", ƒn, []);
ƒe.ƒq("€€:„", <€€:‚Ê>.ƒ‚({ƒö: 0 as ƒ£, ƒ÷: 0 as ƒ£, ƒø: 1 as ƒ£, ƒù: 0 as ƒ£, ƒú: 0 as ƒ£, ƒû: 0 as ƒ£, ƒü: [], ƒı: 0, ƒş: []}), [<€€:‚Ê>, <€Š:€‹_€µ>]);
ƒe.ƒq("€€:„", <€€:‚Ê>.ƒ‚({ƒö: 0 as ƒ£, ƒ÷: 0 as ƒ£, ƒø: 1 as ƒ£, ƒù: 0 as ƒ£, ƒú: 0 as ƒ£, ƒû: 0 as ƒ£, ƒü: [], ƒı: 0, ƒş: []}), [<€€:‚Ê>, <€Š:_€µ>]);
ƒe.ƒq("€€:„", <€€:‚Ê>.ƒ‚({ƒö: 0 as ƒ£, ƒ÷: 0 as ƒ£, ƒø: 1 as ƒ£, ƒù: 0 as ƒ£, ƒú: 0 as ƒ£, ƒû: 0 as ƒ£, ƒü: [], ƒı: 0, ƒş: []}), [<€€:‚Ê>, <€Š:€ú_€µ>]);
ƒe.ƒq("€€:„", <€€:‚Ê>.ƒ‚({ƒö: 0 as ƒ£, ƒ÷: 0 as ƒ£, ƒø: 1 as ƒ£, ƒù: 0 as ƒ£, ƒú: 0 as ƒ£, ƒû: 0 as ƒ£, ƒü: [], ƒı: 0, ƒş: []}), [<€€:‚Ê>, <€Š:€¹_€µ>]);
ƒe.ƒl("€É:ƒ€_ƒè_€À", <€É:ƒ€:3>.ƒ‚({è: "€À"}) * 2, [[<€Š:A_\:2>, <ore:İ>, <€Š:A_\:2>], [<€Š:A_\:2>, <€Š:A_\:2>, <€Š:A_\:2>], [<€Š:A_\:2>, <ore:İ>, <€Š:A_\:2>]]);
ƒe.ƒq("€Š:„
", ƒn, []);
ƒe.ƒq("€Š:„", ƒn, []);
ƒe.ƒl("€É:ƒ€_ƒ_oak", <€É:ƒ€:4>.ƒ‚({è: "oak"}) * 4, [[<ore:İ>, <€Š:A_\>, <ore:İ>], [<€Š:A_\>, <€Š:A_\>, <€Š:A_\>], [<ore:İ>, <€Š:A_\>, <ore:İ>]]);
ƒe.ƒq("€€:„", ƒn, []);
ƒe.ƒl("€·:ƒ¦_ƒ¦_", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_"}), [[<€Š::*>, <€Š::*>, <€Š::*>], [<€Š::*>, <€Š:_€µ:*>, <€Š::*>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_K"}), <ore:€–>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_€æ", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_€æ"}), [[<€Š:€æ_€ç:*>, <€Š:€æ_€ç:*>, <€Š:€æ_€ç:*>], [<€Š:€æ_€ç:*>, <€Š:€æ:*>, <€Š:€æ_€ç:*>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_ƒÌ", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒÌ"}), [[<€Š:^_€µ:*>, <€Š:^_€µ:*>, <€Š:^_€µ:*>], [<€Š:^_€µ:*>, <€Š:end_rod:*>, <€Š:^_€µ:*>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€É:ƒ€_ƒô_€è", <€É:ƒ€>.ƒ‚({è: "€è"}), [[<€Š:€Ã:1>, <€Š:€Ã:1>, <€Š:€Ã:1>], [ƒn, <ore:İ>, ƒn], [<€Š:€Ã:1>, <€Š:€Ã:1>, <€Š:€Ã:1>]]);
ƒe.ƒq("€Š:„", ƒn, []);
ƒe.ƒq("€Š:„", ƒn, []);
ƒe.ƒl("€É:ƒ€_ƒè_.", <€É:ƒ€:3>.ƒ‚({è: "."}) * 2, [[<€Š:A_\:4>, <ore:İ>, <€Š:A_\:4>], [<€Š:A_\:4>, <€Š:A_\:4>, <€Š:A_\:4>], [<€Š:A_\:4>, <ore:İ>, <€Š:A_\:4>]]);
ƒe.ƒl("€É:ƒ€_ƒÄ_.", <€É:ƒ€:2>.ƒ‚({è: "."}) * 4, [[<ore:İ>, <€Š:€Ã:4>, <ore:İ>], [<€Š:€Ã:4>, <€Š:€Ã:4>, <€Š:€Ã:4>], [<ore:İ>, <€Š:€Ã:4>, <ore:İ>]]);
ƒe.ƒl("€É:ƒ€_ƒè_€è", <€É:ƒ€:3>.ƒ‚({è: "€è"}) * 2, [[<€Š:A_\:1>, <ore:İ>, <€Š:A_\:1>], [<€Š:A_\:1>, <€Š:A_\:1>, <€Š:A_\:1>], [<€Š:A_\:1>, <ore:İ>, <€Š:A_\:1>]]);
ƒe.ƒq("€·:ƒ’_V", <€·:€ñ>, []);
ƒe.ƒl("€·:ƒ¦_ƒ¦_ƒ¶", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒ¶"}), [[<€Š:dye:4>, <€Š:dye:4>, <€Š:dye:4>], [<€Š:dye:4>, <€Š:_€µ:*>, <€Š:dye:4>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€·:„H_„!", <€·:„I:1>, [[<ore:€Û>, <ore:€ÿ>, <ore:€Û>], [<€·:ª>.ƒ‚({ƒ : {id: "€Š:„H"}, No_ƒ¥: 1 as ƒ£}), <€·:„I>, <€Š:€ª_Í:*>], [<ore:€Û>, <ore:€ÿ>, <ore:€Û>]]);
ƒe.ƒl("€É:ƒ€_ƒ_€À", <€É:ƒ€:4>.ƒ‚({è: "€À"}) * 4, [[<ore:İ>, <€Š:A_\:2>, <ore:İ>], [<€Š:A_\:2>, <€Š:A_\:2>, <€Š:A_\:2>], [<ore:İ>, <€Š:A_\:2>, <ore:İ>]]);
ƒe.ƒl("€É:ƒ€_ƒ_€è", <€É:ƒ€:1>.ƒ‚({è: "€è"}) * 2, [[<€Š:€Ã:1>, <ore:İ>, <€Š:€Ã:1>], [<€Š:€Ã:1>, <€Š:€Ã:1>, <€Š:€Ã:1>], [<€Š:€Ã:1>, <ore:İ>, <€Š:€Ã:1>]]);
ƒe.ƒl("€É:ƒ€_ƒô_.", <€É:ƒ€>.ƒ‚({è: "."}), [[<€Š:€Ã:4>, <€Š:€Ã:4>, <€Š:€Ã:4>], [ƒn, <ore:İ>, ƒn], [<€Š:€Ã:4>, <€Š:€Ã:4>, <€Š:€Ã:4>]]);
ƒe.ƒl("€·:„S_„!", <€·:„I>, [[<ore:€ö>, <ore:€²>, <ore:€ö>], [<ore:€²>, <€·:ª>.ƒ‚({ƒ : {id: "€Š:„S"}, No_ƒ¥: 1 as ƒ£}), <ore:€²>], [<€·:€¸>, <ore:€²>, <€·:€¸>]]);
ƒe.ƒl("€É:ƒ€_ƒô_€À", <€É:ƒ€>.ƒ‚({è: "€À"}), [[<€Š:€Ã:2>, <€Š:€Ã:2>, <€Š:€Ã:2>], [ƒn, <ore:İ>, ƒn], [<€Š:€Ã:2>, <€Š:€Ã:2>, <€Š:€Ã:2>]]);
ƒe.ƒl("€·:‚b_¶", <€·:‚b>.ƒ‚({ƒŠ: "€·:¶"}), [[<ore:„X>, <ore:„X>, <ore:„X>], [<ore:„X>, <€·:‚b>, <ore:„X>], [<ore:„X>, <ore:„X>, <ore:„X>]]);
ƒe.ƒq("€·:›_‚r", <€·:t:1>, []);
ƒe.ƒl("€É:ƒ€_ƒ_.", <€É:ƒ€:4>.ƒ‚({è: "."}) * 4, [[<ore:İ>, <€Š:A_\:4>, <ore:İ>], [<€Š:A_\:4>, <€Š:A_\:4>, <€Š:A_\:4>], [<ore:İ>, <€Š:A_\:4>, <ore:İ>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_ƒ·", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒ·"}), [[<€Š:dye:9>, <€Š:dye:9>, <€Š:dye:9>], [<€Š:dye:9>, <€Š:€—:6>, <€Š:dye:9>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_‚|", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_‚|"}), [[<€Š:_rod:*>, <€Š:_rod:*>, <€Š:_rod:*>], [<€Š:_rod:*>, <€Š:‚Œ_Á:*>, <€Š:_rod:*>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒq("€Š:„p", ƒn, []);
ƒe.ƒl("€·:‚b_„v", <€·:‚b>.ƒ‚({ƒŠ: "€·:„v"}), [[<ore:€²>, <€Š:9:*> | <€Š:8_9:*>, <ore:€²>], [<ore:€²>, <€·:‚b>, <ore:€²>], [<ore:€²>, <€Š:9:*> | <€Š:8_9:*>, <ore:€²>]]);
ƒe.ƒq("€€:„}", <€€:q:1>.ƒ‚({"oc:„~": 15}), [<€€:q:1>, <ore:€Ü>]);
ƒe.ƒl("€É:ƒ€_ƒ_.", <€É:ƒ€:1>.ƒ‚({è: "."}) * 2, [[<€Š:€Ã:4>, <ore:İ>, <€Š:€Ã:4>], [<€Š:€Ã:4>, <€Š:€Ã:4>, <€Š:€Ã:4>], [<€Š:€Ã:4>, <ore:İ>, <€Š:€Ã:4>]]);
ƒe.ƒl("€É:ƒ€_ƒè_U", <€É:ƒ€:3>.ƒ‚({è: "U"}) * 2, [[<€Š:A_\:3>, <ore:İ>, <€Š:A_\:3>], [<€Š:A_\:3>, <€Š:A_\:3>, <€Š:A_\:3>], [<€Š:A_\:3>, <ore:İ>, <€Š:A_\:3>]]);
ƒe.ƒq("€€:„“", <€€:q:1>.ƒ‚({"oc:„”": {"oc:fs.„•": "„–"}, "oc:„~": 2, „—: {„˜: "„™ („š „›)"}, "oc:„œ": "€€:„–"}), [<ore:oc:„>, <ore:oc:ƒ>]);
ƒe.ƒq("€€:„", <€€:q>.ƒ‚({"oc:„”": {"oc:„Ÿ": 0 as ƒ£, "oc:„ ": [108, 111, 99, 97, 108, 32, 105, 110, 105, 116, 10, 100, 111, 10, 32, 32, 108, 111, 99, 97, 108, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 95, 105, 110, 118, 111, 107, 101, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 105, 110, 118, 111, 107, 101, 10, 32, 32, 108, 111, 99, 97, 108, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 109, 101, 116, 104, 111, 100, 44, 32, 46, 46, 46, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 114, 101, 115, 117, 108, 116, 32, 61, 32, 116, 97, 98, 108, 101, 46, 112, 97, 99, 107, 40, 112, 99, 97, 108, 108, 40, 99, 111, 109, 112, 111, 110, 101, 110, 116, 95, 105, 110, 118, 111, 107, 101, 44, 32, 97, 100, 100, 114, 101, 115, 115, 44, 32, 109, 101, 116, 104, 111, 100, 44, 32, 46, 46, 46, 41, 41, 10, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 114, 101, 115, 117, 108, 116, 91, 49, 93, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 115, 117, 108, 116, 91, 50, 93, 10, 32, 32, 32, 32, 101, 108, 115, 101, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 116, 97, 98, 108, 101, 46, 117, 110, 112, 97, 99, 107, 40, 114, 101, 115, 117, 108, 116, 44, 32, 50, 44, 32, 114, 101, 115, 117, 108, 116, 46, 110, 41, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 10, 32, 32, 45, 45, 32, 98, 97, 99, 107, 119, 97, 114, 100, 115, 32, 99, 111, 109, 112, 97, 116, 105, 98, 105, 108, 105, 116, 121, 44, 32, 109, 97, 121, 32, 114, 101, 109, 111, 118, 101, 32, 108, 97, 116, 101, 114, 10, 32, 32, 108, 111, 99, 97, 108, 32, 101, 101, 112, 114, 111, 109, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 101, 101, 112, 114, 111, 109, 34, 41, 40, 41, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 32, 61, 32, 102, 117, 110, 99, 116, 105, 111, 110, 40, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 101, 101, 112, 114, 111, 109, 44, 32, 34, 103, 101, 116, 68, 97, 116, 97, 34, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 32, 61, 32, 102, 117, 110, 99, 116, 105, 111, 110, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 101, 101, 112, 114, 111, 109, 44, 32, 34, 115, 101, 116, 68, 97, 116, 97, 34, 44, 32, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 101, 110, 100, 10, 10, 32, 32, 100, 111, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 115, 99, 114, 101, 101, 110, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 115, 99, 114, 101, 101, 110, 34, 41, 40, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 103, 112, 117, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 103, 112, 117, 34, 41, 40, 41, 10, 32, 32, 32, 32, 105, 102, 32, 103, 112, 117, 32, 97, 110, 100, 32, 115, 99, 114, 101, 101, 110, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 103, 112, 117, 44, 32, 34, 98, 105, 110, 100, 34, 44, 32, 115, 99, 114, 101, 101, 110, 41, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 32, 32, 108, 111, 99, 97, 108, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 104, 97, 110, 100, 108, 101, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 111, 112, 101, 110, 34, 44, 32, 34, 47, 105, 110, 105, 116, 46, 108, 117, 97, 34, 41, 10, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 104, 97, 110, 100, 108, 101, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 98, 117, 102, 102, 101, 114, 32, 61, 32, 34, 34, 10, 32, 32, 32, 32, 114, 101, 112, 101, 97, 116, 10, 32, 32, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 100, 97, 116, 97, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 114, 101, 97, 100, 34, 44, 32, 104, 97, 110, 100, 108, 101, 44, 32, 109, 97, 116, 104, 46, 104, 117, 103, 101, 41, 10, 32, 32, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 100, 97, 116, 97, 32, 97, 110, 100, 32, 114, 101, 97, 115, 111, 110, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 32, 32, 98, 117, 102, 102, 101, 114, 32, 61, 32, 98, 117, 102, 102, 101, 114, 32, 46, 46, 32, 40, 100, 97, 116, 97, 32, 111, 114, 32, 34, 34, 41, 10, 32, 32, 32, 32, 117, 110, 116, 105, 108, 32, 110, 111, 116, 32, 100, 97, 116, 97, 10, 32, 32, 32, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 99, 108, 111, 115, 101, 34, 44, 32, 104, 97, 110, 100, 108, 101, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 108, 111, 97, 100, 40, 98, 117, 102, 102, 101, 114, 44, 32, 34, 61, 105, 110, 105, 116, 34, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 108, 111, 99, 97, 108, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 105, 102, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 105, 110, 105, 116, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 105, 102, 32, 110, 111, 116, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 10, 32, 32, 32, 32, 102, 111, 114, 32, 97, 100, 100, 114, 101, 115, 115, 32, 105, 110, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 102, 105, 108, 101, 115, 121, 115, 116, 101, 109, 34, 41, 32, 100, 111, 10, 32, 32, 32, 32, 32, 32, 105, 110, 105, 116, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 32, 32, 105, 102, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 98, 114, 101, 97, 107, 10, 32, 32, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 32, 32, 105, 102, 32, 110, 111, 116, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 101, 114, 114, 111, 114, 40, 34, 110, 111, 32, 98, 111, 111, 116, 97, 98, 108, 101, 32, 109, 101, 100, 105, 117, 109, 32, 102, 111, 117, 110, 100, 34, 32, 46, 46, 32, 40, 114, 101, 97, 115, 111, 110, 32, 97, 110, 100, 32, 40, 34, 58, 32, 34, 32, 46, 46, 32, 116, 111, 115, 116, 114, 105, 110, 103, 40, 114, 101, 97, 115, 111, 110, 41, 41, 32, 111, 114, 32, 34, 34, 41, 44, 32, 48, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 98, 101, 101, 112, 40, 49, 48, 48, 48, 44, 32, 48, 46, 50, 41, 10, 101, 110, 100, 10, 105, 110, 105, 116, 40, 41, 10] as ƒ£[] as ƒ£[], "oc:„•": "„¡ (Lua „¢)"}}), [<ore:oc:„ >, <ore:oc:ƒ>]);
ƒe.ƒq("€€:„¤", <€€:q:1>.ƒ‚({"oc:„~": 4}), [<€€:q:1>, <ore:J>]);
ƒe.ƒq("€€:„¦", <€€:q:1>.ƒ‚({"oc:„~": 3}), [<€€:q:1>, <ore:>]);
ƒe.ƒq("€€:„¨", <€€:q:1>.ƒ‚({"oc:„~": 2}), [<€€:q:1>, <ore:>]);
ƒe.ƒq("€€:„ª", <€€:q:1>.ƒ‚({"oc:„~": 1}), [<€€:q:1>, <ore:€˜>]);
ƒe.ƒq("€€:„¬", <€€:q:1>.ƒ‚({"oc:„~": 0}), [<€€:q:1>, <ore:€Û>]);
ƒe.ƒq("€€:„­", <€€:q:1>.ƒ‚({"oc:„”": {"oc:fs.„•": "„®"}, "oc:„~": 6, „—: {„˜: "„¯ („° „±)"}, "oc:„œ": "€€:„®"}), [<ore:oc:„>, <ore:oc:€¦>]);
ƒe.ƒq("€Š:„³", ƒn, []);
ƒe.ƒq("€€:„¶", <€€:q:1>.ƒ‚({"oc:„~": 8}), [<€€:q:1>, <ore:j>]);
ƒe.ƒq("€€:„·", <€€:q:1>.ƒ‚({"oc:„~": 7}), [<€€:q:1>, <ore:>]);
ƒe.ƒq("€€:„¸", <€€:q:1>.ƒ‚({"oc:„~": 6}), [<€€:q:1>, <ore:€Ş>]);
ƒe.ƒq("€€:„¹", <€€:q:1>.ƒ‚({"oc:„~": 5}), [<€€:q:1>, <ore:>]);
ƒe.ƒl("€É:ƒ€_ƒ_oak", <€É:ƒ€:1>.ƒ‚({è: "oak"}) * 2, [[<€Š:€Ã>, <ore:İ>, <€Š:€Ã>], [<€Š:€Ã>, <€Š:€Ã>, <€Š:€Ã>], [<€Š:€Ã>, <ore:İ>, <€Š:€Ã>]]);
ƒe.ƒq("€€:„»", <€€:q:1>.ƒ‚({"oc:„~": 14}), [<€€:q:1>, <ore:!>]);
ƒe.ƒq("€€:„¼", <€€:q:1>.ƒ‚({"oc:„~": 13}), [<€€:q:1>, <ore:€Ö>]);
ƒe.ƒq("€€:„½", <€€:q:1>.ƒ‚({"oc:„~": 12}), [<€€:q:1>, <ore:m>]);
ƒe.ƒq("€€:„¿", <€€:q:1>.ƒ‚({"oc:„~": 11}), [<€€:q:1>, <ore:+>]);
ƒe.ƒq("€Š:„À", ƒn, []);
ƒe.ƒq("€€:„Á", <€€:q:1>.ƒ‚({"oc:„~": 10}), [<€€:q:1>, <ore:Æ>]);
ƒe.ƒq("€€:„Â", <€€:q:1>.ƒ‚({"oc:„~": 9}), [<€€:q:1>, <ore:~>]);
ƒe.ƒq("€€:„Ã", ƒn, []);
ƒe.ƒl("€É:ƒ€_ƒ_€è", <€É:ƒ€:4>.ƒ‚({è: "€è"}) * 4, [[<ore:İ>, <€Š:A_\:1>, <ore:İ>], [<€Š:A_\:1>, <€Š:A_\:1>, <€Š:A_\:1>], [<ore:İ>, <€Š:A_\:1>, <ore:İ>]]);
ƒe.ƒl("€É:ƒ€_ƒô_oak", <€É:ƒ€>.ƒ‚({è: "oak"}), [[<€Š:€Ã>, <€Š:€Ã>, <€Š:€Ã>], [ƒn, <ore:İ>, ƒn], [<€Š:€Ã>, <€Š:€Ã>, <€Š:€Ã>]]);
ƒe.ƒq("€€:„Ï", ƒn, []);
ƒe.ƒl("€·:ƒ¦_ƒ¦_ƒË", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒË"}), [[<€Š:€´> | <€Š:„Ú_„Û>, <€Š:€´> | <€Š:„Ú_„Û>, <€Š:€´> | <€Š:„Ú_„Û>], [<€Š:€´> | <€Š:„Ú_„Û>, <€Š:‚J_eye>, <€Š:€´> | <€Š:„Ú_„Û>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_ƒÊ", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒÊ"}), [[<€Š:¾> | <€Š:€Ÿ> | <€Š:€>, <€Š:¾> | <€Š:€Ÿ> | <€Š:€>, <€Š:¾> | <€Š:€Ÿ> | <€Š:€>], [<€Š:¾> | <€Š:€Ÿ> | <€Š:€>, <€Š:€œ_„Ş> | <€Š:€œ_„ß> | <€Š:€œ_„S> | <€Š:€œ_„à> | <€Š:€œ_„á> | <€Š:€œ_€™>, <€Š:¾> | <€Š:€Ÿ> | <€Š:€>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€É:ƒ€_ƒ_€ò_oak", <€É:ƒ€:4>.ƒ‚({è: "€ò_oak"}) * 4, [[<ore:İ>, <€Š:A_\:5>, <ore:İ>], [<€Š:A_\:5>, <€Š:A_\:5>, <€Š:A_\:5>], [<ore:İ>, <€Š:A_\:5>, <ore:İ>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_€ª", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_€ª"}), [[<€Š:€ª_Í:*>, <€Š:€ª_Í:*>, <€Š:€ª_Í:*>], [<€Š:€ª_Í:*>, <€Š:€¨:*>, <€Š:€ª_Í:*>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_ƒÍ", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_ƒÍ"}), [[<€·:t:1>, <€·:t:1>, <€·:t:1>], [<€·:t:1>, <€Š:&_':*>, <€·:t:1>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒl("€É:ƒ€_ƒô_U", <€É:ƒ€>.ƒ‚({è: "U"}), [[<€Š:€Ã:3>, <€Š:€Ã:3>, <€Š:€Ã:3>], [ƒn, <ore:İ>, ƒn], [<€Š:€Ã:3>, <€Š:€Ã:3>, <€Š:€Ã:3>]]);
ƒe.ƒl("€·:„ _„!_3", <€·:‚:3>, [[<€Š:€ê:*>, <ore:€”>, <€Š:€ê:*>], [<ore:€”>, <€·:„I:1>, <ore:€”>], [<€·:ª>.ƒ‚({ƒ : {id: "€Š:bat"}, No_ƒ¥: 1 as ƒ£}), <ore:€”>, <€·:ª:1>.ƒ‚({ƒ : {id: "€Š:‚"}, No_ƒ¥: 1 as ƒ£})]]);
ƒe.ƒl("€·:„ _„!_2", <€·:‚:2>, [[<ore:>, <ore:€”>, <ore:~>], [<ore:€”>, <€·:„I:1>, <ore:€”>], [<€·:ª>.ƒ‚({ƒ : {id: "€Š:bat"}, No_ƒ¥: 1 as ƒ£}), <ore:€”>, <€·:ª:1>.ƒ‚({ƒ : {id: "€Š:‚"}, No_ƒ¥: 1 as ƒ£})]]);
ƒe.ƒl("€·:„ _„!_5", <€·:‚:5>, [[<€Š:€İ>, <ore:€”>, <€Š:€İ:1>], [<ore:€”>, <€·:„I:1>, <ore:€”>], [<€·:ª>.ƒ‚({ƒ : {id: "€Š:bat"}, No_ƒ¥: 1 as ƒ£}), <ore:€”>, <€·:ª:1>.ƒ‚({ƒ : {id: "€Š:‚"}, No_ƒ¥: 1 as ƒ£})]]);
ƒe.ƒl("€·:„ _„!_4", <€·:‚:4>, [[<ore:€ƒ>, <ore:€”>, <ore:€ƒ>], [<ore:€”>, <€·:„I:1>, <ore:€”>], [<€·:ª>.ƒ‚({ƒ : {id: "€Š:bat"}, No_ƒ¥: 1 as ƒ£}), <ore:€”>, <€·:ª:1>.ƒ‚({ƒ : {id: "€Š:‚"}, No_ƒ¥: 1 as ƒ£})]]);
ƒe.ƒl("€·:„ _„!_1", <€·:‚:1>, [[<€Š:€ö:*>, <ore:€”>, <€Š:€ö:*>], [<ore:€”>, <€·:„I:1>, <ore:€”>], [<€·:ª>.ƒ‚({ƒ : {id: "€Š:bat"}, No_ƒ¥: 1 as ƒ£}), <ore:€”>, <€·:ª:1>.ƒ‚({ƒ : {id: "€Š:‚"}, No_ƒ¥: 1 as ƒ£})]]);
ƒe.ƒl("€·:„ _„!_0", <€·:‚>, [[<ore:>, <ore:€”>, <ore:>], [<ore:€”>, <€·:„I:1>, <ore:€”>], [<€·:ª>.ƒ‚({ƒ : {id: "€Š:bat"}, No_ƒ¥: 1 as ƒ£}), <ore:€”>, <€·:ª:1>.ƒ‚({ƒ : {id: "€Š:‚"}, No_ƒ¥: 1 as ƒ£})]]);
ƒe.ƒl("€·:ƒ¦_ƒ¦_tnt", <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦_tnt"}), [[<€Š:=:*>, <€Š:=:*>, <€Š:=:*>], [<€Š:=:*>, <€Š:tnt:*>, <€Š:=:*>], [<ore:€–>, <€·:‚b>.ƒ‚({ƒŠ: "€·:ƒ¦"}), <ore:€–>]]);
ƒe.ƒq("€Š:„ş", ƒn, []);
ƒe.ƒq("€·:€‘_ƒÚ", <€·:ª>, []);
]==],['filter.lua']= [==[‚Ã ‚Ú …Í(s, p)
	t = {}
	for x in s:…Î(p) do
		'.‚ì(t, x)
	end
	‚Í t
end

‚Ã ‚Ú …Ï(s, mt)
	for k, v in ‚ï(mt) do
		if s:…Ì(v) ~= nil ‚É
			‚Í ‚á
		end
	end
	‚Í ‚Ş
end

‚Ã ‚Ú …Ğ(bs)
	‚Ã ‚Ú bro(s) -- …Ñ …§
		‚Í (s == '[') or (s == '(') or (s == '<') or (s == '{')
	end
	‚Ã ‚Ú brc(s) -- …Ñ …¨
		‚Í (s == ']') or (s == ')') or (s == '>') or (s == '}')
	end

	‚Ã …Ò = bs:sub(2, #bs - 1):…Ó(', ', ',')
	‚Ã …Ô = 0
	‚Ã …Õ = 1
	‚Ã …Ö = {}
	for i = 1, #…Ò do
		if bro(…Ò:sub(i,i)) ‚É
			…Ô = …Ô + 1
		ƒ  brc(…Ò:sub(i,i)) ‚É
			…Ô = …Ô - 1
		ƒ  …Ò:sub(i,i) == ',' ‚É
			if …Ô == 0 ‚É
				‚Ã st = …Ò:sub(…Õ, i - 1):…Ó(',', ', ')
				'.‚ì(…Ö, st)
				…Õ = i + 1
			end
		end
	end
	‚Ã st = …Ò:sub(…Õ, #bs):…Ó(',', ', ')
	'.‚ì(…Ö, st)
	‚Í …Ö
end

‚Ã ‚Ú …×(arr, f, t)
	‚Ã tb = {}
	for i = f, t do
		'.‚ì(tb, arr[i])
	end
	‚Í tb
end

‚Ã ‚Ú …Ø(t, s)
	‚Ã buf = ''
	for k, v in ‚ï(t) do
		buf = buf .. ƒ6(v) .. ((…Ù(t, k) == nil) and '' or s)
	end
	‚Í buf
end

-- Old ' …Ú, so …Û.
‚Ã ‚Ú …Ú(t, f, ...)
	‚Ã res = {}
	for k, v in ‚ï(t) do
		res[k] = f(v, ...)
	end
	‚Í res
end

-- ƒ, …Ü, …İ ‚v …Ş to the …ß …Ş.
‚Ã ‚Ú …à(…á)
	‚Ã p = …Í(…á:…Ó('[<>]', ''), '[^:]+')
	‚Í p[1] .. ':' .. p[2] .. ((p[3] == nil) and '' or (((…á:…â('ore:') == nil) and '|' or ':') .. p[3]))
end

-- ƒ, …Ü too, but …ã if …ä …å one ‚v …æ.
-- …ç: `|` is the …è, not `,`.
‚Ã ‚Ú …é(…á)
	if …á:…Ì('|') == nil ‚É
		‚Í …à(…á)
	‚è
		‚Í …Ø(…Ú(…Í(…á:…Ó(' | ', '|'), '[^|]+'), …à), ',')
	end
end

‚Ã ‚Ú …ê(t, obj)
	for k, v in ‚ï(t) do
		if obj == v ‚É
			‚Í k
		end
	end
	‚Í nil
end

‚Ã ‚Ú …ë(t, obj)
	‚Í …ê(t, obj) ~= nil
end

-- 'ƒ, …· —' '‚v …· …¸' 'sd=ƒ/sl=ƒ' 'wh' '‚v ƒ' '‚v …¹ …º|…»'
‚Ã …ì = {'.…í', '.…î', '.ƒ‚', '.…ï', '…ğ:'}
‚Ã ‚Ú …ñ(…ò)
	if …ò:…â('ƒe%..-%(.+%);') == nil ‚É
		‚Í ‚á, …ò
	end
	‚Ã ƒ = …ò:…Ì('…ó') == nil
	‚Ã …ô = ƒ and 'sd' or 'sl'
	‚Ã c = …ò:…â('ƒe%..-%(.+%);'):…â('%(.-,.-,.+%)')
	‚Ã c = '(' .. …Ø(…×(…Ğ(c), 2, 3), ', ') .. ')'
	‚Ã …Ÿ = …Ğ(c)
	if …Ğ(…Ÿ[2])[1] == '' ‚É
		‚Í ‚á, …ò
	end
	if …Ï(c, …ì) and …Ÿ[1] ~= "ƒn" ‚É
		‚Ã …õ = …Í(…Ÿ[1]:…Ó(' * ','*'), '[^%*]+')
		‚Ã ‚v = …à(…õ[1])
		‚Ã …ö = …÷(…õ[2]) or 1
		‚Ã wh = ''
		‚Ã …ø = ''
		if ƒ ‚É
			wh = ƒ6(#…Ğ(…Ğ(…Ÿ[2])[1])) .. ƒ6(#…Ğ(…Ÿ[2]))
			‚Ã ƒ@ = {}
			for yi, y in ‚ï(…Ğ(…Ÿ[2])) do
				for xi, x in ‚ï(…Ğ(y)) do
					if not …ë(ƒ@, x) ‚É
						if x ~= 'ƒn' ‚É
							'.‚ì(ƒ@, x)
						end
					end
				end
			end
			‚Ã …ù = ''
			for yi, y in ‚ï(…Ğ(…Ÿ[2])) do
				for xi, x in ‚ï(…Ğ(y)) do
					…ù = …ù .. (…ê(ƒ@, x) or '0')
				end
			end
			…ø = …ù .. ' ' .. …Ø(…Ú(ƒ@, …é), ' ')
		‚è
			wh = '00'
			‚Ã ƒ@ = {}
			for ii, i in ‚ï(…Ğ(…Ÿ[2])) do
				if not …ë(ƒ@, i) ‚É
					if i ~= 'ƒn' ‚É
						'.‚ì(ƒ@, i)
					end
				end
			end
			‚Ã …ù = ''
			for ii, i in ‚ï(…Ğ(…Ÿ[2])) do
				…ù = …ù .. (…ê(ƒ@, i) or '0')
			end
			…ø = …ù .. ' ' .. …Ø(…Ú(ƒ@, …é), ' ')
		end
		‚Í ‚Ş, €½.…Ş("%s %s %s %s %s", ‚v, …ö, …ô, wh, …ø)
	‚è
		‚Í ‚á, …ò
	end
end

‚Ã ‚Ú …ú(sod)
	if sod:…â('<ore:.->=.+') == nil ‚É
		‚Í ‚á, sod
	end
	‚Ã ore = sod:…â('<ore:.->=.+')
	--‚Ã ore = ore:sub(1, #ore - 1) -- …û ';'.
	‚Ã …ü = …à(…Í(ore, '[^=]+')[1])
	‚Ã …ı = …é(…Í(ore, '[^=]+')[2])
	‚Í ‚Ş, €½.…Ş('%s=%s', …ü, …ı)
end

‚Ã …ş = io.…§('„.db', 'w')
‚Ã …ÿ = io.…§('† .db', 'w')
‚Ã † = io.…§('ƒ>.txt', 'w')
‚Ã † = io.…§('ƒb.log', 'r')
‚Ã ‚ü = ''
‚Ã † = ''
‚Ã † = {}
‚Ã †, †, † = 0, 0, 0
‚Ã ‚Ú †()
	‚Ã †	, ƒ = …ú(† .. '=' .. …Ø(†, '|'))
	if †	 ‚É
		…ÿ:‚ó(ƒ .. '\n')
		† = † + 1
	‚è
		†:‚ó(ƒ .. '\n')
		† = † + 1
	end
end
ƒD ‚ü ~= nil do
	if ‚ü:…Ì('ƒe%..-%(.+%);') ~= nil ‚É
		‚Ã †	, ƒ = …ñ(‚ü)
		if †	 ‚É
			…ş:‚ó(ƒ .. '\n')
			† = † + 1
		‚è
			†:‚ó(ƒ .. '\n')
			† = † + 1
		end
		if † ~= '' ‚É
			†()
		end
		† = ''
	ƒ  ‚ü:…Ì('Ore%†
') == 1 ‚É
		if † ~= '' ‚É
			†()
		end
		† = ‚ü:…â('<.->')
		† = {}
	ƒ  ‚ü:…Ì('-') == 1 and † ~= '' ‚É
		'.‚ì(†, ‚ü:…â('<.->'))
	‚è
		if † ~= '' ‚É
			†()
		end
		† = ''
	end
	‚ü = †:‚ş('*l')
	--‚Ê(‚ü)
	io.‚ó('\x1b[†' .. €½.…Ş('‚Ò: %d, ‚Ñ: %d, †: %d.', †, †, †))
end
if † ~= '' ‚É
	†()
end
‚Ê('\x1b[†' .. €½.…Ş('† %d † of ‚Ò, %d † of ‚Ñ, and %d † ƒ> to be † or out of †.', †, †, †))
]==],['lib']={['craftingdb.lua']= [==[‚Ã ‚v = ‚Æ('lib.‚Ô.‚v')
‚Ã † = ‚Æ('lib.‚Ô.†')
‚Ã „ = ‚Æ('lib.‚Ô.„')
‚Ã † = ‚Æ('lib.‚Ô.†')
‚Ã † = ‚Æ('lib.‚Ô.†')

‚Ã ‚Î = ‚Æ('lib.‚Î')

-- † †
‚Ã ‚Ò = {
	db = {}
}

-- † †
‚Ã † = 'db/„.db'
‚Ú ‚Ò.‚Ë()
	‚Ã f = io.…§(†, 'r')
	‚Ã l = f:‚ş('*l')
	ƒD l ~= nil do
		if (l:sub(1,1) ~= '#') and (l ~= '') ‚É
			‚Ã † = {ƒ" = 0, ƒ# = 0}
			‚Ã ƒ = {}
			‚Ã ƒ = ‚Ş
			‚Ã ƒ = {}
			‚Ã † = ‚Î.ƒG(l)
			ƒ = ‚v.new(†[1])
			ƒ.† = …÷(†[2])
			ƒ = (†[3] == 'sd')
			†.ƒ", †.ƒ# = …÷(†[4]:sub(1,1)), …÷(†[4]:sub(2,2))
			‚Ã pat = †[5]
			‚Ã €¸ = †.new()
			for i = 6, #† do
				€¸:add(†.†(†[i]))
			end
			for † = 1, #pat do
				ƒ[†] = €¸[…÷(pat:sub(†, †))]
			end
			‚Ò.db[ƒ] = „.new(†, ƒ, ƒ, ƒ)
		end
		l = f:‚ş('*l')
	end
	f:…¨()
end
io.‚ó('ƒS ‚Ò... ')
‚Ò.‚Ë()
‚Ã † = 0
for k, v in ‚ë(‚Ò.db) do
	† = † + 1
end
io.‚ó (€½.…Ş('%d ƒ.\n', †))

‚Ú ‚Ò.ƒ7()
	‚Ã a = {}
	for n in ‚ë(‚Ò.db) do '.‚ì(a, n) end
	'.‚í(a, ‚Ú(a, b) if a.— == nil or b.— == nil ‚É ‚Ê(a,b) end; ‚Í a.— < b.— end)
	‚Ã i = 0
	‚Í ‚Ú()
		i = i + 1
		if a[i] == nil ‚É
			‚Í nil
		‚è
			‚Í a[i], ‚Ò.db[a[i]]
		end
	end
end

‚Ú ‚Ò.‚ù()
	-- …¶: 'ƒ, …· —' '‚v …· …¸' 'sd=ƒ/sl=ƒ' 'wh' '‚v ƒ' '‚v …¹ …º|…»'
	‚Ã f = io.…§(†, 'w')
	f:‚ó("#…¶:\n#'ƒ, …· —' '‚v …· …¸' 'sd=ƒ/sl=ƒ' 'wh' '‚v ƒ' '‚v …¹ …º|…»'\n")
	for k, v in ‚Ò.ƒ7() do
		‚Ã † = ƒ6(~k)
		‚Ã † = ƒ6(k.†)
		‚Ã † = v and 'sd' or 'sl'
		‚Ã dim = ƒ6(v.†.ƒ") .. ƒ6(v.†.ƒ#)
		‚Ã †  = v:†!()
		‚Ã †" = ''
		for k, v in ‚ë(v.ƒ) do
			†" = †" .. † :†#(v) or '0'
		end
		‚Ã †$ = ''
		for k, v in ‚ï(† ) do
			†$ = †$ .. ƒ6(~v) .. ' '
		end
		†$ = †$:sub(1, #†$)
		f:‚ó(† .. ' ' .. † .. ' ' .. † .. ' ' .. dim .. ' ' .. †" .. ' ' .. †$ .. '\n')
	end
	f:…¨()
end

-- † †%
‚Ú ‚Ò.get(i)
	for k, v in ‚ë(‚Ò.db) do
		if i == k ‚É
			‚Í v
		end
	end
	‚Í nil
end

‚Ú ‚Ò.set(„)
	if „ == nil ‚É
		†&('Can\'t add nil to ‚Ò!')
	end
	‚Ò.db[„.ƒ] = „
	‚Í ‚Ò.db[„.ƒ]
end

‚Ú ‚Ò.ƒ0(i)
	for k, v in ‚ë(‚Ò.db) do
		if i:…Ã(k) ‚É
			‚Ã tmp = ‚Ò.db[k]
			‚Ò.db[k] = nil
			‚Í tmp
		end
	end
	‚Í nil
end

‚Í craftingdb]==],['init.lua']= [==[-- Lib ƒÖ. Run †'.

-- †( ‚Ô
‚Ã †)_‚Ô = ‚Ô
‚Ú ‚Ô(v)
	‚Ã †* = †)_‚Ô(v)
	if †* == ''' ‚É
		if v.‚Ô ~= nil ‚É
			‚Í v.‚Ô
		end
	end
	‚Í †*
end]==],['inventory.lua']= [==[‚Ã ‚Ä, ‚8 = ‚Å(‚Æ, ‚Ç.‚È, '‚8')
if not ‚Ä ‚É
	‚Ê('Can\'t ‚Ë ‚8 ‚Ì.')
	‚Í
end

‚Ã ‚ = ‚Æ('‚')
if ‚.‚Ó_‚' == nil ‚É
	‚Ê('†+ ‚Ó ‚'!')
	‚Í
end
‚Ã †, = ‚.‚Ó_‚'

‚Ã ‚v = ‚Æ('lib.‚Ô.‚v')
‚Ã † = ‚Æ('lib.‚Ô.†')

-- † †
‚Ã ƒ = {
	†- = {},
	† = †..†/(‚8.†0()),
	ex = {}
}

-- † †%
‚Ú ƒ.ƒ(‚ß)
	‚Í ‚8.ƒ(‚ß)
end

‚Ú ƒ.ƒ(‚ß)
	‚Ã t = †,.†1(‚ß)
	if t == nil ‚É
		‚Í nil
	end
	‚Í ‚v.new(t)
end

‚Ú ƒ.†2(‚ß)
	ƒ.†-[‚ß] = ƒ.ƒ(‚ß)
	‚Í ƒ.†-[‚ß]
end

‚Ú ƒ.ƒ()
	for i = 1, ƒ.† do
		ƒ.†2(i)
	end
end
io.‚ó('†3 ‚Ó... 00')
for i = 1, ƒ.† do
	ƒ.†2(i)
	io.‚ó('\8\8' .. €½.…Ş('%02d', i))
end
io.‚ó(' †4.\n')

‚Ú ƒ.ƒ$()
	‚Ã ƒ = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	for k, v in ‚ï(ƒ) do
		ƒ.†2(v)
	end
end

‚Ú ƒ.†5(‚ß, †6)
	for k, v in ‚ï(†6) do
		if ‚ß == v ‚É
			‚Í ‚Ş
		end
	end
	‚Í ‚á
end

‚Ú ƒ.†7(‚ß)
	‚Í ƒ.†5(‚ß, {1, 2, 3, 5, 6, 7, 8, 9, 10, 11})
end

‚Ú ƒ.ƒ¯(†8, †9)
	‚Ã res = ‚8.†:(†8, †9)
	ƒ.†2(ƒ.ƒ())
	ƒ.†2(†8)
	‚Í res
end

‚Ú ƒ.…Ì(i)
	‚Ã †; = {}
	for ‚ß = 1, ƒ.† do
		if ƒ.†-[‚ß] ~= nil ‚É
			if i == ƒ.†-[‚ß] ‚É
				'.‚ì(†;, ‚ß)
			end
		end
	end
	‚Í †;
end

‚Ú ƒ.†<(i)
	‚Ã c = 0
	for k, v in ‚ï(ƒ.…Ì(i)) do
		c = c + ƒ.†-[v].†
	end
	‚Í c
end

‚Ú ƒ.†=(i, †>)
	‚Ã †9 = i.†
	‚Ã †> = †>
	if †> == nil ‚É †> = ‚Ş end
	‚Ã †? = ƒ.ƒ()
	‚Ã †@ = †.new()
	for k, v in ‚ë(ƒ.…Ì(i)) do
		†@:add(ƒ.†-[v])
	end
	for k, v in ‚ï(†@) do
		if ƒ.†<(v) >= †9 ‚É
			for kf, vf in ‚ï(ƒ.…Ì(v)) do
				 if not (†> or ƒ.†7(vf)) ‚É
					if †9 > 0 ‚É
						ƒ.ƒ(vf)
						‚Ã †A = ƒ.†-[vf].†
						if not ƒ.ƒ¯(†?, †9) ‚É
							‚Í ‚á
						end
						†9 = †9 - †A
					‚è
						ƒ.ƒ(†?)
						‚Í ‚Ş
					end
				 end
			end
			†B
		end
	end
	ƒ.ƒ(†?)
	‚Í ‚Ş
end

‚Ú ƒ.ƒ(†9, †>, †6)
	‚Ã †C = ƒ.ƒ()
	‚Ã †9 = †9 or ƒ.†-[†C].†
	‚Ã †> = †>
	if †> == nil ‚É †> = ‚Ş end
	‚Ã †6 = †6 or {}
	
	-- †D ƒ@ †'
	for k, v in ‚ë(ƒ.…Ì(ƒ.†-[†C])) do
		if not (†> or ƒ.†7(v)) and not ƒ.†5(v, †6) ‚É
			‚Ã †E = ƒ.†-[v]
			if †E.† < †E.†F ‚É
				‚Ã †G = †..min(†E.†F - †E.†, †9)
				if not ƒ.ƒ¯(v, †G) ‚É
					‚Í ‚á
				end
				†9 = †9 - †G
				if †9 == 0 ‚É
					‚Í ‚Ş
				end
			end
		end
	end
	
	-- †H, †I †J †-
	for †E = 1, ƒ.† do
		if not (†> or ƒ.†7(†E)) and not ƒ.†5(†E, †6) ‚É
			if ƒ.†-[†E] == nil ‚É
				if not ƒ.ƒ¯(†E, †9) ‚É
					‚Í ‚á
				end
				‚Í ‚Ş
			end
		end
	end
	
	‚Í ‚Ş
end

‚Ú ƒ.ƒB()
	for k, v in ‚ï({1, 2, 3, 5, 6, 7, 8, 9, 10, 11}) do
		if ƒ.†-[v] ~= nil ‚É
			ƒ.ƒ(v)
			if not ƒ.ƒ(ƒ.†-[v].†, ‚á) ‚É
				‚Í ‚á
			end
		end
	end
	‚Í ‚Ş
end

‚Ú ƒ.ex.†K()
	‚Í ƒ.ex.†L() ~= nil
end

‚Ú ƒ.ex.†M()
	‚Í ƒ.ex.†N() ~= nil
end

‚Ú ƒ.ex.†L()
	‚Í †,.†L(3)
end

‚Ú ƒ.ex.†N()
	‚Í †,.†L(1)
end

‚Ú ƒ.ex.ƒ(‚ß)
	‚Ã t = †,.†1(3, ‚ß)
	if t == nil ‚É
		‚Í nil
	end
	‚Í ‚v.new(t)
end

‚Ú ƒ.ex.†O(i, †9)
	-- †P: †= †Q ‚v
end

‚Ú ƒ.ex.†R(i, †9)
	-- †P: †S ‚v to ‚Ó in †T
end

‚Ú ƒ.ex.ƒ(‚ß, †9)
	-- †P: ƒ †U †9 of †V ‚ß in †T
end

‚Ú ƒ.ex.†W(†X, †9)
	‚Í †,.†Y(3, †X, †9)
end

‚Ú ƒ.ex.†Z(†X, †9)
	‚Í †,.†[(3, †X, †9)
end

‚Í Inventory]==],['oredictdb.lua']= [==[‚Ã ‚Î = ‚Æ('lib.‚Î')
‚Ã †  = ‚Æ('lib.‚Ô.† ')
‚Ã †\ = ‚Æ('lib.‚Ô.†\')

-- † †
‚Ã ‚Ñ = {
	db = {}
}

-- † †
‚Ã †] = 'db/† .db'

‚Ú ‚Ñ:†^()
	‚Ã a = {}
	for k, v in ‚ë(‚Ñ.db) do '.‚ì(a, k) end
	'.‚í(a)
	‚Ã i = 0
	‚Í ‚Ú()
		i = i + 1
		if a[i] == nil ‚É
			‚Í nil
		‚è
			‚Í a[i], ‚Ñ.db[a[i]]
		end
	end
end

‚Ú ‚Ñ.‚Ë()
	‚Ã f = io.…§(†], 'r')
	‚Ã l = f:‚ş('*l')
	ƒD l ~= nil do
		if l ~= '' ‚É
			‚Ã †_ = ‚Î.ƒG(l, '=')
			‚Ñ.db[†_[1]] = † .new(†_[1], †\.†(†_[2]))
		end
		l = f:‚ş('*l')
	end
end
io.‚ó('ƒS ‚Ñ... ')
‚Ñ.‚Ë()
‚Ã † = 0
for k, v in ‚ë(‚Ñ.db) do
	† = † + 1
end
io.‚ó(€½.…Ş('%d ƒ.\n', †))

‚Ú ‚Ñ.‚ù()
	‚Ã f = io.…§(†], 'w')
	for k, v in ‚Ñ:†^() do
		if (‚Ô(k) ~= '€½') or (‚Ô(ƒ6(v)) ~= '€½') ‚É
			‚Ê(k)
			‚Ê(ƒ6(v))
		end
		f:‚ó(k .. '=' .. ƒ6(v) .. '\n')
	end
	f:…¨()
end

‚Ú ‚Ñ.get(—)
	for k, v in ‚ë(‚Ñ.db) do
		if k == — ‚É
			‚Í v
		end
	end
	‚Í nil
end

‚Ú ‚Ñ.add(od)
	‚Ñ.db[od.—] = od
end

‚Ú ‚Ñ.ƒ0(—)
	‚Ã ƒ3 = ‚Ñ.db[—]
	‚Ñ.db[—] = nil
	‚Í ƒ3
end

‚Í oredictdb]==],['rawdb.lua']= [==[‚Ã ‚v = ‚Æ('lib.‚Ô.‚v')
‚Ã † = ‚Æ('lib.‚Ô.†')

‚Ã ‚Î = ‚Æ('lib.‚Î')

-- † †
‚Ã ‚Ğ = {
	db = {}
}

-- † †
‚Ã †` = 'db/raw.db'

‚Ú ‚Ğ.‚í()
	'.‚í(‚Ğ.db, ‚Ú(a, b) ‚Í a.— < b.— end)
end

‚Ú ‚Ğ.‚Ë()
	‚Ğ.db = {}
	‚Ã f = io.…§(†`, 'r')
	‚Ã l = f:‚ş('*l')
	ƒD l ~= nil do
		'.‚ì(‚Ğ.db, ~‚v.new(l))
		l = f:‚ş('*l')
	end
	‚Ğ.‚í()
	f:…¨()
end
io.‚ó('ƒS ‚Ğ... ')
‚Ğ.‚Ë()
‚Ã †a = 0
for k, v in ‚ï(‚Ğ.db) do
	†a = †a + 1
end
io.‚ó(€½.…Ş('%d ƒ.\n', †a))

‚Ú ‚Ğ.‚ù()
	‚Ğ.‚í()
	‚Ã f = io.…§(†`, 'w')
	for k, v in ‚ï(‚Ğ.db) do
		f:‚ó(ƒ6(v) .. '\n')
	end
	f:…¨()
end

-- † †%
‚Ú ‚Ğ.get(i)
	if ƒ*(i) ~= ‚v ‚É
		†&('Can\'t …Ì ' .. ‚Ô(‚v) .. ' ƒr ‚Ğ.')
	end
	for k, v in ‚ï(‚Ğ.db) do
		if i:…Ã(v) ‚É
			‚Í v
		end
	end
	‚Í nil
end

‚Ú ‚Ğ.has(i)
	‚Í ‚Ğ.get(i) ~= nil
end

‚Ú ‚Ğ.add(i)
	if ƒ*(i) ~= ‚v ‚É
		†&('Can\'t add ' .. ‚Ô(‚v) .. ' to ‚Ğ.')
	end
	for k, v in ‚ï(‚Ğ.db) do
		if i:…Ã(v) ‚É
			‚Í i
		end
	end
	'.‚ì(‚Ğ.db, i)
	‚Ğ.‚í()
	‚Í i
end

‚Ú ‚Ğ.ƒ0(i)
	for k, v in ‚ï(‚Ğ.db) do
		if i:…Ã(v) ‚É
			‚Í '.ƒ0(‚Ğ.db, k)
		end
	end
	‚Í nil
end

‚Í rawdb]==],['reset.lua']= [==[…Ë.ƒ['lib.‚Ò'] = nil
…Ë.ƒ['lib.‚Ğ'] = nil
…Ë.ƒ['lib.‚Ñ'] = nil
…Ë.ƒ['lib.‚Ó'] = nil
…Ë.ƒ['lib.‚Î'] = nil
…Ë.ƒ['lib.†b'] = nil
…Ë.ƒ['lib.‚Ï'] = nil
…Ë.ƒ['lib.‚Ô.‚v'] = nil
…Ë.ƒ['lib.‚Ô.† '] = nil
…Ë.ƒ['lib.‚Ô.„'] = nil
…Ë.ƒ['lib.‚Ô.†'] = nil
…Ë.ƒ['lib.‚Ô.†'] = nil
…Ë.ƒ['lib.‚Ô.†'] = nil
…Ë.ƒ['lib.‚Ô.†\'] = nil]==],['resproc.lua']= [==[‚Ã ‚Ä, ‚8 = ‚Å(‚Æ, ‚Ç.‚È, '‚8')
if not ‚Ä ‚É
	‚Ê('Can\'t ‚Ë ‚8 ‚Ì.')
	‚Í
end

‚Ã ‚v = ‚Æ('lib.‚Ô.‚v')
‚Ã † = ‚Æ('lib.‚Ô.†')
‚Ã ‚Ğ = ‚Æ('lib.‚Ğ')
‚Ã ‚Ò = ‚Æ('lib.‚Ò')
‚Ã ‚Ñ = ‚Æ('lib.‚Ñ')
‚Ã „ = ‚Æ('lib.‚Ô.„')
‚Ã ‚Ó = ‚Æ('lib.‚Ó')

-- † †
‚Ã †c = {}

-- † †%
‚Ú †c.‚Ë()
	‚Ğ.‚Ë()
	‚Ñ.‚Ë()
	‚Ò.‚Ë()
end

‚Ú †c.‚ù()
	‚Ğ.‚ù()
	‚Ñ.‚ù()
	‚Ò.‚ù()
end

‚Ú †c.†d(i)
	if ‚Ò.get(i) ~= nil ‚É
		‚Í ‚Ò.get(i)
	end
	‚Í nil
end

‚Ú †c.ƒ8(it)
	if ‚Ô(it) == ''' ‚É
		if ƒ*(it) ~= ‚v ‚É
			†&('Can\'t ƒ; non-‚v †e.')
		end
	‚è
		†&('Can\'t ƒ; ' .. ‚Ô(it) .. '.')
	end

	‚Ã ƒ: = †.new()
	‚Ã ƒ9 = †.new()
	
	‚Ã ‚Ú †f(i)
		ƒ::add(i)
		ƒ9:add(i)
	end
	
	‚Ã ‚Ú †g(i)
		ƒ::add(i)
	end
	
	‚Ã ‚Ú †h(i)
		if ƒ::has(i) ‚É
			ƒ::†i(i)
			‚Í ‚Ş
		end
		‚Í ‚á
	end
	
	‚Ã ‚Ú …Ä(i)
		if ‚Ğ.has(i) ‚É
			†f(i)
		ƒ  †c.†d(i) ~= nil ‚É
			for ite = 1, †..†j(i.† / †c.†d(i).ƒ.†) do
				for k, v in ‚ë(†c.†d(i):†!()) do
					ƒD not †h(v) do
						…Ä(v)
					end
				end
				†g(†c.†d(i).ƒ)
			end
		‚è
			†f(i)
		end
	end
	
	…Ä(it)
	ƒ9:‚í()
	ƒ::‚í()
	‚Í ƒ9, ƒ:
end

‚Ú †c.ƒB()
	‚Ã ƒ = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	for k, v in ‚ï(ƒ) do
		if ‚Ó.†-[v] ~= nil ‚É
			‚Ó.ƒ(v)
			if not ‚Ó.ƒ() ‚É
				‚Í ‚á
			end
		end
	end
end

‚Ú †c.ƒ((it)
	if ‚Ò.get(it) ~= nil ‚É
		‚Í ‚Ò.get(it)
	ƒ  ‚Ğ.get(it) ~= nil ‚É
		‚Í ‚Ğ.get(it)
	‚è
		‚Í nil
	end
end

‚Ú †c.ƒ+(ƒ1)
	if ƒ*(ƒ1) == „ ‚É
		‚Í ‚Ò.set(ƒ1)
	ƒ  ƒ*(ƒ1) == ‚v ‚É
		‚Í ‚Ğ.add(ƒ1)
	‚è
		‚Í nil
	end
end

‚Ú †c.ƒ0(it)
	if ‚Ò.get(it) ~= nil ‚É
		‚Í ‚Ò.ƒ0(it)
	ƒ  ‚Ğ.get(it) ~= nil ‚É
		‚Í ‚Ğ.ƒ0(it)
	‚è
		‚Í nil
	end
end

‚Ú †c.†k(‚v, †l)
	-- †m ‚Ó ƒ@ ƒV †Q ƒ@
	‚Ã †n = †.new()
	for k, v in ‚ë(‚Ó.†-) do
		†n:add(v)
	end
	if †l ~= nil ‚É
		†n:†o(†l)
	end
	
	-- †p ƒ@
	‚Ã †q = †.new()
	†q:add(‚v)
	
	-- †r and †s †t ƒ@ †u it's †J
	ƒD #†q ~= 0 do
		‚Ã †v = '.ƒ0(†q, 1)
		if not †n:has(†v) ‚É
			if (†c.†d(†v) == nil) or ‚Ğ.has(†v) ‚É
				‚Í ‚á
			‚è
				†q:†o(†c.†d(†v):†!() * †v.†)
			end
		end
	end
	‚Í ‚Ş
end

‚Ú †c.ƒ<(‚v, †l)
	-- †m ‚Ó ƒ@ ƒV †Q ƒ@
	‚Ã †n = †.new()
	for k, v in ‚ë(‚Ó.†-) do
		†n:add(v)
	end
	if †l ~= nil ‚É
		†n:†o(†l)
	end
	
	-- †p ƒ@
	‚Ã †q = †.new()
	†q:add(‚v)
	
	-- †r and †s †t ƒ@ †u it's †J
	ƒD #†q ~= 0 do
		‚Ã †v = †q:†w()
		if not †n:has(†v) ‚É
			if (‚Ò.get(†v) == nil) or ‚Ğ.has(†v) ‚É
				‚Í ‚á
			‚è
				†q:†o(‚Ò.get(†v):†!())
				†n:add(‚Ò.get(†v).ƒ)
			end
		‚è
			†n:†i(†v)
		end
	end
	‚Í ‚Ş
end

‚Ú †c.ƒ!(‚v)
	if ‚Ò.get(‚v) == nil ‚É
		†&('Can\'t ƒ! ' .. ƒ6(‚v) .. '.')
	end
	
	-- †p †x
	‚Ã †y = {}
	'.‚ì(†y, ‚Ò.get(‚v))
	
	ƒD #†y ~= 0 do
		‚Ã †z = †y[#†y]
		
		-- ƒ €¸ †{
		‚Ã †| = ‚Ş
		for k, v in ‚ï(†z:†!()) do
			if ‚Ó.†<(v) < v.† ‚É
				†| = ‚á
				if (‚Ò.get(v) == nil) or ‚Ğ.has(v) ‚É
					‚Ê('†} 1')
					‚Í ‚á
				‚è
					for kc, vc in ‚ï(†y) do
						if vc == ‚Ò.get(v) ‚É
							'.ƒ0(†y, kc)
						end
					end
					'.‚ì(†y, ‚Ò.get(v))
				end
			end
		end
		
		if †| ‚É
			if not ‚Ó.ƒB() ‚É
				‚Ê('†} 2')
				‚Í ‚á
			end
			‚Ê('ƒ/')
			if †z.ƒ ‚É
				‚Ã ƒ = {{1, 2, 3}, {5, 6, 7}, {9, 10, 11}}
				for y = 1, †z.†.ƒ# do
					for x = 1, †z.†.ƒ" do
						if †z.ƒ[(y - 1) * †z.†.ƒ" + x] ~= nil ‚É
							‚Ó.ƒ(ƒ[y][x])
							‚Ó.†=(†z.ƒ[(y - 1) * †z.†.ƒ" + x]:†~(), ‚á)
						end
					end
				end
			‚è
				‚Ã ƒ = {1, 2, 3, 5, 6, 7, 9, 10, 11}
				for k = 1, #†z.ƒ do
					‚Ó.ƒ(ƒ[k])
					‚Ó.†=(†z.ƒ[k]:†~(), ‚á)
				end
			end
			‚Ó.ƒ(8)
			if not ‚.„.ƒ!(1) ‚É
				‚Ê('†} 3')
				‚Í ‚á
			end
			‚Ó.ƒ$()
			'.ƒ0(†y)
		end
	end
	
	‚Í ‚Ş
end

‚Í ResProc]==],['stringlib.lua']= [==[‚Ã † = ‚Æ('†')
‚Ã ‚ = ‚Æ('‚')
if ‚.gpu == nil ‚É
	‚Ê('†+ gpu!')
	‚Í
end
‚Ã gpu = ‚.gpu

-- † †
‚Ã ‚Î = {}

-- † †%
‚Ú ‚Î.ƒG(s, †€)
	if s == nil ‚É
		†&('† nil.')
	end

	‚Ã t = {}
	for str in €½.…Î(s, '([^' .. (†€ or '%s') .. ']+)') do
		'.‚ì(t, str)
	end
	‚Í t
end

‚Ú ‚Î.‚ğ(s)
	‚Ã †‚, †ƒ = gpu.†„()
	‚Ã ‚Ú †…(str)
		†< = 1
		for i = 1, #str do
			if str:sub(i, i) == '\n' ‚É
				†< = †< + 1
			end
		end
		‚Í †<
	end
	‚Ã ‚Ú ††(str)
		‚Ã t = {}
		‚Ã l = ''
		for i = 1, #str do
			if str:sub(i, i) == '\n' ‚É
				t[#t+1] = l
				l = ''
			ƒ  #l == †‚ - 1 ‚É
				t[#t+1] = l .. str:sub(i, i)
				l = ''
			‚è
				l = l .. str:sub(i, i)
			end
		end
		if l ~= '' ‚É t[#t+1] = l end
		‚Í t
	end
	‚Ã ‚Ú mod(a, b)
		‚Í a - †..†/(a / b) * b
	end

	‚Ã †‡ = ‚Ş
	‚Ã †ˆ = ††(s)
	for k, v in ‚ë(†ˆ) do
		if †‡ ‚É
			io.‚ó(v)
			†‡ = ‚á
		‚è
			io.‚ó('\n' .. v)
			if (#v == †‚) ‚É †‡ = ‚Ş end
		end
		if mod(k, †ƒ) == 0 ‚É
			†.†=('key_†‰', nil, 32.0)
		end
	end
	io.‚ó('\n')
end

‚Í stringlib]==],['tablelib.lua']= [==[‚Ã †b = {}

‚Ú †b.†Š(t)
	-- †‹ …ã. †Œ †.
	if ‚Ô(t) ~= ''' ‚É
		†&('† to †Š † † …å '.')
	end

	‚Ã †‘ = {}
	for k, v in ‚ë(t) do
		†‘[k] = v
	end
	
	‚Í †‘
end

‚Ú †b.†’(t)
	-- †‹ …ã. †Œ †.
	if ‚Ô(t) ~= ''' ‚É
		†&('† to †Š † † …å '.')
	end

	‚Ã †‘ = {}
	for k, v in ‚ë(t) do
		if ‚Ô(v) == ''' ‚É
			†‘[k] = †b.†’(v)
		‚è
			†‘[k] = v
		end
	end
	
	‚Í †‘
end

‚Ú †b.…¯(t, †“)
	‚Ã buf = ''
	for k, v in ‚ï(t) do
		buf = buf .. ƒ6(v)
		if …Ù(t, k) ~= nil ‚É
			buf = buf .. †“
		end
	end
	‚Í buf
end

‚Ú †b.str(tb, —)
	‚Ã buf = ''

	‚Ã ‚Ú tab(†”)
		‚Í €½.rep('  ', †”)
	end
	‚Ã ‚Ú val(v)
		if ‚Ô(v) == '€½' ‚É
			‚Í '\'' .. v .. '\''
		‚è
			‚Í ƒ6(v)
		end
	end
	‚Ã ‚Ú key(k)
		if ‚Ô(k) == '€½' ‚É
			‚Í k
		‚è
			‚Í ƒ6(k)
		end
	end
	‚Ã ‚Ú †•(t)
		†< = 0
		for _ in ‚ë(t) do
			†< = †< + 1
		end
		‚Í †<
	end

	‚Ã ‚Ú †–(t, †”, —)
		if ‚Ô(t) ~= ''' ‚É ‚Í 'nil' end
		if …Ù(t) == nil ‚É ‚Í '{}' end
		‚Ã †” = †” or 0
		‚Ã buf = ''
		if — == nil ‚É
			buf = buf .. '{'
		‚è
			buf = buf .. — .. ' = {'
		end
		†” = †” + 1
		‚Ã k, v = …Ù(t, nil)
		ƒD k do
			if ‚Ô(v) == ''' ‚É
				buf = buf .. '\n' .. tab(†”) .. key(k) .. ' = ' .. †–(v, †” + 1)
			‚è
				buf = buf .. '\n' .. tab(†”) .. key(k) .. ' = ' .. val(v)
			end
			if …Ù(t, k) ~= nil ‚É
				buf = buf .. ','
			end
			k, v = …Ù(t, k)
		end
		†” = †” - 1
		buf = buf .. '\n' .. tab(†”) .. '}'
		‚Í buf
	end

	‚Í †–(tb, 0, —)
end

‚Í tablelib]==],['type']={['crafting.lua']= [==[‚Ã ‚Î = ‚Æ('lib.‚Î')
‚Ã ‚v = ‚Æ('lib.‚Ô.‚v')
‚Ã † = ‚Æ('lib.‚Ô.†')

-- † †
‚Ã ƒ = {
	† = { ƒ" = 0, ƒ# = 0 },
	ƒ = {},
	ƒ = ‚Ş,
	ƒ = {}
}

-- † †%
‚Ú ƒ.new(†, ƒ, ƒ, ƒ)
	-- †‹ …ã. †Œ †.
	if († == nil) or (ƒ == nil) or (ƒ == nil) ‚É
		†&('Can\'t †— nil „.')
	end
	if (†.ƒ" == nil) or (†.ƒ# == nil) ‚É
		†&('ƒ †˜ †!')
	end
	if (ƒ*(ƒ) ~= ‚v) ‚É
		†&('Can\'t put †™ ‚è †š ƒ †› ‚v!')
	end
	if (ƒ.† == 0) ‚É
		†&('Can\'t †— †œ ‚v!')
	end
	
	‚Ã o = {}
	‚Û(o, ƒ)
	ƒ.__‚Ü = ƒ
	o.† = †
	o.ƒ = ƒ
	o.ƒ = ƒ
	o.ƒ = ƒ
	‚Í o
end

‚Ú ƒ:†!()
	‚Ã † = †.new()
	for k, v in ‚ë(†.ƒ) do
		if v ~= nil ‚É
			†:add(v:†~())
		end
	end
	‚Í †
end

-- †Ÿ
‚Ú ƒ.__ƒ6(cr)
	‚Ã †  = €½.…Ş('(%dx%d) ', cr.†.ƒ", cr.†.ƒ#) .. (cr.ƒ and 'ƒ ' or 'ƒ ') .. ƒ6(cr.ƒ) .. ':\n'
	
	if cr.ƒ ‚É
		for c = 1, cr.†.ƒ" * cr.†.ƒ# do
			†  = †  .. €½.…Ş('[%d] %s\n', c, cr.ƒ[c])
		end
	‚è
		for c = 1, #cr.ƒ do
			†  = †  .. €½.…Ş('[%d] %s\n', c, cr.ƒ[c])
		end
	end
	†  = † :sub(1, #†  - 1)
	
	‚Í † 
end

‚Í Crafting]==],['ingredient.lua']= [==[‚Ã ‚v = ‚Æ('lib.‚Ô.‚v')
‚Ã †\ = ‚Æ('lib.‚Ô.†\')
‚Ã †  = ‚Æ('lib.‚Ô.† ')
‚Ã ‚Ñ = ‚Æ('lib.‚Ñ')

-- † †
‚Ã †¡ = {
	†¢ = {}
}

-- † †%
‚Ú †¡.†(str)
	‚Ã a = {}
	‚Û(a, †¡)
	†¡.__‚Ü = †¡

	if str:…Ì('ore:') ~= nil ‚É
		‚Ã od = ‚Ñ.get(str)
		if od == nil ‚É
			†&('†£ †¤ ' .. str .. ' as †.')
		end
		a.†¢ = od
	ƒ  str:…Ì(',') ~= nil ‚É
		‚Ã ic = †\.†(str)
		a.†¢ = ic
	‚è
		‚Ã i = ‚v.new(str)
		a.†¢ = i
	end
	
	‚Í a
end

‚Ú †¡:…ã(i)
	-- †‹ …ã. †Œ †.
	if ƒ*(i) ~= ‚v ‚É
		†&('†¥ †¦\'t …ã ' .. ‚Ô(i) .. '.')
	end
	
	if ƒ*(†.†¢) == †  ‚É
		‚Í †.†¢.…ã(i)
	ƒ  ƒ*(†.†¢) == †\ ‚É
		‚Í †.†¢.…ã(i)
	ƒ  ƒ*(†.†¢) == ‚v ‚É
		‚Í †.†¢ == i
	end
end

-- †Ÿ
‚Ú †¡.__eq(a, b)
	-- †‹ …ã. †Œ †.
	if not (((ƒ*(a) == ‚v) and (ƒ*(b) == †¡)) or
			((ƒ*(a) == †¡) and (ƒ*(b) == ‚v))) ‚É
		if (ƒ*(a) == †¡) and (ƒ*(b) == †¡) ‚É
			‚Í a.†¢ == b.†¢
		end
		†&(€½.…Ş('† to do †§ †¨ ƒV †© †e ‚Ô. (%s, %s)', ‚Ô(a), ‚Ô(b)))
	end
	
	if ƒ*(a) == ‚v ‚É
		‚Í b:…ã(a)
	‚è
		‚Í a:…ã(b)
	end
end

‚Í Ingredient]==],['ingredientarray.lua']= [==[‚Ã † = ‚Æ('lib.‚Ô.†')

-- † †
‚Ã †ª = {}

-- † †%
‚Ú †ª.new()
	‚Ã a = {}
	‚Û(a, †ª)
	†ª.__‚Ü = †ª
	‚Í a
end

‚Ú †ª:‚Ü(i)
	for k, v in ‚ï(†) do
		if v == i ‚É
			‚Í k
		end
	end
	‚Í nil
end

‚Ú †ª:add(i)
	for k, v in ‚ï(†) do
		if v == i ‚É
			‚Í i
		end
	end
	‚Í '.‚ì(†, i)
end

‚Í IngredientArray]==],['item.lua']= [==[‚Ã ‚Î = ‚Æ('lib.‚Î')

-- † †
‚Ã ƒ, = {
	— = '',
	ƒ = -1,
	† = 1,
	†F = 1
}

-- † †%
‚Ú ƒ,.new(...)
	‚Ã …Ÿ = {...}
	‚Ã i = {}
	‚Û(i, ƒ,)
	ƒ,.__‚Ü = ƒ,
	
	if ‚Ô(…Ÿ[1]) == '€½' ‚É
		if …Ÿ[1] == '' ‚É
			†&('†« ‚v —.')
		end
		‚Ã †¬ = ‚Î.ƒG(…Ÿ[1], '|')
		i.— = †¬[1]
		i.ƒ = ((†¬[2] == '*') and -1 or …÷(†¬[2])) or 0
		i.† = 1
		i.†F = 1
	ƒ  ‚Ô(…Ÿ[1]) == ''' ‚É
		i.— = …Ÿ[1].—
		if …Ÿ[1].ƒ ~= nil ‚É
			i.ƒ = †..†/(…Ÿ[1].ƒ)
		end
		i.† = †..†/(…Ÿ[1].†) or 1
		i.†F = †..†/(…Ÿ[1].†F) or 1
	ƒ  #…Ÿ == 0 ‚É
		†&('Not †­ nil or †J †®.')
	‚è
		†&('‚ä †¯ †®.')
	end
	
	‚Í i
end

‚Ú ƒ,:ƒ()
	†.ƒ = -1
	‚Í †
end

‚Ú ƒ,:†~()
	‚Ã icl = †:†Š()
	icl.† = 1
	‚Í icl
end

‚Ú ƒ,:†Š()
	‚Í ƒ,.new(†)
end

‚Ú ƒ,:†°(i)
	-- †‹ …ã. †Œ †.
	if ƒ*(i) ~= ƒ, ‚É
		†&('† to †± ƒV ' .. ‚Ô(i) .. '.')
	end

	if (†.ƒ == -1) or (i.ƒ == -1) ‚É
		‚Í †.— == i.—
	‚è
		‚Í (†.— == i.—) and (†.ƒ == i.ƒ)
	end
end

‚Ú ƒ,:…Ã(i)
	-- †².
	‚Ã f = io.…§('†³.log', 'a')
	f:‚ó(‚Ç.‚È() .. '\n')
	f:…¨()
	
	‚Í ƒ,:†°(i)
end

-- †Ÿ
‚Ú ƒ,.__eq(a, b)
	-- Don't do †´ †µ. †¶ †· †¸ out.
	if (ƒ*(a) ~= ƒ,) or (ƒ*(b) ~= ƒ,) ‚É
		if not (((ƒ*(a) == ‚v) and (ƒ*(b) == †¡)) or
				((ƒ*(a) == †¡) and (ƒ*(b) == ‚v))) ‚É
			‚Í ‚á
		‚è
			if ƒ*(a) == ‚v ‚É
				‚Í b:…ã(a)
			‚è
				‚Í a:…ã(b)
			end
		end
		‚Í ‚á
	end

	‚Í a:†°(b)
end

‚Ú ƒ,.__add(a, b)
	-- †‹ …ã. †Œ †.
	if (ƒ*(a) ~= ƒ,) or (ƒ*(b) ~= ƒ,) ‚É
		†&('† to do †§ †¨ ƒV †© †e ‚Ô.')
	end

	‚Ã n = a:†Š()
	if (a.— == b.—) and (a.ƒ == b.ƒ) ‚É
		n.† = a.† + b.†
	‚è
		†&(€½.…Ş('Can\'t add †© ƒ@.'))
	end
	‚Í n
end

‚Ú ƒ,.__sub(a, b)
	-- †‹ …ã. †Œ †.
	if (ƒ*(a) ~= ƒ,) and (ƒ*(b) ~= ƒ,) ‚É
		†&('† to do †§ †¨ ƒV †© †e ‚Ô.')
	end

	‚Ã n = a:†Š()
	if (a.— == b.—) and (a.ƒ == b.ƒ) ‚É
		n.† = a.† - b.†
	‚è
		†&('Can\'t sub †© ƒ@.')
	end
	‚Í n
end

‚Ú ƒ,.__mul(a, b)
	-- †‹ …ã. †Œ †.
	if (ƒ*(a) ~= ƒ,) and (‚Ô(b) ~= '†¹') ‚É
		†&(€½.…Ş('†º ‚v † †»: %s * %s.', ‚Ô(a), ‚Ô(b)))
	end
	
	‚Ã n = a:†Š()
	n.† = n.† * b
	‚Í n
end

‚Ú ƒ,.__unm(a)
	‚Ã icl = a:†Š()
	icl = a.†F - a.†
	‚Í icl
end

‚Ú ƒ,.__len(a)
	‚Í a.†;
end

‚Ú ƒ,.__ƒ6(a)
	‚Ã †¼ = a.—
	if a.ƒ ~= nil ‚É
		if a.ƒ ~= 0 ‚É
			†¼ = †¼ .. '|' .. ƒ6(a.ƒ)
		end
	end

	if a.† ~= 0 ‚É
		‚Í €½.…Ş('%d %s', a.†, †¼)
	end
	‚Í †¼
end

‚Ú ƒ,.__†½(a)
	‚Ã icl = a:†Š()
	icl.† = 0
	‚Í icl
end

‚Í Item]==],['itemarray.lua']= [==[‚Ã ‚v = ‚Æ('lib.‚Ô.‚v')

-- † †
‚Ã †¾ = {}

-- † †%
‚Ú †¾.new()
	‚Ã o = {}
	‚Û(o, †¾)
	†¾.__‚Ü = †¾
	‚Í o
end

‚Ú †¾:has(i)
	for k, v in ‚ï(†) do
		if i == v ‚É
			‚Í (i.† == 0) or (i.† <= v.†)
		end
	end
	‚Í ‚á
end

‚Ú †¾:†¿(i)
	for k, v in ‚ï(†) do
		if v:…Ã(i) ‚É
			‚Í v.† >= i.†
		end
	end
	‚Í ‚á
end

‚Ú †¾:†À(ia)
	for k, v in ‚ï(ia) do
		if not †:has(v) ‚É
			‚Í ‚á
		end
	end
	‚Í ‚Ş
end

‚Ú †¾:†Á(ia)
	for k, v in ‚ï(ia) do
		if not †:†¿(v) ‚É
			‚Í ‚á
		end
	end
	‚Í ‚Ş
end

‚Ú †¾:†<(i)
	‚Ã c = 0
	for k, v in ‚ï(†) do
		if i == v ‚É
			c = c + v.†
		end
	end
	‚Í c
end

‚Ú †¾:add(i)
	for k, v in ‚ï(†) do
		if v:…Ã(i) ‚É
			†[k].† = †[k].† + i.†
			‚Í †[k]
		end
	end
	'.‚ì(†, i:†Š())
	‚Í i
end

‚Ú †¾:†o(ia)
	if ‚Ô(ia) == ''' ‚É
		if ƒ*(ia) ~= †¾ ‚É
			†&('Can\'t add non-† †e.')
		end
	‚è
		†&('Can\'t add ' .. ‚Ô(ia) .. '.')
	end
	
	for k, v in ‚ï(ia) do
		†:add(v)
	end
	‚Í ia
end

‚Ú †¾:ƒ0(i)
	for k, v in ‚ï(†) do
		if i == v ‚É
			‚Í '.ƒ0(†, k)
		end
	end
	‚Í nil
end

‚Ú †¾:†Â(i)
	for k, v in ‚ï(†) do
		if i:…Ã(v) ‚É
			‚Í '.ƒ0(†, k)
		end
	end
	‚Í nil
end

‚Ú †¾:†i(i)
	‚Ã †Ã = i:†Š()
	for k, v in ‚ï(†) do
		if i == v ‚É
			†Ã.† = v.† - †Ã.†
			if †Ã.† < 0 ‚É
				†:ƒ0(v)
				†Ã.† = -†Ã.†
			‚è
				v.† = †Ã.†
				‚Í nil
			end
		end
	end
	‚Í †Ã
end

‚Ú †¾:pop()
	‚Í '.ƒ0(†)
end

‚Ú †¾:†w()
	if †[#†].† <= 1 ‚É
		‚Í '.ƒ0(†)
	‚è
		†[#†].† = †[#†].† - 1
		‚Í †[#†]:†~()
	end
end

‚Ú †¾:‚Ü(i)
	for k, v in ‚ï(†) do
		if i == v ‚É
			‚Í k
		end
	end
	‚Í nil
end

‚Ú †¾:get(i)
	‚Í †[†:‚Ü(i)]
end

‚Ú †¾:†#(i)
	for k, v in ‚ï(†) do
		if i:…Ã(v) ‚É
			‚Í k
		end
	end
	‚Í nil
end

‚Ú †¾:‚í()
	'.‚í(†, ‚Ú(a, b) ‚Í a.— < b.— end)
	‚Í †
end

-- †Ÿ
‚Ú †¾.__add(a, b)
	-- †‹ …ã. †Œ †.
	if not ((ƒ*(a) == †¾) or (ƒ*(a) == ‚v)) or not ((ƒ*(b) == †¾) or (ƒ*(b) == ‚v)) ‚É
		†&('† to add †Ä †Å † …å †¾ and ƒ,. [' .. ‚Ô(b) .. ']')
	end
	
	‚Ã o = †¾.new()
	if (ƒ*(a) == ‚v) ‚É
		‚Ã †Æ = ‚á
		for k, v in ‚ï(o) do
			if a:…Ã(v) ‚É
				o[k] = o[k] + a
				†Æ = ‚Ş
				†B
			end
		end
		if not †Æ ‚É
			o:add(a:†Š())
		end
	‚è
		for ks, vs in ‚ï(a) do
			‚Ã †Æ = ‚á
			for kd, vd in ‚ï(o) do
				if vs:…Ã(vd) ‚É
					o[kd] = o[kd] + vs
				end
			end
		end
	end
	if (ƒ*(b) == ‚v) ‚É
		‚Ã †Æ = ‚á
		for k, v in ‚ï(o) do
			if b:…Ã(v) ‚É
				o[k] = o[k] + b
				†Æ = ‚Ş
				†B
			end
		end
		if not †Æ ‚É
			o:add(b:†Š())
		end
	‚è
		for ks, vs in ‚ë(b) do
			‚Ã †Æ = ‚á
			for kd, vd in ‚ï(o) do
				if vs:…Ã(vd) ‚É
					o[kd] = o[kd] + vs
				end
			end
		end
	end
	‚Í o
end

‚Ú †¾.__mul(a, b)
	-- †‹ …ã. †Œ †.
	if (ƒ*(a) ~= †¾) or (‚Ô(b) ~= '†¹') ‚É
		†&(€½.…Ş('†º † † †»: %s * %s.', ‚Ô(a), ‚Ô(b)))
	end
	
	‚Ã o = †¾.new()
	for k, v in ‚ï(a) do
		o[k] = a[k] * b
	end
	‚Í o
end

‚Í ItemArray]==],['itemcompound.lua']= [==[‚Ã ‚v = ‚Æ('lib.‚Ô.‚v')
‚Ã ‚Î = ‚Æ('lib.‚Î')
‚Ã †b = ‚Æ('lib.†b')

-- † †
‚Ã †Ç = {
	ƒ@ = {}
}

-- † †%
‚Ú †Ç.†(†È)
	‚Ã ic = {}
	‚Û(ic, †Ç)
	†Ç.__‚Ü = †Ç
	
	ic.ƒ@ = {}
	for k, v in ‚ï(‚Î.ƒG(†È, ',')) do
		'.‚ì(ic.ƒ@, ~‚v.new(v))
	end
	
	‚Í ic
end

‚Ú †Ç:…ã(i)
	-- †‹ …ã. †Œ †.
	if ƒ*(i) ~= ‚v ‚É
		†&('Can\'t add ' .. ‚Ô(i) .. ' to ‚v „[.')
	end
	
	for k, v in ‚ï(†.ƒ@) do
		if i == v ‚É
			‚Í ‚Ş
		end
	end
	‚Í ‚á
end

‚Ú †Ç:add(i)
	-- †‹ …ã. †Œ †.
	if ƒ*(i) ~= ‚v ‚É
		†&('Can\'t add ' .. ‚Ô(i) .. ' to ‚v „[.')
	end
	
	for k, v in ‚ï(†.ƒ@) do
		if i == v ‚É
			‚Í v
		end
	end
	‚Í '.‚ì(†.ƒ@, ~i:†Š())
end

‚Ú †Ç:ƒ0(i)
	-- †‹ …ã. †Œ †.
	if ƒ*(i) ~= ‚v ‚É
		†&('Can\'t add ' .. ‚Ô(i) .. ' to ‚v „[.')
	end
	
	for k, v in ‚ï(†.ƒ@) do
		if i == v ‚É
			'.ƒ0(†.ƒ@, v)
			‚Í ‚Ş
		end
	end
	‚Í ‚á
end

-- †Ÿ
‚Ú †Ç.__ƒ6(†É)
	'.‚í(†É.ƒ@, ‚Ú(a, b) ‚Í a.— < b.— end)
	‚Í †b.…¯(†É.ƒ@, ',')
end

‚Ú †Ç.__eq(a, b)
	-- Don't do †´ †µ. †¶ †· †¸ out.
	if (ƒ*(a) ~= †Ç) and (ƒ*(b) ~= †Ç) ‚É
		‚Í ‚á
	end
	
	‚Í ƒ6(a) == ƒ6(b)
end

‚Í ItemCompound]==],['oredict.lua']= [==[‚Ã ‚v = ‚Æ('lib.‚Ô.‚v')
‚Ã †\ = ‚Æ('lib.‚Ô.†\')

-- † †
‚Ã †Ê = {
	— = '',
	†Ë = {}
}

-- † †%
‚Ú †Ê.new(—, †Ë)
	-- †‹ …ã. †Œ †.
	if ƒ*(†Ë) ~= †\ ‚É
		†&('Can\'t †Ì †  ƒV ' .. ‚Ô(†Ë) .. '.')
	end

	‚Ã od = {}
	‚Û(od, †Ê)
	†Ê.__‚Ü = †Ê
	od.— = —
	od.†Ë = †Ë or {}
	‚Í od
end

‚Ú †Ê:…ã(i)
	‚Í †Ë:…ã(i)
end

-- †Ÿ
‚Ú †Ê.__ƒ6(od)
	‚Í —
end

‚Ú †Ê.__eq(a, b)
	-- Don't do †´ †µ. †¶ †· †¸ out.
	if (ƒ*(a) ~= †Ê) and (ƒ*(b) ~= †Ê) ‚É
		‚Í ‚á
	end
	
	‚Í (a.— == b.—) and (a.†Ë == b.†Ë)
end

‚Í OreDict]==]}},['oredict.db']= [==[ore:€¤=€Š:log|*,€Š:û|*,€·:‚n_log|*
ore:€ï=€Š:€Ã|*,€·:‚n_€Ã|*
ore:‚t=€Š:A_\|*
ore:Ö=€Š:oak_,€Š:€è_,€Š:€À_,€Š:U_,€Š:._,€Š:€ò_oak_
ore:…=€Š:€Á,€Š:€è_€Á,€Š:€À_€Á,€Š:U_€Á,€Š:€ò_oak_€Á,€Š:._€Á
ore:…=€Š:€Á_€é,€Š:€è_€Á_€é,€Š:€À_€Á_€é,€Š:U_€Á_€é,€Š:€ò_oak_€Á_€é,€Š:._€Á_€é
ore:‚R=€Š:._€ó,€Š:€À_€ó,€Š:€ò_oak_€ó,€Š:A_€ó,€Š:U_€ó,€Š:€è_€ó
ore:€•=€Š:€£
ore:´=€Š:…|*,€·:‚n_…|*
ore:…=€Š:…|*,€Š:…|*,€·:‚n_…|*
ore:Ê=€Š:Ê
ore:…=€Š:_ore
ore:…=€Š:€‹_ore
ore:…	=€Š:‚k_ore
ore:…
=€Š:€¹_ore
ore:…=€Š:_ore
ore:…=€Š:€ú_ore
ore:…=€Š:Y_ore
ore:…=€Š:€İ_ore
ore:€²=€Š:€‹_V
ore:€”=€Š:_V
ore:„X=€Š:€È
ore:…=€Š:‰
ore:€ƒ=€Š:_€Œ
ore:í=€Š:€‹_€Œ
ore:€ÿ=€Š:€¹
ore:€û=€Š:€ú
ore:…=€Š:Y
ore:‚=€Š:_„R
ore:‚œ=€Š:_…
ore:€–=€Š:
ore:ú=€Š:ã_ä
ore:#=€Š:dye|4
ore: =€Š:_€µ
ore:‚=€Š:€‹_€µ
ore:‚~=€Š:‚k_€µ
ore:‚=€Š:€¹_€µ
ore:€¾=€Š:_€µ
ore:…=€Š:€ú_€µ
ore:…=€Š:Y_€µ
ore:­=€Š:€İ_€µ
ore:…=€Š:¾
ore:…=€Š:€Ÿ
ore:…=€Š:€
ore:…=€Š:€Ç_€Î
ore:ş=€Š:…
ore:…=€Š:…
ore:dye=€Š:dye|*,€·:€¸|14
ore:†=€Š:†
ore:€ğ=€Š:€æ_€ç
ore:‚–=€Š:€ª_Í
ore:€´=€Š:€´
ore:==€Š:=
ore:€½=€Š:€½
ore:z=€Š:€Ç_î
ore:€ê=€Š:€ê
ore:€ö=€Š:€ö
ore:egg=€Š:egg
ore:…=€Š:…_13,€Š:…_cat,€Š:…_…,€Š:…_…,€Š:…_far,€Š:…_…,€Š:…_…,€Š:…_… ,€Š:…_…!,€Š:…_…",€Š:…_11,€Š:…_…#
ore:(=€Š:(
ore:‚S=€Š:‚S
ore:€â=€Š:€â
ore:€Ó=€Š:€Ó
ore:6=€Š:6
ore:5=€Š:5|*
ore:T=€Š:T|*,€Š:red_T|*
ore:‚¬=€Š:‚¬
ore:€¨=€Š:€¨
ore:ã=€Š:ã
ore:‚]=€Š:end_€â
ore:=€Š:
ore:‚a=€Š:„_'
ore:…$=€Š:€æ
ore:…%=€Š:
ore:…&=€Š:|1
ore:…'=€Š:|2
ore:‚¤=€Š:€â|1
ore:…(=€Š:€â|2
ore:‚/=€Š:€â|3
ore:…)=€Š:€â|4
ore:‚Â=€Š:€â|5
ore:…*=€Š:€â|6
ore:=€Š:€Ø
ore:=€Š:€Ø,€Š:€×_€Ø|*
ore:…+=€Š:€Ø_€Ù
ore:Ú=€Š:€Ø_€Ù,€Š:€×_€Ø_€Ù|*
ore:€Ğ=€Š:€Ğ,€Š:€ª_€Ğ,€Š:‚_€Ğ
ore:İ=€Š:€Ğ,€Š:‚_€Ğ
ore:…,=€Š:€ª_€Ğ
ore:…-=€Š:‚_€Ğ
ore:€Û=€Š:dye
ore:€=€Š:€×_€Ø|15
ore:….=€Š:€×_€Ø_€Ù|15
ore:€˜=€Š:dye|1
ore:Ç=€Š:€×_€Ø|14
ore:…/=€Š:€×_€Ø_€Ù|14
ore:=€Š:dye|2
ore:ò=€Š:€×_€Ø|13
ore:…0=€Š:€×_€Ø_€Ù|13
ore:=€Š:dye|3
ore:‚•=€Š:€×_€Ø|12
ore:…1=€Š:€×_€Ø_€Ù|12
ore:J=€Š:dye|4,€·:€¸|14
ore:‚u=€Š:€×_€Ø|11
ore:…2=€Š:€×_€Ø_€Ù|11
ore:=€Š:dye|5
ore:‚£=€Š:€×_€Ø|10
ore:…3=€Š:€×_€Ø_€Ù|10
ore:€Ş=€Š:dye|6
ore:‚=€Š:€×_€Ø|9
ore:…4=€Š:€×_€Ø_€Ù|9
ore:=€Š:dye|7
ore:÷=€Š:€×_€Ø|8
ore:…5=€Š:€×_€Ø_€Ù|8
ore:j=€Š:dye|8
ore:‚…=€Š:€×_€Ø|7
ore:…6=€Š:€×_€Ø_€Ù|7
ore:~=€Š:dye|9
ore:Å=€Š:€×_€Ø|6
ore:…7=€Š:€×_€Ø_€Ù|6
ore:Æ=€Š:dye|10
ore:€Ú=€Š:€×_€Ø|5
ore:…8=€Š:€×_€Ø_€Ù|5
ore:+=€Š:dye|11
ore:?=€Š:€×_€Ø|4
ore:…9=€Š:€×_€Ø_€Ù|4
ore:m=€Š:dye|12
ore:’=€Š:€×_€Ø|3
ore:…:=€Š:€×_€Ø_€Ù|3
ore:€Ö=€Š:dye|13,€·:€¸|3
ore:=€Š:€×_€Ø|2
ore:…;=€Š:€×_€Ø_€Ù|2
ore:!=€Š:dye|14
ore:‚o=€Š:€×_€Ø|1
ore:…<=€Š:€×_€Ø_€Ù|1
ore:€Ü=€Š:dye|15
ore:=€Š:€×_€Ø
ore:…==€Š:€×_€Ø_€Ù
ore:›_œ_=€·:‚P|1
ore:ü=€·:€ñ,€·:€ñ|2
ore:…>=€·:€ñ|1
ore:€å=€·:
ore:…?=€·:|1
ore:…@=€·:|2
ore:…A=€·:|3
ore:…B=€·:|4
ore:…C=€·:|5
ore:…D=€·:|6
ore:…E=€·:|7
ore:…F=€·:)
ore:…G=€·:)|1
ore:…H=€·:)|2
ore:…I=€·:)|3
ore:…J=€·:®
ore:…K=€·:®|1
ore:…L=€·:‚
ore:…M=€·:‚|1
ore:…N=€·:
ore:…O=€·:|1
ore:…P=€·:|2
ore:…Q=€·:|3
ore:…R=€·:|4
ore:…S=€·:|5
ore:…T=€·:€¸
ore:…U=€·:€¸|1
ore:…V=€·:€¸|2
ore:…W=€·:€¸|3
ore:…X=€·:€¸|4
ore:…Y=€·:€¸|5
ore:…Z=€·:€¸|6
ore:…[=€·:€¸|7
ore:…\=€·:€¸|8
ore:…]=€·:€¸|9
ore:…^=€·:€¸|10
ore:D=€·:€¸|11
ore:…_=€·:€¸|12
ore:…`=€·:€¸|13
ore:…a=€·:€¸|15,€·:€¸|16
ore:…b=€·:€¸|17
ore:…c=€·:Ğ
ore:…d=€·:Ğ|1
ore:…e=€·:Ğ|2
ore:…f=€Š:€‹_€ó
ore:…g=€·:t|1
ore:‚“=€Š:‚“
ore:‚¢=€Š:I
ore:N=€Š:9,€Š:8_9
ore:€§=€Š:_
ore:€¯=€Š:€ª_Í
ore:oc:‚=€€:€|7
ore:€‡=€€:è|29
ore:oc:‚%=€Š:end_€â,€€:‚]
ore:€Í=€É:ƒ€|*
ore:ê=€É:
|*
ore:oc:‚ƒ=€€:‚ƒ
ore:oc:‚`=€€:‚`
ore:oc:€­=€€:€­|‚e
ore:oc:Q=€€:Q
ore:oc:ì=€€:ì
ore:oc:ñ=€€:ñ
ore:oc:ö=€€:ö
ore:oc:‚^=€€:¯
ore:oc:‚’=€€:‚’
ore:oc:×=€€:×
ore:oc:=€€:‚®
ore:oc:‚=€€:‚
ore:oc:‚@=€€:‚@
ore:oc:=€€:
ore:oc:Š=€€:Š
ore:oc:…h=€€:‚p
ore:oc:…i=€€:ô
ore:oc:=€€:‚E
ore:oc:ï=€€:ï
ore:oc:=€€:
ore:oc:=€€:
ore:oc:€°=€€:€°
ore:oc:n=€€:n
ore:oc:â=€€:â
ore:oc:‚N=€€:‚N
ore:oc:=€€:
ore:oc:‚«=€€:‚«
ore:oc:…j=€€:M
ore:oc:‚=€€:‚
ore:oc:…k=€€:O
ore:oc:‚D=€€:è
ore:oc:‚=€€:è|1
ore:oc:…l=€€:è|2
ore:oc:…m=€€:è|3
ore:oc:€³=€€:è|4
ore:oc:€†=€€:è|5
ore:oc:‚ =€€:è|6
ore:oc:€®=€€:è|7
ore:oc:€=€€:è|8
ore:oc:€…=€€:è|9
ore:oc:€=€€:è|10
ore:oc:Ù=€€:è|11
ore:oc:‚h=€€:è|12
ore:oc:€¦=€€:è|13
ore:oc:Œ=€€:è|14
ore:oc:=€€:è|15
ore:oc:=€€:è|16
ore:oc:…n=€€:è|17
ore:oc:…o=€€:è|18
ore:oc:‚)=€€:è|20
ore:oc:‚&=€€:è|21
ore:oc:‚²=€€:è|23
ore:oc:…p=€€:è|24
ore:oc:‚+=€€:è|26
ore:oc:…q=€€:è|27
ore:oc:°=€€:è|28
ore:oc:Û=€€:‚†
ore:oc:…r=€€:‚†|2
ore:oc:…s=€€:‚†|3
ore:oc:ƒ=€€:‚†|4
ore:oc:‚y=€€:‚y
ore:oc:…t=€€:‚°
ore:oc:…u=€€:‚†|5
ore:oc:€„=€€:‚
ore:oc:€ˆ=€€:‚|1
ore:oc:=€€:‚|2
ore:oc:‚!=€€:‚|3
ore:oc:‚=€€:‚|4
ore:oc:‚ =€€:‚|5
ore:oc:€º=€€:‚|6
ore:oc:‚#=€€:‚|7
ore:oc:€¿=€€:‚|8
ore:oc:‚$=€€:‚|9
ore:oc:€‰=€€:‚|10
ore:oc:‚=€€:‚|11
ore:oc:…v=€€:‚|13
ore:oc:…w=€€:‚|14
ore:oc:…x=€€:‚|15
ore:oc:…y=€€:‚|16
ore:oc:…z=€€:‚|17
ore:oc:…{=€€:‚|19
ore:oc:…|=€€:‚|20
ore:oc:‚"=€€:€|1
ore:oc:‚=€€:€|2
ore:oc:…}=€€:€|3
ore:oc:*=€€:€|4
ore:oc:…~=€€:€|5
ore:oc:€«=€€:€|6
ore:oc:=€€:€|7
ore:oc:…=€€:€|8
ore:oc:‚‚=€€:€|9
ore:oc:…€=€€:€|10
ore:oc:…=€€:€|11
ore:oc:…‚=€€:€|12
ore:oc:…ƒ=€€:€Ê
ore:oc:…„=€€:€Ê|1
ore:oc:……=€€:€Ê|2
ore:oc:…†=€€:€Ê|3
ore:oc:…‡=€€:€Ê|4
ore:oc:…ˆ=€€:€Ê|5
ore:oc:…‰=€€:€Ê|6
ore:oc:…Š=€€:€Ê|7
ore:oc:…‹=€€:€Ê|8
ore:oc:…Œ=€€:€Ê|9
ore:oc:…=€€:€Ê|10
ore:oc:…=€€:€Ê|11
ore:oc:…=€€:€Ê|12
ore:oc:…=€€:€Ê|13
ore:oc:…‘=€€:€Ê|14
ore:oc:…’=€€:€Ê|15
ore:oc:…“=€€:€Ê|16
ore:oc:…”=€€:€Ê|17
ore:oc:‚=€€:€Ê|18
ore:oc:…•=€€:€Ê|19
ore:oc:…–=€€:€Ê|20
ore:oc:…—=€€:€Ê|21
ore:oc:‚ˆ=€€:€Ê|22
ore:oc:…˜=€€:€Ê|23
ore:oc:‚=€€:€Ê|24
ore:oc:…™=€€:€Ê|25
ore:oc:…š=€€:€Ê|26
ore:oc:…›=€€:€Ê|27
ore:oc:‚±=€€:€Ê|28
ore:oc:…œ=€€:€Ê|29
ore:oc:mfu=€€:€Ê|30
ore:oc:…=€€:€Ê|31
ore:oc:„ =€€:q
ore:oc:„=€€:q|1
ore:oc:‚=€€:q|2
ore:oc:‚š=€€:q|3
ore:oc:‚=€€:q|4
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