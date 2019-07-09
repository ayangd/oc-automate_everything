local fs = require('filesystem')
local sh = require('shell')
local cd = sh.getWorkingDirectory()

local dict = {'minecraft','111121111','paper','filled','wool','dyeYellow','stained','hardened','clay','glass','pane','111111','blockGlassYellow','blockGlassColorless','double','plant','yellow','flower','concrete','powder','122223333','sand','gravel','carpet','111222','plankWood','banner','111111020','stickWood','writable','book','dyeBlack','feather','wooden','sword','shovel','pressure','plate','pickaxe','111020020','110202','door','planks','button','111202','dyeWhite','blockGlassWhite','wheat','block','tripwire','hook','ingotIron','trapped','chest','chestWood','trapdoor','torch','coal','minecart','121212121','gunpowder','sugar','sugarcane','1111','string','stonebrick','stone','cobblestone','stairs','100110111','slab','brick','sticky','piston','slimeball','stick','spruce','fence','gate','121121','boat','101111','spectral','arrow','010121010','dustGlowstone','speckled','melon','gold','nugget','snow','layer','snowball','sandstone','slime','ball','111111111','sign','shield','121111010','shears','0110','lantern','121222121','gemPrismarine','dustPrismarine','repeater','121333','redstone','dustRedstone','lamp','glowstone','dyeRed','blockGlassRed','slab2','nether','1221','netherbrick','wart','beetroot','rail','101121101','rabbit','stew','010234050','cooked','carrot','baked','potato','mushroom','bowl','brown','quartz','purpur','pillar','chorus','fruit','popped','dyePurple','blockGlassPurple','purple','shulker','shell','dyeBlue','pumpkin','seeds','prismarine','stoneGranite','stoneDiorite','stoneAndesite','111232242','dyePink','blockGlassPink','painting','dyeOrange','blockGlassOrange','observer','111223111','noteblock','vine','wall','mossy','compass','magma','cream','blaze','dyeMagenta','blockGlassMagenta','1223','dyeLime','blockGlassLime','dyeGreen','light','weighted','ingotGold','dyeLightGray','blockGlassLightGray','dyeGray','dyeLightBlue','blockGlassLightBlue','lever','leather','leggings','111101101','helmet','111101','chestplate','101111111','boots','101101','hide','lead','110120001','lapis','ladder','101111101','jungle','jukebox','gemDiamond','item','frame','iron','ingot','bars','hopper','101121010','heavy','blockGlassGreen','blockGlassGray','golden','101121131','apple','bottle','101010','furnace','111101111','flint','steel','fishing','001012102','fire','charge','fermented','spider','ender','enderpearl','obsidian','crystal','111121131','ghast','tear','bricks','enchanting','table','010232333','emerald','gemEmerald','dropper','111101121','dispenser','diamond','detector','daylight','111222333','dark','log2','dyeCyan','blockGlassCyan','crafting','cookie','comparator','010121333','dirt','clock','cauldron','101101111','1002','cake','111232444','milk','bucket','dyeBrown','blockGlassBrown','brewing','stand','010222','bread','012102012','bookshelf','111222111','1112','bone','blockGlassBlue','blockGlassBlack','birch','soup','beacon','111121333','netherStar','armor','111010121','anvil','111020222','activator','121131121','acacia','extrautils2','snowglobe','12345678','blockGlass','treeSapling','doorWood','logWood','grass','pearl','wateringcan','1000','100121010','unstableingots','nuggetIron','itembuilderswand','001020200','decorativesolidwood','itemdestructionwand','011021200','soundmuffler','stairWood','trashcan','111232222','trashcanfluid','trashcanenergy','blockRedstone','angelblock','010232','passivegenerator','111232','gemLapis','decorativesolid','ingredients','111232111','111023111','121131141','121343151','star','redstoneclock','121232121','compressedcobblestone','compresseddirt','compressedsand','compressedgravel','compressednetherrack','netherrack','glasscutter','001021100','endershard','121121010','sickle','wood','011001211','resonator','121343333','blockCoal','suncrystal','12222','screen','1212','bricksStone','ingotUnstable','simpledecorative','magicapple','goldenlasso','angelring','nuggetGold','powermanager','012222','bagofholding','decorativeglass','ineffableglass','pipe','playerchest','wrench','012023200','boomerang','010101','written','contract','1234','filter','filterfluids','grocket','121343','010232010','indexer','indexerremote','crafter','scanner','miner','user','klein','drum','ingotDemonicMetal','machine','teleporter','powertransmitter','powerbattery','quarryproxy','121131444','quarry','magic','globe','spike','010121232','compressed1xCobblestone','blockIron','blockGold','blockDiamond','redstonelantern','121232141','largishchest','minichest','rainbowgenerator','trowel','001020300','biomemarker','terraformer','121343121','101232020','lava','water','mycelium','trashchest','opinium','experience','elytra','lawsword','flattransfernode','analogcrafter','compoundbow','012302012','fireaxe','interactionproxy','luxsaber','ironwood','storagedrawers','upgrade','void','template','drawerBasic','storage','status','121232424','stack','conversion','tape','quantify','drawer','personal','name','120203','shroud','keybutton','framingtable','drawerTrim','customtrim','customdrawers','slabWood','111020111','controllerslave','111232141','controller','compdrawers','trim','local','isRobotAcquired','robot','xpcall','require','debug','traceback','then','print','load','module','return','stringlib','resproc','rawdb','craftingdb','inventory','type','Command','class','start','usage','func','function','setmetatable','index','running','true','slot','changed','false','wrongUsage','command','Invalid','arguments','commands','help','else','such','cmdlist','pairs','insert','sort','printbuffer','ipairs','pagedPrint','exit','stdout','write','Changes','been','made','Would','like','save','before','exiting','userInput','stdin','read','lower','elseif','reload','Resources','loaded','successfully','rescan','scan','Inventory','scanned','saved','analyze','shaped','shapeless','ignoreMetadata','processor','processors','shape','Check','result','scanSlot','select','throw','Crafting','obstructed','Scan','pattern','craftingArea','scanPattern','slotScan','ignoreDamage','damage','Shrink','Craft','component','craft','width','height','scanCraftingArea','show','peek','look','lookup','Nothing','getmetatable','keep','Item','discard','Slot','cleared','remove','processing','Removed','removed','list','List','tostring','sortedCraftingPairs','traceraw','itemAdded','itemAvailable','trace','isCraftable','Crafted','failed','enough','items','clear','clearCraftingArea','Cleared','while','craftmgr','commandstr','split','commandname','unpack','unrecognized','PREINITIALIZATION','CLIENT','INFO','Current','loaders','after','merging','preinit','Loading','scripts','loader','with','names','SIDE','Skipping','file','crafttweaker','recipeStealer','currently','loading','different','Completed','script','INITIALIZATION','CraftTweaker','Building','registry','Successfully','built','recipeevent','Script','Stealing','recipes','fenceWood','fenceGateWood','sapling','treeLeaves','leaves','leaves2','oreGold','oreIron','oreLapis','oreDiamond','oreRedstone','oreEmerald','oreQuartz','oreCoal','ingotBrick','ingotBrickNether','gemQuartz','shard','crystals','dust','blockLapis','blockEmerald','blockQuartz','cropWheat','cropPotato','cropCarrot','cropNetherWart','reeds','blockCactus','cactus','record','blocks','chirp','mall','mellohi','stal','strad','ward','wait','endstone','workbench','blockSlime','blockPrismarine','blockPrismarineBrick','blockPrismarineDark','stoneGranitePolished','stoneDioritePolished','stoneAndesitePolished','paneGlassColorless','paneGlass','chestEnder','chestTrapped','paneGlassBlack','paneGlassRed','paneGlassGreen','paneGlassBrown','paneGlassBlue','paneGlassPurple','paneGlassCyan','paneGlassLightGray','paneGlassGray','paneGlassPink','paneGlassLime','paneGlassYellow','paneGlassLightBlue','paneGlassMagenta','paneGlassOrange','paneGlassWhite','nuggetUnstable','compressed2xCobblestone','compressed3xCobblestone','compressed4xCobblestone','compressed5xCobblestone','compressed6xCobblestone','compressed7xCobblestone','compressed8xCobblestone','compressed1xDirt','compressed2xDirt','compressed3xDirt','compressed4xDirt','compressed1xSand','compressed2xSand','compressed1xGravel','compressed2xGravel','compressed1xNetherrack','compressed2xNetherrack','compressed3xNetherrack','compressed4xNetherrack','compressed5xNetherrack','compressed6xNetherrack','gemRedstone','gearRedstone','eyeofredstone','dustLunar','coalPowered','gemMoon','xuUpgradeSpeed','xuUpgradeStack','xuUpgradeMining','xuUpgradeBlank','dropofevil','ingotEnchantedMetal','xuRedstoneCoil','xuUpgradeSpeedEnchanted','ingotEvilMetal','blockEnchantedMetal','blockDemonicMetal','blockEvilMetal','doorIron','blockMagicalWood','slabStone','dustIron','dustGold','oreCopper','dustCopper','dustTin','ingotCopper','oreTin','ingotTin','oreLead','dustLead','dustSilver','ingotLead','oreSilver','ingotSilver','oreNickel','dustNickel','dustPlatinum','ingotNickel','orePlatinum','ingotPlatinum','craftingPiston','torchRedstoneActive','materialEnderPearl','wlanCard','opencomputers','card','chipDiamond','material','stoneEndstone','basicdrawers','addShapeless','armordye','null','bookcloning','mapcloning','addShaped','mapextending','fireworks','repairitem','tippedarrow','bannerduplicate','banneraddpattern','shielddecoration','shulkerboxcoloring','from','sunflower','dandelion','white','smooth','tulip','rose','bush','poppy','polished','granite','diorite','andesite','pink','bonemeal','peony','orange','magenta','lilac','allium','lime','gray','oxeye','daisy','azure','bluet','blue','orchid','lazuli','nuggets','green','cyan','coarse','chiseled','meal','black','watering','unstable','stable','builders','wand','destruction','sound','muffler','diagonal','trash','fluid','energy','angel','mill','solar','lunar','wind','manual','dragon','compressed','uncompress','cutter','shortcut','borderstone','stonecross','stoneslab','sandy','truchet','gear','moon','speed','mining','demon','enchanted','super','evil','lasso','chicken','ring','chickenring','withTag','Animal','Place','byte','squid','convert','power','manager','holding','border','diamonds','ineffable','normal','reverse','transfer','pipes','player','chunk','chunkloader','ForgeData','Contracted','villager','fluids','node','retrieve','remote','flash','4096','65536','10000','base','Type','enchanter','crusher','generator','survivalist','survival','culinary','porkchop','beef','mutton','fish','potion','netherstar','skull','overclock','dragonsbreath','death','rotten','flesh','enchant','transmitter','battery','proxy','largist','mini','rainbow','bottom','biome','marker','antenna','heater','cooler','humidifier','dehumidifier','absorbtion','infuser','dehostilifier','kikoku','flatnode','analog','compound','porcupine','saber','burnt','level2','level1','combined','packing','concealment','framing','framed','half4','half2','full4','full2','full1','slave','compacting','fulldrawers1','fulldrawers2','fulldrawers4','halfdrawers2','halfdrawers4','Stolen','240ms','POSTINITIALIZATION','Removing','various','outputs','AVAILABLE','Fixed','RecipeBook','filesystem','args','path','resolve','exists','File','found','dofile','open','close','Crash','collected','attempt','concatenate','value','field','metamethod','concat','tail','calls','upvalue','foreach','craftingConvert','main','global','process','Format','output','quantity','recipe','array','metadata','121212','11111111','11122','1111111','case2','1213','keyboard','111123','1112324','screen1','121234121','allMatch','gmatch','notContains','find','bracketContent','bracket','stripped','gsub','bracketLevel','indexStart','childs','arrRange','tableConcat','next','useful','Normalize','converting','format','database','iNormalize','iname','match','check','more','than','fits','iNormExt','tableIndex','inTable','conditionalFilter','onlyDamaged','onlyWithTag','onlyStack','liquid','srec','Shapeless','shapedstr','itemc','itemAmount','tonumber','itemstr','itemArrangement','oredictConvert','orename','oredef','craftingdbf','oredictdbf','oredict','failedf','crafttweakerlog','craftingCount','oredictCount','failedCount','converted','160D','oredictdb','fails','Wrote','lines','parsed','itemarray','ingredient','ingredientarray','Class','Meta','Init','craftingdbpath','dimension','craftingParams','size','parse','npat','itemoutput','itemoutputq','itemshape','itemUsed','itemsNeeded','itemPattern','indexDamage','allitems','Functions','error','compareDamage','first','Override','original','otype','Missing','invctrl','slots','math','floor','inventorySize','getStackInInternalSlot','updateSlot','Scanning','Done','isInExcludedSlot','excludedSlots','isInCraftingArea','slotDest','amount','transferTo','itemSlots','count','pull','ignoreCraftingArea','destSlot','itemTypes','pulled','break','srcSlot','Fill','curSlot','maxSize','moveSize','Lastly','fill','empty','isAvailable','getinventorySize','isUpAvailable','getUpinventorySize','request','TODO','external','send','deposit','front','specific','selected','transferOut','exSlot','dropIntoSlot','transferIn','suckFromSlot','itemcompound','oredictdbpath','sorted','splitted','rawdbpath','rawCount','package','tablelib','ResProc','getItemRecipe','object','addItem','createdItem','tryTakeItem','minus','processItem','ceil','satisfiable','externalItem','Merge','allItems','addAll','Unsatisfied','unsatisfiedItems','Drain','populate','unsatisfied','until','unsatisfiedItem','popSingle','craftings','unsatisfiedCraftings','unsatisfiedCrafting','availability','allAvailable','this','singleItem','event','delim','screenWidth','screenHeight','getResolution','lineCount','brokeLines','stay','brokenTableBuffer','down','clone','Safety','Reduces','headache','Attempting','thing','other','newtable','cloneAll','splitter','make','needs','anything','into','beside','zero','itemsneeded','self','Metamethods','buff','Ingredient','content','Error','parsing','Ingredients','doesn','comparison','operation','IngredientArray','Empty','splits','expecting','argument','construction','compareTo','compare','Deprecated','deprecatrace','errors','here','Craftingdb','will','freak','number','Incompatible','scaling','completename','bnot','ItemArray','hasDamage','hasAll','hasAllDamage','removeDamage','unresolvedItem','incompatible','types','added','ItemCompound','itemCompoundString','itemCompound','OreDict','iComp','create'}

local files = {['crafting.db']= [==[€€:map 1 sd 33 € €€:€‚ €€:€ƒ_map|*
€€:€„|4 1 sl 00 12 ore:€… €€:€„
€€:€†_€‡_€ˆ|4 8 sd 33 € €€:€‡_€ˆ ore:€…
€€:€†_€‰_€Š|4 16 sd 32 €‹ ore:€Œ
€€:€†_€‰|4 8 sd 33 € ore:€ ore:€…
€€:dye|11 2 sl 00 1 €€:€_€
€€:dye|11 1 sl 00 1 €€:€_€‘
€€:€’_€“|4 8 sl 00 €” ore:€… €€:€• €€:€–
€€:€—|4 3 sd 21 11 €€:€„|4
€€:bed|4 1 sl 00 12 €€:bed ore:€…
€€:bed|4 1 sd 32 €˜ €€:€„|4 ore:€™
€€:€š|11 1 sd 33 €› €€:€„|4 ore:€œ
€€:€_€ 1 sl 00 123 €€:€ ore:€Ÿ ore:€ 
€€:€¡_€¢ 1 sd 13 112 ore:€™ ore:€œ
€€:€¡_€£ 1 sd 13 122 ore:€™ ore:€œ
€€:€¡_€¤_€¥ 1 sd 21 11 ore:€™
€€:€¡_€¦ 1 sd 33 €§ ore:€™ ore:€œ
€€:€¡_hoe 1 sd 23 €¨ ore:€™ ore:€œ
€€:€¡_€© 3 sd 23 €‹ €€:€ª
€€:€¡_€« 1 sd 11 1 ore:€™
€€:€¡_axe 1 sd 23 €¬ ore:€™ ore:€œ
€€:€†_€‡_€ˆ 8 sd 33 € €€:€‡_€ˆ ore:€­
€€:€†_€‰_€Š 16 sd 32 €‹ ore:€®
€€:€†_€‰ 8 sd 33 € ore:€ ore:€­
€€:€’_€“ 8 sl 00 €” ore:€­ €€:€• €€:€–
€€:€— 3 sd 21 11 €€:€„
€€:bed 1 sd 32 €˜ €€:€„ ore:€™
€€:€š|15 1 sd 33 €› €€:€„ ore:€œ
€€:€¯ 9 sd 11 1 €€:hay_€°
€€:€±_€² 2 sd 13 123 ore:€³ ore:€œ ore:€™
€€:€´_€µ 1 sl 00 12 ore:€¶ €€:€±_€²
€€:€· 2 sd 32 €‹ ore:€™
€€:€¸ 4 sd 12 12 €€:€¹,€€:€¹|1 ore:€œ
€€:tnt_€º 1 sd 12 12 €€:tnt €€:€º
€€:tnt 1 sd 33 €» ore:€¼ €€:€•,€€:€•|1
€€:€½ 1 sd 11 1 ore:€¾
€€:€„ 1 sd 22 €¿ ore:€À
€€:€Á 4 sd 22 €¿ €€:€Â
€€:€Â_€¢ 1 sd 13 112 ore:€Ã ore:€œ
€€:€Â_€Ä 4 sd 33 €Å €€:€Ã
€€:€Â_€Æ 6 sd 31 111 €€:€Â
€€:€Â_€£ 1 sd 13 122 ore:€Ã ore:€œ
€€:€Â_€¤_€¥ 1 sd 21 11 ore:€Â
€€:€Â_€¦ 1 sd 33 €§ ore:€Ã ore:€œ
€€:€Â_hoe 1 sd 23 €¨ ore:€Ã ore:€œ
€€:€Â_€« 1 sd 11 1 ore:€Â
€€:€Â_€Ç_€Ä 4 sd 33 €Å €€:€Á,€€:€Á|1,€€:€Á|2,€€:€Á|3
€€:€Â_€Æ|5 6 sd 31 111 €€:€Á,€€:€Á|1,€€:€Á|2,€€:€Á|3
€€:€Â_axe 1 sd 23 €¬ ore:€Ã ore:€œ
€€:€È_€É 1 sd 12 12 ore:€Ê €€:€É
€€:€Ë 4 sd 12 11 ore:€™
€€:€¡_€Æ|1 6 sd 31 111 €€:€ª|1
€€:€Ì_€Ä 4 sd 33 €Å €€:€ª|1
€€:€ª|1 4 sd 11 1 €€:log|1
€€:€Ì_€Í_€Î 1 sd 32 €Ï €€:€Ë €€:€ª|1
€€:€Ì_€Í 3 sd 32 €Ï €€:€ª|1 €€:€Ë
€€:€Ì_€© 3 sd 23 €‹ €€:€ª|1
€€:€Ì_€Ğ 1 sd 32 €Ñ €€:€ª|1
€€:€Ò_€Ó 2 sd 33 €Ô ore:€Õ €€:€Ó
€€:€Ö_€× 1 sd 33 € €€:€Ø_€Ù €€:€×
€€:€Ú_€Û 6 sd 31 111 €€:€Ú
€€:€Ú 1 sd 22 €¿ €€:€Ü
€€:€İ|2 4 sd 22 €¿ €€:€İ
€€:red_€İ|2 4 sd 22 €¿ €€:red_€İ
€€:€Ş_€ß 9 sd 11 1 €€:€Ş
€€:€Ş 1 sd 33 €à ore:€Ê
€€:€á 3 sd 33 €› ore:€™ ore:€œ
€€:€â 1 sd 33 €ã ore:€™ ore:€³
€€:€ä 1 sd 22 €å ore:€³
€€:sea_€æ 1 sd 33 €ç ore:€è ore:€é
€€:€İ_€Ä 4 sd 33 €Å €€:€İ,€€:€İ|1,€€:€İ|2
€€:€Â_€Æ|1 6 sd 31 111 €€:€İ,€€:€İ|1,€€:€İ|2
€€:€İ 1 sd 22 €¿ €€:€•
€€:€ê 1 sd 32 €ë €€:€ì_€¸ ore:€í ore:€Â
€€:€ì_€¸ 1 sd 12 12 ore:€í ore:€œ
€€:€ì_€î 1 sd 33 €Ô ore:€í ore:€ï
€€:€ì_€° 1 sd 33 €à ore:€í
€€:€ì 9 sd 11 1 €€:€ì_€°
€€:€„|14 1 sl 00 12 ore:€ğ €€:€„
€€:€†_€‡_€ˆ|14 8 sd 33 € €€:€‡_€ˆ ore:€ğ
€€:€†_€‰_€Š|14 16 sd 32 €‹ ore:€ñ
€€:€†_€‰|14 8 sd 33 € ore:€ ore:€ğ
€€:red_€İ_€Ä 4 sd 33 €Å €€:red_€İ,€€:red_€İ|1,€€:red_€İ|2
€€:€Â_€ò 6 sd 31 111 €€:red_€İ,€€:red_€İ|1,€€:red_€İ|2
€€:red_€İ 1 sd 22 €¿ €€:€•|1
€€:red_€ó_€Ç 1 sd 22 €ô €€:€õ €€:€ó_€ö
€€:dye|1 1 sl 00 1 €€:red_€‘|4
€€:dye|1 2 sl 00 1 €€:€_€|4
€€:dye|1 1 sl 00 1 €€:red_€‘
€€:dye|1 1 sl 00 1 €€:€÷
€€:€’_€“|14 8 sl 00 €” ore:€ğ €€:€• €€:€–
€€:€—|14 3 sd 21 11 €€:€„|14
€€:bed|14 1 sl 00 12 €€:bed ore:€ğ
€€:bed|14 1 sd 32 €˜ €€:€„|14 ore:€™
€€:€š|1 1 sd 33 €› €€:€„|14 ore:€œ
€€:€ø 16 sd 33 €ù ore:€³ ore:€œ
€€:€ú_€û 1 sd 33 €ü €€:€ı_€ú €€:€ş €€:€ÿ_  €€:red_ €€:
€€:€ú_€û 1 sd 33 €ü €€:€ı_€ú €€:€ş €€:€ÿ_  €€:_ €€:
€€:_€Ä 4 sd 33 €Å €€:_€°,€€:_€°|1,€€:_€°|2
€€:€Â_€Æ|7 6 sd 31 111 €€:_€°,€€:_€°|1,€€:_€°|2
€€:_€° 1 sd 22 €¿ €€:
€€:_€Ä 4 sd 33 €Å €€:_€°
€€:_€Æ 6 sd 31 111 €€:_€°
€€:_ 1 sd 12 11 €€:_€Æ
€€:_€° 4 sd 22 €¿ €€:__	
€€:€„|10 1 sl 00 12 ore:
 €€:€„
€€:€†_€‡_€ˆ|10 8 sd 33 € €€:€‡_€ˆ ore:

€€:€†_€‰_€Š|10 16 sd 32 €‹ ore:
€€:€†_€‰|10 8 sd 33 € ore:€ ore:

€€:__box 1 sd 13 121 €€:_ ore:€¶
€€:dye|5 2 sl 00 12 ore: ore:€ğ
€€:€’_€“|10 8 sl 00 €” ore:
 €€:€• €€:€–
€€:€—|10 3 sd 21 11 €€:€„|10
€€:bed|10 1 sl 00 12 €€:bed ore:

€€:bed|10 1 sd 32 €˜ €€:€„|10 ore:€™
€€:€š|5 1 sd 33 €› €€:€„|10 ore:€œ
€€:_ 4 sd 11 1 €€:
€€:_pie 1 sl 00 123 €€: €€:€½ ore:egg
€€:|1 1 sd 33 €à ore:€è
€€: 1 sd 22 €¿ ore:€è
€€:€Â|2 4 sd 22 €¿ ore:
€€:€Â|4 4 sd 22 €¿ ore:
€€:€Â|6 4 sd 22 €¿ ore:
€€:€É 1 sd 33  ore:€™ ore:€Ã ore:€³ ore:€í
€€:€„|6 1 sl 00 12 ore: €€:€„
€€:€†_€‡_€ˆ|6 8 sd 33 € €€:€‡_€ˆ ore:
€€:€†_€‰_€Š|6 16 sd 32 €‹ ore:
€€:€†_€‰|6 8 sd 33 € ore:€ ore:
€€:dye|9 2 sl 00 12 ore:€ğ ore:€­
€€:dye|9 1 sl 00 1 €€:red_€‘|7
€€:dye|9 2 sl 00 1 €€:€_€|5
€€:€’_€“|6 8 sl 00 €” ore: €€:€• €€:€–
€€:€—|6 3 sd 21 11 €€:€„|6
€€:bed|6 1 sl 00 12 €€:bed ore:
€€:bed|6 1 sd 32 €˜ €€:€„|6 ore:€™
€€:€š|9 1 sd 33 €› €€:€„|6 ore:€œ
€€:_€°|2 2 sd 12 11 €€:_€°
€€:€‚ 3 sd 31 111 ore:€¾
€€: 1 sd 33 € ore:€œ €€:€„,€€:€„|1,€€:€„|2,€€:€„|3,€€:€„|4,€€:€„|5,€€:€„|6,€€:€„|7,€€:€„|8,€€:€„|9,€€:€„|10,€€:€„|11,€€:€„|12,€€:€„|13,€€:€„|14,€€:€„|15
€€:€„|1 1 sl 00 12 ore: €€:€„
€€:€†_€‡_€ˆ|1 8 sd 33 € €€:€‡_€ˆ ore:
€€:€†_€‰_€Š|1 16 sd 32 €‹ ore:
€€:€†_€‰|1 8 sd 33 € ore:€ ore:
€€:dye|14 2 sl 00 12 ore:€ğ ore:€…
€€:dye|14 1 sl 00 1 €€:red_€‘|5
€€:€’_€“|1 8 sl 00 €” ore: €€:€• €€:€–
€€:€—|1 3 sd 21 11 €€:€„|1
€€:bed|1 1 sl 00 12 €€:bed ore:
€€:bed|1 1 sd 32 €˜ €€:€„|1 ore:€™
€€:€š|14 1 sd 33 €› €€:€„|1 ore:€œ
€€: 1 sd 33  ore:€Ã ore:€í €€:
€€:€¡_€Æ 6 sd 31 111 €€:€ª
€€:oak_€Ä 4 sd 33 €Å €€:€ª
€€:€ª 4 sd 11 1 €€:log
€€: 1 sd 33 € ore:€™ ore:€í
€€:€ó_€ö_€° 1 sd 33 €à €€:€ó_€ö
€€:€ó_€Ç_€Ä 4 sd 33 €Å €€:€ó_€Ç
€€:€Â_€Æ|6 6 sd 31 111 €€:€ó_€Ç
€€:€ó_€Ç_€Í 6 sd 32 €‹ €€:€ó_€Ç
€€:€ó_€Ç 1 sd 22 €¿ €€:€õ
€€:_€û 1 sl 00 123 €€:_ €€:red_ €€:
€€:€Á|1 1 sl 00 12 €€:€Á €€:
€€:€Ã_ |1 6 sd 32 €‹ €€:!_€Ã
€€:!_€Ã 1 sl 00 12 ore:€Ã €€:
€€:€º 1 sd 32 €Ñ ore:€³
€€:€×_ 1 sd 11 1 €€:€×
€€:€×_€° 1 sd 33 €à €€:€×
€€:map 1 sd 33 € ore:€‚ €€:"
€€:#_$ 1 sl 00 12 €€:%_€“ ore:€Ê
€€:# 1 sd 22 €¿ €€:#_$
€€:€„|2 1 sl 00 12 ore:& €€:€„
€€:€†_€‡_€ˆ|2 8 sd 33 € €€:€‡_€ˆ ore:&
€€:€†_€‰_€Š|2 16 sd 32 €‹ ore:'
€€:€†_€‰|2 8 sd 33 € ore:€ ore:&
€€:dye|13 2 sl 00 12 ore:
 ore:
€€:dye|13 2 sl 00 1 €€:€_€|1
€€:dye|13 3 sl 00 123 ore: ore:€ğ ore:
€€:dye|13 4 sl 00 ( ore: ore:€ğ ore:€­
€€:dye|13 1 sl 00 1 €€:red_€‘|2
€€:€’_€“|2 8 sl 00 €” ore:& €€:€• €€:€–
€€:€—|2 3 sd 21 11 €€:€„|2
€€:bed|2 1 sl 00 12 €€:bed ore:&
€€:bed|2 1 sd 32 €˜ €€:€„|2 ore:€™
€€:€š|13 1 sd 33 €› €€:€„|2 ore:€œ
€€:lit_ 1 sd 12 12 €€: €€:€¸
€€:€„|5 1 sl 00 12 ore:) €€:€„
€€:€†_€‡_€ˆ|5 8 sd 33 € €€:€‡_€ˆ ore:)
€€:€†_€‰_€Š|5 16 sd 32 €‹ ore:*
€€:€†_€‰|5 8 sd 33 € ore:€ ore:)
€€:dye|10 2 sl 00 12 ore:+ ore:€­
€€:€’_€“|5 8 sl 00 €” ore:) €€:€• €€:€–
€€:€—|5 3 sd 21 11 €€:€„|5
€€:bed|5 1 sl 00 12 €€:bed ore:)
€€:bed|5 1 sd 32 €˜ €€:€„|5 ore:€™
€€:€š|10 1 sd 33 €› €€:€„|5 ore:€œ
€€:,_-_€¤_€¥ 1 sd 21 11 ore:.
€€:€„|8 1 sl 00 12 ore:/ €€:€„
€€:€†_€‡_€ˆ|8 8 sd 33 € €€:€‡_€ˆ ore:/
€€:€†_€‰_€Š|8 16 sd 32 €‹ ore:0
€€:€†_€‰|8 8 sd 33 € ore:€ ore:/
€€:dye|7 1 sl 00 1 €€:red_€‘|6
€€:dye|7 1 sl 00 1 €€:red_€‘|8
€€:dye|7 3 sl 00 122 ore:€Ÿ ore:€­
€€:dye|7 2 sl 00 12 ore:1 ore:€­
€€:dye|7 1 sl 00 1 €€:red_€‘|3
€€:€’_€“|8 8 sl 00 €” ore:/ €€:€• €€:€–
€€:€—|8 3 sd 21 11 €€:€„|8
€€:bed|8 1 sl 00 12 €€:bed ore:/
€€:bed|8 1 sd 32 €˜ €€:€„|8 ore:€™
€€:€š|7 1 sd 33 €› €€:€„|8 ore:€œ
€€:€„|3 1 sl 00 12 ore:2 €€:€„
€€:€†_€‡_€ˆ|3 8 sd 33 € €€:€‡_€ˆ ore:2
€€:€†_€‰_€Š|3 16 sd 32 €‹ ore:3
€€:€†_€‰|3 8 sd 33 € ore:€ ore:2
€€:dye|12 2 sl 00 12 ore: ore:€­
€€:dye|12 1 sl 00 1 €€:red_€‘|1
€€:€’_€“|3 8 sl 00 €” ore:2 €€:€• €€:€–
€€:€—|3 3 sd 21 11 €€:€„|3
€€:bed|3 1 sl 00 12 €€:bed ore:2
€€:bed|3 1 sd 32 €˜ €€:€„|3 ore:€™
€€:€š|12 1 sd 33 €› €€:€„|3 ore:€œ
€€:4 1 sd 12 12 ore:€œ ore:€Ã
€€:5_6 1 sd 33 7 ore:5
€€:5_8 1 sd 32 9 ore:5
€€:5_: 1 sd 33 ; ore:5
€€:5_< 1 sd 32 = ore:5
€€:5 1 sd 22 €¿ €€:€ú_>
€€:? 2 sd 33 @ ore:€À ore:€Ê
€€:dye|4 9 sd 11 1 €€:A_€°
€€:A_€° 1 sd 33 €à €€:dye|4
€€:B 3 sd 33 C ore:€œ
€€:€¡_€Æ|3 6 sd 31 111 €€:€ª|3
€€:D_€Ä 4 sd 33 €Å €€:€ª|3
€€:€ª|3 4 sd 11 1 €€:log|3
€€:D_€Í_€Î 1 sd 32 €Ï €€:€Ë €€:€ª|3
€€:D_€Í 3 sd 32 €Ï €€:€ª|3 €€:€Ë
€€:D_€© 3 sd 23 €‹ €€:€ª|3
€€:D_€Ğ 1 sd 32 €Ñ €€:€ª|3
€€:E 1 sd 33 € ore:€™ ore:F
€€:G_H 1 sd 33 € ore:€œ ore:5
€€:I_€· 1 sd 22 €¿ ore:€³
€€:I_€¢ 1 sd 13 112 ore:€³ ore:€œ
€€:I_€£ 1 sd 13 122 ore:€³ ore:€œ
€€:I_€¦ 1 sd 33 €§ ore:€³ ore:€œ
€€:I_€Ù 9 sd 11 1 ore:€³
€€:I_6 1 sd 33 7 ore:€³
€€:I_J 1 sd 33 €à €€:I_€Ù
€€:I_J 9 sd 11 1 €€:I_€°
€€:I_hoe 1 sd 23 €¨ ore:€³ ore:€œ
€€:I_8 1 sd 32 9 ore:€³
€€:I_€© 3 sd 23 €‹ ore:€³
€€:I_: 1 sd 33 ; ore:€³
€€:I_< 1 sd 32 = ore:€³
€€:I_€° 1 sd 33 €à ore:€³
€€:I_K 16 sd 32 €‹ ore:€³
€€:I_axe 1 sd 23 €¬ ore:€³ ore:€œ
€€:L_€º 1 sd 12 12 €€:L €€:€º
€€:L 1 sd 33 M ore:€³ ore:€¶
€€:N_-_€¤_€¥ 1 sd 21 11 ore:€³
€€:hay_€° 1 sd 33 €à €€:€¯
€€:€„|13 1 sl 00 12 ore:+ €€:€„
€€:€†_€‡_€ˆ|13 8 sd 33 € €€:€‡_€ˆ ore:+
€€:€†_€‰_€Š|13 16 sd 32 €‹ ore:O
€€:€†_€‰|13 8 sd 33 € ore:€ ore:+
€€:€’_€“|13 8 sl 00 €” ore:+ €€:€• €€:€–
€€:€—|13 3 sd 21 11 €€:€„|13
€€:bed|13 1 sl 00 12 €€:bed ore:+
€€:bed|13 1 sd 32 €˜ €€:€„|13 ore:€™
€€:€š|2 1 sd 33 €› €€:€„|13 ore:€œ
€€:€„|7 1 sl 00 12 ore:1 €€:€„
€€:€†_€‡_€ˆ|7 8 sd 33 € €€:€‡_€ˆ ore:1
€€:€†_€‰_€Š|7 16 sd 32 €‹ ore:P
€€:€†_€‰|7 8 sd 33 € ore:€ ore:1
€€:dye|8 2 sl 00 12 ore:€Ÿ ore:€­
€€:€’_€“|7 8 sl 00 €” ore:1 €€:€• €€:€–
€€:€—|7 3 sd 21 11 €€:€„|7
€€:bed|7 1 sl 00 12 €€:bed ore:1
€€:bed|7 1 sd 32 €˜ €€:€„|7 ore:€™
€€:€š|8 1 sd 33 €› €€:€„|7 ore:€œ
€€:€Â|1 1 sl 00 12 ore: €€:
€€:Q_€¢ 1 sd 13 112 ore:. ore:€œ
€€:Q_€£ 1 sd 13 122 ore:. ore:€œ
€€:Q_€ø 6 sd 33 R ore:. ore:€œ ore:€í
€€:Q_€¦ 1 sd 33 €§ ore:. ore:€œ
€€:Q_6 1 sd 33 7 ore:.
€€:Q_hoe 1 sd 23 €¨ ore:. ore:€œ
€€:Q_8 1 sd 32 9 ore:.
€€:Q_: 1 sd 33 ; ore:.
€€:Q_€ş 1 sd 33 € €€:€Ø_€Ù €€:€ş
€€:Q_< 1 sd 32 = ore:.
€€:Q_axe 1 sd 23 €¬ ore:. ore:€œ
€€:Q_S 1 sd 33 € ore:. €€:S
€€:€Ø_€Ù 9 sd 11 1 ore:.
€€:€Ø_J 1 sd 33 €à €€:€Ø_€Ù
€€:€Ø_J 9 sd 11 1 €€:€Ø_€°
€€:€Ø_€° 1 sd 33 €à ore:.
€€:€ï 1 sd 22 €¿ ore:€Õ
€€:€‰_€Š 16 sd 32 €‹ €€:€‰
€€:€‰_T 3 sd 32 U ore:€
€€:V_€º 1 sd 12 12 €€:V €€:€º
€€:V 1 sd 33 W ore:€Ã
€€:€‘_pot 1 sd 32 U €€:€Ç
€€:X_and_Y 1 sl 00 12 ore:€³ €€:X
€€:Z_rod 1 sd 33 [ ore:€œ ore:€À
€€:\_] 3 sl 00 123 ore:€¼ €€:%_€“ €€:€¹,€€:€¹|1
€€:^___eye 1 sl 00 123 €€:__eye €€:_ €€:€½
€€:€Í_€Î 1 sd 32 €Ï €€:€Ë €€:€ª
€€:€Í 3 sd 32 €Ï €€:€ª €€:€Ë
€€:`_eye 1 sl 00 12 ore:a €€:%_€“
€€:`_€µ 1 sd 33 € €€:b €€:`_eye
€€:end_rod 4 sd 12 12 €€:%_rod €€:__	
€€:end_c 1 sd 33 d ore:€ €€:`_eye €€:e_f
€€:end_g 4 sd 22 €¿ €€:end_€Â
€€:h_i 1 sd 33 j €€:€ ore:F €€:b
€€:k_€° 1 sd 33 €à ore:l
€€:k 9 sd 11 1 €€:k_€°
€€:m 1 sd 33 n ore:€Ã ore:€í
€€:o 1 sd 33 d ore:€Ã €€:bow ore:€í
€€:€Â|3 2 sd 22 €ô ore:€Ã €€:
€€:p_€¢ 1 sd 13 112 ore:F ore:€œ
€€:p_€£ 1 sd 13 122 ore:F ore:€œ
€€:p_€¦ 1 sd 33 €§ ore:F ore:€œ
€€:p_6 1 sd 33 7 ore:F
€€:p_hoe 1 sd 23 €¨ ore:F ore:€œ
€€:p_8 1 sd 32 9 ore:F
€€:p_: 1 sd 33 ; ore:F
€€:p_< 1 sd 32 = ore:F
€€:p_€° 1 sd 33 €à ore:F
€€:p_axe 1 sd 23 €¬ ore:F ore:€œ
€€:p 9 sd 11 1 €€:p_€°
€€:q_€ø 6 sd 33 R ore:€³ €€:€Â_€¤_€¥ ore:€í
€€:r_q 1 sd 33 s ore:€ €€: €€:€¡_€Æ,€€:€¡_€Æ|1,€€:€¡_€Æ|2,€€:€¡_€Æ|3,€€:€¡_€Æ|4,€€:€¡_€Æ|5
€€:|2 1 sd 33 € ore:€è ore:€Ÿ
€€:€¡_€Æ|5 6 sd 31 111 €€:€ª|5
€€:t_oak_€Ä 4 sd 33 €Å €€:€ª|5
€€:€ª|5 4 sd 11 1 €€:u|1
€€:t_oak_€Í_€Î 1 sd 32 €Ï €€:€Ë €€:€ª|5
€€:t_oak_€Í 3 sd 32 €Ï €€:€ª|5 €€:€Ë
€€:t_oak_€© 3 sd 23 €‹ €€:€ª|5
€€:t_oak_€Ğ 1 sd 32 €Ñ €€:€ª|5
€€:€„|9 1 sl 00 12 ore:v €€:€„
€€:€†_€‡_€ˆ|9 8 sd 33 € €€:€‡_€ˆ ore:v
€€:€†_€‰_€Š|9 16 sd 32 €‹ ore:w
€€:€†_€‰|9 8 sd 33 € ore:€ ore:v
€€:dye|6 2 sl 00 12 ore: ore:+
€€:€’_€“|9 8 sl 00 €” ore:v €€:€• €€:€–
€€:€—|9 3 sd 21 11 €€:€„|9
€€:bed|9 1 sl 00 12 €€:bed ore:v
€€:bed|9 1 sd 32 €˜ €€:€„|9 ore:€™
€€:€š|6 1 sd 33 €› €€:€„|9 ore:€œ
€€:x_i 1 sd 22 €¿ ore:€™
€€:y 8 sd 31 121 €€:€¯ €€:dye|3
€€:" 1 sd 33 €Ô ore:€³ ore:€í
€€:z 1 sd 33 { €€:€ì_€¸ €€: ore:€Â
€€:€Ã_  6 sd 32 €‹ €€:€Ã
€€:€Â_€Æ|3 6 sd 31 111 €€:€Ã
€€:||1 4 sd 22 €ô €€:| €€:€–
€€:€¹_€° 1 sd 33 €à €€:€¹
€€:€¹ 9 sd 11 1 €€:€¹_€°
€€:} 1 sd 33 €Ô ore:. ore:€í
€€:€ˆ 1 sd 22 €¿ €€:€ˆ_€ß
€€:€Á|3 1 sd 12 11 €€:€Â_€Æ|5
€€:€İ|1 1 sd 12 11 €€:€Â_€Æ|1
€€:red_€İ|1 1 sd 12 11 €€:€Â_€ò
€€:_€°|1 1 sd 12 11 €€:€Â_€Æ|7
€€:€µ_€º 1 sd 12 12 ore:€¶ €€:€º
€€:€µ 1 sd 33 W ore:€™
€€:~ 1 sd 33  ore:€³
€€:€ş_on_a_€Ë 1 sd 22 € €€:Z_rod €€:€ş
€€: 1 sd 33 ‚ €€:ƒ_„ €€:€½ ore:egg €€:€¯
€€:„ 1 sd 32 U ore:€³
€€:€„|12 1 sl 00 12 ore:… €€:€„
€€:€†_€‡_€ˆ|12 8 sd 33 € €€:€‡_€ˆ ore:…
€€:€†_€‰_€Š|12 16 sd 32 €‹ ore:†
€€:€†_€‰|12 8 sd 33 € ore:€ ore:…
€€:€’_€“|12 8 sl 00 €” ore:… €€:€• €€:€–
€€:€—|12 3 sd 21 11 €€:€„|12
€€:bed|12 1 sl 00 12 €€:bed ore:…
€€:bed|12 1 sd 32 €˜ €€:€„|12 ore:€™
€€:€š|3 1 sd 33 €› €€:€„|12 ore:€œ
€€:€Ç_€Ä 4 sd 33 €Å €€:€Ç_€°
€€:€Â_€Æ|4 6 sd 31 111 €€:€Ç_€°
€€:€Ç_€° 1 sd 22 €¿ €€:€Ç
€€:‡_ˆ 1 sd 32 ‰ €€:%_rod ore:€Ã
€€:Š 1 sd 31 111 €€:€¯
€€: 4 sd 32 U ore:€™
€€:bow 1 sd 33 ‹ ore:€œ ore:€À
€€:Œ 1 sd 33  ore:€™ €€:€
€€:€ 1 sl 00  ore:€‚ ore:5
€€:dye|15 3 sl 00 1 ore:
€€:dye|15 9 sl 00 1 €€:_€°
€€:_€° 1 sd 33 €à €€:dye|15
€€:€Ğ 1 sd 32 €Ñ €€:€ª
€€:€„|11 1 sl 00 12 ore: €€:€„
€€:€†_€‡_€ˆ|11 8 sd 33 € €€:€‡_€ˆ ore:
€€:€†_€‰_€Š|11 16 sd 32 €‹ ore:
€€:€†_€‰|11 8 sd 33 € ore:€ ore:
€€:€’_€“|11 8 sl 00 €” ore: €€:€• €€:€–
€€:€—|11 3 sd 21 11 €€:€„|11
€€:bed|11 1 sl 00 12 €€:bed ore:
€€:bed|11 1 sd 32 €˜ €€:€„|11 ore:€™
€€:€š|4 1 sd 33 €› €€:€„|11 ore:€œ
€€:%_€“ 2 sl 00 1 €€:%_rod
€€:€„|15 1 sl 00 12 ore:€Ÿ €€:€„
€€:€†_€‡_€ˆ|15 8 sd 33 € €€:€‡_€ˆ ore:€Ÿ
€€:€†_€‰_€Š|15 16 sd 32 €‹ ore:‘
€€:€†_€‰|15 8 sd 33 € ore:€ ore:€Ÿ
€€:€’_€“|15 8 sl 00 €” ore:€Ÿ €€:€• €€:€–
€€:€—|15 3 sd 21 11 €€:€„|15
€€:bed|15 1 sl 00 12 €€:bed ore:€Ÿ
€€:bed|15 1 sd 32 €˜ €€:€„|15 ore:€™
€€:€š 1 sd 33 €› €€:€„|15 ore:€œ
€€:€¡_€Æ|2 6 sd 31 111 €€:€ª|2
€€:’_€Ä 4 sd 33 €Å €€:€ª|2
€€:€ª|2 4 sd 11 1 €€:log|2
€€:’_€Í_€Î 1 sd 32 €Ï €€:€Ë €€:€ª|2
€€:’_€Í 3 sd 32 €Ï €€:€ª|2 €€:€Ë
€€:’_€© 3 sd 23 €‹ €€:€ª|2
€€:’_€Ğ 1 sd 32 €Ñ €€:€ª|2
€€:€÷_“ 1 sd 33 €› €€:€÷ €€:
€€:” 1 sd 33 • ore:€ ore:– €€:b
€€:€Ó 4 sd 13 123 €€:X ore:€œ ore:€ 
€€:—_ˆ 1 sd 33 ˜ ore:€œ €€:€Â_€Æ
€€:™ 1 sd 33 š €€:I_€° ore:€³
€€:€Â|5 2 sl 00 12 ore: ore:€Ã
€€:›_€ø 6 sd 33 œ ore:€³ ore:€œ €€:€ì_€¸
€€:€¡_€Æ|4 6 sd 31 111 €€:€ª|4
€€:_€Ä 4 sd 33 €Å €€:€ª|4
€€:€ª|4 4 sd 11 1 €€:u
€€:_€Í_€Î 1 sd 32 €Ï €€:€Ë €€:€ª|4
€€:_€Í 3 sd 32 €Ï €€:€ª|4 €€:€Ë
€€:_€© 3 sd 23 €‹ €€:€ª|4
€€:_€Ğ 1 sd 32 €Ñ €€:€ª|4
:Ÿ 1 sl 00   ore:¡ ore:¢ €€:€Ü|* ore:£ ore:¤ ore:¥ €€:`_¦|* ore:–
:§|¨ 1 sd 33 © €€:€Â|* €€:|*
:ª|1 1 sd 13 123 ore:« ore:€œ ore:F
:ª|2 1 sd 33 €à :ª|1
:ª|1 9 sl 00 1 :ª|2
:¬ 1 sd 33 ­ ore:. :®|1
:¯ 1 sd 33 ° ore:. :®|1
:± 1 sl 00 12 €€:€„|* €€:|*
:® 4 sl 00 1 :®|1
:®|2 5 sd 22 €ô ore:² ore:€™
:³ 1 sd 33 ´ ore:€Â ore:€Ã ore:€¶
:µ 1 sd 33 ´ ore:€Â ore:€Ã €€:„|*
:¶ 1 sd 33 ´ ore:€Â ore:€Ã ore:·
:¸ 1 sd 32 ¹ ore:. €€:€ |* €€:b|*
:º 3 sd 32 » ore:¼ :½|2 :¾
:º|1 3 sd 32 » :¾|3 :½|2 :¾
:º|2 1 sd 33 d :½|3 :¾ ore:.
:º|3 1 sd 33 ¿ :½|3 :¾|1 :¾
:º|4 1 sd 33 À :½|3 :¾|1 :¾
:º|5 1 sd 33 Á :½|3 :¾ :¾|1 €€:€ó_€Ç_€Í|*
:º|7 1 sd 32 ¹ :¾|1 :½|2 :¾
:º|8 1 sd 33 Â :½|3 €€:`_¦|* €€:€ó_Ã|* :¾|1 :¾|2
:Ä 1 sd 33 Å ore:€Â ore:€í €€:€ì_€¸|*
:Æ 1 sd 33 €à €€:€Ã
€€:€Ã 9 sl 00 1 :Æ
:Æ|1 1 sd 33 €à :Æ
:Æ 9 sl 00 1 :Æ|1
:Æ|2 1 sd 33 €à :Æ|1
:Æ|1 9 sl 00 1 :Æ|2
:Æ|3 1 sd 33 €à :Æ|2
:Æ|2 9 sl 00 1 :Æ|3
:Æ|4 1 sd 33 €à :Æ|3
:Æ|3 9 sl 00 1 :Æ|4
:Æ|5 1 sd 33 €à :Æ|4
:Æ|4 9 sl 00 1 :Æ|5
:Æ|6 1 sd 33 €à :Æ|5
:Æ|5 9 sl 00 1 :Æ|6
:Æ|7 1 sd 33 €à :Æ|6
:Æ|6 9 sl 00 1 :Æ|7
:Ç 1 sd 33 €à €€:|
€€:| 9 sl 00 1 :Ç
:Ç|1 1 sd 33 €à :Ç
:Ç 9 sl 00 1 :Ç|1
:Ç|2 1 sd 33 €à :Ç|1
:Ç|1 9 sl 00 1 :Ç|2
:Ç|3 1 sd 33 €à :Ç|2
:Ç|2 9 sl 00 1 :Ç|3
:È 1 sd 33 €à €€:€•
€€:€• 9 sl 00 1 :È
:È|1 1 sd 33 €à :È
:È 9 sl 00 1 :È|1
:É 1 sd 33 €à €€:€–
€€:€– 9 sl 00 1 :É
:É|1 1 sd 33 €à :É
:É 9 sl 00 1 :É|1
:Ê 1 sd 33 €à €€:Ë
€€:Ë 9 sl 00 1 :Ê
:Ê|1 1 sd 33 €à :Ê
:Ê 9 sl 00 1 :Ê|1
:Ê|2 1 sd 33 €à :Ê|1
:Ê|1 9 sl 00 1 :Ê|2
:Ê|3 1 sd 33 €à :Ê|2
:Ê|2 9 sl 00 1 :Ê|3
:Ê|4 1 sd 33 €à :Ê|3
:Ê|3 9 sl 00 1 :Ê|4
:Ê|5 1 sd 33 €à :Ê|4
:Ê|4 9 sl 00 1 :Ê|5
:Ì 1 sd 33 Í ore:€³ ore:€œ
:Î 8 sl 00 12 €€:`_¦|* :Ì|*
€€:€µ 4 sd 33 W ore:¤
€€:€Ë 16 sd 12 11 ore:¤
€€:L 1 sd 33 Ï ore:€³ ore:¤
:Ğ_Ñ 1 sd 33 Ò ore:€™ ore:€œ
:Ğ_€Â 1 sd 33 Ò ore:€Ã ore:€œ
:Ğ_I 1 sd 33 Ò ore:€³ ore:€œ
:Ğ_€Ø 1 sd 33 Ò ore:. ore:€œ
:Ğ_p 1 sd 33 Ò ore:F ore:€œ
:Ó 1 sd 33 Ô ore:€í ore:Õ ore:€³ :¾
:Ö|250 1 sl 00 × ore:F ore:€Õ
:Ø 1 sd 32 » :½|3 :Î :¾
:½ 4 sl 00 Ù ore:€Â ore:Ú
:½|1 4 sl 00 €¿ :½
:½|2 4 sd 22 €¿ €€:€Á|*
:½|4 4 sl 00 Ù ore:€• ore:€
:½|5 4 sl 00 Ù :½|2 :½
:¾ 1 sl 00 × :Î|* ore:€í
:¾|1 1 sd 33 €Ô €€:€ì_€¸|* ore:€™
:¾|2 1 sl 00 123 €€:`_¦|* ore:€í :¾
:¾|5 1 sd 33 € :¾|3 ore:F
:¾|5 9 sd 33 € :¾|3 ore:Û
:¾|6 1 sl 00 123 :¾|9 ore:. ore:·
:¾|7 1 sl 00 123 :¾|9 ore:. €€:p|*
:¾|8 1 sl 00 12 :¾|9 €€:Q_€¦
:Ü|1 1 sd 33 €à :¾|11
:¾|11 9 sl 00 1 :Ü|1
:Ü 1 sd 33 €à :¾|12
:¾|12 9 sl 00 1 :Ü
:¾|15 1 sd 33 Å :İ :¾|12 :¾|6
:¾|16 1 sd 33 Å :¾|10 :¾|17 :¾|15
:Ü|2 1 sd 33 €à :¾|17
:¾|17 9 sl 00 1 :Ü|2
:Ş|1 1 sl 00 12 :Ş :¾|10
:ß 1 sl 00 121 ore:¡ :ß|*
:ß|1 1 sl 00 121 €€:€ |* :ß|*
:ß|2 1 sl 00 123 ore:
 :ß|* ore:
:ß|3 1 sl 00 121 €€:5|* :ß|*
:ß|4 1 sl 00 121 ore:à :ß|*
:ß|5 1 sl 00 123 €€:€¹ :ß|* €€:€¹|1
:á 1 sd 23 â :¾ ore:€Â
:ã 1 sd 33 ¿ ore:. ore:€¶ :®|1
:ä|1 4 sd 22 €¿ :ä
:ä|2 4 sd 22 €¿ :ä|1
:ä|3 2 sl 00 121 :ä ore:€Ÿ
:ä|4 2 sl 00 121 :ä ore:€Õ
:å 8 sd 33 € ore:¡ :¾|5
:å|1 1 sl 00 12 :å €€:€ì_€¸|*
:å|2 8 sd 33 € :ä :¾|5
:å|3 8 sd 33 € :ä|3 :¾|5
:æ 64 sd 33 ¿ €€:€Â_€Æ ore:¡ ore:€í
:ç 1 sd 33 d :½|3 €€:`_€µ|* :¾
:è 1 sd 33 é ore:€ğ ore:€³ ore:€í
:ê 1 sd 32 ë :®|1
:€ 1 sl 00 123 €€:€|*,€€:€_€|*,€€:ì_€|* ore:. €€:b|*
:í 1 sl 00 î €€:€ |* €€:€‚|* €€:€‰_T|* ore:€Ÿ
:ï 1 sd 33 Å ore:€í ore:€œ ore:€À
:ğ 1 sd 33 Å ore:¼ ore:€œ ore:€À
:ñ 4 sd 32 ò ore:€í :æ ore:€Â ore:€¶
:ñ|1 4 sd 32 ò ore:€í :ï ore:€Â :æ
:ñ|5 4 sl 00 123 :æ :ï ore:€í
:ñ|2 4 sd 32 ò ore:€í :æ ore:€Â €€:„|*
:ñ|3 2 sd 33 ó €€:`_¦|* :ñ ore:l
:ñ|4 2 sd 33 ó €€:`_¦|* :ñ|2 ore:F
:ñ|6 1 sd 32 ò ore:€í :æ ore:. €€:€ì_€°|*
:ô 1 sd 33 œ :½|3 :¾ :Ø
:õ 1 sd 33 œ ore:€Â :¾|2 :Ø
:ö 1 sl 00 123 €€:m|* :¾ €€:x_i|*
:÷ 1 sl 00 123 €€:m|* ore:€í €€:__eye|*
:ø 1 sl 00 123 €€:m|* :¾ €€:I_€¦|*
:ù 1 sl 00 123 €€:m|* :¾ €€:4|*
:ú 1 sl 00 122 €€:€‰_T|* €€:`_¦|*
:û 1 sd 33 œ ore:€Ã €€:€Â_€Æ|3,€€:€Â_€Æ €€:|*
:û|1 1 sd 33 œ ore:€³ €€:N_-_€¤_€¥|* €€:~|*
:û|2 1 sd 33 œ ore:F €€:,_-_€¤_€¥|* :û|1
:û|3 1 sd 33 œ ore:ü :ú :û|2
:û 1 sl 00 1 :û
:û|1 1 sl 00 1 :û|1
:û|2 1 sl 00 1 :û|2
:û|3 1 sl 00 1 :û|3
:û|4 1 sl 00 1 :û|4
:ı 4 sd 33 Å ore:€³ ore:€í ore:€¶
:ş|1 1 sd 33 W :Æ
:ÿ 4 sd 12 12 :¾ :½|3
:‚  1 sd 33 ¿ :½|3 ore:· :¾
:‚ 1 sd 33 ‚ €€:end_€Â|* €€:end_rod|* €€:p_€¦|* :½|3
:‚ 1 sd 33 Å €€:end_€Â|* :½|3 ore:‚_€Ú_‚
:‚_Ñ 4 sd 33 ‚ €€:€¡_€¢|* €€:€ª €€:log
:‚_€Â 4 sd 33 ‚ €€:€Â_€¢|* ore:€Ã ore:‚
:‚_I 4 sd 33 ‚ €€:I_€¢|* ore:€³ ore:‚	
:‚_€Ø 4 sd 33 ‚ €€:Q_€¢|* ore:. ore:‚

:‚_p 4 sd 33 ‚ €€:p_€¢|* ore:F ore:‚
:‚ 1 sd 33 ‚ ore:€í :½|2 €€:€¹|* €€:z|*
:‚ 1 sd 33 € €€:€Ë|* €€:€µ|*
:‚ 9 sl 00 1 €€:€µ|*
€€:€µ 1 sd 33 €à :‚
:‚ 1 sl 00 12 :‚|1 :‚|2
:İ 8 sd 33 € €€:S|* :®|1
:‚ 1 sd 33 ‚ ore:€³ €€:€Â_€«|* ore:€œ
:‚ 1 sd 33 Å €€:dye|13,:¾|3,€€:dye|5 ore:€³ ore:¢
:‚|9 1 sd 33 ‚ ore:€³ ore:F ore:¢ :ı
:‚ 1 sd 32 ò €€:`_¦|* :‚|9 ore:€í €€:z|*
:‚|1 1 sd 33 ‚ €€:end_rod|* ore:€³ ore:¢
:‚|4 1 sl 00 122 :‚|9 €€:‚_„|*
:‚|5 1 sl 00 122 :‚|9 €€:€Ü|*
:‚|2 1 sl 00 122 :‚|9 €€:‚_„|*
:‚|3 1 sl 00 122 :‚|9 ore:€•
:‚|7 1 sl 00 122 :‚|9 €€:™|*
:‚|8 1 sl 00 122 :‚|9 €€:h_i|*
:‚|6 1 sl 00 122 :‚|9 €€:‚|*
:‚ 1 sl 00 123 ore:€¶ :³ ore:€í
:‚ 1 sd 33 €Ô :¾|4 €€:I_€°
:‚|1 1 sd 33 ó :‚ €€:I_€° €€:€Ø_€°
:‚|2 1 sd 33 ó :‚|1 €€:€Ø_€° €€:p_€°
:‚|3 1 sd 33 ó :‚|2 €€:p_€° €€:k_€°
:‚|4 1 sd 33 ó :‚|3 €€:k_€° €€:_€‘
:‚|5 1 sd 33 ó :‚|4 €€:_€‘ €€:‚_T
:‚|6 1 sd 33 ó :‚|5 €€:‚_T €€:‚
:‚|7 1 sd 33 ó :‚|6 €€:‚ €€:€ó_Ã
:‚|8 1 sd 33 ó :‚|7 €€:€ó_Ã €€:I_J
:‚ 1 sd 13 112 :‚|8 €€:€Ë|*
:‚ 8 sd 13 102 €€:™|* :ñ
:‚|1 8 sd 13 102 €€:™|* :ñ|2
:‚  1 sl 00 123 €€:x_i|* ore:€¶ €€:4|*
:‚! 1 sd 33 ‚" :‚|8 ore:€À ore:€³
:‚# 1 sd 23 €¬ :‚|8 €€:€Ë|*
:‚$ 1 sd 33 Å ore:€À €€:`_¦|* :á
:‚% 1 sd 33 Á :¾|17 ore: :Ö :¾
:‚%|1 1 sd 33 Á :¾|17 ore: :Ö :¾
:‚%|2 1 sd 33 Á :¾|17 ore:€ñ :Ö :¾
:‚%|3 1 sd 33 Á :¾|17 ore:€Œ :Ö :¾
:‚%|4 1 sd 33 Á :¾|17 ore:O :Ö :¾
:‚%|5 1 sd 33 Á :¾|17 ore:w :Ö :¾
:‚%|6 1 sd 33 Á :¾|17 ore:€® :Ö :¾
:‚%|7 1 sd 33 Á :¾|17 ore:‘ :Ö :¾
:‚&_€ª 4 sl 00 1 :‚&_log
:‚&_€ª|1 4 sl 00 1 :‚&_log|1
‚':‚(_‚) 1 sd 33 € €€:b ‚':‚(_‚*
‚':‚(_‚* 2 sd 33 € ore:€œ ore:‚+
‚':‚(_‚, 1 sd 33 ¿ ore:€œ €€:b ‚':‚(_‚*
‚':‚(_‚,|1 1 sd 33 ¿ ore:€œ €€:I_J ‚':‚(_‚*
‚':‚(_‚,|2 1 sd 33 ¿ ore:€œ €€:€Ø_J ‚':‚(_‚*
‚':‚(_‚,|4 1 sd 33 ¿ ore:€œ €€:k ‚':‚(_‚*
‚':‚(_‚,|3 1 sd 33 ¿ ore:€œ €€:p ‚':‚(_‚*
‚':‚(_‚-|1 1 sd 33 ‚. €€:z ore:€œ ‚':‚(_‚* €€:€ì
‚':‚(_‚- 1 sd 33 ‚. €€:€ì_€¸ ore:€œ ‚':‚(_‚* €€:€ì
‚':‚(_€ì|2 1 sd 33 • ore:€œ ‚':‚(_‚* €€:€ì
‚':‚(_€ì|1 1 sd 33 ´ €€:€ì ore:€œ ‚':‚(_‚*
‚':‚(_€ì 1 sd 33 Å €€:€ì ore:€œ ‚':‚(_‚*
‚':‚(_one_‚/ 1 sd 33 ¿ ore:€œ €€:X ‚':‚(_‚*
‚':‚(_‚0 1 sd 33 Å €€:dye|4 ore:€œ ‚':‚(_‚*
‚':‚1 1 sd 32 ‰ ore:€Ê €€:€‚
‚':‚2_key 1 sl 00 12 ‚':‚3_key €€:€_€
‚':‚4_key 1 sl 00 12 ‚':‚3_key €€:‚5_tag
‚':‚3_key 1 sd 23 ‚6 ore:à ore:. ‚':‚(_‚*
‚':‚7_key 1 sl 00 12 ‚':‚3_key €€:`_eye
‚':‚8|3 1 sl 00 12 ‚':‚2_key €€:€Â_€«
‚':‚8|2 1 sl 00 12 ‚':‚4_key €€:€Â_€«
‚':‚8 1 sl 00 12 ‚':‚3_key €€:€Â_€«
‚':‚8|1 1 sl 00 12 ‚':‚7_key €€:€Â_€«
‚':‚9 1 sd 32 9 ore:‚:
‚':‚; 4 sd 33 €» ore:€™ ore:€œ
‚':‚<|4 4 sd 33 Å ore:€¶ ore:€œ ore:‚=
‚':‚<|3 2 sd 33 œ ore:€œ ore:€¶ ore:‚=
‚':‚<|2 4 sd 33 Å ore:€¶ ore:€œ ore:€™
‚':‚<|1 2 sd 33 œ ore:€œ ore:€¶ ore:€™
‚':‚< 1 sd 33 ‚> ore:€œ ore:€¶
‚':‚? 1 sd 33 ‚@ €€:€Â €€:z ore:‚+ ore:.
‚':‚A 1 sd 33 ‚@ €€:€Â €€:z ore:‚+ ore:F
‚':‚B 1 sd 33 ‚@ €€:€Â €€:€É ore:‚+ ore:€³
‚':‚C 4 sd 33 €ç ore:€œ €€:€ª
‚':‚C|1 4 sd 33 €ç ore:€œ €€:€ª|1
‚':‚C|2 4 sd 33 €ç ore:€œ €€:€ª|2
‚':‚C|3 4 sd 33 €ç ore:€œ €€:€ª|3
‚':‚C|4 4 sd 33 €ç ore:€œ €€:€ª|4
‚':‚C|5 4 sd 33 €ç ore:€œ €€:€ª|5
]==],['craftmgr.lua']= [==[‚D ‚E, ‚F = ‚G(‚H, ‚I.‚J, '‚F')
if not ‚E ‚K
	‚L('Can\'t ‚M ‚F ‚N.')
	‚O
end

‚D ‚P = ‚H('lib.‚P')
‚D ‚Q = ‚H('lib.‚Q')
‚D ‚R = ‚H('lib.‚R')
‚D ‚S = ‚H('lib.‚S')
‚D ‚T = ‚H('lib.‚T')

‚D x = ‚H('lib.‚U.x')
‚D G = ‚H('lib.‚U.G')

-----------------------
-- ‚V ‚W ‚X
-----------------------
‚D ‚V = {['‚Y'] = '', ['‚Z'] = nil}

‚[ ‚V.new()
	‚D o = {}
	‚\(o, ‚V)
	‚V.__‚] = ‚V
	o.‚Y = ''
	o.‚Z = nil
	‚O o
end
-----------------------
-- ‚V ‚W end
-----------------------

‚D ‚^ = ‚_
‚D ‚` = {}
‚D ‚a = ‚b

‚D ‚[ ‚c(‚d)
	‚L('‚e ‚f!')
	‚L(‚d.‚Y)
end

‚D ‚g = {}

‚g.‚h = ‚V.new()
‚g.‚h.‚Y = '‚h'
‚g.‚h.‚Z = ‚[(‚d)
	if ‚d ~= nil ‚K
		if ‚g[‚d] ~= nil ‚K
			‚L(‚g[‚d].‚Y)
			‚O
		‚i
			‚L('No ‚j ‚d.')
		end
	end
	‚D ‚k = {}
	for k, v in ‚l(‚g) do
		i.‚m(‚k, v.‚Y)
	end
	i.‚n(‚k)
	‚D ‚o = ''
	for k, v in ‚p(‚k) do
		‚o = ‚o .. v .. '\n'
	end
	‚P.‚q(‚o)
end

‚g.‚r = ‚V.new()
‚g.‚r.‚Y = '‚r'
‚g.‚r.‚Z = ‚[()
	if ‚a ‚K
		io.‚s:‚t('‚u has ‚v ‚w. ‚x you ‚y to ‚z all ‚{ ‚|? [y/n/C]')
		‚D ‚} = io.‚~:‚('*l')
		if €À.‚€(‚}) == 'y' ‚K
			‚g.‚z.‚Z()
			‚^ = ‚b
		‚ €À.‚€(‚}) == 'n' ‚K
			‚^ = ‚b
		end
	‚i
		‚^ = ‚b
	end
end

‚g.‚‚ = ‚V.new()
‚g.‚‚.‚Y = '‚‚'
‚g.‚‚.‚Z = ‚[()
	‚Q.‚M()
	‚L('‚ƒ ‚„ ‚….')
end

‚g.‚† = ‚V.new()
‚g.‚†.‚Y = '‚†'
‚g.‚†.‚Z = ‚[()
	‚T.‚‡()
	‚L('‚ˆ ‚‰.')
end

‚g.‚z = ‚V.new()
‚g.‚z.‚Y = '‚z'
‚g.‚z.‚Z = ‚[()
	‚Q.‚z()
	‚L('‚ƒ ‚Š ‚….')
end

‚g.‚‹ = ‚V.new()
‚g.‚‹.‚Y = '‚‹ <x> <‚Œ/‚> [‚]'
‚g.‚‹.‚Z = ‚[(‚, ...)
	if ‚ == nil ‚K
		‚g.‚h.‚Z('‚‹')
		‚O
	end

	‚D ‚ = {}
	‚.x = ‚[(‚‘, ‚)
		if ‚‘ == nil ‚K
			‚g.‚h.‚Z('‚‹')
			‚O
		‚ (‚‘ ~= '‚Œ') and (‚‘ ~= '‚') ‚K
			‚g.‚h.‚Z('‚‹')
			‚O
		end
		‚D ‚Œ = (‚‘ == '‚Œ') and ‚_ or ‚b
		
		-- ‚’ ‚“ ‚`
		if ‚T.‚”(8) ~= nil ‚K
			‚T.‚•(8)
			if not ‚T.‚–() ‚K
				‚L('‚— ‚˜.')
				‚O
			end
		end
		
		-- ‚™ ‚š
		‚D ‚› = {1, 2, 3, 5, 6, 7, 9, 10, 11}
		‚D ‚œ = {}
		for k, v in ‚p(‚›) do
			‚D ‚ = ‚T.‚”(v)
			if ‚ ~= nil ‚K
				‚œ[k] = ~‚
				if ‚ == ‚_ ‚K
					‚œ[k]:‚()
				‚ ‚ == nil ‚K
					if ‚œ[k].‚Ÿ == 0 ‚K
						‚œ[k]:‚()
					end
				end
			end
		end
		
		‚D ‚š = {}
		‚D w, h, ox, oy
		if ‚Œ ‚K
			-- ‚  ‚š
			w, h, ox, oy = 3, 3, 0, 0
			‚D ‚[ r(n)
				‚D d = ‚b
				for i = (n-1)*3+1, n*3 do
					d = d or (‚œ[i] ~= nil)
				end
				‚O d
			end
			‚D ‚[ c(n)
				‚D d = ‚b
				for i = 0, 2 do
					d = d or (‚œ[(i*3)+n] ~= nil)
				end
				‚O d
			end
			
			if c(1) and c(3) ‚K
				w, ox = 3, 0
			‚ (c(1) and c(2)) or (c(2) and c(3)) ‚K
				w, ox = 2, c(1) and 1 or 2
			‚ c(1) or c(2) or c(3) ‚K
				w, ox = 1, c(1) and 1 or (c(2) and 2 or 3)
			‚i
				w, ox = 0, 0
			end
			
			if r(1) and r(3) ‚K
				h, oy = 3, 0
			‚ (r(1) and r(2)) or (r(2) and r(3)) ‚K
				h, oy = 2, r(1) and 1 or 2
			‚ r(1) or r(2) or r(3) ‚K
				h, oy = 1, r(1) and 1 or (r(2) and 2 or 3)
			‚i
				h, oy = 0, 0
			end
			
			‚D ‚[ xy(x, y, w, h)
				‚O x + y * w
			end
			for y = 1, h do
				for x = 1, w do
					‚š[xy(x-1, y-1, w, h)+1] = ‚œ[xy(x+ox-2, y+oy-2, 3, 3)+2]
				end
			end
		‚i
			w, h = 0, 0
			for k, v in ‚l(‚œ) do
				‚š[#‚š+1] = v
			end
		end
		
		-- ‚¡ G
		if not ‚¢.x.‚£(1) ‚K
			‚L('Can\'t ‚£!')
			‚O
		end
		‚D ‚“ = ‚T.‚”(8)
		
		-- Put x in ‚`
		‚` = x.new({‚¤ = w, ‚¥ = h}, ‚š, ‚Œ, ‚“)
		‚L('Put x in ‚`.')
	end
	
	if ‚[€À.‚€(‚)] == nil ‚K
		‚g.‚h.‚Z('‚‹')
		‚O
	‚i
		‚[€À.‚€(‚)](...)
	end
	
	‚T.‚¦()
end

‚g.‚§ = ‚V.new()
‚g.‚§.‚Y = '‚§/see/‚¨/‚© <‚`/G>'
‚g.‚§.‚Z = ‚[(it)
	if it == nil ‚K
		‚g.‚h.‚Z('‚§')
		‚O
	end
	
	‚D sit
	if it == '‚`' ‚K
		sit = ‚`
	‚i
		sit = ‚Q.‚ª(~G.new(it))
	end
	
	‚D ‚ = {}
	‚.x = ‚[(ii)
		‚L(ii)
	end
	
	if sit == nil ‚K
		‚L('‚« to ‚§.')
		‚O
	‚ ‚¬(sit) == x ‚K
		‚.x(sit)
	end
end

‚g.see = ‚g.‚§
‚g.‚¨ = ‚g.‚§
‚g.‚© = ‚g.‚§

‚g.‚­ = ‚V.new()
‚g.‚­.‚Y = '‚­ <‚`/G>'
‚g.‚­.‚Z = ‚[(it)
	if it == nil ‚K
		‚g.‚h.‚Z('‚­')
		‚O
	‚ it == '‚`' ‚K
		if ‚` == nil ‚K
			‚L('‚« to ‚­.')
			‚O
		‚i
			‚Q.‚­(‚`)
			if ‚¬(‚`) == x ‚K
				‚a = ‚_
				‚L('‚— ‚­.')
			end
		end
	‚i
		‚Q.‚­(~G.new(it))
		‚a = ‚_
		‚L('‚® ‚­ to raw.')
	end
end

‚g.‚¯ = ‚V.new()
‚g.‚¯.‚Y = '‚¯'
‚g.‚¯.‚Z = ‚[()
	‚` = nil
	‚L('‚° ‚±.')
end

‚g.‚² = ‚V.new()
‚g.‚².‚Y = '‚² <G>'
‚g.‚².‚Z = ‚[(it)
	if it == nil ‚K
		‚g.‚h.‚Z('‚²')
		‚O
	end

	‚D ‚³ = ‚Q.‚²(G.new(it))
	if ‚¬(‚³) == x ‚K
		‚a = ‚_
		‚L('‚´ x.')
	‚ ‚¬(‚³) == G ‚K
		‚a = ‚_
		‚L('Raw ‚µ.')
	‚i
		‚L('‚« ‚µ.')
	end
end

‚g.‚¶ = ‚V.new()
‚g.‚¶.‚Y = '‚¶ <raw/x>'
‚g.‚¶.‚Z = ‚[(‚)
	‚D ‚o = ''
	if ‚ == 'raw' ‚K
		‚o = '‚· of raw:\n'
		for k, v in ‚p(‚R.db) do
			‚o = ‚o .. ‚¸(v) .. '\n'
		end
	‚ ‚ == 'x' ‚K
		‚o = '‚· of x:\n'
		for k, v in ‚S.‚¹() do
			‚o = ‚o .. ‚¸(~k) .. '\n'
		end
	‚i
		‚g.‚h.‚Z('‚¶')
		‚O
	end
	‚P.‚q(‚o)
end

‚g.‚• = ‚V.new()
‚g.‚•.‚Y = '‚• <‚`>'
‚g.‚•.‚Z = ‚[(sl)
	‚T.‚•(‚¸(sl))
end

‚g.‚º = ‚V.new()
‚g.‚º.‚Y = '‚º <G>'
‚g.‚º.‚Z = ‚[(it)
	‚D sit
	if it ~= nil ‚K
		sit = G.new(it)
	‚i
		‚g.‚h.‚Z('‚º')
		‚O
	end
	
	if ‚Q.‚ª(sit) ~= nil ‚K
		if ‚¬(‚Q.‚ª(sit)) ~= G ‚K
			‚D ‚o
			if ‚¬(‚Q.‚ª(sit)) == x ‚K
				‚o = '‚—: ' .. ‚¸(‚Q.‚ª(sit).‚“) .. '\n'
			end
			‚D ‚», ‚¼ = ‚Q.‚º(sit)
			for k, v in ‚p(‚») do
				‚o = ‚o .. ‚¸(v) .. '\n'
			end
			‚P.‚q(‚o)
		‚i
			‚L('It\'s an G')
		end
	‚i
		‚L('Can\'t ‚½.')
	end
end

‚g.‚£ = ‚V.new()
‚g.‚£.‚Y = '‚£ <G>'
‚g.‚£.‚Z = ‚[(it)
	‚D sit
	if it ~= nil ‚K
		sit = G.new(it)
	‚i
		‚g.‚h.‚Z('‚£')
		‚O
	end
	
	if ‚Q.‚¾(sit) ‚K
		if ‚Q.‚£(sit) ‚K
			‚L('‚¿ ‚….')
		‚i
			‚L('‚— ‚À.')
		end
	‚i
		‚L('Not ‚Á ‚Â to ‚£.')
	end
end

‚g.‚Ã = ‚V.new()
‚g.‚Ã.‚Y = '‚Ã'
‚g.‚Ã.‚Z = ‚[(...)
	if ‚T.‚Ä() ‚K
		‚L('‚Å.')
	‚i
		‚L('Can\'t ‚Ã!')
	end
end

‚Æ ‚^ do
	io.‚s:‚t('‚Ç>')
	‚D ‚È = ‚P.‚É(io.‚~:‚('*l'))
	‚D ‚Ê = €À.‚€(i.‚²(‚È, 1))
	if ‚g[‚Ê] ~= nil ‚K
		‚g[‚Ê].‚Z(i.‚Ë(‚È))
	‚i
		‚L('‚V ‚Ì.')
	end
end]==],['crafttweaker.log']= [==[[‚Í][‚Î][‚Ï] ‚Ğ ‚Ñ ‚Ò ‚Ó: [[‚Ô]]
[‚Í][‚Î][‚Ï] ‚Õ ‚Ö for ‚× ‚Ø ‚Ù [‚Ô]
[‚Í][‚Î][‚Ï] [‚Ô | ‚Ú_‚Î]: ‚Û ‚Ü {[0:‚İ]: ‚Ş.zs} as we are ‚ß ‚à ‚Ø a ‚á ‚×
[‚Í][‚Î][‚Ï] ‚â ‚ã ‚à in: 2ms
[‚ä][‚Î][‚Ï] ‚å: ‚æ ‚ç
[‚ä][‚Î][‚Ï] ‚å: ‚è ‚é G ‚ç
[‚ä][‚Î][‚Ï] ‚Ğ ‚Ñ ‚Ò ‚Ó: [[‚Ô], [‚ê | ‚İ]]
[‚ä][‚Î][‚Ï] ‚Õ ‚Ö for ‚× ‚Ø ‚Ù [‚İ | ‚ê]
[‚ä][‚Î][‚Ï] [‚İ | ‚Ú_‚Î]: ‚Õ ‚ë: {[0:‚İ]: ‚Ş.zs}
[‚ä][‚Î][‚Ï] ============================================================================
[‚ä][‚Î][‚Ï]     ‚ì ‚í...
[‚ä][‚Î][‚Ï] ============================================================================
[‚ä][‚Î][‚Ï] =[ore]=><ore:¤>=<€€:log:*>|<€€:u:*>|<:‚&_log:*>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€™>=<€€:€ª:*>|<:‚&_€ª:*>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚=>=<€€:€¡_€Æ:*>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:²>=<€€:oak_€Ä>|<€€:€Ì_€Ä>|<€€:’_€Ä>|<€€:D_€Ä>|<€€:_€Ä>|<€€:t_oak_€Ä>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚î>=<€€:€Í>|<€€:€Ì_€Í>|<€€:’_€Í>|<€€:D_€Í>|<€€:t_oak_€Í>|<€€:_€Í>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚ï>=<€€:€Í_€Î>|<€€:€Ì_€Í_€Î>|<€€:’_€Í_€Î>|<€€:D_€Í_€Î>|<€€:t_oak_€Í_€Î>|<€€:_€Í_€Î>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:£>=<€€:_€©>|<€€:’_€©>|<€€:t_oak_€©>|<€€:€¡_€©>|<€€:D_€©>|<€€:€Ì_€©>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€œ>=<€€:€Ë>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:¢>=<€€:‚ğ:*>|<:‚&_‚ğ:*>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚ñ>=<€€:‚ò:*>|<€€:‚ó:*>|<:‚&_‚ò:*>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:>=<€€:>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚ô>=<€€:€Ø_ore>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚õ>=<€€:I_ore>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚ö>=<€€:A_ore>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚÷>=<€€:p_ore>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚ø>=<€€:€ì_ore>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚ù>=<€€:k_ore>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚ú>=<€€:_ore>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚û>=<€€:€¹_ore>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€³>=<€€:I_J>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:.>=<€€:€Ø_J>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚ü>=<€€:€Ç>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚ı>=<€€:€õ>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:à>=<€€:€Ø_€Ù>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:«>=<€€:I_€Ù>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:F>=<€€:p>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:l>=<€€:k>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚ş>=<€€:>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€è>=<€€:_‚ÿ>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€é>=<€€:_ƒ >;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€í>=<€€:€ì>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€Õ>=<€€:€ï_ƒ>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:¼>=<€€:dye:4>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚
>=<€€:€Ø_€°>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚	>=<€€:I_€°>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€:A_€°>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚>=<€€:p_€°>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:·>=<€€:€ì_€°>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€:k_€°>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€:_€°>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:Õ>=<€€:€¹_€°>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€:€¯>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€: >;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€:€ş>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€:€ó_€ö>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€¾>=<€€:ƒ	>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ
>=<€€:ƒ>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:dye>=<€€:dye:*>|<:¾:14>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€‚>=<€€:€‚>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€Ê>=<€€:€Ş_€ß>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:a>=<€€:`_¦>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:>=<€€:>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€¼>=<€€:€¼>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€À>=<€€:€À>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:–>=<€€:€ó_Ã>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:5>=<€€:5>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€ >=<€€:€ >;
[‚ä][‚Î][‚Ï] =[ore]=><ore:egg>=<€€:egg>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€:ƒ_13>|<€€:ƒ_cat>|<€€:ƒ_ƒ>|<€€:ƒ_ƒ>|<€€:ƒ_far>|<€€:ƒ_ƒ>|<€€:ƒ_ƒ>|<€€:ƒ_ƒ>|<€€:ƒ_ƒ>|<€€:ƒ_ƒ>|<€€:ƒ_11>|<€€:ƒ_ƒ>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:|>=<€€:|>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:¥>=<€€:¥>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€Â>=<€€:€Â>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€Ã>=<€€:€Ã>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€–>=<€€:€–>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€•>=<€€:€•:*>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€İ>=<€€:€İ:*>|<€€:red_€İ:*>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:Ë>=<€€:Ë>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:b>=<€€:b>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€ï>=<€€:€ï>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€:end_€Â>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€¸>=<€€:€¸>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€:x_i>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€:€Ş>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€:>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€::1>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€::2>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:>=<€€:€Â:1>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€:€Â:2>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:>=<€€:€Â:3>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€:€Â:4>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:>=<€€:€Â:5>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€:€Â:6>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€>=<€€:€‰>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:¡>=<€€:€‰>|<€€:€†_€‰:*>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€:€‰_€Š>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>=<€€:€‰_€Š>|<€€:€†_€‰_€Š:*>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€µ>=<€€:€µ>|<€€:`_€µ>|<€€:€´_€µ>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€¶>=<€€:€µ>|<€€:€´_€µ>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ >=<€€:`_€µ>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ!>=<€€:€´_€µ>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€Ÿ>=<€€:dye>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‘>=<€€:€†_€‰:15>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ">=<€€:€†_€‰_€Š:15>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€ğ>=<€€:dye:1>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€ñ>=<€€:€†_€‰:14>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ#>=<€€:€†_€‰_€Š:14>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:+>=<€€:dye:2>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:O>=<€€:€†_€‰:13>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ$>=<€€:€†_€‰_€Š:13>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:…>=<€€:dye:3>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:†>=<€€:€†_€‰:12>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ%>=<€€:€†_€‰_€Š:12>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:>=<€€:dye:4>|<:¾:14>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:>=<€€:€†_€‰:11>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ&>=<€€:€†_€‰_€Š:11>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:
>=<€€:dye:5>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:>=<€€:€†_€‰:10>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ'>=<€€:€†_€‰_€Š:10>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:v>=<€€:dye:6>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:w>=<€€:€†_€‰:9>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ(>=<€€:€†_€‰_€Š:9>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:/>=<€€:dye:7>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:0>=<€€:€†_€‰:8>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ)>=<€€:€†_€‰_€Š:8>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:1>=<€€:dye:8>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:P>=<€€:€†_€‰:7>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ*>=<€€:€†_€‰_€Š:7>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:>=<€€:dye:9>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:>=<€€:€†_€‰:6>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ+>=<€€:€†_€‰_€Š:6>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:)>=<€€:dye:10>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:*>=<€€:€†_€‰:5>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ,>=<€€:€†_€‰_€Š:5>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€…>=<€€:dye:11>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€Œ>=<€€:€†_€‰:4>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ->=<€€:€†_€‰_€Š:4>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:2>=<€€:dye:12>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:3>=<€€:€†_€‰:3>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ.>=<€€:€†_€‰_€Š:3>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:&>=<€€:dye:13>|<:¾:3>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:'>=<€€:€†_€‰:2>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ/>=<€€:€†_€‰_€Š:2>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:>=<€€:dye:14>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:>=<€€:€†_€‰:1>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ0>=<€€:€†_€‰_€Š:1>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€­>=<€€:dye:15>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:€®>=<€€:€†_€‰>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ1>=<€€:€†_€‰_€Š>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚_€Ú_‚>=<:Ÿ:1>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:Û>=<:ª>|<:ª:2>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ2>=<:ª:1>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚>=<:Æ>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ3>=<:Æ:1>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ4>=<:Æ:2>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ5>=<:Æ:3>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ6>=<:Æ:4>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ7>=<:Æ:5>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ8>=<:Æ:6>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ9>=<:Æ:7>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ:>=<:Ç>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ;>=<:Ç:1>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ<>=<:Ç:2>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ=>=<:Ç:3>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ>>=<:È>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ?>=<:È:1>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ@>=<:É>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒA>=<:É:1>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒB>=<:Ê>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒC>=<:Ê:1>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒD>=<:Ê:2>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒE>=<:Ê:3>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒF>=<:Ê:4>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒG>=<:Ê:5>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒH>=<:¾>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒI>=<:¾:1>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒJ>=<:¾:2>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒK>=<:¾:3>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒL>=<:¾:4>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒM>=<:¾:5>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒN>=<:¾:6>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒO>=<:¾:7>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒP>=<:¾:8>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒQ>=<:¾:9>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒR>=<:¾:10>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ü>=<:¾:11>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒS>=<:¾:12>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒT>=<:¾:13>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒU>=<:¾:15>|<:¾:16>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒV>=<:¾:17>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒW>=<:Ü>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒX>=<:Ü:1>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒY>=<:Ü:2>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒZ>=<€€:I_€©>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ[>=<:®:1>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:Œ>=<€€:Œ>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:Ú>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ\>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ]>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ^>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ_>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ`>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒa>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒb>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒc>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒd>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒe>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒf>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒg>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒh>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒi>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒj>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒk>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒl>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒm>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒn>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒo>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒp>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒq>=<€€:€É>|<€€:€È_€É>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒr>=<€€:€ì_€¸>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒs>=<€€:`_¦>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:oc:ƒt>=<ƒu:ƒv:7>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒw>=<ƒu:ƒx:29>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:oc:ƒy>=<€€:end_€Â>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚+>=<‚':ƒz:*>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:‚:>=<‚':‚C:*>;
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ|", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ~", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ", <€€:map>, [[<€€:€‚>, <€€:€‚>, <€€:€‚>], [<€€:€‚>, <€€:€ƒ_map:*>, <€€:€‚>], [<€€:€‚>, <€€:€‚>, <€€:€‚>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ‚", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒƒ", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ„", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ…", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ†", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ‡", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒˆ", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:€_€„", <€€:€„:4>, [<ore:€…>, <€€:€„>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€_€†_€‡_€ˆ", <€€:€†_€‡_€ˆ:4> * 8, [[<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <ore:€…>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€_€†_€‰_€Š", <€€:€†_€‰_€Š:4> * 16, [[<ore:€Œ>, <ore:€Œ>, <ore:€Œ>], [<ore:€Œ>, <ore:€Œ>, <ore:€Œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€_€†_€‰", <€€:€†_€‰:4> * 8, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <ore:€…>, <ore:€>], [<ore:€>, <ore:€>, <ore:€>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:€_dye_ƒ‰_ƒŠ", <€€:dye:11> * 2, [<€€:€_€>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:€_dye_ƒ‰_ƒ‹", <€€:dye:11>, [<€€:€_€‘>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:€_€’_€“", <€€:€’_€“:4> * 8, [<ore:€…>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€–>, <€€:€–>, <€€:€–>, <€€:€–>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€_€—", <€€:€—:4> * 3, [[<€€:€„:4>, <€€:€„:4>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:€_bed_ƒ‰_ƒŒ_bed", <€€:bed:4>, [<€€:bed>, <ore:€…>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€_bed", <€€:bed:4>, [[<€€:€„:4>, <€€:€„:4>, <€€:€„:4>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€_€š", <€€:€š:11>, [[<€€:€„:4>, <€€:€„:4>, <€€:€„:4>], [<€€:€„:4>, <€€:€„:4>, <€€:€„:4>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:€_€", <€€:€_€>, [<€€:€>, <ore:€Ÿ>, <ore:€ >]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€¡_€¢", <€€:€¡_€¢>, [[<ore:€™>], [<ore:€™>], [<ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€¡_€£", <€€:€¡_€£>, [[<ore:€™>], [<ore:€œ>], [<ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€¡_€¤_€¥", <€€:€¡_€¤_€¥>, [[<ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€¡_€¦", <€€:€¡_€¦>, [[<ore:€™>, <ore:€™>, <ore:€™>], [ƒ}, <ore:€œ>, ƒ}], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€¡_hoe", <€€:€¡_hoe>, [[<ore:€™>, <ore:€™>], [ƒ}, <ore:€œ>], [ƒ}, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€¡_€©", <€€:€¡_€©> * 3, [[<€€:€ª>, <€€:€ª>], [<€€:€ª>, <€€:€ª>], [<€€:€ª>, <€€:€ª>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€¡_€«", <€€:€¡_€«>, [[<ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€¡_axe", <€€:€¡_axe>, [[<ore:€™>, <ore:€™>], [<ore:€™>, <ore:€œ>], [ƒ}, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒŒ_€†_€‡_€ˆ", <€€:€†_€‡_€ˆ> * 8, [[<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <ore:€­>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒŒ_€†_€‰_€Š", <€€:€†_€‰_€Š> * 16, [[<ore:€®>, <ore:€®>, <ore:€®>], [<ore:€®>, <ore:€®>, <ore:€®>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒŒ_€†_€‰", <€€:€†_€‰> * 8, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <ore:€­>, <ore:€>], [<ore:€>, <ore:€>, <ore:€>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒŒ_€’_€“", <€€:€’_€“> * 8, [<ore:€­>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€–>, <€€:€–>, <€€:€–>, <€€:€–>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒŒ_€—", <€€:€—> * 3, [[<€€:€„>, <€€:€„>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒŒ_bed", <€€:bed>, [[<€€:€„>, <€€:€„>, <€€:€„>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒŒ_€š", <€€:€š:15>, [[<€€:€„>, <€€:€„>, <€€:€„>], [<€€:€„>, <€€:€„>, <€€:€„>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€¯", <€€:€¯> * 9, [[<€€:hay_€°>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€±_€²", <€€:€±_€²> * 2, [[<ore:€³>], [<ore:€œ>], [<ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:€´_€µ", <€€:€´_€µ>, [<ore:€¶>, <€€:€±_€²>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€·", <€€:€·> * 2, [[<ore:€™>, <ore:€™>, <ore:€™>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€¸", <€€:€¸> * 4, [[<€€:€¹> | <€€:€¹:1>], [<ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:tnt_€º", <€€:tnt_€º>, [[<€€:tnt>], [<€€:€º>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:tnt", <€€:tnt>, [[<ore:€¼>, <€€:€•> | <€€:€•:1>, <ore:€¼>], [<€€:€•> | <€€:€•:1>, <ore:€¼>, <€€:€•> | <€€:€•:1>], [<ore:€¼>, <€€:€•> | <€€:€•:1>, <ore:€¼>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€½", <€€:€½>, [[<ore:€¾>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€À_to_€„", <€€:€„>, [[<ore:€À>, <ore:€À>], [<ore:€À>, <ore:€À>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Á", <€€:€Á> * 4, [[<€€:€Â>, <€€:€Â>], [<€€:€Â>, <€€:€Â>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Â_€¢", <€€:€Â_€¢>, [[<ore:€Ã>], [<ore:€Ã>], [<ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Â_€Ä", <€€:€Â_€Ä> * 4, [[<€€:€Ã>, ƒ}, ƒ}], [<€€:€Ã>, <€€:€Ã>, ƒ}], [<€€:€Ã>, <€€:€Ã>, <€€:€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Â_€Æ", <€€:€Â_€Æ> * 6, [[<€€:€Â>, <€€:€Â>, <€€:€Â>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Â_€£", <€€:€Â_€£>, [[<ore:€Ã>], [<ore:€œ>], [<ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Â_€¤_€¥", <€€:€Â_€¤_€¥>, [[<ore:€Â>, <ore:€Â>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Â_€¦", <€€:€Â_€¦>, [[<ore:€Ã>, <ore:€Ã>, <ore:€Ã>], [ƒ}, <ore:€œ>, ƒ}], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Â_hoe", <€€:€Â_hoe>, [[<ore:€Ã>, <ore:€Ã>], [ƒ}, <ore:€œ>], [ƒ}, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Â_€«", <€€:€Â_€«>, [[<ore:€Â>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Â_€Ç_€Ä", <€€:€Â_€Ç_€Ä> * 4, [[<€€:€Á> | <€€:€Á:1> | <€€:€Á:2> | <€€:€Á:3>, ƒ}, ƒ}], [<€€:€Á> | <€€:€Á:1> | <€€:€Á:2> | <€€:€Á:3>, <€€:€Á> | <€€:€Á:1> | <€€:€Á:2> | <€€:€Á:3>, ƒ}], [<€€:€Á> | <€€:€Á:1> | <€€:€Á:2> | <€€:€Á:3>, <€€:€Á> | <€€:€Á:1> | <€€:€Á:2> | <€€:€Á:3>, <€€:€Á> | <€€:€Á:1> | <€€:€Á:2> | <€€:€Á:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Â_€Ç_€Æ", <€€:€Â_€Æ:5> * 6, [[<€€:€Á> | <€€:€Á:1> | <€€:€Á:2> | <€€:€Á:3>, <€€:€Á> | <€€:€Á:1> | <€€:€Á:2> | <€€:€Á:3>, <€€:€Á> | <€€:€Á:1> | <€€:€Á:2> | <€€:€Á:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Â_axe", <€€:€Â_axe>, [[<ore:€Ã>, <ore:€Ã>], [<ore:€Ã>, <ore:€œ>], [ƒ}, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€È_€É", <€€:€È_€É>, [[<ore:€Ê>], [<€€:€É>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ë", <€€:€Ë> * 4, [[<ore:€™>], [<ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ì_€¡_€Æ", <€€:€¡_€Æ:1> * 6, [[<€€:€ª:1>, <€€:€ª:1>, <€€:€ª:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ì_€Ä", <€€:€Ì_€Ä> * 4, [[<€€:€ª:1>, ƒ}, ƒ}], [<€€:€ª:1>, <€€:€ª:1>, ƒ}], [<€€:€ª:1>, <€€:€ª:1>, <€€:€ª:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ì_€ª", <€€:€ª:1> * 4, [[<€€:log:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ì_€Í_€Î", <€€:€Ì_€Í_€Î>, [[<€€:€Ë>, <€€:€ª:1>, <€€:€Ë>], [<€€:€Ë>, <€€:€ª:1>, <€€:€Ë>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ì_€Í", <€€:€Ì_€Í> * 3, [[<€€:€ª:1>, <€€:€Ë>, <€€:€ª:1>], [<€€:€ª:1>, <€€:€Ë>, <€€:€ª:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ì_€©", <€€:€Ì_€©> * 3, [[<€€:€ª:1>, <€€:€ª:1>], [<€€:€ª:1>, <€€:€ª:1>], [<€€:€ª:1>, <€€:€ª:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ì_€Ğ", <€€:€Ì_€Ğ>, [[<€€:€ª:1>, ƒ}, <€€:€ª:1>], [<€€:€ª:1>, <€€:€ª:1>, <€€:€ª:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ò_€Ó", <€€:€Ò_€Ó> * 2, [[ƒ}, <ore:€Õ>, ƒ}], [<ore:€Õ>, <€€:€Ó>, <ore:€Õ>], [ƒ}, <ore:€Õ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ö_€×", <€€:€Ö_€×>, [[<€€:€Ø_€Ù>, <€€:€Ø_€Ù>, <€€:€Ø_€Ù>], [<€€:€Ø_€Ù>, <€€:€×>, <€€:€Ø_€Ù>], [<€€:€Ø_€Ù>, <€€:€Ø_€Ù>, <€€:€Ø_€Ù>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ú_€Û", <€€:€Ú_€Û> * 6, [[<€€:€Ú>, <€€:€Ú>, <€€:€Ú>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ú", <€€:€Ú>, [[<€€:€Ü>, <€€:€Ü>], [<€€:€Ü>, <€€:€Ü>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ_€İ", <€€:€İ:2> * 4, [[<€€:€İ>, <€€:€İ>], [<€€:€İ>, <€€:€İ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ_red_€İ", <€€:red_€İ:2> * 4, [[<€€:red_€İ>, <€€:red_€İ>], [<€€:red_€İ>, <€€:red_€İ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ş_€ß", <€€:€Ş_€ß> * 9, [[<€€:€Ş>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ş", <€€:€Ş>, [[<ore:€Ê>, <ore:€Ê>, <ore:€Ê>], [<ore:€Ê>, <ore:€Ê>, <ore:€Ê>], [<ore:€Ê>, <ore:€Ê>, <ore:€Ê>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€á", <€€:€á> * 3, [[<ore:€™>, <ore:€™>, <ore:€™>], [<ore:€™>, <ore:€™>, <ore:€™>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€â", <€€:€â>, [[<ore:€™>, <ore:€³>, <ore:€™>], [<ore:€™>, <ore:€™>, <ore:€™>], [ƒ}, <ore:€™>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€ä", <€€:€ä>, [[ƒ}, <ore:€³>], [<ore:€³>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:sea_€æ", <€€:sea_€æ>, [[<ore:€è>, <ore:€é>, <ore:€è>], [<ore:€é>, <ore:€é>, <ore:€é>], [<ore:€è>, <ore:€é>, <ore:€è>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€İ_€Ä", <€€:€İ_€Ä> * 4, [[<€€:€İ> | <€€:€İ:1> | <€€:€İ:2>, ƒ}, ƒ}], [<€€:€İ> | <€€:€İ:1> | <€€:€İ:2>, <€€:€İ> | <€€:€İ:1> | <€€:€İ:2>, ƒ}], [<€€:€İ> | <€€:€İ:1> | <€€:€İ:2>, <€€:€İ> | <€€:€İ:1> | <€€:€İ:2>, <€€:€İ> | <€€:€İ:1> | <€€:€İ:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€İ_€Æ", <€€:€Â_€Æ:1> * 6, [[<€€:€İ> | <€€:€İ:1> | <€€:€İ:2>, <€€:€İ> | <€€:€İ:1> | <€€:€İ:2>, <€€:€İ> | <€€:€İ:1> | <€€:€İ:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€İ", <€€:€İ>, [[<€€:€•>, <€€:€•>], [<€€:€•>, <€€:€•>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€ê", <€€:€ê>, [[<€€:€ì_€¸>, <ore:€í>, <€€:€ì_€¸>], [<ore:€Â>, <ore:€Â>, <ore:€Â>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€ì_€¸", <€€:€ì_€¸>, [[<ore:€í>], [<ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€ì_€î", <€€:€ì_€î>, [[ƒ}, <ore:€í>, ƒ}], [<ore:€í>, <ore:€ï>, <ore:€í>], [ƒ}, <ore:€í>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€ì_€°", <€€:€ì_€°>, [[<ore:€í>, <ore:€í>, <ore:€í>], [<ore:€í>, <ore:€í>, <ore:€í>], [<ore:€í>, <ore:€í>, <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€ì", <€€:€ì> * 9, [[<€€:€ì_€°>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:red_€„", <€€:€„:14>, [<ore:€ğ>, <€€:€„>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:red_€†_€‡_€ˆ", <€€:€†_€‡_€ˆ:14> * 8, [[<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <ore:€ğ>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:red_€†_€‰_€Š", <€€:€†_€‰_€Š:14> * 16, [[<ore:€ñ>, <ore:€ñ>, <ore:€ñ>], [<ore:€ñ>, <ore:€ñ>, <ore:€ñ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:red_€†_€‰", <€€:€†_€‰:14> * 8, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <ore:€ğ>, <ore:€>], [<ore:€>, <ore:€>, <ore:€>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:red_€İ_€Ä", <€€:red_€İ_€Ä> * 4, [[<€€:red_€İ> | <€€:red_€İ:1> | <€€:red_€İ:2>, ƒ}, ƒ}], [<€€:red_€İ> | <€€:red_€İ:1> | <€€:red_€İ:2>, <€€:red_€İ> | <€€:red_€İ:1> | <€€:red_€İ:2>, ƒ}], [<€€:red_€İ> | <€€:red_€İ:1> | <€€:red_€İ:2>, <€€:red_€İ> | <€€:red_€İ:1> | <€€:red_€İ:2>, <€€:red_€İ> | <€€:red_€İ:1> | <€€:red_€İ:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:red_€İ_€Æ", <€€:€Â_€ò> * 6, [[<€€:red_€İ> | <€€:red_€İ:1> | <€€:red_€İ:2>, <€€:red_€İ> | <€€:red_€İ:1> | <€€:red_€İ:2>, <€€:red_€İ> | <€€:red_€İ:1> | <€€:red_€İ:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:red_€İ", <€€:red_€İ>, [[<€€:€•:1>, <€€:€•:1>], [<€€:€•:1>, <€€:€•:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:red_€ó_€Ç", <€€:red_€ó_€Ç>, [[<€€:€õ>, <€€:€ó_€ö>], [<€€:€ó_€ö>, <€€:€õ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:red_dye_ƒ‰_ƒ", <€€:dye:1>, [<€€:red_€‘:4>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:red_dye_ƒ‰_ƒ_ƒ", <€€:dye:1> * 2, [<€€:€_€:4>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:red_dye_ƒ‰_ƒ‘", <€€:dye:1>, [<€€:red_€‘>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:red_dye_ƒ‰_€÷", <€€:dye:1>, [<€€:€÷>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:red_€’_€“", <€€:€’_€“:14> * 8, [<ore:€ğ>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€–>, <€€:€–>, <€€:€–>, <€€:€–>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:red_€—", <€€:€—:14> * 3, [[<€€:€„:14>, <€€:€„:14>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:red_bed_ƒ‰_ƒŒ_bed", <€€:bed:14>, [<€€:bed>, <ore:€ğ>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:red_bed", <€€:bed:14>, [[<€€:€„:14>, <€€:€„:14>, <€€:€„:14>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:red_€š", <€€:€š:1>, [[<€€:€„:14>, <€€:€„:14>, <€€:€„:14>], [<€€:€„:14>, <€€:€„:14>, <€€:€„:14>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€ø", <€€:€ø> * 16, [[<ore:€³>, ƒ}, <ore:€³>], [<ore:€³>, <ore:€œ>, <ore:€³>], [<ore:€³>, ƒ}, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€ú_€û_ƒ‰_red_", <€€:€ú_€û>, [[ƒ}, <€€:€ı_€ú>, ƒ}], [<€€:€ş>, <€€:€ÿ_ >, <€€:red_>], [ƒ}, <€€:>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€ú_€û_ƒ‰__", <€€:€ú_€û>, [[ƒ}, <€€:€ı_€ú>, ƒ}], [<€€:€ş>, <€€:€ÿ_ >, <€€:_>], [ƒ}, <€€:>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€Ä", <€€:_€Ä> * 4, [[<€€:_€°> | <€€:_€°:1> | <€€:_€°:2>, ƒ}, ƒ}], [<€€:_€°> | <€€:_€°:1> | <€€:_€°:2>, <€€:_€°> | <€€:_€°:1> | <€€:_€°:2>, ƒ}], [<€€:_€°> | <€€:_€°:1> | <€€:_€°:2>, <€€:_€°> | <€€:_€°:1> | <€€:_€°:2>, <€€:_€°> | <€€:_€°:1> | <€€:_€°:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€Æ", <€€:€Â_€Æ:7> * 6, [[<€€:_€°> | <€€:_€°:1> | <€€:_€°:2>, <€€:_€°> | <€€:_€°:1> | <€€:_€°:2>, <€€:_€°> | <€€:_€°:1> | <€€:_€°:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€°", <€€:_€°>, [[<€€:>, <€€:>], [<€€:>, <€€:>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€Ä", <€€:_€Ä> * 4, [[<€€:_€°>, ƒ}, ƒ}], [<€€:_€°>, <€€:_€°>, ƒ}], [<€€:_€°>, <€€:_€°>, <€€:_€°>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€Æ", <€€:_€Æ> * 6, [[<€€:_€°>, <€€:_€°>, <€€:_€°>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_", <€€:_>, [[<€€:_€Æ>], [<€€:_€Æ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€°", <€€:_€°> * 4, [[<€€:__	>, <€€:__	>], [<€€:__	>, <€€:__	>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:_€„", <€€:€„:10>, [<ore:
>, <€€:€„>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€†_€‡_€ˆ", <€€:€†_€‡_€ˆ:10> * 8, [[<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <ore:
>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€†_€‰_€Š", <€€:€†_€‰_€Š:10> * 16, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€†_€‰", <€€:€†_€‰:10> * 8, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <ore:
>, <ore:€>], [<ore:€>, <ore:€>, <ore:€>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:__box", <€€:__box>, [[<€€:_>], [<ore:€¶>], [<€€:_>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:_dye", <€€:dye:5> * 2, [<ore:>, <ore:€ğ>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:_€’_€“", <€€:€’_€“:10> * 8, [<ore:
>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€–>, <€€:€–>, <€€:€–>, <€€:€–>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€—", <€€:€—:10> * 3, [[<€€:€„:10>, <€€:€„:10>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:_bed_ƒ‰_ƒŒ_bed", <€€:bed:10>, [<€€:bed>, <ore:
>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_bed", <€€:bed:10>, [[<€€:€„:10>, <€€:€„:10>, <€€:€„:10>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€š", <€€:€š:5>, [[<€€:€„:10>, <€€:€„:10>, <€€:€„:10>], [<€€:€„:10>, <€€:€„:10>, <€€:€„:10>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_", <€€:_> * 4, [[<€€:>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:_pie", <€€:_pie>, [<€€:>, <€€:€½>, <ore:egg>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_g", <€€::1>, [[<ore:€è>, <ore:€è>, <ore:€è>], [<ore:€è>, <ore:€è>, <ore:€è>], [<ore:€è>, <ore:€è>, <ore:€è>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:", <€€:>, [[<ore:€è>, <ore:€è>], [<ore:€è>, <ore:€è>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ’_ƒ“", <€€:€Â:2> * 4, [[<ore:>, <ore:>], [<ore:>, <ore:>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ’_ƒ”", <€€:€Â:4> * 4, [[<ore:>, <ore:>], [<ore:>, <ore:>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ’_ƒ•", <€€:€Â:6> * 4, [[<ore:>, <ore:>], [<ore:>, <ore:>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€É", <€€:€É>, [[<ore:€™>, <ore:€™>, <ore:€™>], [<ore:€Ã>, <ore:€³>, <ore:€Ã>], [<ore:€Ã>, <ore:€í>, <ore:€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ–_€„", <€€:€„:6>, [<ore:>, <€€:€„>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ–_€†_€‡_€ˆ", <€€:€†_€‡_€ˆ:6> * 8, [[<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <ore:>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ–_€†_€‰_€Š", <€€:€†_€‰_€Š:6> * 16, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ–_€†_€‰", <€€:€†_€‰:6> * 8, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <ore:>, <ore:€>], [<ore:€>, <ore:€>, <ore:€>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ–_dye_ƒ‰_red_ƒ—", <€€:dye:9> * 2, [<ore:€ğ>, <ore:€­>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ–_dye_ƒ‰_ƒ–_ƒ", <€€:dye:9>, [<€€:red_€‘:7>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ–_dye_ƒ‰_ƒ˜", <€€:dye:9> * 2, [<€€:€_€:5>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ–_€’_€“", <€€:€’_€“:6> * 8, [<ore:>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€–>, <€€:€–>, <€€:€–>, <€€:€–>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ–_€—", <€€:€—:6> * 3, [[<€€:€„:6>, <€€:€„:6>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ–_bed_ƒ‰_ƒŒ_bed", <€€:bed:6>, [<€€:bed>, <ore:>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ–_bed", <€€:bed:6>, [[<€€:€„:6>, <€€:€„:6>, <€€:€„:6>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ–_€š", <€€:€š:9>, [[<€€:€„:6>, <€€:€„:6>, <€€:€„:6>], [<€€:€„:6>, <€€:€„:6>, <€€:€„:6>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:__€°", <€€:_€°:2> * 2, [[<€€:_€°>], [<€€:_€°>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€‚", <€€:€‚> * 3, [[<ore:€¾>, <ore:€¾>, <ore:€¾>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:", <€€:>, [[<ore:€œ>, <ore:€œ>, <ore:€œ>], [<ore:€œ>, <€€:€„> | <€€:€„:1> | <€€:€„:2> | <€€:€„:3> | <€€:€„:4> | <€€:€„:5> | <€€:€„:6> | <€€:€„:7> | <€€:€„:8> | <€€:€„:9> | <€€:€„:10> | <€€:€„:11> | <€€:€„:12> | <€€:€„:13> | <€€:€„:14> | <€€:€„:15>, <ore:€œ>], [<ore:€œ>, <ore:€œ>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ™_€„", <€€:€„:1>, [<ore:>, <€€:€„>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ™_€†_€‡_€ˆ", <€€:€†_€‡_€ˆ:1> * 8, [[<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <ore:>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ™_€†_€‰_€Š", <€€:€†_€‰_€Š:1> * 16, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ™_€†_€‰", <€€:€†_€‰:1> * 8, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <ore:>, <ore:€>], [<ore:€>, <ore:€>, <ore:€>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ™_dye_ƒ‰_red_€", <€€:dye:14> * 2, [<ore:€ğ>, <ore:€…>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ™_dye_ƒ‰_ƒ™_ƒ", <€€:dye:14>, [<€€:red_€‘:5>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ™_€’_€“", <€€:€’_€“:1> * 8, [<ore:>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€–>, <€€:€–>, <€€:€–>, <€€:€–>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ™_€—", <€€:€—:1> * 3, [[<€€:€„:1>, <€€:€„:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ™_bed_ƒ‰_ƒŒ_bed", <€€:bed:1>, [<€€:bed>, <ore:>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ™_bed", <€€:bed:1>, [[<€€:€„:1>, <€€:€„:1>, <€€:€„:1>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ™_€š", <€€:€š:14>, [[<€€:€„:1>, <€€:€„:1>, <€€:€„:1>], [<€€:€„:1>, <€€:€„:1>, <€€:€„:1>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:", <€€:>, [[<ore:€Ã>, <ore:€Ã>, <ore:€Ã>], [<ore:€í>, <ore:€í>, <€€:>], [<ore:€Ã>, <ore:€Ã>, <ore:€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:oak_€¡_€Æ", <€€:€¡_€Æ> * 6, [[<€€:€ª>, <€€:€ª>, <€€:€ª>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:oak_€Ä", <€€:oak_€Ä> * 4, [[<€€:€ª>, ƒ}, ƒ}], [<€€:€ª>, <€€:€ª>, ƒ}], [<€€:€ª>, <€€:€ª>, <€€:€ª>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:oak_€ª", <€€:€ª> * 4, [[<€€:log>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:", <€€:>, [[<ore:€™>, <ore:€™>, <ore:€™>], [<ore:€™>, <ore:€í>, <ore:€™>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€ó_€ö_€°", <€€:€ó_€ö_€°>, [[<€€:€ó_€ö>, <€€:€ó_€ö>, <€€:€ó_€ö>], [<€€:€ó_€ö>, <€€:€ó_€ö>, <€€:€ó_€ö>], [<€€:€ó_€ö>, <€€:€ó_€ö>, <€€:€ó_€ö>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€ó_€Ç_€Ä", <€€:€ó_€Ç_€Ä> * 4, [[<€€:€ó_€Ç>, ƒ}, ƒ}], [<€€:€ó_€Ç>, <€€:€ó_€Ç>, ƒ}], [<€€:€ó_€Ç>, <€€:€ó_€Ç>, <€€:€ó_€Ç>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€ó_€Ç_€Æ", <€€:€Â_€Æ:6> * 6, [[<€€:€ó_€Ç>, <€€:€ó_€Ç>, <€€:€ó_€Ç>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€ó_€Ç_€Í", <€€:€ó_€Ç_€Í> * 6, [[<€€:€ó_€Ç>, <€€:€ó_€Ç>, <€€:€ó_€Ç>], [<€€:€ó_€Ç>, <€€:€ó_€Ç>, <€€:€ó_€Ç>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€ó_€Ç", <€€:€ó_€Ç>, [[<€€:€õ>, <€€:€õ>], [<€€:€õ>, <€€:€õ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:_€û", <€€:_€û>, [<€€:_>, <€€:red_>, <€€:>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:!_€Á", <€€:€Á:1>, [<€€:€Á>, <€€:>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:!_€Ã_ ", <€€:€Ã_ :1> * 6, [[<€€:!_€Ã>, <€€:!_€Ã>, <€€:!_€Ã>], [<€€:!_€Ã>, <€€:!_€Ã>, <€€:!_€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:!_€Ã", <€€:!_€Ã>, [<ore:€Ã>, <€€:>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€º", <€€:€º>, [[<ore:€³>, ƒ}, <ore:€³>], [<ore:€³>, <ore:€³>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€×_", <€€:€×_>, [[<€€:€×>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€×_€°", <€€:€×_€°>, [[<€€:€×>, <€€:€×>, <€€:€×>], [<€€:€×>, <€€:€×>, <€€:€×>], [<€€:€×>, <€€:€×>, <€€:€×>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:map", <€€:map>, [[<ore:€‚>, <ore:€‚>, <ore:€‚>], [<ore:€‚>, <€€:">, <ore:€‚>], [<ore:€‚>, <ore:€‚>, <ore:€‚>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:#_$", <€€:#_$>, [<€€:%_€“>, <ore:€Ê>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:#", <€€:#>, [[<€€:#_$>, <€€:#_$>], [<€€:#_$>, <€€:#_$>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒš_€„", <€€:€„:2>, [<ore:&>, <€€:€„>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒš_€†_€‡_€ˆ", <€€:€†_€‡_€ˆ:2> * 8, [[<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <ore:&>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒš_€†_€‰_€Š", <€€:€†_€‰_€Š:2> * 16, [[<ore:'>, <ore:'>, <ore:'>], [<ore:'>, <ore:'>, <ore:'>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒš_€†_€‰", <€€:€†_€‰:2> * 8, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <ore:&>, <ore:€>], [<ore:€>, <ore:€>, <ore:€>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒš_dye_ƒ‰__and_ƒ–", <€€:dye:13> * 2, [<ore:
>, <ore:>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒš_dye_ƒ‰_ƒ›", <€€:dye:13> * 2, [<€€:€_€:1>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒš_dye_ƒ‰_A_red_ƒ–", <€€:dye:13> * 3, [<ore:>, <ore:€ğ>, <ore:>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒš_dye_ƒ‰_A_ink_ƒ—", <€€:dye:13> * 4, [<ore:>, <ore:€ğ>, <ore:€ğ>, <ore:€­>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒš_dye_ƒ‰_ƒœ", <€€:dye:13>, [<€€:red_€‘:2>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒš_€’_€“", <€€:€’_€“:2> * 8, [<ore:&>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€–>, <€€:€–>, <€€:€–>, <€€:€–>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒš_€—", <€€:€—:2> * 3, [[<€€:€„:2>, <€€:€„:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒš_bed_ƒ‰_ƒŒ_bed", <€€:bed:2>, [<€€:bed>, <ore:&>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒš_bed", <€€:bed:2>, [[<€€:€„:2>, <€€:€„:2>, <€€:€„:2>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒš_€š", <€€:€š:13>, [[<€€:€„:2>, <€€:€„:2>, <€€:€„:2>], [<€€:€„:2>, <€€:€„:2>, <€€:€„:2>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:lit_", <€€:lit_>, [[<€€:>], [<€€:€¸>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ_€„", <€€:€„:5>, [<ore:)>, <€€:€„>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ_€†_€‡_€ˆ", <€€:€†_€‡_€ˆ:5> * 8, [[<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <ore:)>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ_€†_€‰_€Š", <€€:€†_€‰_€Š:5> * 16, [[<ore:*>, <ore:*>, <ore:*>], [<ore:*>, <ore:*>, <ore:*>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ_€†_€‰", <€€:€†_€‰:5> * 8, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <ore:)>, <ore:€>], [<ore:€>, <ore:€>, <ore:€>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ_dye", <€€:dye:10> * 2, [<ore:+>, <ore:€­>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ_€’_€“", <€€:€’_€“:5> * 8, [<ore:)>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€–>, <€€:€–>, <€€:€–>, <€€:€–>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ_€—", <€€:€—:5> * 3, [[<€€:€„:5>, <€€:€„:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ_bed_ƒ‰_ƒŒ_bed", <€€:bed:5>, [<€€:bed>, <ore:)>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ_bed", <€€:bed:5>, [[<€€:€„:5>, <€€:€„:5>, <€€:€„:5>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ_€š", <€€:€š:10>, [[<€€:€„:5>, <€€:€„:5>, <€€:€„:5>], [<€€:€„:5>, <€€:€„:5>, <€€:€„:5>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:,_-_€¤_€¥", <€€:,_-_€¤_€¥>, [[<ore:.>, <ore:.>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:,_ƒ_€„", <€€:€„:8>, [<ore:/>, <€€:€„>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:,_ƒ_€†_€‡_€ˆ", <€€:€†_€‡_€ˆ:8> * 8, [[<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <ore:/>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:,_ƒ_€†_€‰_€Š", <€€:€†_€‰_€Š:8> * 16, [[<ore:0>, <ore:0>, <ore:0>], [<ore:0>, <ore:0>, <ore:0>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:,_ƒ_€†_€‰", <€€:€†_€‰:8> * 8, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <ore:/>, <ore:€>], [<ore:€>, <ore:€>, <ore:€>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:,_ƒ_dye_ƒ‰_ƒŒ_ƒ", <€€:dye:7>, [<€€:red_€‘:6>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:,_ƒ_dye_ƒ‰_ƒŸ_ƒ ", <€€:dye:7>, [<€€:red_€‘:8>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:,_ƒ_dye_ƒ‰_ink_ƒ—", <€€:dye:7> * 3, [<ore:€Ÿ>, <ore:€­>, <ore:€­>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:,_ƒ_dye_ƒ‰_ƒ_ƒ—", <€€:dye:7> * 2, [<ore:1>, <ore:€­>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:,_ƒ_dye_ƒ‰_ƒ¡_ƒ¢", <€€:dye:7>, [<€€:red_€‘:3>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:,_ƒ_€’_€“", <€€:€’_€“:8> * 8, [<ore:/>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€–>, <€€:€–>, <€€:€–>, <€€:€–>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:,_ƒ_€—", <€€:€—:8> * 3, [[<€€:€„:8>, <€€:€„:8>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:,_ƒ_bed_ƒ‰_ƒŒ_bed", <€€:bed:8>, [<€€:bed>, <ore:/>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:,_ƒ_bed", <€€:bed:8>, [[<€€:€„:8>, <€€:€„:8>, <€€:€„:8>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:,_ƒ_€š", <€€:€š:7>, [[<€€:€„:8>, <€€:€„:8>, <€€:€„:8>], [<€€:€„:8>, <€€:€„:8>, <€€:€„:8>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:,_ƒ£_€„", <€€:€„:3>, [<ore:2>, <€€:€„>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:,_ƒ£_€†_€‡_€ˆ", <€€:€†_€‡_€ˆ:3> * 8, [[<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <ore:2>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:,_ƒ£_€†_€‰_€Š", <€€:€†_€‰_€Š:3> * 16, [[<ore:3>, <ore:3>, <ore:3>], [<ore:3>, <ore:3>, <ore:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:,_ƒ£_€†_€‰", <€€:€†_€‰:3> * 8, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <ore:2>, <ore:€>], [<ore:€>, <ore:€>, <ore:€>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:,_ƒ£_dye_ƒ‰_A_ƒ—", <€€:dye:12> * 2, [<ore:>, <ore:€­>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:,_ƒ£_dye_ƒ‰_ƒ£_ƒ¤", <€€:dye:12>, [<€€:red_€‘:1>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:,_ƒ£_€’_€“", <€€:€’_€“:3> * 8, [<ore:2>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€–>, <€€:€–>, <€€:€–>, <€€:€–>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:,_ƒ£_€—", <€€:€—:3> * 3, [[<€€:€„:3>, <€€:€„:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:,_ƒ£_bed_ƒ‰_ƒŒ_bed", <€€:bed:3>, [<€€:bed>, <ore:2>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:,_ƒ£_bed", <€€:bed:3>, [[<€€:€„:3>, <€€:€„:3>, <€€:€„:3>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:,_ƒ£_€š", <€€:€š:12>, [[<€€:€„:3>, <€€:€„:3>, <€€:€„:3>], [<€€:€„:3>, <€€:€„:3>, <€€:€„:3>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:4", <€€:4>, [[<ore:€œ>], [<ore:€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:5_6", <€€:5_6>, [[<ore:5>, <ore:5>, <ore:5>], [<ore:5>, ƒ}, <ore:5>], [<ore:5>, ƒ}, <ore:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:5_8", <€€:5_8>, [[<ore:5>, <ore:5>, <ore:5>], [<ore:5>, ƒ}, <ore:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:5_:", <€€:5_:>, [[<ore:5>, ƒ}, <ore:5>], [<ore:5>, <ore:5>, <ore:5>], [<ore:5>, <ore:5>, <ore:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:5_<", <€€:5_<>, [[<ore:5>, ƒ}, <ore:5>], [<ore:5>, ƒ}, <ore:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:5", <€€:5>, [[<€€:€ú_>>, <€€:€ú_>>], [<€€:€ú_>>, <€€:€ú_>>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:?", <€€:?> * 2, [[<ore:€À>, <ore:€À>, ƒ}], [<ore:€À>, <ore:€Ê>, ƒ}], [ƒ}, ƒ}, <ore:€À>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:A_ƒ¥", <€€:dye:4> * 9, [[<€€:A_€°>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:A_€°", <€€:A_€°>, [[<€€:dye:4>, <€€:dye:4>, <€€:dye:4>], [<€€:dye:4>, <€€:dye:4>, <€€:dye:4>], [<€€:dye:4>, <€€:dye:4>, <€€:dye:4>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:B", <€€:B> * 3, [[<ore:€œ>, ƒ}, <ore:€œ>], [<ore:€œ>, <ore:€œ>, <ore:€œ>], [<ore:€œ>, ƒ}, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:D_€¡_€Æ", <€€:€¡_€Æ:3> * 6, [[<€€:€ª:3>, <€€:€ª:3>, <€€:€ª:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:D_€Ä", <€€:D_€Ä> * 4, [[<€€:€ª:3>, ƒ}, ƒ}], [<€€:€ª:3>, <€€:€ª:3>, ƒ}], [<€€:€ª:3>, <€€:€ª:3>, <€€:€ª:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:D_€ª", <€€:€ª:3> * 4, [[<€€:log:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:D_€Í_€Î", <€€:D_€Í_€Î>, [[<€€:€Ë>, <€€:€ª:3>, <€€:€Ë>], [<€€:€Ë>, <€€:€ª:3>, <€€:€Ë>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:D_€Í", <€€:D_€Í> * 3, [[<€€:€ª:3>, <€€:€Ë>, <€€:€ª:3>], [<€€:€ª:3>, <€€:€Ë>, <€€:€ª:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:D_€©", <€€:D_€©> * 3, [[<€€:€ª:3>, <€€:€ª:3>], [<€€:€ª:3>, <€€:€ª:3>], [<€€:€ª:3>, <€€:€ª:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:D_€Ğ", <€€:D_€Ğ>, [[<€€:€ª:3>, ƒ}, <€€:€ª:3>], [<€€:€ª:3>, <€€:€ª:3>, <€€:€ª:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:E", <€€:E>, [[<ore:€™>, <ore:€™>, <ore:€™>], [<ore:€™>, <ore:F>, <ore:€™>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:G_H", <€€:G_H>, [[<ore:€œ>, <ore:€œ>, <ore:€œ>], [<ore:€œ>, <ore:5>, <ore:€œ>], [<ore:€œ>, <ore:€œ>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:I_€·", <€€:I_€·>, [[<ore:€³>, <ore:€³>], [<ore:€³>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:I_€¢", <€€:I_€¢>, [[<ore:€³>], [<ore:€³>], [<ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:I_€£", <€€:I_€£>, [[<ore:€³>], [<ore:€œ>], [<ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:I_€¦", <€€:I_€¦>, [[<ore:€³>, <ore:€³>, <ore:€³>], [ƒ}, <ore:€œ>, ƒ}], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:I_€Ù", <€€:I_€Ù> * 9, [[<ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:I_6", <€€:I_6>, [[<ore:€³>, <ore:€³>, <ore:€³>], [<ore:€³>, ƒ}, <ore:€³>], [<ore:€³>, ƒ}, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:I_J_ƒ‰_ƒ¦", <€€:I_J>, [[<€€:I_€Ù>, <€€:I_€Ù>, <€€:I_€Ù>], [<€€:I_€Ù>, <€€:I_€Ù>, <€€:I_€Ù>], [<€€:I_€Ù>, <€€:I_€Ù>, <€€:I_€Ù>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:I_J_ƒ‰_€°", <€€:I_J> * 9, [[<€€:I_€°>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:I_hoe", <€€:I_hoe>, [[<ore:€³>, <ore:€³>], [ƒ}, <ore:€œ>], [ƒ}, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:I_8", <€€:I_8>, [[<ore:€³>, <ore:€³>, <ore:€³>], [<ore:€³>, ƒ}, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:I_€©", <€€:I_€©> * 3, [[<ore:€³>, <ore:€³>], [<ore:€³>, <ore:€³>], [<ore:€³>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:I_:", <€€:I_:>, [[<ore:€³>, ƒ}, <ore:€³>], [<ore:€³>, <ore:€³>, <ore:€³>], [<ore:€³>, <ore:€³>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:I_<", <€€:I_<>, [[<ore:€³>, ƒ}, <ore:€³>], [<ore:€³>, ƒ}, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:I_€°", <€€:I_€°>, [[<ore:€³>, <ore:€³>, <ore:€³>], [<ore:€³>, <ore:€³>, <ore:€³>], [<ore:€³>, <ore:€³>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:I_K", <€€:I_K> * 16, [[<ore:€³>, <ore:€³>, <ore:€³>], [<ore:€³>, <ore:€³>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:I_axe", <€€:I_axe>, [[<ore:€³>, <ore:€³>], [<ore:€³>, <ore:€œ>], [ƒ}, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:L_€º", <€€:L_€º>, [[<€€:L>], [<€€:€º>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:L", <€€:L>, [[<ore:€³>, ƒ}, <ore:€³>], [<ore:€³>, <ore:€¶>, <ore:€³>], [ƒ}, <ore:€³>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:N_-_€¤_€¥", <€€:N_-_€¤_€¥>, [[<ore:€³>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:hay_€°", <€€:hay_€°>, [[<€€:€¯>, <€€:€¯>, <€€:€¯>], [<€€:€¯>, <€€:€¯>, <€€:€¯>], [<€€:€¯>, <€€:€¯>, <€€:€¯>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ§_€„", <€€:€„:13>, [<ore:+>, <€€:€„>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ§_€†_€‡_€ˆ", <€€:€†_€‡_€ˆ:13> * 8, [[<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <ore:+>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ§_€†_€‰_€Š", <€€:€†_€‰_€Š:13> * 16, [[<ore:O>, <ore:O>, <ore:O>], [<ore:O>, <ore:O>, <ore:O>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ§_€†_€‰", <€€:€†_€‰:13> * 8, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <ore:+>, <ore:€>], [<ore:€>, <ore:€>, <ore:€>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ§_€’_€“", <€€:€’_€“:13> * 8, [<ore:+>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€–>, <€€:€–>, <€€:€–>, <€€:€–>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ§_€—", <€€:€—:13> * 3, [[<€€:€„:13>, <€€:€„:13>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ§_bed_ƒ‰_ƒŒ_bed", <€€:bed:13>, [<€€:bed>, <ore:+>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ§_bed", <€€:bed:13>, [[<€€:€„:13>, <€€:€„:13>, <€€:€„:13>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ§_€š", <€€:€š:2>, [[<€€:€„:13>, <€€:€„:13>, <€€:€„:13>], [<€€:€„:13>, <€€:€„:13>, <€€:€„:13>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ_€„", <€€:€„:7>, [<ore:1>, <€€:€„>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ_€†_€‡_€ˆ", <€€:€†_€‡_€ˆ:7> * 8, [[<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <ore:1>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ_€†_€‰_€Š", <€€:€†_€‰_€Š:7> * 16, [[<ore:P>, <ore:P>, <ore:P>], [<ore:P>, <ore:P>, <ore:P>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ_€†_€‰", <€€:€†_€‰:7> * 8, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <ore:1>, <ore:€>], [<ore:€>, <ore:€>, <ore:€>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ_dye", <€€:dye:8> * 2, [<ore:€Ÿ>, <ore:€­>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ_€’_€“", <€€:€’_€“:7> * 8, [<ore:1>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€–>, <€€:€–>, <€€:€–>, <€€:€–>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ_€—", <€€:€—:7> * 3, [[<€€:€„:7>, <€€:€„:7>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ_bed_ƒ‰_ƒŒ_bed", <€€:bed:7>, [<€€:bed>, <ore:1>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ_bed", <€€:bed:7>, [[<€€:€„:7>, <€€:€„:7>, <€€:€„:7>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ_€š", <€€:€š:8>, [[<€€:€„:7>, <€€:€„:7>, <€€:€„:7>], [<€€:€„:7>, <€€:€„:7>, <€€:€„:7>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ“", <€€:€Â:1>, [<ore:>, <€€:>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:Q_€¢", <€€:Q_€¢>, [[<ore:.>], [<ore:.>], [<ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:Q_€£", <€€:Q_€£>, [[<ore:.>], [<ore:€œ>], [<ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:Q_€ø", <€€:Q_€ø> * 6, [[<ore:.>, ƒ}, <ore:.>], [<ore:.>, <ore:€œ>, <ore:.>], [<ore:.>, <ore:€í>, <ore:.>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:Q_€¦", <€€:Q_€¦>, [[<ore:.>, <ore:.>, <ore:.>], [ƒ}, <ore:€œ>, ƒ}], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:Q_6", <€€:Q_6>, [[<ore:.>, <ore:.>, <ore:.>], [<ore:.>, ƒ}, <ore:.>], [<ore:.>, ƒ}, <ore:.>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:Q_hoe", <€€:Q_hoe>, [[<ore:.>, <ore:.>], [ƒ}, <ore:€œ>], [ƒ}, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:Q_8", <€€:Q_8>, [[<ore:.>, <ore:.>, <ore:.>], [<ore:.>, ƒ}, <ore:.>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:Q_:", <€€:Q_:>, [[<ore:.>, ƒ}, <ore:.>], [<ore:.>, <ore:.>, <ore:.>], [<ore:.>, <ore:.>, <ore:.>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:Q_€ş", <€€:Q_€ş>, [[<€€:€Ø_€Ù>, <€€:€Ø_€Ù>, <€€:€Ø_€Ù>], [<€€:€Ø_€Ù>, <€€:€ş>, <€€:€Ø_€Ù>], [<€€:€Ø_€Ù>, <€€:€Ø_€Ù>, <€€:€Ø_€Ù>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:Q_<", <€€:Q_<>, [[<ore:.>, ƒ}, <ore:.>], [<ore:.>, ƒ}, <ore:.>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:Q_axe", <€€:Q_axe>, [[<ore:.>, <ore:.>], [<ore:.>, <ore:€œ>], [ƒ}, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:Q_S", <€€:Q_S>, [[<ore:.>, <ore:.>, <ore:.>], [<ore:.>, <€€:S>, <ore:.>], [<ore:.>, <ore:.>, <ore:.>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ø_€Ù", <€€:€Ø_€Ù> * 9, [[<ore:.>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ø_J_ƒ‰_ƒ¦", <€€:€Ø_J>, [[<€€:€Ø_€Ù>, <€€:€Ø_€Ù>, <€€:€Ø_€Ù>], [<€€:€Ø_€Ù>, <€€:€Ø_€Ù>, <€€:€Ø_€Ù>], [<€€:€Ø_€Ù>, <€€:€Ø_€Ù>, <€€:€Ø_€Ù>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ø_J_ƒ‰_€°", <€€:€Ø_J> * 9, [[<€€:€Ø_€°>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ø_€°", <€€:€Ø_€°>, [[<ore:.>, <ore:.>, <ore:.>], [<ore:.>, <ore:.>, <ore:.>], [<ore:.>, <ore:.>, <ore:.>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€ï", <€€:€ï>, [[<ore:€Õ>, <ore:€Õ>], [<ore:€Õ>, <ore:€Õ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€‰_€Š", <€€:€‰_€Š> * 16, [[<€€:€‰>, <€€:€‰>, <€€:€‰>], [<€€:€‰>, <€€:€‰>, <€€:€‰>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€‰_T", <€€:€‰_T> * 3, [[<ore:€>, ƒ}, <ore:€>], [ƒ}, <ore:€>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:V_€º", <€€:V_€º>, [[<€€:V>], [<€€:€º>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:V", <€€:V>, [[<ore:€Ã>, <ore:€Ã>, <ore:€Ã>], [<ore:€Ã>, ƒ}, <ore:€Ã>], [<ore:€Ã>, <ore:€Ã>, <ore:€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€‘_pot", <€€:€‘_pot>, [[<€€:€Ç>, ƒ}, <€€:€Ç>], [ƒ}, <€€:€Ç>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:X_and_Y", <€€:X_and_Y>, [<ore:€³>, <€€:X>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:Z_rod", <€€:Z_rod>, [[ƒ}, ƒ}, <ore:€œ>], [ƒ}, <ore:€œ>, <ore:€À>], [<ore:€œ>, ƒ}, <ore:€À>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:\_]", <€€:\_]> * 3, [<ore:€¼>, <€€:%_€“>, <€€:€¹> | <€€:€¹:1>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:^___eye", <€€:^___eye>, [<€€:__eye>, <€€:_>, <€€:€½>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Í_€Î", <€€:€Í_€Î>, [[<€€:€Ë>, <€€:€ª>, <€€:€Ë>], [<€€:€Ë>, <€€:€ª>, <€€:€Ë>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Í", <€€:€Í> * 3, [[<€€:€ª>, <€€:€Ë>, <€€:€ª>], [<€€:€ª>, <€€:€Ë>, <€€:€ª>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:`_eye", <€€:`_eye>, [<ore:a>, <€€:%_€“>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:`_€µ", <€€:`_€µ>, [[<€€:b>, <€€:b>, <€€:b>], [<€€:b>, <€€:`_eye>, <€€:b>], [<€€:b>, <€€:b>, <€€:b>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:end_rod", <€€:end_rod> * 4, [[<€€:%_rod>], [<€€:__	>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:end_c", <€€:end_c>, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <€€:`_eye>, <ore:€>], [<ore:€>, <€€:e_f>, <ore:€>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:end_g", <€€:end_g> * 4, [[<€€:end_€Â>, <€€:end_€Â>], [<€€:end_€Â>, <€€:end_€Â>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:h_i", <€€:h_i>, [[ƒ}, <€€:€>, ƒ}], [<ore:F>, <€€:b>, <ore:F>], [<€€:b>, <€€:b>, <€€:b>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:k_€°", <€€:k_€°>, [[<ore:l>, <ore:l>, <ore:l>], [<ore:l>, <ore:l>, <ore:l>], [<ore:l>, <ore:l>, <ore:l>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:k", <€€:k> * 9, [[<€€:k_€°>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:m", <€€:m>, [[<ore:€Ã>, <ore:€Ã>, <ore:€Ã>], [<ore:€Ã>, ƒ}, <ore:€Ã>], [<ore:€Ã>, <ore:€í>, <ore:€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:o", <€€:o>, [[<ore:€Ã>, <ore:€Ã>, <ore:€Ã>], [<ore:€Ã>, <€€:bow>, <ore:€Ã>], [<ore:€Ã>, <ore:€í>, <ore:€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ”", <€€:€Â:3> * 2, [[<ore:€Ã>, <€€:>], [<€€:>, <ore:€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:p_€¢", <€€:p_€¢>, [[<ore:F>], [<ore:F>], [<ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:p_€£", <€€:p_€£>, [[<ore:F>], [<ore:€œ>], [<ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:p_€¦", <€€:p_€¦>, [[<ore:F>, <ore:F>, <ore:F>], [ƒ}, <ore:€œ>, ƒ}], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:p_6", <€€:p_6>, [[<ore:F>, <ore:F>, <ore:F>], [<ore:F>, ƒ}, <ore:F>], [<ore:F>, ƒ}, <ore:F>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:p_hoe", <€€:p_hoe>, [[<ore:F>, <ore:F>], [ƒ}, <ore:€œ>], [ƒ}, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:p_8", <€€:p_8>, [[<ore:F>, <ore:F>, <ore:F>], [<ore:F>, ƒ}, <ore:F>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:p_:", <€€:p_:>, [[<ore:F>, ƒ}, <ore:F>], [<ore:F>, <ore:F>, <ore:F>], [<ore:F>, <ore:F>, <ore:F>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:p_<", <€€:p_<>, [[<ore:F>, ƒ}, <ore:F>], [<ore:F>, ƒ}, <ore:F>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:p_€°", <€€:p_€°>, [[<ore:F>, <ore:F>, <ore:F>], [<ore:F>, <ore:F>, <ore:F>], [<ore:F>, <ore:F>, <ore:F>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:p_axe", <€€:p_axe>, [[<ore:F>, <ore:F>], [<ore:F>, <ore:€œ>], [ƒ}, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:p", <€€:p> * 9, [[<€€:p_€°>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:q_€ø", <€€:q_€ø> * 6, [[<ore:€³>, ƒ}, <ore:€³>], [<ore:€³>, <€€:€Â_€¤_€¥>, <ore:€³>], [<ore:€³>, <ore:€í>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:r_q", <€€:r_q>, [[<ore:€>, <ore:€>, <ore:€>], [<€€:>, <€€:>, <€€:>], [<€€:€¡_€Æ> | <€€:€¡_€Æ:1> | <€€:€¡_€Æ:2> | <€€:€¡_€Æ:3> | <€€:€¡_€Æ:4> | <€€:€¡_€Æ:5>, <€€:€¡_€Æ> | <€€:€¡_€Æ:1> | <€€:€¡_€Æ:2> | <€€:€¡_€Æ:3> | <€€:€¡_€Æ:4> | <€€:€¡_€Æ:5>, <€€:€¡_€Æ> | <€€:€¡_€Æ:1> | <€€:€¡_€Æ:2> | <€€:€¡_€Æ:3> | <€€:€¡_€Æ:4> | <€€:€¡_€Æ:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:t_", <€€::2>, [[<ore:€è>, <ore:€è>, <ore:€è>], [<ore:€è>, <ore:€Ÿ>, <ore:€è>], [<ore:€è>, <ore:€è>, <ore:€è>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:t_oak_€¡_€Æ", <€€:€¡_€Æ:5> * 6, [[<€€:€ª:5>, <€€:€ª:5>, <€€:€ª:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:t_oak_€Ä", <€€:t_oak_€Ä> * 4, [[<€€:€ª:5>, ƒ}, ƒ}], [<€€:€ª:5>, <€€:€ª:5>, ƒ}], [<€€:€ª:5>, <€€:€ª:5>, <€€:€ª:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:t_oak_€ª", <€€:€ª:5> * 4, [[<€€:u:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:t_oak_€Í_€Î", <€€:t_oak_€Í_€Î>, [[<€€:€Ë>, <€€:€ª:5>, <€€:€Ë>], [<€€:€Ë>, <€€:€ª:5>, <€€:€Ë>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:t_oak_€Í", <€€:t_oak_€Í> * 3, [[<€€:€ª:5>, <€€:€Ë>, <€€:€ª:5>], [<€€:€ª:5>, <€€:€Ë>, <€€:€ª:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:t_oak_€©", <€€:t_oak_€©> * 3, [[<€€:€ª:5>, <€€:€ª:5>], [<€€:€ª:5>, <€€:€ª:5>], [<€€:€ª:5>, <€€:€ª:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:t_oak_€Ğ", <€€:t_oak_€Ğ>, [[<€€:€ª:5>, ƒ}, <€€:€ª:5>], [<€€:€ª:5>, <€€:€ª:5>, <€€:€ª:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ¨_€„", <€€:€„:9>, [<ore:v>, <€€:€„>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ¨_€†_€‡_€ˆ", <€€:€†_€‡_€ˆ:9> * 8, [[<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <ore:v>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ¨_€†_€‰_€Š", <€€:€†_€‰_€Š:9> * 16, [[<ore:w>, <ore:w>, <ore:w>], [<ore:w>, <ore:w>, <ore:w>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ¨_€†_€‰", <€€:€†_€‰:9> * 8, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <ore:v>, <ore:€>], [<ore:€>, <ore:€>, <ore:€>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ¨_dye", <€€:dye:6> * 2, [<ore:>, <ore:+>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ¨_€’_€“", <€€:€’_€“:9> * 8, [<ore:v>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€–>, <€€:€–>, <€€:€–>, <€€:€–>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ¨_€—", <€€:€—:9> * 3, [[<€€:€„:9>, <€€:€„:9>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ¨_bed_ƒ‰_ƒŒ_bed", <€€:bed:9>, [<€€:bed>, <ore:v>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ¨_bed", <€€:bed:9>, [[<€€:€„:9>, <€€:€„:9>, <€€:€„:9>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ¨_€š", <€€:€š:6>, [[<€€:€„:9>, <€€:€„:9>, <€€:€„:9>], [<€€:€„:9>, <€€:€„:9>, <€€:€„:9>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:x_i", <€€:x_i>, [[<ore:€™>, <ore:€™>], [<ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:y", <€€:y> * 8, [[<€€:€¯>, <€€:dye:3>, <€€:€¯>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:"", <€€:">, [[ƒ}, <ore:€³>, ƒ}], [<ore:€³>, <ore:€í>, <ore:€³>], [ƒ}, <ore:€³>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:z", <€€:z>, [[ƒ}, <€€:€ì_€¸>, ƒ}], [<€€:€ì_€¸>, <€€:>, <€€:€ì_€¸>], [<ore:€Â>, <ore:€Â>, <ore:€Â>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ã_ ", <€€:€Ã_ > * 6, [[<€€:€Ã>, <€€:€Ã>, <€€:€Ã>], [<€€:€Ã>, <€€:€Ã>, <€€:€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ã_€Æ", <€€:€Â_€Æ:3> * 6, [[<€€:€Ã>, <€€:€Ã>, <€€:€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ©_|", <€€:|:1> * 4, [[<€€:|>, <€€:€–>], [<€€:€–>, <€€:|>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€¹_€°", <€€:€¹_€°>, [[<€€:€¹>, <€€:€¹>, <€€:€¹>], [<€€:€¹>, <€€:€¹>, <€€:€¹>], [<€€:€¹>, <€€:€¹>, <€€:€¹>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€¹", <€€:€¹> * 9, [[<€€:€¹_€°>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:}", <€€:}>, [[ƒ}, <ore:.>, ƒ}], [<ore:.>, <ore:€í>, <ore:.>], [ƒ}, <ore:.>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€ˆ", <€€:€ˆ>, [[<€€:€ˆ_€ß>, <€€:€ˆ_€ß>], [<€€:€ˆ_€ß>, <€€:€ˆ_€ß>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒª_€Á", <€€:€Á:3>, [[<€€:€Â_€Æ:5>], [<€€:€Â_€Æ:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒª_€İ", <€€:€İ:1>, [[<€€:€Â_€Æ:1>], [<€€:€Â_€Æ:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒª_red_€İ", <€€:red_€İ:1>, [[<€€:€Â_€ò>], [<€€:€Â_€ò>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒª__€°", <€€:_€°:1>, [[<€€:€Â_€Æ:7>], [<€€:€Â_€Æ:7>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€µ_€º", <€€:€µ_€º>, [[<ore:€¶>], [<€€:€º>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€µ", <€€:€µ>, [[<ore:€™>, <ore:€™>, <ore:€™>], [<ore:€™>, ƒ}, <ore:€™>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:~", <€€:~>, [[<ore:€³>, ƒ}, <ore:€³>], [<ore:€³>, ƒ}, <ore:€³>], [<ore:€³>, <ore:€³>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€ş_on_a_€Ë", <€€:€ş_on_a_€Ë>, [[<€€:Z_rod>, ƒ}], [ƒ}, <€€:€ş>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:", <€€:>, [[<€€:ƒ_„>, <€€:ƒ_„>, <€€:ƒ_„>], [<€€:€½>, <ore:egg>, <€€:€½>], [<€€:€¯>, <€€:€¯>, <€€:€¯>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:„", <€€:„>, [[<ore:€³>, ƒ}, <ore:€³>], [ƒ}, <ore:€³>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:_€„", <€€:€„:12>, [<ore:…>, <€€:€„>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€†_€‡_€ˆ", <€€:€†_€‡_€ˆ:12> * 8, [[<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <ore:…>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€†_€‰_€Š", <€€:€†_€‰_€Š:12> * 16, [[<ore:†>, <ore:†>, <ore:†>], [<ore:†>, <ore:†>, <ore:†>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€†_€‰", <€€:€†_€‰:12> * 8, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <ore:…>, <ore:€>], [<ore:€>, <ore:€>, <ore:€>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:_€’_€“", <€€:€’_€“:12> * 8, [<ore:…>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€–>, <€€:€–>, <€€:€–>, <€€:€–>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€—", <€€:€—:12> * 3, [[<€€:€„:12>, <€€:€„:12>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:_bed_ƒ‰_ƒŒ_bed", <€€:bed:12>, [<€€:bed>, <ore:…>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_bed", <€€:bed:12>, [[<€€:€„:12>, <€€:€„:12>, <€€:€„:12>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€š", <€€:€š:3>, [[<€€:€„:12>, <€€:€„:12>, <€€:€„:12>], [<€€:€„:12>, <€€:€„:12>, <€€:€„:12>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ç_€Ä", <€€:€Ç_€Ä> * 4, [[<€€:€Ç_€°>, ƒ}, ƒ}], [<€€:€Ç_€°>, <€€:€Ç_€°>, ƒ}], [<€€:€Ç_€°>, <€€:€Ç_€°>, <€€:€Ç_€°>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ç_€Æ", <€€:€Â_€Æ:4> * 6, [[<€€:€Ç_€°>, <€€:€Ç_€°>, <€€:€Ç_€°>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ç_€°", <€€:€Ç_€°>, [[<€€:€Ç>, <€€:€Ç>], [<€€:€Ç>, <€€:€Ç>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:‡_ˆ", <€€:‡_ˆ>, [[ƒ}, <€€:%_rod>, ƒ}], [<ore:€Ã>, <ore:€Ã>, <ore:€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:Š", <€€:Š>, [[<€€:€¯>, <€€:€¯>, <€€:€¯>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:", <€€:> * 4, [[<ore:€™>, ƒ}, <ore:€™>], [ƒ}, <ore:€™>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:bow", <€€:bow>, [[ƒ}, <ore:€œ>, <ore:€À>], [<ore:€œ>, ƒ}, <ore:€À>], [ƒ}, <ore:€œ>, <ore:€À>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:Œ", <€€:Œ>, [[<ore:€™>, <ore:€™>, <ore:€™>], [<€€:€>, <€€:€>, <€€:€>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:€", <€€:€>, [<ore:€‚>, <ore:€‚>, <ore:€‚>, <ore:5>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:_ƒ«_ƒ‰_", <€€:dye:15> * 3, [<ore:>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:_ƒ«_ƒ‰_€°", <€€:dye:15> * 9, [<€€:_€°>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€°", <€€:_€°>, [[<€€:dye:15>, <€€:dye:15>, <€€:dye:15>], [<€€:dye:15>, <€€:dye:15>, <€€:dye:15>], [<€€:dye:15>, <€€:dye:15>, <€€:dye:15>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ğ", <€€:€Ğ>, [[<€€:€ª>, ƒ}, <€€:€ª>], [<€€:€ª>, <€€:€ª>, <€€:€ª>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ£_€„", <€€:€„:11>, [<ore:>, <€€:€„>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ£_€†_€‡_€ˆ", <€€:€†_€‡_€ˆ:11> * 8, [[<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <ore:>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ£_€†_€‰_€Š", <€€:€†_€‰_€Š:11> * 16, [[<ore:>, <ore:>, <ore:>], [<ore:>, <ore:>, <ore:>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ£_€†_€‰", <€€:€†_€‰:11> * 8, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <ore:>, <ore:€>], [<ore:€>, <ore:€>, <ore:€>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ£_€’_€“", <€€:€’_€“:11> * 8, [<ore:>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€–>, <€€:€–>, <€€:€–>, <€€:€–>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ£_€—", <€€:€—:11> * 3, [[<€€:€„:11>, <€€:€„:11>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ£_bed_ƒ‰_ƒŒ_bed", <€€:bed:11>, [<€€:bed>, <ore:>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ£_bed", <€€:bed:11>, [[<€€:€„:11>, <€€:€„:11>, <€€:€„:11>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ£_€š", <€€:€š:4>, [[<€€:€„:11>, <€€:€„:11>, <€€:€„:11>], [<€€:€„:11>, <€€:€„:11>, <€€:€„:11>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:%_€“", <€€:%_€“> * 2, [<€€:%_rod>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ¬_€„", <€€:€„:15>, [<ore:€Ÿ>, <€€:€„>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ¬_€†_€‡_€ˆ", <€€:€†_€‡_€ˆ:15> * 8, [[<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <ore:€Ÿ>, <€€:€‡_€ˆ>], [<€€:€‡_€ˆ>, <€€:€‡_€ˆ>, <€€:€‡_€ˆ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ¬_€†_€‰_€Š", <€€:€†_€‰_€Š:15> * 16, [[<ore:‘>, <ore:‘>, <ore:‘>], [<ore:‘>, <ore:‘>, <ore:‘>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ¬_€†_€‰", <€€:€†_€‰:15> * 8, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <ore:€Ÿ>, <ore:€>], [<ore:€>, <ore:€>, <ore:€>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ¬_€’_€“", <€€:€’_€“:15> * 8, [<ore:€Ÿ>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€•>, <€€:€–>, <€€:€–>, <€€:€–>, <€€:€–>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ¬_€—", <€€:€—:15> * 3, [[<€€:€„:15>, <€€:€„:15>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ¬_bed_ƒ‰_ƒŒ_bed", <€€:bed:15>, [<€€:bed>, <ore:€Ÿ>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ¬_bed", <€€:bed:15>, [[<€€:€„:15>, <€€:€„:15>, <€€:€„:15>], [<ore:€™>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:ƒ¬_€š", <€€:€š>, [[<€€:€„:15>, <€€:€„:15>, <€€:€„:15>], [<€€:€„:15>, <€€:€„:15>, <€€:€„:15>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:’_€¡_€Æ", <€€:€¡_€Æ:2> * 6, [[<€€:€ª:2>, <€€:€ª:2>, <€€:€ª:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:’_€Ä", <€€:’_€Ä> * 4, [[<€€:€ª:2>, ƒ}, ƒ}], [<€€:€ª:2>, <€€:€ª:2>, ƒ}], [<€€:€ª:2>, <€€:€ª:2>, <€€:€ª:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:’_€ª", <€€:€ª:2> * 4, [[<€€:log:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:’_€Í_€Î", <€€:’_€Í_€Î>, [[<€€:€Ë>, <€€:€ª:2>, <€€:€Ë>], [<€€:€Ë>, <€€:€ª:2>, <€€:€Ë>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:’_€Í", <€€:’_€Í> * 3, [[<€€:€ª:2>, <€€:€Ë>, <€€:€ª:2>], [<€€:€ª:2>, <€€:€Ë>, <€€:€ª:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:’_€©", <€€:’_€©> * 3, [[<€€:€ª:2>, <€€:€ª:2>], [<€€:€ª:2>, <€€:€ª:2>], [<€€:€ª:2>, <€€:€ª:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:’_€Ğ", <€€:’_€Ğ>, [[<€€:€ª:2>, ƒ}, <€€:€ª:2>], [<€€:€ª:2>, <€€:€ª:2>, <€€:€ª:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€÷_“", <€€:€÷_“>, [[<€€:€÷>, <€€:€÷>, <€€:€÷>], [<€€:€÷>, <€€:€÷>, <€€:€÷>], [ƒ}, <€€:>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:”", <€€:”>, [[<ore:€>, <ore:€>, <ore:€>], [<ore:€>, <ore:–>, <ore:€>], [<€€:b>, <€€:b>, <€€:b>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:€Ó", <€€:€Ó> * 4, [[<€€:X>], [<ore:€œ>], [<ore:€ >]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:—_ˆ", <€€:—_ˆ>, [[<ore:€œ>, <ore:€œ>, <ore:€œ>], [ƒ}, <ore:€œ>, ƒ}], [<ore:€œ>, <€€:€Â_€Æ>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:™", <€€:™>, [[<€€:I_€°>, <€€:I_€°>, <€€:I_€°>], [ƒ}, <ore:€³>, ƒ}], [<ore:€³>, <ore:€³>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ•", <€€:€Â:5> * 2, [<ore:>, <ore:€Ã>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:›_€ø", <€€:›_€ø> * 6, [[<ore:€³>, <ore:€œ>, <ore:€³>], [<ore:€³>, <€€:€ì_€¸>, <ore:€³>], [<ore:€³>, <ore:€œ>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€¡_€Æ", <€€:€¡_€Æ:4> * 6, [[<€€:€ª:4>, <€€:€ª:4>, <€€:€ª:4>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€Ä", <€€:_€Ä> * 4, [[<€€:€ª:4>, ƒ}, ƒ}], [<€€:€ª:4>, <€€:€ª:4>, ƒ}], [<€€:€ª:4>, <€€:€ª:4>, <€€:€ª:4>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€ª", <€€:€ª:4> * 4, [[<€€:u>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€Í_€Î", <€€:_€Í_€Î>, [[<€€:€Ë>, <€€:€ª:4>, <€€:€Ë>], [<€€:€Ë>, <€€:€ª:4>, <€€:€Ë>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€Í", <€€:_€Í> * 3, [[<€€:€ª:4>, <€€:€Ë>, <€€:€ª:4>], [<€€:€ª:4>, <€€:€Ë>, <€€:€ª:4>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€©", <€€:_€©> * 3, [[<€€:€ª:4>, <€€:€ª:4>], [<€€:€ª:4>, <€€:€ª:4>], [<€€:€ª:4>, <€€:€ª:4>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("€€:_€Ğ", <€€:_€Ğ>, [[<€€:€ª:4>, ƒ}, <€€:€ª:4>], [<€€:€ª:4>, <€€:€ª:4>, <€€:€ª:4>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":€Ú_‚", <:Ÿ>, [<ore:¡>, <ore:¢>, <€€:€Ü:*>, <ore:£>, <ore:¤>, <ore:¥>, <€€:`_¦:*>, <ore:–>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ­_can", <:§:¨>, [[<€€:€Â:*>, ƒ}, ƒ}], [<€€:€Â:*>, <€€::*>, <€€:€Â:*>], [ƒ}, <€€:€Â:*>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒ®_J", <:ª>, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ®_€Ù", <:ª:1>, [[<ore:«>], [<ore:€œ>], [<ore:F>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ¯_ƒ®_J", <:ª:2>, [[<:ª:1>, <:ª:1>, <:ª:1>], [<:ª:1>, <:ª:1>, <:ª:1>], [<:ª:1>, <:ª:1>, <:ª:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒ®_‚Ë", <:ª:1> * 9, [<:ª:2>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ°_ƒ±", <:¬>, [[ƒ}, ƒ}, <ore:.>], [ƒ}, <:®:1>, ƒ}], [<:®:1>, ƒ}, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ²_ƒ±", <:¯>, [[ƒ}, <ore:.>, <ore:.>], [ƒ}, <:®:1>, <ore:.>], [<:®:1>, ƒ}, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒ³_ƒ´", <:±>, [<€€:€„:*>, <€€::*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":‚_Ñ_€ª", <:®> * 4, [<:®:1>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":‚_Ñ", <:®:1>, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒµ_Ñ", <:®:2> * 5, [[<ore:²>, <ore:€™>], [<ore:€™>, <ore:²>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ¶_can", <:³>, [[<ore:€Â>, <ore:€Â>, <ore:€Â>], [<ore:€Ã>, <ore:€¶>, <ore:€Ã>], [<ore:€Ã>, <ore:€Ã>, <ore:€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ¶_can_ƒ·", <:µ>, [[<ore:€Â>, <ore:€Â>, <ore:€Â>], [<ore:€Ã>, <€€:„:*>, <ore:€Ã>], [<ore:€Ã>, <ore:€Ã>, <ore:€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ¶_can_ƒ¸", <:¶>, [[<ore:€Â>, <ore:€Â>, <ore:€Â>], [<ore:€Ã>, <ore:·>, <ore:€Ã>], [<ore:€Ã>, <ore:€Ã>, <ore:€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ¹_€°", <:¸>, [[ƒ}, <ore:.>, ƒ}], [<€€:€ :*>, <€€:b:*>, <€€:€ :*>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒº_ƒ»", <:º> * 3, [[<ore:¼>, <ore:¼>, <ore:¼>], [<:½:2>, <:¾>, <:½:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒº_ƒ¼", <:º:1> * 3, [[<:¾:3>, <:¾:3>, <:¾:3>], [<:½:2>, <:¾>, <:½:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒº_‚", <:º:2>, [[<:½:3>, <:½:3>, <:½:3>], [<:½:3>, <:¾>, <:½:3>], [<:½:3>, <ore:.>, <:½:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒº_‚", <:º:3>, [[<:½:3>, <:½:3>, <:½:3>], [<:¾:1>, <:¾>, <:¾:1>], [<:½:3>, <:½:3>, <:½:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒº_ƒ½", <:º:4>, [[<:½:3>, <:½:3>, <:½:3>], [ƒ}, <:¾:1>, <:¾>], [<:½:3>, <:½:3>, <:½:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒº_\", <:º:5>, [[<:½:3>, <:¾>, <:½:3>], [<:½:3>, <:¾:1>, <:½:3>], [<:½:3>, <€€:€ó_€Ç_€Í:*>, <:½:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒº_ƒ¾", <:º:7>, [[ƒ}, <:¾:1>, ƒ}], [<:½:2>, <:¾>, <:½:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒº_ƒ¿", <:º:8>, [[<:½:3>, <€€:`_¦:*>, <:½:3>], [<€€:€ó_Ã:*>, <:¾:1>, <€€:€ó_Ã:*>], [<:½:3>, <:¾:2>, <:½:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":€ì_}", <:Ä>, [[<ore:€Â>, <ore:€í>, <ore:€Â>], [<ore:€í>, <€€:€ì_€¸:*>, <ore:€í>], [<ore:€Â>, <ore:€í>, <ore:€Â>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_€Ã", <:Æ>, [[<€€:€Ã>, <€€:€Ã>, <€€:€Ã>], [<€€:€Ã>, <€€:€Ã>, <€€:€Ã>], [<€€:€Ã>, <€€:€Ã>, <€€:€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_€Ã_ƒÁ", <€€:€Ã> * 9, [<:Æ>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_€Ã_1", <:Æ:1>, [[<:Æ>, <:Æ>, <:Æ>], [<:Æ>, <:Æ>, <:Æ>], [<:Æ>, <:Æ>, <:Æ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_€Ã_1_ƒÁ", <:Æ> * 9, [<:Æ:1>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_€Ã_2", <:Æ:2>, [[<:Æ:1>, <:Æ:1>, <:Æ:1>], [<:Æ:1>, <:Æ:1>, <:Æ:1>], [<:Æ:1>, <:Æ:1>, <:Æ:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_€Ã_2_ƒÁ", <:Æ:1> * 9, [<:Æ:2>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_€Ã_3", <:Æ:3>, [[<:Æ:2>, <:Æ:2>, <:Æ:2>], [<:Æ:2>, <:Æ:2>, <:Æ:2>], [<:Æ:2>, <:Æ:2>, <:Æ:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_€Ã_3_ƒÁ", <:Æ:2> * 9, [<:Æ:3>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_€Ã_4", <:Æ:4>, [[<:Æ:3>, <:Æ:3>, <:Æ:3>], [<:Æ:3>, <:Æ:3>, <:Æ:3>], [<:Æ:3>, <:Æ:3>, <:Æ:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_€Ã_4_ƒÁ", <:Æ:3> * 9, [<:Æ:4>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_€Ã_5", <:Æ:5>, [[<:Æ:4>, <:Æ:4>, <:Æ:4>], [<:Æ:4>, <:Æ:4>, <:Æ:4>], [<:Æ:4>, <:Æ:4>, <:Æ:4>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_€Ã_5_ƒÁ", <:Æ:4> * 9, [<:Æ:5>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_€Ã_6", <:Æ:6>, [[<:Æ:5>, <:Æ:5>, <:Æ:5>], [<:Æ:5>, <:Æ:5>, <:Æ:5>], [<:Æ:5>, <:Æ:5>, <:Æ:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_€Ã_6_ƒÁ", <:Æ:5> * 9, [<:Æ:6>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_€Ã_7", <:Æ:7>, [[<:Æ:6>, <:Æ:6>, <:Æ:6>], [<:Æ:6>, <:Æ:6>, <:Æ:6>], [<:Æ:6>, <:Æ:6>, <:Æ:6>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_€Ã_7_ƒÁ", <:Æ:6> * 9, [<:Æ:7>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_|", <:Ç>, [[<€€:|>, <€€:|>, <€€:|>], [<€€:|>, <€€:|>, <€€:|>], [<€€:|>, <€€:|>, <€€:|>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_|_ƒÁ", <€€:|> * 9, [<:Ç>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_|_1", <:Ç:1>, [[<:Ç>, <:Ç>, <:Ç>], [<:Ç>, <:Ç>, <:Ç>], [<:Ç>, <:Ç>, <:Ç>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_|_1_ƒÁ", <:Ç> * 9, [<:Ç:1>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_|_2", <:Ç:2>, [[<:Ç:1>, <:Ç:1>, <:Ç:1>], [<:Ç:1>, <:Ç:1>, <:Ç:1>], [<:Ç:1>, <:Ç:1>, <:Ç:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_|_2_ƒÁ", <:Ç:1> * 9, [<:Ç:2>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_|_3", <:Ç:3>, [[<:Ç:2>, <:Ç:2>, <:Ç:2>], [<:Ç:2>, <:Ç:2>, <:Ç:2>], [<:Ç:2>, <:Ç:2>, <:Ç:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_|_3_ƒÁ", <:Ç:2> * 9, [<:Ç:3>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_€•", <:È>, [[<€€:€•>, <€€:€•>, <€€:€•>], [<€€:€•>, <€€:€•>, <€€:€•>], [<€€:€•>, <€€:€•>, <€€:€•>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_€•_ƒÁ", <€€:€•> * 9, [<:È>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_€•_1", <:È:1>, [[<:È>, <:È>, <:È>], [<:È>, <:È>, <:È>], [<:È>, <:È>, <:È>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_€•_1_ƒÁ", <:È> * 9, [<:È:1>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_€–", <:É>, [[<€€:€–>, <€€:€–>, <€€:€–>], [<€€:€–>, <€€:€–>, <€€:€–>], [<€€:€–>, <€€:€–>, <€€:€–>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_€–_ƒÁ", <€€:€–> * 9, [<:É>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_€–_1", <:É:1>, [[<:É>, <:É>, <:É>], [<:É>, <:É>, <:É>], [<:É>, <:É>, <:É>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_€–_1_ƒÁ", <:É> * 9, [<:É:1>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_Ë", <:Ê>, [[<€€:Ë>, <€€:Ë>, <€€:Ë>], [<€€:Ë>, <€€:Ë>, <€€:Ë>], [<€€:Ë>, <€€:Ë>, <€€:Ë>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_Ë_ƒÁ", <€€:Ë> * 9, [<:Ê>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_Ë_1", <:Ê:1>, [[<:Ê>, <:Ê>, <:Ê>], [<:Ê>, <:Ê>, <:Ê>], [<:Ê>, <:Ê>, <:Ê>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_Ë_1_ƒÁ", <:Ê> * 9, [<:Ê:1>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_Ë_2", <:Ê:2>, [[<:Ê:1>, <:Ê:1>, <:Ê:1>], [<:Ê:1>, <:Ê:1>, <:Ê:1>], [<:Ê:1>, <:Ê:1>, <:Ê:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_Ë_2_ƒÁ", <:Ê:1> * 9, [<:Ê:2>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_Ë_3", <:Ê:3>, [[<:Ê:2>, <:Ê:2>, <:Ê:2>], [<:Ê:2>, <:Ê:2>, <:Ê:2>], [<:Ê:2>, <:Ê:2>, <:Ê:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_Ë_3_ƒÁ", <:Ê:2> * 9, [<:Ê:3>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_Ë_4", <:Ê:4>, [[<:Ê:3>, <:Ê:3>, <:Ê:3>], [<:Ê:3>, <:Ê:3>, <:Ê:3>], [<:Ê:3>, <:Ê:3>, <:Ê:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_Ë_4_ƒÁ", <:Ê:3> * 9, [<:Ê:4>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÀ_Ë_5", <:Ê:5>, [[<:Ê:4>, <:Ê:4>, <:Ê:4>], [<:Ê:4>, <:Ê:4>, <:Ê:4>], [<:Ê:4>, <:Ê:4>, <:Ê:4>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÀ_Ë_5_ƒÁ", <:Ê:4> * 9, [<:Ê:5>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":€‰_ƒÂ", <:Ì>, [[ƒ}, ƒ}, <ore:€³>], [ƒ}, <ore:€œ>, <ore:€³>], [<ore:€³>, ƒ}, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":`_‚ÿ", <:Î> * 8, [<€€:`_¦:*>, <:Ì:*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÃ_€µ", <€€:€µ> * 4, [[<ore:¤>, <ore:¤>, <ore:¤>], [<ore:¤>, ƒ}, <ore:¤>], [<ore:¤>, <ore:¤>, <ore:¤>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÃ_€Ë", <€€:€Ë> * 16, [[<ore:¤>], [<ore:¤>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÃ_L", <€€:L>, [[<ore:€³>, <ore:¤>, <ore:€³>], [<ore:€³>, <ore:¤>, <ore:€³>], [ƒ}, <ore:€³>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":Ğ_Ñ", <:Ğ_Ñ>, [[ƒ}, <ore:€™>, <ore:€™>], [ƒ}, ƒ}, <ore:€™>], [<ore:€œ>, <ore:€™>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":Ğ_€Â", <:Ğ_€Â>, [[ƒ}, <ore:€Ã>, <ore:€Ã>], [ƒ}, ƒ}, <ore:€Ã>], [<ore:€œ>, <ore:€Ã>, <ore:€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":Ğ_I", <:Ğ_I>, [[ƒ}, <ore:€³>, <ore:€³>], [ƒ}, ƒ}, <ore:€³>], [<ore:€œ>, <ore:€³>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":Ğ_€Ø", <:Ğ_€Ø>, [[ƒ}, <ore:.>, <ore:.>], [ƒ}, ƒ}, <ore:.>], [<ore:€œ>, <ore:.>, <ore:.>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":Ğ_p", <:Ğ_p>, [[ƒ}, <ore:F>, <ore:F>], [ƒ}, ƒ}, <ore:F>], [<ore:€œ>, <ore:F>, <ore:F>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":Ó", <:Ó>, [[<ore:€í>, <ore:Õ>, <ore:€í>], [<ore:€³>, <:¾>, <ore:€³>], [<ore:€³>, <ore:€³>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":sun_c", <:Ö:250>, [<ore:F>, <ore:€Õ>, <ore:€Õ>, <ore:€Õ>, <ore:€Õ>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":Ø", <:Ø>, [[<:½:3>, <:½:3>, <:½:3>], [<:Î>, <:¾>, <:Î>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÄ", <:½> * 4, [<ore:€Â>, <ore:Ú>, <ore:€Â>, <ore:Ú>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÅ", <:½:1> * 4, [<:½>, <:½>, <:½>, <:½>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÆ", <:½:2> * 4, [[<€€:€Á:*>, <€€:€Á:*>], [<€€:€Á:*>, <€€:€Á:*>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÇ_€‰", <:½:4> * 4, [<ore:€•>, <ore:€>, <ore:€•>, <ore:€>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÈ", <:½:5> * 4, [<:½:2>, <:½>, <:½:2>, <:½>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":€ì_c", <:¾>, [<:Î:*>, <ore:€í>, <ore:€í>, <ore:€í>, <ore:€í>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":€ì_ƒÉ", <:¾:1>, [[ƒ}, <€€:€ì_€¸:*>, ƒ}], [<€€:€ì_€¸:*>, <ore:€™>, <€€:€ì_€¸:*>], [ƒ}, <€€:€ì_€¸:*>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":€ì_eye", <:¾:2>, [<€€:`_¦:*>, <ore:€í>, <:¾>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÊ_€Â", <:¾:5>, [[<:¾:3>, <:¾:3>, <:¾:3>], [<:¾:3>, <ore:F>, <:¾:3>], [<:¾:3>, <:¾:3>, <:¾:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÊ_€Â_adv", <:¾:5> * 9, [[<:¾:3>, <:¾:3>, <:¾:3>], [<:¾:3>, <ore:Û>, <:¾:3>], [<:¾:3>, <:¾:3>, <:¾:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":‚(_ƒË", <:¾:6>, [<:¾:9>, <ore:.>, <ore:·>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":‚(_‚/", <:¾:7>, [<:¾:9>, <ore:.>, <€€:p:*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":‚(_ƒÌ", <:¾:8>, [<:¾:9>, <€€:Q_€¦>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÍ_J_to_€°", <:Ü:1>, [[<:¾:11>, <:¾:11>, <:¾:11>], [<:¾:11>, <:¾:11>, <:¾:11>], [<:¾:11>, <:¾:11>, <:¾:11>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÍ_€°_to_J", <:¾:11> * 9, [<:Ü:1>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÎ_J_to_€°", <:Ü>, [[<:¾:12>, <:¾:12>, <:¾:12>], [<:¾:12>, <:¾:12>, <:¾:12>], [<:¾:12>, <:¾:12>, <:¾:12>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒÎ_€°_to_J", <:¾:12> * 9, [<:Ü>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚(_ƒË_ƒÎ", <:¾:15>, [[<:İ>, <:¾:12>, <:İ>], [<:¾:12>, <:¾:6>, <:¾:12>], [<:İ>, <:¾:12>, <:İ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚(_ƒË_ƒÏ", <:¾:16>, [[<:¾:10>, <:¾:17>, <:¾:10>], [<:¾:17>, <:¾:15>, <:¾:17>], [<:¾:10>, <:¾:17>, <:¾:10>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒĞ_J_to_€°", <:Ü:2>, [[<:¾:17>, <:¾:17>, <:¾:17>], [<:¾:17>, <:¾:17>, <:¾:17>], [<:¾:17>, <:¾:17>, <:¾:17>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒĞ_€°_to_J", <:¾:17> * 9, [<:Ü:2>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":Q_ƒÑ", <:Ş>, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":Q_ƒÑ_ƒĞ", <:Ş:1>, [<:Ş>, <:¾:10>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÒ_ƒÓ", <:ƒÔ>, [[<ore:€ >, <ore:€³>, <ore:€ >], [<ore:€³>, <:Ş>.ƒÕ({ƒÖ: {id: "€€:ƒÒ"}, No_ƒ×: 1 as ƒØ}), <ore:€³>], [<:¾>, <ore:€³>, <:¾>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÙ_ƒÓ", <:ƒÔ:1>, [[<ore:€Ÿ>, <ore:F>, <ore:€Ÿ>], [<:Ş>.ƒÕ({ƒÖ: {id: "€€:ƒÙ"}, No_ƒ×: 1 as ƒØ}), <:ƒÔ>, <€€:`_¦:*>], [<ore:€Ÿ>, <ore:F>, <ore:€Ÿ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ¹_ƒÓ_0", <:ß>, [[<ore:¡>, <ore:.>, <ore:¡>], [<ore:.>, <:ƒÔ:1>, <ore:.>], [<:Ş>.ƒÕ({ƒÖ: {id: "€€:bat"}, No_ƒ×: 1 as ƒØ}), <ore:.>, <:Ş:1>.ƒÕ({ƒÖ: {id: "€€:e"}, No_ƒ×: 1 as ƒØ})]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒ¹_ƒÓ_ƒÚ_0", <:ß>, [<ore:¡>, <:ß:*>, <ore:¡>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ¹_ƒÓ_1", <:ß:1>, [[<€€:€ :*>, <ore:.>, <€€:€ :*>], [<ore:.>, <:ƒÔ:1>, <ore:.>], [<:Ş>.ƒÕ({ƒÖ: {id: "€€:bat"}, No_ƒ×: 1 as ƒØ}), <ore:.>, <:Ş:1>.ƒÕ({ƒÖ: {id: "€€:e"}, No_ƒ×: 1 as ƒØ})]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒ¹_ƒÓ_ƒÚ_1", <:ß:1>, [<€€:€ :*>, <:ß:*>, <€€:€ :*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ¹_ƒÓ_2", <:ß:2>, [[<ore:
>, <ore:.>, <ore:>], [<ore:.>, <:ƒÔ:1>, <ore:.>], [<:Ş>.ƒÕ({ƒÖ: {id: "€€:bat"}, No_ƒ×: 1 as ƒØ}), <ore:.>, <:Ş:1>.ƒÕ({ƒÖ: {id: "€€:e"}, No_ƒ×: 1 as ƒØ})]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒ¹_ƒÓ_ƒÚ_2", <:ß:2>, [<ore:
>, <:ß:*>, <ore:>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ¹_ƒÓ_3", <:ß:3>, [[<€€:5:*>, <ore:.>, <€€:5:*>], [<ore:.>, <:ƒÔ:1>, <ore:.>], [<:Ş>.ƒÕ({ƒÖ: {id: "€€:bat"}, No_ƒ×: 1 as ƒØ}), <ore:.>, <:Ş:1>.ƒÕ({ƒÖ: {id: "€€:e"}, No_ƒ×: 1 as ƒØ})]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒ¹_ƒÓ_ƒÚ_3", <:ß:3>, [<€€:5:*>, <:ß:*>, <€€:5:*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ¹_ƒÓ_4", <:ß:4>, [[<ore:à>, <ore:.>, <ore:à>], [<ore:.>, <:ƒÔ:1>, <ore:.>], [<:Ş>.ƒÕ({ƒÖ: {id: "€€:bat"}, No_ƒ×: 1 as ƒØ}), <ore:.>, <:Ş:1>.ƒÕ({ƒÖ: {id: "€€:e"}, No_ƒ×: 1 as ƒØ})]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒ¹_ƒÓ_ƒÚ_4", <:ß:4>, [<ore:à>, <:ß:*>, <ore:à>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ¹_ƒÓ_5", <:ß:5>, [[<€€:€¹>, <ore:.>, <€€:€¹:1>], [<ore:.>, <:ƒÔ:1>, <ore:.>], [<:Ş>.ƒÕ({ƒÖ: {id: "€€:bat"}, No_ƒ×: 1 as ƒØ}), <ore:.>, <:Ş:1>.ƒÕ({ƒÖ: {id: "€€:e"}, No_ƒ×: 1 as ƒØ})]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒ¹_ƒÓ_ƒÚ_5", <:ß:5>, [<€€:€¹>, <:ß:*>, <€€:€¹:1>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÛ_ƒÜ", <:á>, [[ƒ}, <:¾>], [<ore:€Â>, <ore:€Â>], [<ore:€Â>, <ore:€Â>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":bag_of_ƒİ", <:ã>, [[<ore:.>, <ore:.>, <ore:.>], [<ore:€¶>, <:®:1>, <ore:€¶>], [<ore:.>, <ore:.>, <ore:.>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":€‰_ƒŞ", <:ä:1> * 4, [[<:ä>, <:ä>], [<:ä>, <:ä>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":€‰_ƒß", <:ä:2> * 4, [[<:ä:1>, <:ä:1>], [<:ä:1>, <:ä:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":€‰_t", <:ä:3> * 2, [<:ä>, <ore:€Ÿ>, <:ä>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":€‰_€ï", <:ä:4> * 2, [<:ä>, <ore:€Õ>, <:ä>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":€‰_ƒà_ƒá", <:å> * 8, [[<ore:¡>, <ore:¡>, <ore:¡>], [<ore:¡>, <:¾:5>, <ore:¡>], [<ore:¡>, <ore:¡>, <ore:¡>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":€‰_ƒà_ƒâ", <:å:1>, [<:å>, <€€:€ì_€¸:*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":€‰_ƒà_‚Ã", <:å:2> * 8, [[<:ä>, <:ä>, <:ä>], [<:ä>, <:¾:5>, <:ä>], [<:ä>, <:ä>, <:ä>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":€‰_ƒà_t", <:å:3> * 8, [[<:ä:3>, <:ä:3>, <:ä:3>], [<:ä:3>, <:¾:5>, <:ä:3>], [<:ä:3>, <:ä:3>, <:ä:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒã_ƒä", <:æ> * 64, [[<€€:€Â_€Æ>, <€€:€Â_€Æ>, <€€:€Â_€Æ>], [<ore:¡>, <ore:€í>, <ore:¡>], [<€€:€Â_€Æ>, <€€:€Â_€Æ>, <€€:€Â_€Æ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒå_€µ", <:ç>, [[<:½:3>, <:½:3>, <:½:3>], [<:½:3>, <€€:`_€µ:*>, <:½:3>], [<:½:3>, <:¾>, <:½:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":è", <:è>, [[ƒ}, <ore:€ğ>, <ore:€³>], [ƒ}, <ore:€³>, <ore:€í>], [<ore:€³>, ƒ}, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ê", <:ê>, [[ƒ}, <:®:1>, ƒ}], [<:®:1>, ƒ}, <:®:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒ¾", <:€>, [<€€:€:*> | <€€:€_€:*> | <€€:ì_€:*>, <ore:.>, <€€:b:*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":í", <:í>, [<€€:€ :*>, <€€:€‚:*>, <€€:€‰_T:*>, <ore:€Ÿ>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒæ_‚×", <:ƒç>, [[<ore:€œ>, <:¾:2>, <ore:€œ>], [<ore:€œ>, <:Ş>.ƒÕ({ƒÖ: {ƒè: {ƒé: 1 as ƒØ}, id: "€€:ƒê"}, No_ƒ×: 1 as ƒØ}), <ore:€œ>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ï_‚Â", <:ï>, [[<ore:€í>, <ore:€œ>, <ore:€í>], [<ore:€œ>, <ore:€À>, <ore:€œ>], [<ore:€í>, <ore:€œ>, <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ï_ƒë", <:ğ>, [[<ore:¼>, <ore:€œ>, <ore:¼>], [<ore:€œ>, <ore:€À>, <ore:€œ>], [<ore:¼>, <ore:€œ>, <ore:¼>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒã_ƒì_‚Â", <:ñ> * 4, [[<ore:€í>, <:æ>, <ore:€í>], [<ore:€Â>, <ore:€¶>, <ore:€Â>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒã_ï_‚Â", <:ñ:1> * 4, [[<ore:€í>, <:ï>, <ore:€í>], [<ore:€Â>, <:æ>, <ore:€Â>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒã_æ_ï", <:ñ:5> * 4, [<:æ>, <:ï>, <ore:€í>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒã_ƒì_ƒë", <:ñ:2> * 4, [[<ore:€í>, <:æ>, <ore:€í>], [<ore:€Â>, <€€:„:*>, <ore:€Â>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒã_ƒì_‚Â_ƒí", <:ñ:3> * 2, [[ƒ}, <€€:`_¦:*>, ƒ}], [<:ñ>, <ore:l>, <:ñ>], [ƒ}, <€€:`_¦:*>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒã_ƒì_ƒë_ƒí", <:ñ:4> * 2, [[ƒ}, <€€:`_¦:*>, ƒ}], [<:ñ:2>, <ore:F>, <:ñ:2>], [ƒ}, <€€:`_¦:*>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒã_ƒì_ƒ¸", <:ñ:6>, [[<ore:€í>, <:æ>, <ore:€í>], [<ore:.>, <€€:€ì_€°:*>, <ore:.>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ô", <:ô>, [[<:½:3>, <:¾>, <:½:3>], [<:½:3>, <:Ø>, <:½:3>], [<:½:3>, <:¾>, <:½:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ô_ƒî", <:õ>, [[<ore:€Â>, <:¾:2>, <ore:€Â>], [<ore:€Â>, <:Ø>, <ore:€Â>], [<ore:€Â>, <:¾:2>, <ore:€Â>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ö", <:ö>, [<€€:m:*>, <:¾>, <€€:x_i:*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":÷", <:÷>, [<€€:m:*>, <ore:€í>, <€€:__eye:*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ø", <:ø>, [<€€:m:*>, <:¾>, <€€:I_€¦:*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ù", <:ù>, [<€€:m:*>, <:¾>, <€€:4:*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ú_ƒï", <:ú>, [<€€:€‰_T:*>, <€€:`_¦:*>, <€€:`_¦:*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":û_16", <:û>, [[<ore:€Ã>, <€€:€Â_€Æ:3> | <€€:€Â_€Æ>, <ore:€Ã>], [<ore:€Ã>, <€€::*>, <ore:€Ã>], [<ore:€Ã>, <€€:€Â_€Æ:3> | <€€:€Â_€Æ>, <ore:€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":û_256", <:û:1>, [[<ore:€³>, <€€:N_-_€¤_€¥:*>, <ore:€³>], [<ore:€³>, <€€:~:*>, <ore:€³>], [<ore:€³>, <€€:N_-_€¤_€¥:*>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":û_ƒğ", <:û:2>, [[<ore:F>, <€€:,_-_€¤_€¥:*>, <ore:F>], [<ore:F>, <:û:1>, <ore:F>], [<ore:F>, <€€:,_-_€¤_€¥:*>, <ore:F>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":û_ƒñ", <:û:3>, [[<ore:ü>, <:ú>, <ore:ü>], [<ore:ü>, <:û:2>, <ore:ü>], [<ore:ü>, <:ú>, <ore:ü>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":û_‚Ã_16", <:û>, [<:û>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":û_‚Ã_256", <:û:1>, [<:û:1>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":û_‚Ã_ƒğ", <:û:2>, [<:û:2>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":û_‚Ã_ƒñ", <:û:3>, [<:û:3>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":û_‚Ã_ƒò", <:û:4>, [<:û:4>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ı_ƒó", <:ı> * 4, [[<ore:€³>, <ore:€í>, <ore:€³>], [<ore:€í>, <ore:€¶>, <ore:€í>], [<ore:€³>, <ore:€í>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ı_V", <:ı>.ƒÕ({ƒô: ":V"}), [[<ore:‚ü>, <ore:‚ü>, <ore:‚ü>], [<ore:‚ü>, <:ı>, <ore:‚ü>], [<ore:‚ü>, <ore:‚ü>, <ore:‚ü>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ı_ƒõ", <:ı>.ƒÕ({ƒô: ":ƒõ"}), [[ƒ}, <€€:ƒÎ_€:*>, ƒ}], [<ore:F>, <:ı>, <ore:F>], [<ore:€³>, <ore:€³>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ı_ƒö", <:ı>.ƒÕ({ƒô: ":ƒö"}), [[<ore:€³>, <€€:€É:*> | <€€:€È_€É:*>, <ore:€³>], [<ore:€³>, <:ı>, <ore:€³>], [<ore:€³>, <€€:€É:*> | <€€:€È_€É:*>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_V", <:ı>.ƒÕ({ƒô: ":ƒ÷"}), [[<ore:€³>, <ore:€³>, <ore:€³>], [<ore:€³>, <:ı>, <ore:€³>], [<ore:€í>, <€€:V:*>, <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒø", <:ı>.ƒÕ({ƒô: ":ƒ÷_ƒù"}), [[<ore:€Ã>, <ore:€Ã>, <ore:€Ã>], [<ore:€Ã>, <ore:€³>, <ore:€Ã>], [<ore:€í>, <€€:V:*>, <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_ƒú", <:ı>.ƒÕ({ƒô: ":ƒ÷_ƒú"}), [[<€€:€¯> | <€€: > | <€€:€ş>, <€€:€¯> | <€€: > | <€€:€ş>, <€€:€¯> | <€€: > | <€€:€ş>], [<€€:€¯> | <€€: > | <€€:€ş>, <€€:€ı_ƒû> | <€€:€ı_ƒü> | <€€:€ı_ƒÒ> | <€€:€ı_ƒı> | <€€:€ı_ƒş> | <€€:€ı_€ú>, <€€:€¯> | <€€: > | <€€:€ş>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_ƒÿ", <:ı>.ƒÕ({ƒô: ":ƒ÷_ƒÿ"}), [[<€€:%_rod:*>, <€€:%_rod:*>, <€€:%_rod:*>], [<€€:%_rod:*>, <€€:‡_ˆ:*>, <€€:%_rod:*>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_tnt", <:ı>.ƒÕ({ƒô: ":ƒ÷_tnt"}), [[<€€:€¼:*>, <€€:€¼:*>, <€€:€¼:*>], [<€€:€¼:*>, <€€:tnt:*>, <€€:€¼:*>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_‚", <:ı>.ƒÕ({ƒô: ":ƒ÷_‚"}), [[<ore:.>, <ore:.>, <ore:.>], [<ore:.>, <€€:‚_„:*>, <ore:.>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_ƒ–", <:ı>.ƒÕ({ƒô: ":ƒ÷_ƒ–"}), [[<€€:dye:9>, <€€:dye:9>, <€€:dye:9>], [<€€:dye:9>, <€€:€„:6>, <€€:dye:9>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_„ ", <:ı>.ƒÕ({ƒô: ":ƒ÷_„ "}), [[<€€:„:1>, <€€:„:1>, <€€:„:1>], [<€€:„:1>, <€€:€ó_Ã:*>, <€€:„:1>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_`", <:ı>.ƒÕ({ƒô: ":ƒ÷_`"}), [[<€€:`_¦:*>, <€€:`_¦:*>, <€€:`_¦:*>], [<€€:`_¦:*>, <€€:b:*>, <€€:`_¦:*>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_€ì", <:ı>.ƒÕ({ƒô: ":ƒ÷_€ì"}), [[<€€:€ì:*>, <€€:€ì:*>, <€€:€ì:*>], [<€€:€ì:*>, <€€:€ì_€°:*>, <€€:€ì:*>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷_‚"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_„", <:ı>.ƒÕ({ƒô: ":ƒ÷_„"}), [[<€€:dye:4>, <€€:dye:4>, <€€:dye:4>], [<€€:dye:4>, <€€:€Ø_€°:*>, <€€:dye:4>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_„", <:ı>.ƒÕ({ƒô: ":ƒ÷_„"}), [[<€€:_€°:*>, <€€:_€°:*>, <€€:_€°:*>], [<€€:_€°:*>, <€€:end_rod:*>, <€€:_€°:*>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_ice", <:ı>.ƒÕ({ƒô: ":ƒ÷_ice"}), [[<€€:€Ü:*>, <€€:€Ü:*>, <€€:€Ü:*>], [<€€:€Ü:*>, <€€:ice:*>, <€€:€Ü:*>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_„", <:ı>.ƒÕ({ƒô: ":ƒ÷_„"}), [[<€€:> | <€€:„_„>, <€€:> | <€€:„_„>, <€€:> | <€€:„_„>], [<€€:> | <€€:„_„>, <€€:__eye>, <€€:> | <€€:„_„>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_„", <:ı>.ƒÕ({ƒô: ":ƒ÷_„"}), [[<:®:1>, <:®:1>, <:®:1>], [<:®:1>, <€€:h_i:*>, <:®:1>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_€Ş", <:ı>.ƒÕ({ƒô: ":ƒ÷_€Ş"}), [[<€€:€Ş_€ß:*>, <€€:€Ş_€ß:*>, <€€:€Ş_€ß:*>], [<€€:€Ş_€ß:*>, <€€:€Ş:*>, <€€:€Ş_€ß:*>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ş", <:ş:1>, [[<:Æ>, <:Æ>, <:Æ>], [<:Æ>, ƒ}, <:Æ>], [<:Æ>, <:Æ>, <:Æ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":„", <:ÿ> * 4, [[<:¾>], [<:½:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":„	", <:‚ >, [[<:½:3>, <:½:3>, <:½:3>], [<ore:·>, <:¾>, <ore:·>], [<:½:3>, <:½:3>, <:½:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_„
", <:‚>, [[<€€:end_€Â:*>, <€€:end_rod:*>, <€€:end_€Â:*>], [<€€:end_€Â:*>, <€€:p_€¦:*>, <€€:end_€Â:*>], [<:½:3>, <:½:3>, <:½:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_ƒó", <:‚>, [[<€€:end_€Â:*>, <:½:3>, <€€:end_€Â:*>], [<:½:3>, <ore:‚_€Ú_‚>, <:½:3>], [<€€:end_€Â:*>, <:½:3>, <€€:end_€Â:*>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_Ñ", <:‚_Ñ> * 4, [[ƒ}, <€€:€¡_€¢:*>, ƒ}], [<€€:€¡_€¢:*>, <€€:€ª>, <€€:€¡_€¢:*>], [<€€:€ª>, <€€:log>, <€€:€ª>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_€Â", <:‚_€Â> * 4, [[ƒ}, <€€:€Â_€¢:*>, ƒ}], [<€€:€Â_€¢:*>, <ore:€Ã>, <€€:€Â_€¢:*>], [<ore:€Ã>, <ore:‚>, <ore:€Ã>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_I", <:‚_I> * 4, [[ƒ}, <€€:I_€¢:*>, ƒ}], [<€€:I_€¢:*>, <ore:€³>, <€€:I_€¢:*>], [<ore:€³>, <ore:‚	>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_€Ø", <:‚_€Ø> * 4, [[ƒ}, <€€:Q_€¢:*>, ƒ}], [<€€:Q_€¢:*>, <ore:.>, <€€:Q_€¢:*>], [<ore:.>, <ore:‚
>, <ore:.>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_p", <:‚_p> * 4, [[ƒ}, <€€:p_€¢:*>, ƒ}], [<€€:p_€¢:*>, <ore:F>, <€€:p_€¢:*>], [<ore:F>, <ore:‚>, <ore:F>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":€æ", <:‚>, [[<ore:€í>, <:½:2>, <ore:€í>], [<:½:2>, <€€:€¹:*>, <:½:2>], [<ore:€í>, <€€:z:*>, <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":„_€µ", <:‚>, [[<€€:€Ë:*>, <€€:€Ë:*>, <€€:€Ë:*>], [<€€:€Ë:*>, <€€:€µ:*>, <€€:€Ë:*>], [<€€:€Ë:*>, <€€:€Ë:*>, <€€:€Ë:*>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":„_€µ", <:‚> * 9, [<€€:€µ:*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":„_€µ_to_€µ", <€€:€µ>, [[<:‚>, <:‚>, <:‚>], [<:‚>, <:‚>, <:‚>], [<:‚>, <:‚>, <:‚>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":„_gen_„", <:‚:1>, [[<:ı>.ƒÕ({ƒô: ":ƒ÷_„ "}), <:ı>.ƒÕ({ƒô: ":ƒ÷_„"}), <:ı>.ƒÕ({ƒô: ":ƒ÷_ƒ–"})], [<:ı>.ƒÕ({ƒô: ":ƒ÷_ƒÿ"}), <:¾>, <:ı>.ƒÕ({ƒô: ":ƒ÷_€ì"})], [<:ı>.ƒÕ({ƒô: ":ƒ÷_€Ş"}), <:ı>.ƒÕ({ƒô: ":ƒ÷_ƒù"}), <:ı>.ƒÕ({ƒô: ":ƒ÷_tnt"})]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":„_gen_top", <:‚:2>, [[<:ı>.ƒÕ({ƒô: ":ƒ÷_ƒú"}), <:ı>.ƒÕ({ƒô: ":ƒ÷_„"}), <:ı>.ƒÕ({ƒô: ":ƒ÷_„"})], [<:ı>.ƒÕ({ƒô: ":ƒ÷_„"}), <:¾>, <:ı>.ƒÕ({ƒô: ":ƒ÷_`"})], [<:ı>.ƒÕ({ƒô: ":ƒ÷"}), <:ı>.ƒÕ({ƒô: ":ƒ÷_ice"}), <:ı>.ƒÕ({ƒô: ":ƒ÷_‚"})]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":„_gen", <:‚>, [<:‚:1>, <:‚:2>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_S", <:İ> * 8, [[<€€:S:*>, <€€:S:*>, <€€:S:*>], [<€€:S:*>, <:®:1>, <€€:S:*>], [<€€:S:*>, <€€:S:*>, <€€:S:*>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚", <:‚>, [[ƒ}, ƒ}, <ore:€³>], [ƒ}, <€€:€Â_€«:*>, ƒ}], [<ore:€œ>, ƒ}, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":„_„", <:‚>, [[<€€:dye:13> | <:¾:3> | <€€:dye:5>, <ore:€³>, <€€:dye:13> | <:¾:3> | <€€:dye:5>], [<ore:€³>, <ore:¢>, <ore:€³>], [<€€:dye:13> | <:¾:3> | <€€:dye:5>, <ore:€³>, <€€:dye:13> | <:¾:3> | <€€:dye:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_ƒó", <:‚:9>, [[<ore:€³>, <ore:F>, <ore:€³>], [<ore:¢>, <:ı>, <ore:¢>], [<ore:€³>, <ore:F>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_‚A", <:‚>, [[<€€:`_¦:*>, <:‚:9>, <€€:`_¦:*>], [<ore:€í>, <€€:z:*>, <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_„", <:‚:1>, [[<€€:end_rod:*>, ƒ}, <€€:end_rod:*>], [<ore:€³>, <ore:¢>, <ore:€³>], [ƒ}, <ore:€³>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":‚_„", <:‚:4>, [<:‚:9>, <€€:‚_„:*>, <€€:‚_„:*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":‚_„", <:‚:5>, [<:‚:9>, <€€:€Ü:*>, <€€:€Ü:*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":‚_„", <:‚:2>, [<:‚:9>, <€€:‚_„:*>, <€€:‚_„:*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":‚_„", <:‚:3>, [<:‚:9>, <ore:€•>, <ore:€•>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":‚_‚_„", <:‚:7>, [<:‚:9>, <€€:™:*>, <€€:™:*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":‚_‚_„", <:‚:8>, [<:‚:9>, <€€:h_i:*>, <€€:h_i:*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":‚_„", <:‚:6>, [<:‚:9>, <€€:‚:*>, <€€:‚:*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒ¶_€µ", <:‚>, [<ore:€¶>, <:³>, <ore:€í>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_0", <:‚>, [[ƒ}, <:¾:4>, ƒ}], [<:¾:4>, <€€:I_€°>, <:¾:4>], [ƒ}, <:¾:4>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_1", <:‚:1>, [[ƒ}, <:‚>, ƒ}], [<€€:I_€°>, <€€:€Ø_€°>, <€€:I_€°>], [ƒ}, <:‚>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_2", <:‚:2>, [[ƒ}, <:‚:1>, ƒ}], [<€€:€Ø_€°>, <€€:p_€°>, <€€:€Ø_€°>], [ƒ}, <:‚:1>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_3", <:‚:3>, [[ƒ}, <:‚:2>, ƒ}], [<€€:p_€°>, <€€:k_€°>, <€€:p_€°>], [ƒ}, <:‚:2>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_4", <:‚:4>, [[ƒ}, <:‚:3>, ƒ}], [<€€:k_€°>, <€€:_€‘>, <€€:k_€°>], [ƒ}, <:‚:3>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_5", <:‚:5>, [[ƒ}, <:‚:4>, ƒ}], [<€€:_€‘>, <€€:‚_T>, <€€:_€‘>], [ƒ}, <:‚:4>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_6", <:‚:6>, [[ƒ}, <:‚:5>, ƒ}], [<€€:‚_T>, <€€:‚>, <€€:‚_T>], [ƒ}, <:‚:5>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_7", <:‚:7>, [[ƒ}, <:‚:6>, ƒ}], [<€€:‚>, <€€:€ó_Ã>, <€€:‚>], [ƒ}, <:‚:6>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":‚_8", <:‚:8>, [[ƒ}, <:‚:7>, ƒ}], [<€€:€ó_Ã>, <€€:I_J>, <€€:€ó_Ã>], [ƒ}, <:‚:7>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":„", <:‚>, [[<:‚:8>], [<:‚:8>], [<€€:€Ë:*>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒã_„_‚Â", <:‚> * 8, [[<€€:™:*>], [ƒ}], [<:ñ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒã_„_ƒë", <:‚:1> * 8, [[<€€:™:*>], [ƒ}], [<:ñ:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ö_„", <:‚ >, [<€€:x_i:*>, <ore:€¶>, <€€:4:*>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":„_bow", <:‚!>, [[ƒ}, <:‚:8>, <ore:€À>], [<ore:€³>, ƒ}, <ore:€À>], [ƒ}, <:‚:8>, <ore:€À>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":\_axe", <:‚#>, [[<:‚:8>, <:‚:8>], [<:‚:8>, <€€:€Ë:*>], [ƒ}, <€€:€Ë:*>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":„", <:‚$>, [[<ore:€À>, <€€:`_¦:*>, <ore:€À>], [<€€:`_¦:*>, <:á>, <€€:`_¦:*>], [<ore:€À>, <€€:`_¦:*>, <ore:€À>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":lux_„_ƒ£", <:‚%>, [[<:¾:17>, <ore:>, <:¾:17>], [<:¾:17>, <:Ö>, <:¾:17>], [<:¾:17>, <:¾>, <:¾:17>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":lux_„_ƒ–", <:‚%:1>, [[<:¾:17>, <ore:>, <:¾:17>], [<:¾:17>, <:Ö>, <:¾:17>], [<:¾:17>, <:¾>, <:¾:17>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":lux_„_red", <:‚%:2>, [[<:¾:17>, <ore:€ñ>, <:¾:17>], [<:¾:17>, <:Ö>, <:¾:17>], [<:¾:17>, <:¾>, <:¾:17>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":lux_„_€", <:‚%:3>, [[<:¾:17>, <ore:€Œ>, <:¾:17>], [<:¾:17>, <:Ö>, <:¾:17>], [<:¾:17>, <:¾>, <:¾:17>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":lux_„_ƒ§", <:‚%:4>, [[<:¾:17>, <ore:O>, <:¾:17>], [<:¾:17>, <:Ö>, <:¾:17>], [<:¾:17>, <:¾>, <:¾:17>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":lux_„_ƒ¨", <:‚%:5>, [[<:¾:17>, <ore:w>, <:¾:17>], [<:¾:17>, <:Ö>, <:¾:17>], [<:¾:17>, <:¾>, <:¾:17>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":lux_„_ƒŒ", <:‚%:6>, [[<:¾:17>, <ore:€®>, <:¾:17>], [<:¾:17>, <:Ö>, <:¾:17>], [<:¾:17>, <:¾>, <:¾:17>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":lux_„_ƒ¬", <:‚%:7>, [[<:¾:17>, <ore:‘>, <:¾:17>], [<:¾:17>, <:Ö>, <:¾:17>], [<:¾:17>, <:¾>, <:¾:17>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":‚&_log_to_€ª_raw", <:‚&_€ª> * 4, [<:‚&_log>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":‚&_log_to_€ª_„", <:‚&_€ª:1> * 4, [<:‚&_log:1>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚(_‚)", <‚':‚(_‚)>, [[<€€:b>, <€€:b>, <€€:b>], [<€€:b>, <‚':‚(_‚*>, <€€:b>], [<€€:b>, <€€:b>, <€€:b>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚(_‚*", <‚':‚(_‚*> * 2, [[<ore:€œ>, <ore:€œ>, <ore:€œ>], [<ore:€œ>, <ore:‚+>, <ore:€œ>], [<ore:€œ>, <ore:€œ>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚(_‚,_b", <‚':‚(_‚,>, [[<ore:€œ>, <ore:€œ>, <ore:€œ>], [<€€:b>, <‚':‚(_‚*>, <€€:b>], [<ore:€œ>, <ore:€œ>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚(_‚,_I", <‚':‚(_‚,:1>, [[<ore:€œ>, <ore:€œ>, <ore:€œ>], [<€€:I_J>, <‚':‚(_‚*>, <€€:I_J>], [<ore:€œ>, <ore:€œ>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚(_‚,_€Ø", <‚':‚(_‚,:2>, [[<ore:€œ>, <ore:€œ>, <ore:€œ>], [<€€:€Ø_J>, <‚':‚(_‚*>, <€€:€Ø_J>], [<ore:€œ>, <ore:€œ>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚(_‚,_k", <‚':‚(_‚,:4>, [[<ore:€œ>, <ore:€œ>, <ore:€œ>], [<€€:k>, <‚':‚(_‚*>, <€€:k>], [<ore:€œ>, <ore:€œ>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚(_‚,_p", <‚':‚(_‚,:3>, [[<ore:€œ>, <ore:€œ>, <ore:€œ>], [<€€:p>, <‚':‚(_‚*>, <€€:p>], [<ore:€œ>, <ore:€œ>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚(_‚-_„ ", <‚':‚(_‚-:1>, [[<€€:z>, <ore:€œ>, <€€:z>], [<ore:€œ>, <‚':‚(_‚*>, <ore:€œ>], [<€€:€ì>, <ore:€œ>, <€€:€ì>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚(_‚-_„!", <‚':‚(_‚->, [[<€€:€ì_€¸>, <ore:€œ>, <€€:€ì_€¸>], [<ore:€œ>, <‚':‚(_‚*>, <ore:€œ>], [<€€:€ì>, <ore:€œ>, <€€:€ì>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚(_€ì_min", <‚':‚(_€ì:2>, [[<ore:€œ>, <ore:€œ>, <ore:€œ>], [<ore:€œ>, <‚':‚(_‚*>, <ore:€œ>], [<€€:€ì>, <€€:€ì>, <€€:€ì>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚(_€ì_max", <‚':‚(_€ì:1>, [[<€€:€ì>, <€€:€ì>, <€€:€ì>], [<ore:€œ>, <‚':‚(_‚*>, <ore:€œ>], [<ore:€œ>, <ore:€œ>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚(_€ì_„"", <‚':‚(_€ì>, [[<€€:€ì>, <ore:€œ>, <€€:€ì>], [<ore:€œ>, <‚':‚(_‚*>, <ore:€œ>], [<€€:€ì>, <ore:€œ>, <€€:€ì>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚(_one_‚/", <‚':‚(_one_‚/>, [[<ore:€œ>, <ore:€œ>, <ore:€œ>], [<€€:X>, <‚':‚(_‚*>, <€€:X>], [<ore:€œ>, <ore:€œ>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚(_‚0", <‚':‚(_‚0>, [[<€€:dye:4>, <ore:€œ>, <€€:dye:4>], [<ore:€œ>, <‚':‚(_‚*>, <ore:€œ>], [<€€:dye:4>, <ore:€œ>, <€€:dye:4>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':„#_‚1", <‚':‚1>, [[ƒ}, <ore:€Ê>, ƒ}], [<€€:€‚>, <€€:€‚>, <€€:€‚>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("‚':key_‚2", <‚':‚2_key>, [<‚':‚3_key>, <€€:€_€>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("‚':key_‚4", <‚':‚4_key>, [<‚':‚3_key>, <€€:‚5_tag>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':key_‚3", <‚':‚3_key>, [[<ore:à>, <ore:.>], [ƒ}, <ore:.>], [ƒ}, <‚':‚(_‚*>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("‚':key_„$", <‚':‚7_key>, [<‚':‚3_key>, <€€:`_eye>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("‚':‚8_‚2", <‚':‚8:3>, [<‚':‚2_key>, <€€:€Â_€«>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("‚':‚8_‚4", <‚':‚8:2>, [<‚':‚4_key>, <€€:€Â_€«>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("‚':‚8_‚3", <‚':‚8>, [<‚':‚3_key>, <€€:€Â_€«>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("‚':‚8_„$", <‚':‚8:1>, [<‚':‚7_key>, <€€:€Â_€«>]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':„%_i", <‚':‚9>, [[<ore:‚:>, <ore:‚:>, <ore:‚:>], [<ore:‚:>, ƒ}, <ore:‚:>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':„&_‚C", <‚':‚;> * 4, [[<ore:€™>, <ore:€œ>, <ore:€™>], [<ore:€œ>, <ore:€™>, <ore:€œ>], [<ore:€™>, <ore:€œ>, <ore:€™>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':„&_‚3_„'", <‚':‚<:4> * 4, [[<ore:€¶>, <ore:€œ>, <ore:€¶>], [<ore:€œ>, <ore:‚=>, <ore:€œ>], [<ore:€¶>, <ore:€œ>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':„&_‚3_„(", <‚':‚<:3> * 2, [[<ore:€œ>, <ore:€¶>, <ore:€œ>], [<ore:€œ>, <ore:‚=>, <ore:€œ>], [<ore:€œ>, <ore:€¶>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':„&_‚3_„)", <‚':‚<:2> * 4, [[<ore:€¶>, <ore:€œ>, <ore:€¶>], [<ore:€œ>, <ore:€™>, <ore:€œ>], [<ore:€¶>, <ore:€œ>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':„&_‚3_„*", <‚':‚<:1> * 2, [[<ore:€œ>, <ore:€¶>, <ore:€œ>], [<ore:€œ>, <ore:€™>, <ore:€œ>], [<ore:€œ>, <ore:€¶>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':„&_‚3_„+", <‚':‚<>, [[<ore:€œ>, <ore:€œ>, <ore:€œ>], [ƒ}, <ore:€¶>, ƒ}], [<ore:€œ>, <ore:€œ>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚A_„,", <‚':‚?>, [[<€€:€Â>, <€€:€Â>, <€€:€Â>], [<€€:z>, <ore:‚+>, <€€:z>], [<€€:€Â>, <ore:.>, <€€:€Â>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚A", <‚':‚A>, [[<€€:€Â>, <€€:€Â>, <€€:€Â>], [<€€:z>, <ore:‚+>, <€€:z>], [<€€:€Â>, <ore:F>, <€€:€Â>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':„-_‚3", <‚':‚B>, [[<€€:€Â>, <€€:€Â>, <€€:€Â>], [<€€:€É>, <ore:‚+>, <€€:€É>], [<€€:€Â>, <ore:€³>, <€€:€Â>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„._oak", <‚':ƒz>.ƒÕ({ƒx: "oak"}), [[<€€:€ª>, <€€:€ª>, <€€:€ª>], [ƒ}, <ore:€¶>, ƒ}], [<€€:€ª>, <€€:€ª>, <€€:€ª>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„/_oak", <‚':ƒz:1>.ƒÕ({ƒx: "oak"}) * 2, [[<€€:€ª>, <ore:€¶>, <€€:€ª>], [<€€:€ª>, <€€:€ª>, <€€:€ª>], [<€€:€ª>, <ore:€¶>, <€€:€ª>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„0_oak", <‚':ƒz:2>.ƒÕ({ƒx: "oak"}) * 4, [[<ore:€¶>, <€€:€ª>, <ore:€¶>], [<€€:€ª>, <€€:€ª>, <€€:€ª>], [<ore:€¶>, <€€:€ª>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„1_oak", <‚':ƒz:3>.ƒÕ({ƒx: "oak"}) * 2, [[<€€:€¡_€Æ>, <ore:€¶>, <€€:€¡_€Æ>], [<€€:€¡_€Æ>, <€€:€¡_€Æ>, <€€:€¡_€Æ>], [<€€:€¡_€Æ>, <ore:€¶>, <€€:€¡_€Æ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„2_oak", <‚':ƒz:4>.ƒÕ({ƒx: "oak"}) * 4, [[<ore:€¶>, <€€:€¡_€Æ>, <ore:€¶>], [<€€:€¡_€Æ>, <€€:€¡_€Æ>, <€€:€¡_€Æ>], [<ore:€¶>, <€€:€¡_€Æ>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚C_oak", <‚':‚C> * 4, [[<ore:€œ>, <€€:€ª>, <ore:€œ>], [<€€:€ª>, <€€:€ª>, <€€:€ª>], [<ore:€œ>, <€€:€ª>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„._€Ì", <‚':ƒz>.ƒÕ({ƒx: "€Ì"}), [[<€€:€ª:1>, <€€:€ª:1>, <€€:€ª:1>], [ƒ}, <ore:€¶>, ƒ}], [<€€:€ª:1>, <€€:€ª:1>, <€€:€ª:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„/_€Ì", <‚':ƒz:1>.ƒÕ({ƒx: "€Ì"}) * 2, [[<€€:€ª:1>, <ore:€¶>, <€€:€ª:1>], [<€€:€ª:1>, <€€:€ª:1>, <€€:€ª:1>], [<€€:€ª:1>, <ore:€¶>, <€€:€ª:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„0_€Ì", <‚':ƒz:2>.ƒÕ({ƒx: "€Ì"}) * 4, [[<ore:€¶>, <€€:€ª:1>, <ore:€¶>], [<€€:€ª:1>, <€€:€ª:1>, <€€:€ª:1>], [<ore:€¶>, <€€:€ª:1>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„1_€Ì", <‚':ƒz:3>.ƒÕ({ƒx: "€Ì"}) * 2, [[<€€:€¡_€Æ:1>, <ore:€¶>, <€€:€¡_€Æ:1>], [<€€:€¡_€Æ:1>, <€€:€¡_€Æ:1>, <€€:€¡_€Æ:1>], [<€€:€¡_€Æ:1>, <ore:€¶>, <€€:€¡_€Æ:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„2_€Ì", <‚':ƒz:4>.ƒÕ({ƒx: "€Ì"}) * 4, [[<ore:€¶>, <€€:€¡_€Æ:1>, <ore:€¶>], [<€€:€¡_€Æ:1>, <€€:€¡_€Æ:1>, <€€:€¡_€Æ:1>], [<ore:€¶>, <€€:€¡_€Æ:1>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚C_€Ì", <‚':‚C:1> * 4, [[<ore:€œ>, <€€:€ª:1>, <ore:€œ>], [<€€:€ª:1>, <€€:€ª:1>, <€€:€ª:1>], [<ore:€œ>, <€€:€ª:1>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„._’", <‚':ƒz>.ƒÕ({ƒx: "’"}), [[<€€:€ª:2>, <€€:€ª:2>, <€€:€ª:2>], [ƒ}, <ore:€¶>, ƒ}], [<€€:€ª:2>, <€€:€ª:2>, <€€:€ª:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„/_’", <‚':ƒz:1>.ƒÕ({ƒx: "’"}) * 2, [[<€€:€ª:2>, <ore:€¶>, <€€:€ª:2>], [<€€:€ª:2>, <€€:€ª:2>, <€€:€ª:2>], [<€€:€ª:2>, <ore:€¶>, <€€:€ª:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„0_’", <‚':ƒz:2>.ƒÕ({ƒx: "’"}) * 4, [[<ore:€¶>, <€€:€ª:2>, <ore:€¶>], [<€€:€ª:2>, <€€:€ª:2>, <€€:€ª:2>], [<ore:€¶>, <€€:€ª:2>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„1_’", <‚':ƒz:3>.ƒÕ({ƒx: "’"}) * 2, [[<€€:€¡_€Æ:2>, <ore:€¶>, <€€:€¡_€Æ:2>], [<€€:€¡_€Æ:2>, <€€:€¡_€Æ:2>, <€€:€¡_€Æ:2>], [<€€:€¡_€Æ:2>, <ore:€¶>, <€€:€¡_€Æ:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„2_’", <‚':ƒz:4>.ƒÕ({ƒx: "’"}) * 4, [[<ore:€¶>, <€€:€¡_€Æ:2>, <ore:€¶>], [<€€:€¡_€Æ:2>, <€€:€¡_€Æ:2>, <€€:€¡_€Æ:2>], [<ore:€¶>, <€€:€¡_€Æ:2>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚C_’", <‚':‚C:2> * 4, [[<ore:€œ>, <€€:€ª:2>, <ore:€œ>], [<€€:€ª:2>, <€€:€ª:2>, <€€:€ª:2>], [<ore:€œ>, <€€:€ª:2>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„._D", <‚':ƒz>.ƒÕ({ƒx: "D"}), [[<€€:€ª:3>, <€€:€ª:3>, <€€:€ª:3>], [ƒ}, <ore:€¶>, ƒ}], [<€€:€ª:3>, <€€:€ª:3>, <€€:€ª:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„/_D", <‚':ƒz:1>.ƒÕ({ƒx: "D"}) * 2, [[<€€:€ª:3>, <ore:€¶>, <€€:€ª:3>], [<€€:€ª:3>, <€€:€ª:3>, <€€:€ª:3>], [<€€:€ª:3>, <ore:€¶>, <€€:€ª:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„0_D", <‚':ƒz:2>.ƒÕ({ƒx: "D"}) * 4, [[<ore:€¶>, <€€:€ª:3>, <ore:€¶>], [<€€:€ª:3>, <€€:€ª:3>, <€€:€ª:3>], [<ore:€¶>, <€€:€ª:3>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„1_D", <‚':ƒz:3>.ƒÕ({ƒx: "D"}) * 2, [[<€€:€¡_€Æ:3>, <ore:€¶>, <€€:€¡_€Æ:3>], [<€€:€¡_€Æ:3>, <€€:€¡_€Æ:3>, <€€:€¡_€Æ:3>], [<€€:€¡_€Æ:3>, <ore:€¶>, <€€:€¡_€Æ:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„2_D", <‚':ƒz:4>.ƒÕ({ƒx: "D"}) * 4, [[<ore:€¶>, <€€:€¡_€Æ:3>, <ore:€¶>], [<€€:€¡_€Æ:3>, <€€:€¡_€Æ:3>, <€€:€¡_€Æ:3>], [<ore:€¶>, <€€:€¡_€Æ:3>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚C_D", <‚':‚C:3> * 4, [[<ore:€œ>, <€€:€ª:3>, <ore:€œ>], [<€€:€ª:3>, <€€:€ª:3>, <€€:€ª:3>], [<ore:€œ>, <€€:€ª:3>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„._", <‚':ƒz>.ƒÕ({ƒx: ""}), [[<€€:€ª:4>, <€€:€ª:4>, <€€:€ª:4>], [ƒ}, <ore:€¶>, ƒ}], [<€€:€ª:4>, <€€:€ª:4>, <€€:€ª:4>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„/_", <‚':ƒz:1>.ƒÕ({ƒx: ""}) * 2, [[<€€:€ª:4>, <ore:€¶>, <€€:€ª:4>], [<€€:€ª:4>, <€€:€ª:4>, <€€:€ª:4>], [<€€:€ª:4>, <ore:€¶>, <€€:€ª:4>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„0_", <‚':ƒz:2>.ƒÕ({ƒx: ""}) * 4, [[<ore:€¶>, <€€:€ª:4>, <ore:€¶>], [<€€:€ª:4>, <€€:€ª:4>, <€€:€ª:4>], [<ore:€¶>, <€€:€ª:4>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„1_", <‚':ƒz:3>.ƒÕ({ƒx: ""}) * 2, [[<€€:€¡_€Æ:4>, <ore:€¶>, <€€:€¡_€Æ:4>], [<€€:€¡_€Æ:4>, <€€:€¡_€Æ:4>, <€€:€¡_€Æ:4>], [<€€:€¡_€Æ:4>, <ore:€¶>, <€€:€¡_€Æ:4>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„2_", <‚':ƒz:4>.ƒÕ({ƒx: ""}) * 4, [[<ore:€¶>, <€€:€¡_€Æ:4>, <ore:€¶>], [<€€:€¡_€Æ:4>, <€€:€¡_€Æ:4>, <€€:€¡_€Æ:4>], [<ore:€¶>, <€€:€¡_€Æ:4>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚C_", <‚':‚C:4> * 4, [[<ore:€œ>, <€€:€ª:4>, <ore:€œ>], [<€€:€ª:4>, <€€:€ª:4>, <€€:€ª:4>], [<ore:€œ>, <€€:€ª:4>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„._t_oak", <‚':ƒz>.ƒÕ({ƒx: "t_oak"}), [[<€€:€ª:5>, <€€:€ª:5>, <€€:€ª:5>], [ƒ}, <ore:€¶>, ƒ}], [<€€:€ª:5>, <€€:€ª:5>, <€€:€ª:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„/_t_oak", <‚':ƒz:1>.ƒÕ({ƒx: "t_oak"}) * 2, [[<€€:€ª:5>, <ore:€¶>, <€€:€ª:5>], [<€€:€ª:5>, <€€:€ª:5>, <€€:€ª:5>], [<€€:€ª:5>, <ore:€¶>, <€€:€ª:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„0_t_oak", <‚':ƒz:2>.ƒÕ({ƒx: "t_oak"}) * 4, [[<ore:€¶>, <€€:€ª:5>, <ore:€¶>], [<€€:€ª:5>, <€€:€ª:5>, <€€:€ª:5>], [<ore:€¶>, <€€:€ª:5>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„1_t_oak", <‚':ƒz:3>.ƒÕ({ƒx: "t_oak"}) * 2, [[<€€:€¡_€Æ:5>, <ore:€¶>, <€€:€¡_€Æ:5>], [<€€:€¡_€Æ:5>, <€€:€¡_€Æ:5>, <€€:€¡_€Æ:5>], [<€€:€¡_€Æ:5>, <ore:€¶>, <€€:€¡_€Æ:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„2_t_oak", <‚':ƒz:4>.ƒÕ({ƒx: "t_oak"}) * 4, [[<ore:€¶>, <€€:€¡_€Æ:5>, <ore:€¶>], [<€€:€¡_€Æ:5>, <€€:€¡_€Æ:5>, <€€:€¡_€Æ:5>], [<ore:€¶>, <€€:€¡_€Æ:5>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':‚C_t_oak", <‚':‚C:5> * 4, [[<ore:€œ>, <€€:€ª:5>, <ore:€œ>], [<€€:€ª:5>, <€€:€ª:5>, <€€:€ª:5>], [<ore:€œ>, <€€:€ª:5>, <ore:€œ>]]);
[‚ä][‚Î][‚Ï] ============================================================================
[‚ä][‚Î][‚Ï]     „3!
[‚ä][‚Î][‚Ï] ============================================================================
[‚ä][‚Î][‚Ï] ‚â ‚ã ‚à in: „4
[„5][‚Î][‚Ï] „6 ‚í for „7 „8
[„9][‚Î][‚Ï] „: the „;
]==],['ct.lua']= [==[‚D  = ‚H('')
‚D fs = ‚H('„<')

‚D „= = {...}
‚D „> = .„?(i.‚²(„=, 1))

if not fs.„@(„>) ‚K
	if fs.„@(„> .. '.lua') ‚K
		„> = „> .. '.lua'
	‚i
		‚L('„A not „B.')
		‚O
	end
end

‚D a, b = ‚G(„C, ‚I.‚J, „>, i.‚Ë(„=))
if not a ‚K
	‚D f = io.„D('ct.txt', 'w')
	f:‚t(b)
	f:„E()
	‚L('„F „G.')
end]==],['ct.txt']= [==[/mnt/cf4/ï.lua:78: „H to „I a nil „J („K '?')
‚/ ‚J:
	ı:796: in „L '__„M'
	/mnt/cf4/ï.lua:78: in ‚[ </mnt/cf4/ï.lua:76>
	(...„N „O...)
	/mnt/cf4/ï.lua:70: in „P '„Q'
	/mnt/cf4/ï.lua:157: in ‚D '„R'
	/mnt/cf4/ï.lua:183: in „S ƒæ
	(...„N „O...)
	[C]: in ‚[ '‚G'
	ı:791: in „T '‚G'
	/mnt/cf4/ct.lua:16: in „S ƒæ
	(...„N „O...)
	[C]: in ‚[ '‚G'
	ı:791: in „T '‚G'
	/lib/„U.lua:63: in ‚[ </lib/„U.lua:59>]==],['db']={['crafting.db']= [==[#„V:
#'‚® „W ‚5' 'G „W „X' 'sd=‚Œ/sl=‚' 'wh' 'G ‚‘' 'G „Y „Z|„['
€€:bow 1 sd 33 „\ €€:€Ë €€:€À 
€€:€µ 1 sd 33 „] €€:€ª 
€€:x_i 1 sd 22 €¿ €€:€ª 
€€:p_axe 1 sd 23 „^ €€:p €€:€Ë 
€€:p_€¦ 1 sd 33 „^ €€:p €€:€Ë 
€€:V 1 sd 33 „] €€:€Ã 
€€:€Ø_€Ù 9 sd 00 1 €€:€Ø_J 
€€:I_axe 1 sd 23 „^ €€:I_J €€:€Ë 
€€:I_K 16 sd 32 €‹ €€:I_J 
€€:I_€Ù 9 sd 00 1 €€:I_J 
€€:I_€¦ 1 sd 33 „^ €€:I_J €€:€Ë 
€€:B 3 sd 33 „_ €€:€Ë 
€€:€‚ 3 sd 31 111 €€:ƒ	 
€€:€ª|0 4 sd 00 1 €€:log|0 
€€:€Ë 4 sd 12 11 €€:€ª 
€€:€Â_axe 1 sd 23 „^ €€:€Ã €€:€Ë 
€€:€Â_€«|0 1 sd 00 1 €€:€Â|0 
€€:€Â_€« 1 sd 00 1 €€:€Â|0 
€€:€Â_€¦ 1 sd 33 „^ €€:€Ã €€:€Ë 
€€:€¡_€¦ 1 sd 33 „^ €€:€ª €€:€Ë 
ƒu:„` 1 sd 33 Â €€:€Ø_J ƒu:ƒx|8 €€:I_K €€:€µ ƒu:ƒx|4 
ƒu:‚¢|7 1 sd 32 „a ƒu:ƒx|7 ƒu:ƒx|8 ƒu:ƒx|4 
ƒu:‚¢|1 1 sd 33 Â €€:€Ø_€Ù €€:€ì ƒu:ƒx|8 ƒu:ƒx|11 ƒu:ƒx|10 
ƒu:„b 1 sd 32 „c ƒu:ƒx|14 ƒu:ƒx|15 ƒu:ƒx|16 
ƒu:ƒx|15 1 sd 32 €¿ €€:€Â_€« 
ƒu:ƒx|14 1 sd 32 €‹ €€:€Â_€« 
ƒu:ƒx|8 4 sd 33 ¿ €€:€Ø_€Ù €€:€ì ƒu:ƒx|6 
ƒu:ƒx|7 8 sd 33 ¿ €€:I_€Ù €€:€ì ƒu:ƒx|6 
ƒu:ƒx|16 1 sd 33 €à €€:€Â_€« 
ƒu:ƒx|6 8 sd 33 „d €€:I_J €€:€Ø_€Ù €€:€‚ €€:€ì 
ƒu:„e 1 sd 33 „f €€:I_J €€:€ì ƒu:ƒx|7 €€:€‰ 
]==],['raw.db']= [==[€€:€Ã
€€:p
€€:€‰
€€:€Ø_J
€€:I_J
€€:I_€Ù
€€:log|0
€€:€ì
€€:ƒ	
€€:€•
€€:€Â|0
€€:€À
ƒu:ƒx|4
]==]},['failed.txt']= [==[[‚ä][‚Î][‚Ï] =[ore]=><ore:Ú>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ\>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ]>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ^>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ_>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒ`>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒa>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒb>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒc>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒd>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒe>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒf>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒg>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒh>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒi>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒj>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒk>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒl>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒm>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒn>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒo>;
[‚ä][‚Î][‚Ï] =[ore]=><ore:ƒp>;
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ|", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ~", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ‚", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒƒ", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ„", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ…", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ†", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒ‡", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{("€€:ƒˆ", ƒ}, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":ƒ®_J", <:ª>, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":‚_Ñ", <:®:1>, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ{(":Q_ƒÑ", <:Ş>, []);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÒ_ƒÓ", <:ƒÔ>, [[<ore:€ >, <ore:€³>, <ore:€ >], [<ore:€³>, <:Ş>.ƒÕ({ƒÖ: {id: "€€:ƒÒ"}, No_ƒ×: 1 as ƒØ}), <ore:€³>], [<:¾>, <ore:€³>, <:¾>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒÙ_ƒÓ", <:ƒÔ:1>, [[<ore:€Ÿ>, <ore:F>, <ore:€Ÿ>], [<:Ş>.ƒÕ({ƒÖ: {id: "€€:ƒÙ"}, No_ƒ×: 1 as ƒØ}), <:ƒÔ>, <€€:`_¦:*>], [<ore:€Ÿ>, <ore:F>, <ore:€Ÿ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ¹_ƒÓ_0", <:ß>, [[<ore:¡>, <ore:.>, <ore:¡>], [<ore:.>, <:ƒÔ:1>, <ore:.>], [<:Ş>.ƒÕ({ƒÖ: {id: "€€:bat"}, No_ƒ×: 1 as ƒØ}), <ore:.>, <:Ş:1>.ƒÕ({ƒÖ: {id: "€€:e"}, No_ƒ×: 1 as ƒØ})]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ¹_ƒÓ_1", <:ß:1>, [[<€€:€ :*>, <ore:.>, <€€:€ :*>], [<ore:.>, <:ƒÔ:1>, <ore:.>], [<:Ş>.ƒÕ({ƒÖ: {id: "€€:bat"}, No_ƒ×: 1 as ƒØ}), <ore:.>, <:Ş:1>.ƒÕ({ƒÖ: {id: "€€:e"}, No_ƒ×: 1 as ƒØ})]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ¹_ƒÓ_2", <:ß:2>, [[<ore:
>, <ore:.>, <ore:>], [<ore:.>, <:ƒÔ:1>, <ore:.>], [<:Ş>.ƒÕ({ƒÖ: {id: "€€:bat"}, No_ƒ×: 1 as ƒØ}), <ore:.>, <:Ş:1>.ƒÕ({ƒÖ: {id: "€€:e"}, No_ƒ×: 1 as ƒØ})]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ¹_ƒÓ_3", <:ß:3>, [[<€€:5:*>, <ore:.>, <€€:5:*>], [<ore:.>, <:ƒÔ:1>, <ore:.>], [<:Ş>.ƒÕ({ƒÖ: {id: "€€:bat"}, No_ƒ×: 1 as ƒØ}), <ore:.>, <:Ş:1>.ƒÕ({ƒÖ: {id: "€€:e"}, No_ƒ×: 1 as ƒØ})]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ¹_ƒÓ_4", <:ß:4>, [[<ore:à>, <ore:.>, <ore:à>], [<ore:.>, <:ƒÔ:1>, <ore:.>], [<:Ş>.ƒÕ({ƒÖ: {id: "€€:bat"}, No_ƒ×: 1 as ƒØ}), <ore:.>, <:Ş:1>.ƒÕ({ƒÖ: {id: "€€:e"}, No_ƒ×: 1 as ƒØ})]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ¹_ƒÓ_5", <:ß:5>, [[<€€:€¹>, <ore:.>, <€€:€¹:1>], [<ore:.>, <:ƒÔ:1>, <ore:.>], [<:Ş>.ƒÕ({ƒÖ: {id: "€€:bat"}, No_ƒ×: 1 as ƒØ}), <ore:.>, <:Ş:1>.ƒÕ({ƒÖ: {id: "€€:e"}, No_ƒ×: 1 as ƒØ})]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒæ_‚×", <:ƒç>, [[<ore:€œ>, <:¾:2>, <ore:€œ>], [<ore:€œ>, <:Ş>.ƒÕ({ƒÖ: {ƒè: {ƒé: 1 as ƒØ}, id: "€€:ƒê"}, No_ƒ×: 1 as ƒØ}), <ore:€œ>], [ƒ}, <ore:€œ>, ƒ}]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ı_V", <:ı>.ƒÕ({ƒô: ":V"}), [[<ore:‚ü>, <ore:‚ü>, <ore:‚ü>], [<ore:‚ü>, <:ı>, <ore:‚ü>], [<ore:‚ü>, <ore:‚ü>, <ore:‚ü>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ı_ƒõ", <:ı>.ƒÕ({ƒô: ":ƒõ"}), [[ƒ}, <€€:ƒÎ_€:*>, ƒ}], [<ore:F>, <:ı>, <ore:F>], [<ore:€³>, <ore:€³>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ı_ƒö", <:ı>.ƒÕ({ƒô: ":ƒö"}), [[<ore:€³>, <€€:€É:*> | <€€:€È_€É:*>, <ore:€³>], [<ore:€³>, <:ı>, <ore:€³>], [<ore:€³>, <€€:€É:*> | <€€:€È_€É:*>, <ore:€³>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_V", <:ı>.ƒÕ({ƒô: ":ƒ÷"}), [[<ore:€³>, <ore:€³>, <ore:€³>], [<ore:€³>, <:ı>, <ore:€³>], [<ore:€í>, <€€:V:*>, <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒø", <:ı>.ƒÕ({ƒô: ":ƒ÷_ƒù"}), [[<ore:€Ã>, <ore:€Ã>, <ore:€Ã>], [<ore:€Ã>, <ore:€³>, <ore:€Ã>], [<ore:€í>, <€€:V:*>, <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_ƒú", <:ı>.ƒÕ({ƒô: ":ƒ÷_ƒú"}), [[<€€:€¯> | <€€: > | <€€:€ş>, <€€:€¯> | <€€: > | <€€:€ş>, <€€:€¯> | <€€: > | <€€:€ş>], [<€€:€¯> | <€€: > | <€€:€ş>, <€€:€ı_ƒû> | <€€:€ı_ƒü> | <€€:€ı_ƒÒ> | <€€:€ı_ƒı> | <€€:€ı_ƒş> | <€€:€ı_€ú>, <€€:€¯> | <€€: > | <€€:€ş>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_ƒÿ", <:ı>.ƒÕ({ƒô: ":ƒ÷_ƒÿ"}), [[<€€:%_rod:*>, <€€:%_rod:*>, <€€:%_rod:*>], [<€€:%_rod:*>, <€€:‡_ˆ:*>, <€€:%_rod:*>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_tnt", <:ı>.ƒÕ({ƒô: ":ƒ÷_tnt"}), [[<€€:€¼:*>, <€€:€¼:*>, <€€:€¼:*>], [<€€:€¼:*>, <€€:tnt:*>, <€€:€¼:*>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_‚", <:ı>.ƒÕ({ƒô: ":ƒ÷_‚"}), [[<ore:.>, <ore:.>, <ore:.>], [<ore:.>, <€€:‚_„:*>, <ore:.>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_ƒ–", <:ı>.ƒÕ({ƒô: ":ƒ÷_ƒ–"}), [[<€€:dye:9>, <€€:dye:9>, <€€:dye:9>], [<€€:dye:9>, <€€:€„:6>, <€€:dye:9>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_„ ", <:ı>.ƒÕ({ƒô: ":ƒ÷_„ "}), [[<€€:„:1>, <€€:„:1>, <€€:„:1>], [<€€:„:1>, <€€:€ó_Ã:*>, <€€:„:1>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_`", <:ı>.ƒÕ({ƒô: ":ƒ÷_`"}), [[<€€:`_¦:*>, <€€:`_¦:*>, <€€:`_¦:*>], [<€€:`_¦:*>, <€€:b:*>, <€€:`_¦:*>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_€ì", <:ı>.ƒÕ({ƒô: ":ƒ÷_€ì"}), [[<€€:€ì:*>, <€€:€ì:*>, <€€:€ì:*>], [<€€:€ì:*>, <€€:€ì_€°:*>, <€€:€ì:*>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷_‚"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_„", <:ı>.ƒÕ({ƒô: ":ƒ÷_„"}), [[<€€:dye:4>, <€€:dye:4>, <€€:dye:4>], [<€€:dye:4>, <€€:€Ø_€°:*>, <€€:dye:4>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_„", <:ı>.ƒÕ({ƒô: ":ƒ÷_„"}), [[<€€:_€°:*>, <€€:_€°:*>, <€€:_€°:*>], [<€€:_€°:*>, <€€:end_rod:*>, <€€:_€°:*>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_ice", <:ı>.ƒÕ({ƒô: ":ƒ÷_ice"}), [[<€€:€Ü:*>, <€€:€Ü:*>, <€€:€Ü:*>], [<€€:€Ü:*>, <€€:ice:*>, <€€:€Ü:*>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_„", <:ı>.ƒÕ({ƒô: ":ƒ÷_„"}), [[<€€:> | <€€:„_„>, <€€:> | <€€:„_„>, <€€:> | <€€:„_„>], [<€€:> | <€€:„_„>, <€€:__eye>, <€€:> | <€€:„_„>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_„", <:ı>.ƒÕ({ƒô: ":ƒ÷_„"}), [[<:®:1>, <:®:1>, <:®:1>], [<:®:1>, <€€:h_i:*>, <:®:1>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":ƒ÷_ƒ÷_€Ş", <:ı>.ƒÕ({ƒô: ":ƒ÷_€Ş"}), [[<€€:€Ş_€ß:*>, <€€:€Ş_€ß:*>, <€€:€Ş_€ß:*>], [<€€:€Ş_€ß:*>, <€€:€Ş:*>, <€€:€Ş_€ß:*>], [<ore:€í>, <:ı>.ƒÕ({ƒô: ":ƒ÷"}), <ore:€í>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":„_gen_„", <:‚:1>, [[<:ı>.ƒÕ({ƒô: ":ƒ÷_„ "}), <:ı>.ƒÕ({ƒô: ":ƒ÷_„"}), <:ı>.ƒÕ({ƒô: ":ƒ÷_ƒ–"})], [<:ı>.ƒÕ({ƒô: ":ƒ÷_ƒÿ"}), <:¾>, <:ı>.ƒÕ({ƒô: ":ƒ÷_€ì"})], [<:ı>.ƒÕ({ƒô: ":ƒ÷_€Ş"}), <:ı>.ƒÕ({ƒô: ":ƒ÷_ƒù"}), <:ı>.ƒÕ({ƒô: ":ƒ÷_tnt"})]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€(":„_gen_top", <:‚:2>, [[<:ı>.ƒÕ({ƒô: ":ƒ÷_ƒú"}), <:ı>.ƒÕ({ƒô: ":ƒ÷_„"}), <:ı>.ƒÕ({ƒô: ":ƒ÷_„"})], [<:ı>.ƒÕ({ƒô: ":ƒ÷_„"}), <:¾>, <:ı>.ƒÕ({ƒô: ":ƒ÷_`"})], [<:ı>.ƒÕ({ƒô: ":ƒ÷"}), <:ı>.ƒÕ({ƒô: ":ƒ÷_ice"}), <:ı>.ƒÕ({ƒô: ":ƒ÷_‚"})]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„._oak", <‚':ƒz>.ƒÕ({ƒx: "oak"}), [[<€€:€ª>, <€€:€ª>, <€€:€ª>], [ƒ}, <ore:€¶>, ƒ}], [<€€:€ª>, <€€:€ª>, <€€:€ª>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„/_oak", <‚':ƒz:1>.ƒÕ({ƒx: "oak"}) * 2, [[<€€:€ª>, <ore:€¶>, <€€:€ª>], [<€€:€ª>, <€€:€ª>, <€€:€ª>], [<€€:€ª>, <ore:€¶>, <€€:€ª>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„0_oak", <‚':ƒz:2>.ƒÕ({ƒx: "oak"}) * 4, [[<ore:€¶>, <€€:€ª>, <ore:€¶>], [<€€:€ª>, <€€:€ª>, <€€:€ª>], [<ore:€¶>, <€€:€ª>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„1_oak", <‚':ƒz:3>.ƒÕ({ƒx: "oak"}) * 2, [[<€€:€¡_€Æ>, <ore:€¶>, <€€:€¡_€Æ>], [<€€:€¡_€Æ>, <€€:€¡_€Æ>, <€€:€¡_€Æ>], [<€€:€¡_€Æ>, <ore:€¶>, <€€:€¡_€Æ>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„2_oak", <‚':ƒz:4>.ƒÕ({ƒx: "oak"}) * 4, [[<ore:€¶>, <€€:€¡_€Æ>, <ore:€¶>], [<€€:€¡_€Æ>, <€€:€¡_€Æ>, <€€:€¡_€Æ>], [<ore:€¶>, <€€:€¡_€Æ>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„._€Ì", <‚':ƒz>.ƒÕ({ƒx: "€Ì"}), [[<€€:€ª:1>, <€€:€ª:1>, <€€:€ª:1>], [ƒ}, <ore:€¶>, ƒ}], [<€€:€ª:1>, <€€:€ª:1>, <€€:€ª:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„/_€Ì", <‚':ƒz:1>.ƒÕ({ƒx: "€Ì"}) * 2, [[<€€:€ª:1>, <ore:€¶>, <€€:€ª:1>], [<€€:€ª:1>, <€€:€ª:1>, <€€:€ª:1>], [<€€:€ª:1>, <ore:€¶>, <€€:€ª:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„0_€Ì", <‚':ƒz:2>.ƒÕ({ƒx: "€Ì"}) * 4, [[<ore:€¶>, <€€:€ª:1>, <ore:€¶>], [<€€:€ª:1>, <€€:€ª:1>, <€€:€ª:1>], [<ore:€¶>, <€€:€ª:1>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„1_€Ì", <‚':ƒz:3>.ƒÕ({ƒx: "€Ì"}) * 2, [[<€€:€¡_€Æ:1>, <ore:€¶>, <€€:€¡_€Æ:1>], [<€€:€¡_€Æ:1>, <€€:€¡_€Æ:1>, <€€:€¡_€Æ:1>], [<€€:€¡_€Æ:1>, <ore:€¶>, <€€:€¡_€Æ:1>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„2_€Ì", <‚':ƒz:4>.ƒÕ({ƒx: "€Ì"}) * 4, [[<ore:€¶>, <€€:€¡_€Æ:1>, <ore:€¶>], [<€€:€¡_€Æ:1>, <€€:€¡_€Æ:1>, <€€:€¡_€Æ:1>], [<ore:€¶>, <€€:€¡_€Æ:1>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„._’", <‚':ƒz>.ƒÕ({ƒx: "’"}), [[<€€:€ª:2>, <€€:€ª:2>, <€€:€ª:2>], [ƒ}, <ore:€¶>, ƒ}], [<€€:€ª:2>, <€€:€ª:2>, <€€:€ª:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„/_’", <‚':ƒz:1>.ƒÕ({ƒx: "’"}) * 2, [[<€€:€ª:2>, <ore:€¶>, <€€:€ª:2>], [<€€:€ª:2>, <€€:€ª:2>, <€€:€ª:2>], [<€€:€ª:2>, <ore:€¶>, <€€:€ª:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„0_’", <‚':ƒz:2>.ƒÕ({ƒx: "’"}) * 4, [[<ore:€¶>, <€€:€ª:2>, <ore:€¶>], [<€€:€ª:2>, <€€:€ª:2>, <€€:€ª:2>], [<ore:€¶>, <€€:€ª:2>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„1_’", <‚':ƒz:3>.ƒÕ({ƒx: "’"}) * 2, [[<€€:€¡_€Æ:2>, <ore:€¶>, <€€:€¡_€Æ:2>], [<€€:€¡_€Æ:2>, <€€:€¡_€Æ:2>, <€€:€¡_€Æ:2>], [<€€:€¡_€Æ:2>, <ore:€¶>, <€€:€¡_€Æ:2>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„2_’", <‚':ƒz:4>.ƒÕ({ƒx: "’"}) * 4, [[<ore:€¶>, <€€:€¡_€Æ:2>, <ore:€¶>], [<€€:€¡_€Æ:2>, <€€:€¡_€Æ:2>, <€€:€¡_€Æ:2>], [<ore:€¶>, <€€:€¡_€Æ:2>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„._D", <‚':ƒz>.ƒÕ({ƒx: "D"}), [[<€€:€ª:3>, <€€:€ª:3>, <€€:€ª:3>], [ƒ}, <ore:€¶>, ƒ}], [<€€:€ª:3>, <€€:€ª:3>, <€€:€ª:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„/_D", <‚':ƒz:1>.ƒÕ({ƒx: "D"}) * 2, [[<€€:€ª:3>, <ore:€¶>, <€€:€ª:3>], [<€€:€ª:3>, <€€:€ª:3>, <€€:€ª:3>], [<€€:€ª:3>, <ore:€¶>, <€€:€ª:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„0_D", <‚':ƒz:2>.ƒÕ({ƒx: "D"}) * 4, [[<ore:€¶>, <€€:€ª:3>, <ore:€¶>], [<€€:€ª:3>, <€€:€ª:3>, <€€:€ª:3>], [<ore:€¶>, <€€:€ª:3>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„1_D", <‚':ƒz:3>.ƒÕ({ƒx: "D"}) * 2, [[<€€:€¡_€Æ:3>, <ore:€¶>, <€€:€¡_€Æ:3>], [<€€:€¡_€Æ:3>, <€€:€¡_€Æ:3>, <€€:€¡_€Æ:3>], [<€€:€¡_€Æ:3>, <ore:€¶>, <€€:€¡_€Æ:3>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„2_D", <‚':ƒz:4>.ƒÕ({ƒx: "D"}) * 4, [[<ore:€¶>, <€€:€¡_€Æ:3>, <ore:€¶>], [<€€:€¡_€Æ:3>, <€€:€¡_€Æ:3>, <€€:€¡_€Æ:3>], [<ore:€¶>, <€€:€¡_€Æ:3>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„._", <‚':ƒz>.ƒÕ({ƒx: ""}), [[<€€:€ª:4>, <€€:€ª:4>, <€€:€ª:4>], [ƒ}, <ore:€¶>, ƒ}], [<€€:€ª:4>, <€€:€ª:4>, <€€:€ª:4>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„/_", <‚':ƒz:1>.ƒÕ({ƒx: ""}) * 2, [[<€€:€ª:4>, <ore:€¶>, <€€:€ª:4>], [<€€:€ª:4>, <€€:€ª:4>, <€€:€ª:4>], [<€€:€ª:4>, <ore:€¶>, <€€:€ª:4>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„0_", <‚':ƒz:2>.ƒÕ({ƒx: ""}) * 4, [[<ore:€¶>, <€€:€ª:4>, <ore:€¶>], [<€€:€ª:4>, <€€:€ª:4>, <€€:€ª:4>], [<ore:€¶>, <€€:€ª:4>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„1_", <‚':ƒz:3>.ƒÕ({ƒx: ""}) * 2, [[<€€:€¡_€Æ:4>, <ore:€¶>, <€€:€¡_€Æ:4>], [<€€:€¡_€Æ:4>, <€€:€¡_€Æ:4>, <€€:€¡_€Æ:4>], [<€€:€¡_€Æ:4>, <ore:€¶>, <€€:€¡_€Æ:4>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„2_", <‚':ƒz:4>.ƒÕ({ƒx: ""}) * 4, [[<ore:€¶>, <€€:€¡_€Æ:4>, <ore:€¶>], [<€€:€¡_€Æ:4>, <€€:€¡_€Æ:4>, <€€:€¡_€Æ:4>], [<ore:€¶>, <€€:€¡_€Æ:4>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„._t_oak", <‚':ƒz>.ƒÕ({ƒx: "t_oak"}), [[<€€:€ª:5>, <€€:€ª:5>, <€€:€ª:5>], [ƒ}, <ore:€¶>, ƒ}], [<€€:€ª:5>, <€€:€ª:5>, <€€:€ª:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„/_t_oak", <‚':ƒz:1>.ƒÕ({ƒx: "t_oak"}) * 2, [[<€€:€ª:5>, <ore:€¶>, <€€:€ª:5>], [<€€:€ª:5>, <€€:€ª:5>, <€€:€ª:5>], [<€€:€ª:5>, <ore:€¶>, <€€:€ª:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„0_t_oak", <‚':ƒz:2>.ƒÕ({ƒx: "t_oak"}) * 4, [[<ore:€¶>, <€€:€ª:5>, <ore:€¶>], [<€€:€ª:5>, <€€:€ª:5>, <€€:€ª:5>], [<ore:€¶>, <€€:€ª:5>, <ore:€¶>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„1_t_oak", <‚':ƒz:3>.ƒÕ({ƒx: "t_oak"}) * 2, [[<€€:€¡_€Æ:5>, <ore:€¶>, <€€:€¡_€Æ:5>], [<€€:€¡_€Æ:5>, <€€:€¡_€Æ:5>, <€€:€¡_€Æ:5>], [<€€:€¡_€Æ:5>, <ore:€¶>, <€€:€¡_€Æ:5>]]);
[‚ä][‚Î][‚Ï] =[x]=>‚í.ƒ€("‚':ƒz_„2_t_oak", <‚':ƒz:4>.ƒÕ({ƒx: "t_oak"}) * 4, [[<ore:€¶>, <€€:€¡_€Æ:5>, <ore:€¶>], [<€€:€¡_€Æ:5>, <€€:€¡_€Æ:5>, <€€:€¡_€Æ:5>], [<ore:€¶>, <€€:€¡_€Æ:5>, <ore:€¶>]]);
]==],['filter.lua']= [==[‚D ‚[ „g(s, p)
	t = {}
	for x in s:„h(p) do
		i.‚m(t, x)
	end
	‚O t
end

‚D ‚[ „i(s, mt)
	for k, v in ‚p(mt) do
		if s:„j(v) ~= nil ‚K
			‚O ‚b
		end
	end
	‚O ‚_
end

‚D ‚[ „k(bs)
	‚D ‚[ bro(s) -- „l „D
		‚O (s == '[') or (s == '(') or (s == '<') or (s == '{')
	end
	‚D ‚[ brc(s) -- „l „E
		‚O (s == ']') or (s == ')') or (s == '>') or (s == '}')
	end

	‚D „m = bs:sub(2, #bs - 1):„n(', ', ',')
	‚D „o = 0
	‚D „p = 1
	‚D „q = {}
	for i = 1, #„m do
		if bro(„m:sub(i,i)) ‚K
			„o = „o + 1
		‚ brc(„m:sub(i,i)) ‚K
			„o = „o - 1
		‚ „m:sub(i,i) == ',' ‚K
			if „o == 0 ‚K
				‚D st = „m:sub(„p, i - 1):„n(',', ', ')
				i.‚m(„q, st)
				„p = i + 1
			end
		end
	end
	‚D st = „m:sub(„p, #bs):„n(',', ', ')
	i.‚m(„q, st)
	‚O „q
end

‚D ‚[ „r(arr, f, t)
	‚D tb = {}
	for i = f, t do
		i.‚m(tb, arr[i])
	end
	‚O tb
end

‚D ‚[ „s(t, s)
	‚D buf = ''
	for k, v in ‚p(t) do
		buf = buf .. ‚¸(v) .. ((„t(t, k) == nil) and '' or s)
	end
	‚O buf
end

-- Old i „Q, so „u.
‚D ‚[ „Q(t, f, ...)
	‚D res = {}
	for k, v in ‚p(t) do
		res[k] = f(v, ...)
	end
	‚O res
end

-- ‚® „v, „w G „x to the „y „x.
‚D ‚[ „z(„{)
	‚D p = „g(„{:„n('[<>]', ''), '[^:]+')
	‚O p[1] .. ':' .. p[2] .. ((p[3] == nil) and '' or (((„{:„|('ore:') == nil) and '|' or ':') .. p[3]))
end

-- ‚® „v too, but „} if „~ „ one G „€.
‚D ‚[ „(„{)
	if „{:„j('|') == nil ‚K
		‚O „z(„{)
	‚i
		‚O „s(„Q(„g(„{:„n(' | ', '|'), '[^|]+'), „z), ',')
	end
end

‚D ‚[ „‚(t, obj)
	for k, v in ‚p(t) do
		if obj == v ‚K
			‚O k
		end
	end
	‚O nil
end

‚D ‚[ „ƒ(t, obj)
	‚O „‚(t, obj) ~= nil
end

-- '‚® „W ‚5' 'G „W „X' 'sd=‚Œ/sl=‚' 'wh' 'G ‚‘' 'G „Y „Z|„['
‚D „„ = {'.„…', '.„†', '.ƒÕ', '.„‡', '„ˆ:'}
‚D ‚[ „R(„‰)
	if „‰:„|('‚í%..-%(.+%);') == nil ‚K
		‚O ‚b, „‰
	end
	‚D ‚Œ = „‰:„j('„Š') == nil
	‚D „‹ = ‚Œ and 'sd' or 'sl'
	‚D c = „‰:„|('‚í%..-%(.+%);'):„|('%(.-,.-,.+%)')
	‚D c = '(' .. „s(„r(„k(c), 2, 3), ', ') .. ')'
	‚D „= = „k(c)
	if „k(„=[2])[1] == '' ‚K
		‚O ‚b, „‰
	end
	if „i(c, „„) and „=[1] ~= "ƒ}" ‚K
		‚D „Œ = „g(„=[1]:„n(' * ','*'), '[^%*]+')
		‚D G = „z(„Œ[1])
		‚D „ = „(„Œ[2]) or 1
		‚D wh = ''
		‚D „ = ''
		if ‚Œ ‚K
			wh = ‚¸(#„k(„k(„=[2])[1])) .. ‚¸(#„k(„=[2]))
			‚D ‚Â = {}
			for yi, y in ‚p(„k(„=[2])) do
				for xi, x in ‚p(„k(y)) do
					if not „ƒ(‚Â, x) ‚K
						if x ~= 'ƒ}' ‚K
							i.‚m(‚Â, x)
						end
					end
				end
			end
			‚D „ = ''
			for yi, y in ‚p(„k(„=[2])) do
				for xi, x in ‚p(„k(y)) do
					„ = „ .. („‚(‚Â, x) or '0')
				end
			end
			„ = „ .. ' ' .. „s(„Q(‚Â, „), ' ')
		‚i
			wh = '00'
			‚D ‚Â = {}
			for ii, i in ‚p(„k(„=[2])) do
				if not „ƒ(‚Â, i) ‚K
					if i ~= 'ƒ}' ‚K
						i.‚m(‚Â, i)
					end
				end
			end
			‚D „ = ''
			for ii, i in ‚p(„k(„=[2])) do
				„ = „ .. („‚(‚Â, i) or '0')
			end
			„ = „ .. ' ' .. „s(„Q(‚Â, „), ' ')
		end
		‚O ‚_, €À.„x("%s %s %s %s %s", G, „, „‹, wh, „)
	‚i
		‚O ‚b, „‰
	end
end

‚D ‚[ „‘(sod)
	if sod:„|('<ore:.->=.+') == nil ‚K
		‚O ‚b, sod
	end
	‚D ore = sod:„|('<ore:.->=.+')
	‚D ore = ore:sub(1, #ore - 1)
	‚D „’ = „z(„g(ore, '[^=]+')[1])
	‚D „“ = „(„g(ore, '[^=]+')[2])
	‚O ‚_, €À.„x('%s=%s', „’, „“)
end

‚D „” = io.„D('x.db', 'w')
‚D „• = io.„D('„–.db', 'w')
‚D „— = io.„D('‚À.txt', 'w')
‚D „˜ = io.„D('‚İ.log', 'r')
‚D ‚} = ''
‚D „™, „š, „› = 0, 0, 0
‚Æ ‚} ~= nil do
	if ‚}:„j('=%[x%]=>') ~= nil ‚K
		‚D „œ, ‚“ = „R(‚})
		if „œ ‚K
			„”:‚t(‚“ .. '\n')
			„™ = „™ + 1
		‚i
			„—:‚t(‚“ .. '\n')
			„› = „› + 1
		end
	‚ ‚}:„j('=%[ore%]=>') ‚K
		‚D „œ, ‚“ = „‘(‚})
		if „œ ‚K
			„•:‚t(‚“ .. '\n')
			„š = „š + 1
		‚i
			„—:‚t(‚“ .. '\n')
			„› = „› + 1
		end
	end
	‚} = „˜:‚('*l')
	--‚L(‚})
	io.‚t('\x1b[„' .. €À.„x('‚S: %d, „: %d, „Ÿ: %d.', „™, „š, „›))
end
‚L('\x1b[„' .. €À.„x('„  %d „¡ of ‚S, %d „¡ of „, and %d „¡ ‚À to be „¢.', „™, „š, „›))
]==],['lib']={['craftingdb.lua']= [==[‚D G = ‚H('lib.‚U.G')
‚D „£ = ‚H('lib.‚U.„£')
‚D x = ‚H('lib.‚U.x')
‚D „¤ = ‚H('lib.‚U.„¤')
‚D „¥ = ‚H('lib.‚U.„¥')

‚D ‚P = ‚H('lib.‚P')

-- „¦ „§
‚D ‚S = {
	db = {}
}

-- „¦ „¨
‚D „© = 'db/x.db'
‚[ ‚S.‚M()
	‚D f = io.„D(„©, 'r')
	‚D l = f:‚('*l')
	‚Æ l ~= nil do
		if (l:sub(1,1) ~= '#') and (l ~= '') ‚K
			‚D „ª = {‚¤ = 0, ‚¥ = 0}
			‚D ‚š = {}
			‚D ‚Œ = ‚_
			‚D ‚“ = {}
			‚D „« = ‚P.‚É(l)
			‚“ = G.new(„«[1])
			‚“.„¬ = „(„«[2])
			‚Œ = („«[3] == 'sd')
			„ª.‚¤, „ª.‚¥ = „(„«[4]:sub(1,1)), „(„«[4]:sub(2,2))
			‚D pat = „«[5]
			‚D ¾ = „¥.new()
			for i = 6, #„« do
				¾:add(„¤.„­(„«[i]))
			end
			for „® = 1, #pat do
				‚š[„®] = ¾[„(pat:sub(„®, „®))]
			end
			‚S.db[‚“] = x.new(„ª, ‚š, ‚Œ, ‚“)
		end
		l = f:‚('*l')
	end
	f:„E()
end
io.‚t('‚Õ ‚S... ')
‚S.‚M()
‚D „™ = 0
for k, v in ‚l(‚S.db) do
	„™ = „™ + 1
end
io.‚t (€À.„x('%d ‚„.\n', „™))

‚[ ‚S.‚¹()
	‚D a = {}
	for n in ‚l(‚S.db) do i.‚m(a, n) end
	i.‚n(a, ‚[(a, b) if a.‚5 == nil or b.‚5 == nil ‚K ‚L(a,b) end; ‚O a.‚5 < b.‚5 end)
	‚D i = 0
	‚O ‚[()
		i = i + 1
		if a[i] == nil ‚K
			‚O nil
		‚i
			‚O a[i], ‚S.db[a[i]]
		end
	end
end

‚[ ‚S.‚z()
	-- „V: '‚® „W ‚5' 'G „W „X' 'sd=‚Œ/sl=‚' 'wh' 'G ‚‘' 'G „Y „Z|„['
	‚D f = io.„D(„©, 'w')
	f:‚t("#„V:\n#'‚® „W ‚5' 'G „W „X' 'sd=‚Œ/sl=‚' 'wh' 'G ‚‘' 'G „Y „Z|„['\n")
	for k, v in ‚S.‚¹() do
		‚D „¯ = ‚¸(~k)
		‚D „° = ‚¸(k.„¬)
		‚D „± = v and 'sd' or 'sl'
		‚D dim = ‚¸(v.„ª.‚¤) .. ‚¸(v.„ª.‚¥)
		‚D „² = v:„³()
		‚D „´ = ''
		for k, v in ‚l(v.‚š) do
			„´ = „´ .. „²:„µ(v) or '0'
		end
		‚D „¶ = ''
		for k, v in ‚p(„²) do
			„¶ = „¶ .. ‚¸(~v) .. ' '
		end
		„¶ = „¶:sub(1, #„¶)
		f:‚t(„¯ .. ' ' .. „° .. ' ' .. „± .. ' ' .. dim .. ' ' .. „´ .. ' ' .. „¶ .. '\n')
	end
	f:„E()
end

-- „¦ „·
‚[ ‚S.get(i)
	for k, v in ‚l(‚S.db) do
		if i == k ‚K
			‚O v
		end
	end
	‚O nil
end

‚[ ‚S.set(x)
	if x == nil ‚K
		„¸('Can\'t add nil to ‚S!')
	end
	‚S.db[x.‚“] = x
	‚O ‚S.db[x.‚“]
end

‚[ ‚S.‚²(i)
	for k, v in ‚l(‚S.db) do
		if i:„¹(k) ‚K
			‚D tmp = ‚S.db[k]
			‚S.db[k] = nil
			‚O tmp
		end
	end
	‚O nil
end

‚O craftingdb]==],['init.lua']= [==[-- Lib ƒó. Run „º.

-- „» ‚U
‚D „¼_‚U = ‚U
‚[ ‚U(v)
	‚D „½ = „¼_‚U(v)
	if „½ == 'i' ‚K
		if v.‚U ~= nil ‚K
			‚O v.‚U
		end
	end
	‚O „½
end]==],['inventory.lua']= [==[‚D ‚E, ‚F = ‚G(‚H, ‚I.‚J, '‚F')
if not ‚E ‚K
	‚L('Can\'t ‚M ‚F ‚N.')
	‚O
end

‚D ‚¢ = ‚H('‚¢')
if ‚¢.‚T_‚A == nil ‚K
	‚L('„¾ ‚T ‚A!')
	‚O
end
‚D „¿ = ‚¢.‚T_‚A

‚D G = ‚H('lib.‚U.G')
‚D „£ = ‚H('lib.‚U.„£')

-- „¦ „§
‚D ‚ˆ = {
	„À = {},
	„¬ = „Á.„Â(‚F.„Ã()),
	ex = {}
}

-- „¦ „·
‚[ ‚ˆ.‚•(‚`)
	‚O ‚F.‚•(‚`)
end

‚[ ‚ˆ.‚”(‚`)
	‚D t = „¿.„Ä(‚`)
	if t == nil ‚K
		‚O nil
	end
	‚O G.new(t)
end

‚[ ‚ˆ.„Å(‚`)
	‚ˆ.„À[‚`] = ‚ˆ.‚”(‚`)
	‚O ‚ˆ.„À[‚`]
end

‚[ ‚ˆ.‚‡()
	for i = 1, ‚ˆ.„¬ do
		‚ˆ.„Å(i)
	end
end
io.‚t('„Æ ‚T... 00')
for i = 1, ‚ˆ.„¬ do
	‚ˆ.„Å(i)
	io.‚t('\8\8' .. €À.„x('%02d', i))
end
io.‚t(' „Ç.\n')

‚[ ‚ˆ.‚¦()
	‚D ‚› = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	for k, v in ‚p(‚›) do
		‚ˆ.„Å(v)
	end
end

‚[ ‚ˆ.„È(‚`, „É)
	for k, v in ‚p(„É) do
		if ‚` == v ‚K
			‚O ‚_
		end
	end
	‚O ‚b
end

‚[ ‚ˆ.„Ê(‚`)
	‚O ‚ˆ.„È(‚`, {1, 2, 3, 5, 6, 7, 8, 9, 10, 11})
end

‚[ ‚ˆ.ƒã(„Ë, „Ì)
	‚D res = ‚F.„Í(„Ë, „Ì)
	‚ˆ.„Å(‚ˆ.‚•())
	‚ˆ.„Å(„Ë)
	‚O res
end

‚[ ‚ˆ.„j(i)
	‚D „Î = {}
	for ‚` = 1, ‚ˆ.„¬ do
		if ‚ˆ.„À[‚`] ~= nil ‚K
			if i == ‚ˆ.„À[‚`] ‚K
				i.‚m(„Î, ‚`)
			end
		end
	end
	‚O „Î
end

‚[ ‚ˆ.„Ï(i)
	‚D c = 0
	for k, v in ‚p(‚ˆ.„j(i)) do
		c = c + ‚ˆ.„À[v].„¬
	end
	‚O c
end

‚[ ‚ˆ.„Ğ(i, „Ñ)
	‚D „Ì = i.„¬
	‚D „Ñ = „Ñ
	if „Ñ == nil ‚K „Ñ = ‚_ end
	‚D „Ò = ‚ˆ.‚•()
	‚D „Ó = „£.new()
	for k, v in ‚l(‚ˆ.„j(i)) do
		„Ó:add(‚ˆ.„À[v])
	end
	for k, v in ‚p(„Ó) do
		if ‚ˆ.„Ï(v) >= „Ì ‚K
			for kf, vf in ‚p(‚ˆ.„j(v)) do
				 if not („Ñ or ‚ˆ.„Ê(vf)) ‚K
					if „Ì > 0 ‚K
						‚ˆ.‚•(vf)
						‚D „Ô = ‚ˆ.„À[vf].„¬
						if not ‚ˆ.ƒã(„Ò, „Ì) ‚K
							‚O ‚b
						end
						„Ì = „Ì - „Ô
					‚i
						‚ˆ.‚•(„Ò)
						‚O ‚_
					end
				 end
			end
			„Õ
		end
	end
	‚ˆ.‚•(„Ò)
	‚O ‚_
end

‚[ ‚ˆ.‚–(„Ì, „Ñ, „É)
	‚D „Ö = ‚ˆ.‚•()
	‚D „Ì = „Ì or ‚ˆ.„À[„Ö].„¬
	‚D „Ñ = „Ñ
	if „Ñ == nil ‚K „Ñ = ‚_ end
	‚D „É = „É or {}
	
	-- „× ‚Â „º
	for k, v in ‚l(‚ˆ.„j(‚ˆ.„À[„Ö])) do
		if not („Ñ or ‚ˆ.„Ê(v)) and not ‚ˆ.„È(v, „É) ‚K
			‚D „Ø = ‚ˆ.„À[v]
			if „Ø.„¬ < „Ø.„Ù ‚K
				‚D „Ú = „Á.min(„Ø.„Ù - „Ø.„¬, „Ì)
				if not ‚ˆ.ƒã(v, „Ú) ‚K
					‚O ‚b
				end
				„Ì = „Ì - „Ú
				if „Ì == 0 ‚K
					‚O ‚_
				end
			end
		end
	end
	
	-- „Û, „Ü „İ „À
	for „Ø = 1, ‚ˆ.„¬ do
		if not („Ñ or ‚ˆ.„Ê(„Ø)) and not ‚ˆ.„È(„Ø, „É) ‚K
			if ‚ˆ.„À[„Ø] == nil ‚K
				if not ‚ˆ.ƒã(„Ø, „Ì) ‚K
					‚O ‚b
				end
				‚O ‚_
			end
		end
	end
	
	‚O ‚_
end

‚[ ‚ˆ.‚Ä()
	for k, v in ‚p({1, 2, 3, 5, 6, 7, 8, 9, 10, 11}) do
		if ‚ˆ.„À[v] ~= nil ‚K
			‚ˆ.‚•(v)
			if not ‚ˆ.‚–(‚ˆ.„À[v].„¬, ‚b) ‚K
				‚O ‚b
			end
		end
	end
	‚O ‚_
end

‚[ ‚ˆ.ex.„Ş()
	‚O ‚ˆ.ex.„ß() ~= nil
end

‚[ ‚ˆ.ex.„à()
	‚O ‚ˆ.ex.„á() ~= nil
end

‚[ ‚ˆ.ex.„ß()
	‚O „¿.„ß(3)
end

‚[ ‚ˆ.ex.„á()
	‚O „¿.„ß(1)
end

‚[ ‚ˆ.ex.‚”(‚`)
	‚D t = „¿.„Ä(3, ‚`)
	if t == nil ‚K
		‚O nil
	end
	‚O G.new(t)
end

‚[ ‚ˆ.ex.„â(i, „Ì)
	-- „ã: „Ğ „ä G
end

‚[ ‚ˆ.ex.„å(i, „Ì)
	-- „ã: „æ G to ‚T in „ç
end

‚[ ‚ˆ.ex.‚–(‚`, „Ì)
	-- „ã: ‚– „è „Ì of „é ‚` in „ç
end

‚[ ‚ˆ.ex.„ê(„ë, „Ì)
	‚O „¿.„ì(3, „ë, „Ì)
end

‚[ ‚ˆ.ex.„í(„ë, „Ì)
	‚O „¿.„î(3, „ë, „Ì)
end

‚O Inventory]==],['oredictdb.lua']= [==[‚D ‚P = ‚H('lib.‚P')
‚D „– = ‚H('lib.‚U.„–')
‚D „ï = ‚H('lib.‚U.„ï')

-- „¦ „§
‚D „ = {
	db = {}
}

-- „¦ „¨
‚D „ğ = 'db/„–.db'

‚[ „:„ñ()
	‚D a = {}
	for n in ‚l(„.db) do i.‚m(a, n) end
	i.‚n(a)
	‚D i = 0
	‚O ‚[()
		i = i + 1
		if a[i] == nil ‚K
			‚O nil
		‚i
			‚O a[i], ‚S.db[a[i]]
		end
	end
end

‚[ „.‚M()
	‚D f = io.„D(„ğ, 'r')
	‚D l = f:‚('*l')
	‚Æ l ~= nil do
		if l ~= '' ‚K
			‚D „ò = ‚P.‚É('=')
			„.db[„ò[1]] = „–.new(„ò[1], „ï.„­(„ò[2]))
		end
		l = f:‚('*l')
	end
end
io.‚t('‚Õ „... ')
„.‚M()
‚D „š = 0
for k, v in ‚l(„.db) do
	„š = „š + 1
end
io.‚t(€À.„x('%d ‚„.\n', „š))

‚[ „.‚z()
	‚D f = io.„D(„ğ, 'w')
	for k, v in „:„ñ() do
		f:‚t(k .. '=' .. ‚¸(v) .. '\n')
	end
	f:„E()
end

‚[ „.get(‚5)
	for k, v in ‚l(„.db) do
		if k == ‚5 ‚K
			‚O v
		end
	end
	‚O nil
end

‚[ „.add(od)
	„.db[od.‚5] = od
end

‚[ „.‚²(‚5)
	‚D ‚µ = „.db[‚5]
	„.db[‚5] = nil
	‚O ‚µ
end

‚O oredictdb]==],['rawdb.lua']= [==[‚D G = ‚H('lib.‚U.G')
‚D „£ = ‚H('lib.‚U.„£')

‚D ‚P = ‚H('lib.‚P')

-- „¦ „§
‚D ‚R = {
	db = {}
}

-- „¦ „¨
‚D „ó = 'db/raw.db'

‚[ ‚R.‚n()
	i.‚n(‚R.db, ‚[(a, b) ‚O a.‚5 < b.‚5 end)
end

‚[ ‚R.‚M()
	‚R.db = {}
	‚D f = io.„D(„ó, 'r')
	‚D l = f:‚('*l')
	‚Æ l ~= nil do
		i.‚m(‚R.db, ~G.new(l))
		l = f:‚('*l')
	end
	‚R.‚n()
	f:„E()
end
io.‚t('‚Õ ‚R... ')
‚R.‚M()
‚D „ô = 0
for k, v in ‚p(‚R.db) do
	„ô = „ô + 1
end
io.‚t(€À.„x('%d ‚„.\n', „ô))

‚[ ‚R.‚z()
	‚R.‚n()
	‚D f = io.„D(„ó, 'w')
	for k, v in ‚p(‚R.db) do
		f:‚t(‚¸(v) .. '\n')
	end
	f:„E()
end

-- „¦ „·
‚[ ‚R.get(i)
	if ‚¬(i) ~= G ‚K
		„¸('Can\'t „j ' .. ‚U(G) .. ' ƒ‰ ‚R.')
	end
	for k, v in ‚p(‚R.db) do
		if i:„¹(v) ‚K
			‚O v
		end
	end
	‚O nil
end

‚[ ‚R.has(i)
	‚O ‚R.get(i) ~= nil
end

‚[ ‚R.add(i)
	if ‚¬(i) ~= G ‚K
		„¸('Can\'t add ' .. ‚U(G) .. ' to ‚R.')
	end
	for k, v in ‚p(‚R.db) do
		if i:„¹(v) ‚K
			‚O i
		end
	end
	i.‚m(‚R.db, i)
	‚R.‚n()
	‚O i
end

‚[ ‚R.‚²(i)
	for k, v in ‚p(‚R.db) do
		if i:„¹(v) ‚K
			‚O i.‚²(‚R.db, k)
		end
	end
	‚O nil
end

‚O rawdb]==],['reset.lua']= [==[„õ.‚„['lib.‚S'] = nil
„õ.‚„['lib.‚R'] = nil
„õ.‚„['lib.‚T'] = nil
„õ.‚„['lib.‚P'] = nil
„õ.‚„['lib.„ö'] = nil
„õ.‚„['lib.‚Q'] = nil
„õ.‚„['lib.‚U.G'] = nil
„õ.‚„['lib.‚U.x'] = nil
„õ.‚„['lib.‚U.„£'] = nil]==],['resproc.lua']= [==[‚D ‚E, ‚F = ‚G(‚H, ‚I.‚J, '‚F')
if not ‚E ‚K
	‚L('Can\'t ‚M ‚F ‚N.')
	‚O
end

‚D G = ‚H('lib.‚U.G')
‚D „£ = ‚H('lib.‚U.„£')
‚D ‚R = ‚H('lib.‚R')
‚D ‚S = ‚H('lib.‚S')
‚D x = ‚H('lib.‚U.x')
‚D ‚T = ‚H('lib.‚T')

-- „¦ „§
‚D „÷ = {}

-- „¦ „·
‚[ „÷.‚M()
	‚R.‚M()
	‚S.‚M()
end

‚[ „÷.‚z()
	‚R.‚z()
	‚S.‚z()
end

‚[ „÷.„ø(i)
	if ‚S.get(i) ~= nil ‚K
		‚O ‚S.get(i)
	end
	‚O nil
end

‚[ „÷.‚º(it)
	if ‚U(it) == 'i' ‚K
		if ‚¬(it) ~= G ‚K
			„¸('Can\'t ‚½ non-G „ù.')
		end
	‚i
		„¸('Can\'t ‚½ ' .. ‚U(it) .. '.')
	end

	‚D ‚¼ = „£.new()
	‚D ‚» = „£.new()
	
	‚D ‚[ „ú(i)
		‚¼:add(i)
		‚»:add(i)
	end
	
	‚D ‚[ „û(i)
		‚¼:add(i)
	end
	
	‚D ‚[ „ü(i)
		if ‚¼:has(i) ‚K
			‚¼:„ı(i)
			‚O ‚_
		end
		‚O ‚b
	end
	
	‚D ‚[ „ş(i)
		if ‚R.has(i) ‚K
			„ú(i)
		‚ „÷.„ø(i) ~= nil ‚K
			for ite = 1, „Á.„ÿ(i.„¬ / „÷.„ø(i).‚“.„¬) do
				for k, v in ‚l(„÷.„ø(i):„³()) do
					‚Æ not „ü(v) do
						„ş(v)
					end
				end
				„û(„÷.„ø(i).‚“)
			end
		‚i
			„ú(i)
		end
	end
	
	„ş(it)
	‚»:‚n()
	‚¼:‚n()
	‚O ‚», ‚¼
end

‚[ „÷.‚Ä()
	‚D ‚› = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	for k, v in ‚p(‚›) do
		if ‚T.„À[v] ~= nil ‚K
			‚T.‚•(v)
			if not ‚T.‚–() ‚K
				‚O ‚b
			end
		end
	end
end

‚[ „÷.‚ª(it)
	if ‚S.get(it) ~= nil ‚K
		‚O ‚S.get(it)
	‚ ‚R.get(it) ~= nil ‚K
		‚O ‚R.get(it)
	‚i
		‚O nil
	end
end

‚[ „÷.‚­(‚³)
	if ‚¬(‚³) == x ‚K
		‚O ‚S.set(‚³)
	‚ ‚¬(‚³) == G ‚K
		‚O ‚R.add(‚³)
	‚i
		‚O nil
	end
end

‚[ „÷.‚²(it)
	if ‚S.get(it) ~= nil ‚K
		‚O ‚S.‚²(it)
	‚ ‚R.get(it) ~= nil ‚K
		‚O ‚R.‚²(it)
	‚i
		‚O nil
	end
end

‚[ „÷.… (G, …)
	-- … ‚T ‚Â ‚Ø „ä ‚Â
	‚D … = „£.new()
	for k, v in ‚l(‚T.„À) do
		…:add(v)
	end
	if … ~= nil ‚K
		…:…(…)
	end
	
	-- … ‚Â
	‚D … = „£.new()
	…:add(G)
	
	-- … and … …	 ‚Â …
 it's „İ
	‚Æ #… ~= 0 do
		‚D … = i.‚²(…, 1)
		if not …:has(…) ‚K
			if („÷.„ø(…) == nil) or ‚R.has(…) ‚K
				‚O ‚b
			‚i
				…:…(„÷.„ø(…):„³() * ….„¬)
			end
		end
	end
	‚O ‚_
end

‚[ „÷.‚¾(G, …)
	-- … ‚T ‚Â ‚Ø „ä ‚Â
	‚D … = „£.new()
	for k, v in ‚l(‚T.„À) do
		…:add(v)
	end
	if … ~= nil ‚K
		…:…(…)
	end
	
	-- … ‚Â
	‚D … = „£.new()
	…:add(G)
	
	-- … and … …	 ‚Â …
 it's „İ
	‚Æ #… ~= 0 do
		‚D … = …:…()
		if not …:has(…) ‚K
			if (‚S.get(…) == nil) or ‚R.has(…) ‚K
				‚O ‚b
			‚i
				…:…(‚S.get(…):„³())
				…:add(‚S.get(…).‚“)
			end
		‚i
			…:„ı(…)
		end
	end
	‚O ‚_
end

‚[ „÷.‚£(G)
	if ‚S.get(G) == nil ‚K
		„¸('Can\'t ‚£ ' .. ‚¸(G) .. '.')
	end
	
	-- … …
	‚D … = {}
	i.‚m(…, ‚S.get(G))
	
	‚Æ #… ~= 0 do
		‚D … = …[#…]
		
		-- ‚’ ¾ …
		‚D … = ‚_
		for k, v in ‚p(…:„³()) do
			if ‚T.„Ï(v) < v.„¬ ‚K
				… = ‚b
				if (‚S.get(v) == nil) or ‚R.has(v) ‚K
					‚L('… 1')
					‚O ‚b
				‚i
					for kc, vc in ‚p(…) do
						if vc == ‚S.get(v) ‚K
							i.‚²(…, kc)
						end
					end
					i.‚m(…, ‚S.get(v))
				end
			end
		end
		
		if … ‚K
			if not ‚T.‚Ä() ‚K
				‚L('… 2')
				‚O ‚b
			end
			‚L('‚±')
			if ….‚Œ ‚K
				‚D ‚› = {{1, 2, 3}, {5, 6, 7}, {9, 10, 11}}
				for y = 1, ….„ª.‚¥ do
					for x = 1, ….„ª.‚¤ do
						if ….‚š[(y - 1) * ….„ª.‚¤ + x] ~= nil ‚K
							‚T.‚•(‚›[y][x])
							‚T.„Ğ(….‚š[(y - 1) * ….„ª.‚¤ + x]:…(), ‚b)
						end
					end
				end
			‚i
				‚D ‚› = {1, 2, 3, 5, 6, 7, 9, 10, 11}
				for k = 1, #….‚š do
					‚T.‚•(‚›[k])
					‚T.„Ğ(….‚š[k]:…(), ‚b)
				end
			end
			‚T.‚•(8)
			if not ‚¢.x.‚£(1) ‚K
				‚L('… 3')
				‚O ‚b
			end
			‚T.‚¦()
			i.‚²(…)
		end
	end
	
	‚O ‚_
end

‚O ResProc]==],['stringlib.lua']= [==[‚D … = ‚H('…')
‚D ‚¢ = ‚H('‚¢')
if ‚¢.gpu == nil ‚K
	‚L('„¾ gpu!')
	‚O
end
‚D gpu = ‚¢.gpu

-- „¦ „§
‚D ‚P = {}

-- „¦ „·
‚[ ‚P.‚É(s, …)
	… = … or '%s'
	‚D t = {}
	for str in €À.„h(s, '([^'..…..']+)') do
		i.‚m(t, str)
	end
	‚O t
end

‚[ ‚P.‚q(s)
	‚D …, … = gpu.…()
	‚D ‚[ …(str)
		„Ï = 1
		for i = 1, #str do
			if str:sub(i, i) == '\n' ‚K
				„Ï = „Ï + 1
			end
		end
		‚O „Ï
	end
	‚D ‚[ …(str)
		‚D t = {}
		‚D l = ''
		for i = 1, #str do
			if str:sub(i, i) == '\n' ‚K
				t[#t+1] = l
				l = ''
			‚ #l == … - 1 ‚K
				t[#t+1] = l .. str:sub(i, i)
				l = ''
			‚i
				l = l .. str:sub(i, i)
			end
		end
		if l ~= '' ‚K t[#t+1] = l end
		‚O t
	end
	‚D ‚[ mod(a, b)
		‚O a - „Á.„Â(a / b) * b
	end

	‚D … = ‚_
	‚D … = …(s)
	for k, v in ‚l(…) do
		if … ‚K
			io.‚t(v)
			… = ‚b
		‚i
			io.‚t('\n' .. v)
			if (#v == …) ‚K … = ‚_ end
		end
		if mod(k, …) == 0 ‚K
			….„Ğ('key_…', nil, 32.0)
		end
	end
	io.‚t('\n')
end

‚O stringlib]==],['tablelib.lua']= [==[‚D „ö = {}

‚[ „ö.…(t)
	-- … „}. …  …!.
	if ‚U(t) ~= 'i' ‚K
		„¸('…" to … …# …$ „ i.')
	end

	‚D …% = {}
	for k, v in ‚l(t) do
		…%[k] = v
	end
	
	‚O …%
end

‚[ „ö.…&(t)
	-- … „}. …  …!.
	if ‚U(t) ~= 'i' ‚K
		„¸('…" to … …# …$ „ i.')
	end

	‚D …% = {}
	for k, v in ‚l(t) do
		if ‚U(v) == 'i' ‚K
			…%[k] = „ö.…&(v)
		‚i
			…%[k] = v
		end
	end
	
	‚O …%
end

‚[ „ö.„M(t, …')
	‚D buf = ''
	for k, v in ‚p(t) do
		buf = buf .. ‚¸(v)
		if „t(t, k) ~= nil ‚K
			buf = buf .. …'
		end
	end
	‚O buf
end

‚O tablelib]==],['type']={['crafting.lua']= [==[‚D ‚P = ‚H('lib.‚P')
‚D G = ‚H('lib.‚U.G')
‚D „£ = ‚H('lib.‚U.„£')

-- „¦ „§
‚D ‚— = {
	„ª = { ‚¤ = 0, ‚¥ = 0 },
	‚š = {},
	‚Œ = ‚_,
	‚“ = {}
}

-- „¦ „·
‚[ ‚—.new(„ª, ‚š, ‚Œ, ‚“)
	-- … „}. …  …!.
	if („ª == nil) or (‚š == nil) or (‚“ == nil) ‚K
		„¸('Can\'t …( nil x.')
	end
	if („ª.‚¤ == nil) or („ª.‚¥ == nil) ‚K
		„¸('‚— …) „ª!')
	end
	if (‚¬(‚“) ~= G) ‚K
		„¸('Can\'t put …* ‚i …+ ‚“ …, G!')
	end
	if (‚“.„¬ == 0) ‚K
		„¸('Can\'t …( …- G!')
	end
	
	‚D o = {}
	‚\(o, ‚—)
	‚—.__‚] = ‚—
	o.„ª = „ª
	o.‚š = ‚š
	o.‚Œ = ‚Œ
	o.‚“ = ‚“
	‚O o
end

‚[ ‚—:„³()
	‚D …. = „£.new()
	for k, v in ‚l(…/.‚š) do
		if v ~= nil ‚K
			….:add(v:…())
		end
	end
	‚O ….
end

-- …0
‚[ ‚—.__‚¸(cr)
	‚D …1 = €À.„x('(%dx%d) ', cr.„ª.‚¤, cr.„ª.‚¥) .. (cr.‚Œ and '‚Œ ' or '‚ ') .. ‚¸(cr.‚“) .. ':\n'
	
	if cr.‚Œ ‚K
		for c = 1, cr.„ª.‚¤ * cr.„ª.‚¥ do
			…1 = …1 .. €À.„x('[%d] %s\n', c, cr.‚š[c])
		end
	‚i
		for c = 1, #cr.‚š do
			…1 = …1 .. €À.„x('[%d] %s\n', c, cr.‚š[c])
		end
	end
	…1 = …1:sub(1, #…1 - 1)
	
	‚O …1
end

‚O Crafting]==],['ingredient.lua']= [==[‚D G = ‚H('lib.‚U.G')
‚D „ï = ‚H('lib.‚U.„ï')
‚D „– = ‚H('lib.‚U.„–')
‚D „ = ‚H('lib.„')

-- „¦ „§
‚D …2 = {
	…3 = {}
}

-- „¦ „·
‚[ …2.„­(str)
	‚D a = {}
	‚\(a, …2)
	…2.__‚] = …2

	if str:„j('ore:') ~= nil ‚K
		‚D od = „.get(str)
		if od == nil ‚K
			„¸('…4 …5 ' .. str .. ' as „¤.')
		end
		a.…3 = od
	‚ str:„j(',') ~= nil ‚K
		‚D ic = „ï.„­(str)
		a.…3 = ic
	‚i
		‚D i = G.new(str)
		a.…3(i)
	end
	
	‚O a
end

‚[ …2:„}(i)
	-- … „}. …  …!.
	if ‚¬(i) ~= G ‚K
		„¸('…6 …7\'t „} ' .. ‚U(i) .. '.')
	end
	
	if ‚¬(…/.…3) == „– ‚K
		‚O …/.…3.„}(i)
	‚ ‚¬(…/.…3) == „ï ‚K
		‚O …/.…3.„}(i)
	‚ ‚¬(…/.…3) == G ‚K
		‚O …/.…3 == i
	end
end

-- …0
‚[ …2.__eq(a, b)
	-- … „}. …  …!.
	if not (((‚¬(a) == G) and (‚¬(b) == …2)) or
			((‚¬(a) == …2) and (‚¬(b) == G))) ‚K
		if (‚¬(a) == …2) and (‚¬(b) == …2) ‚K
			‚O a.…3 == b.…3
		end
		„¸(€À.„x('…" to do …8 …9 ‚Ø ‚á „ù ‚U. (%s, %s)', ‚U(a), ‚U(b)))
	end
	
	if ‚¬(a) == G ‚K
		‚O b:„}(a)
	‚i
		‚O a:„}(b)
	end
end

‚O Ingredient]==],['ingredientarray.lua']= [==[‚D „¤ = ‚H('lib.‚U.„¤')

-- „¦ „§
‚D …: = {}

-- „¦ „·
‚[ …:.new()
	‚D a = {}
	‚\(a, …:)
	…:.__‚] = …:
	‚O a
end

‚[ …::‚](i)
	for k, v in ‚p(…/) do
		if v == i ‚K
			‚O k
		end
	end
	‚O nil
end

‚[ …::add(i)
	for k, v in ‚p(…/) do
		if v == i ‚K
			‚O i
		end
	end
	‚O i.‚m(…/, i)
end

‚O IngredientArray]==],['item.lua']= [==[‚D ‚P = ‚H('lib.‚P')

-- „¦ „§
‚D ‚® = {
	‚5 = '',
	‚Ÿ = -1,
	„¬ = 1,
	„Ù = 1
}

-- „¦ „·
‚[ ‚®.new(...)
	‚D „= = {...}
	‚D i = {}
	‚\(i, ‚®)
	‚®.__‚] = ‚®
	
	if ‚U(„=[1]) == '€À' ‚K
		if „=[1] == '' ‚K
			„¸('…; G ‚5.')
		end
		‚D …< = ‚P.‚É(„=[1], '|')
		i.‚5 = …<[1]
		i.‚Ÿ = ((…<[2] == '*') and -1 or „(…<[2])) or 0
		i.„¬ = 1
		i.„Ù = 1
	‚ ‚U(„=[1]) == 'i' ‚K
		i.‚5 = „=[1].‚5
		if „=[1].‚Ÿ ~= nil ‚K
			i.‚Ÿ = „Á.„Â(„=[1].‚Ÿ)
		end
		i.„¬ = „Á.„Â(„=[1].„¬) or 1
		i.„Ù = „Á.„Â(„=[1].„Ù) or 1
	‚ #„= == 0 ‚K
		„¸('Not …= nil or „İ …>.')
	‚i
		„¸('‚e …? …>.')
	end
	
	‚O i
end

‚[ ‚®:‚()
	…/.‚Ÿ = -1
	‚O …/
end

‚[ ‚®:…()
	‚D icl = …/:…()
	icl.„¬ = 1
	‚O icl
end

‚[ ‚®:…()
	‚O ‚®.new(…/)
end

‚[ ‚®:…@(i)
	-- … „}. …  …!.
	if ‚¬(i) ~= ‚® ‚K
		„¸('…" to …A ‚Ø ' .. ‚U(i) .. '.')
	end

	if (…/.‚Ÿ == -1) or (i.‚Ÿ == -1) ‚K
		‚O …/.‚5 == i.‚5
	‚i
		‚O (…/.‚5 == i.‚5) and (…/.‚Ÿ == i.‚Ÿ)
	end
end

‚[ ‚®:„¹(i)
	-- …B.
	‚D f = io.„D('…C.log', 'w')
	f:‚t(‚I.‚J() .. '\n')
	f:„E()
	
	‚O ‚®:…@(i)
end

-- …0
‚[ ‚®.__eq(a, b)
	-- Don't do …D …E. …F …G …H out.
	if (‚¬(a) ~= ‚®) or (‚¬(b) ~= ‚®) ‚K
		if not (((‚¬(a) == G) and (‚¬(b) == …2)) or
				((‚¬(a) == …2) and (‚¬(b) == G))) ‚K
			‚O ‚b
		‚i
			if ‚¬(a) == G ‚K
				‚O b:„}(a)
			‚i
				‚O a:„}(b)
			end
		end
		‚O ‚b
	end

	‚O a:…@(b)
end

‚[ ‚®.__add(a, b)
	-- … „}. …  …!.
	if (‚¬(a) ~= ‚®) or (‚¬(b) ~= ‚®) ‚K
		„¸('…" to do …8 …9 ‚Ø ‚á „ù ‚U.')
	end

	‚D n = a:…()
	if (a.‚5 == b.‚5) and (a.‚Ÿ == b.‚Ÿ) ‚K
		n.„¬ = a.„¬ + b.„¬
	‚i
		„¸(€À.„x('Can\'t add ‚á ‚Â.'))
	end
	‚O n
end

‚[ ‚®.__sub(a, b)
	-- … „}. …  …!.
	if (‚¬(a) ~= ‚®) and (‚¬(b) ~= ‚®) ‚K
		„¸('…" to do …8 …9 ‚Ø ‚á „ù ‚U.')
	end

	‚D n = a:…()
	if (a.‚5 == b.‚5) and (a.‚Ÿ == b.‚Ÿ) ‚K
		n.„¬ = a.„¬ - b.„¬
	‚i
		„¸('Can\'t sub ‚á ‚Â.')
	end
	‚O n
end

‚[ ‚®.__mul(a, b)
	-- … „}. …  …!.
	if (‚¬(a) ~= ‚®) and (‚U(b) ~= '…I') ‚K
		„¸(€À.„x('…J G „¬ …K: %s * %s.', ‚U(a), ‚U(b)))
	end
	
	‚D n = a:…()
	n.„¬ = n.„¬ * b
	‚O n
end

‚[ ‚®.__unm(a)
	‚D icl = a:…()
	icl = a.„Ù - a.„¬
	‚O icl
end

‚[ ‚®.__len(a)
	‚O a.„¬;
end

‚[ ‚®.__‚¸(a)
	‚D …L = a.‚5
	if a.‚Ÿ ~= nil ‚K
		…L = …L .. '|' .. ‚¸(a.‚Ÿ)
	end

	if a.„¬ ~= 0 ‚K
		‚O €À.„x('%d %s', a.„¬, …L)
	end
	‚O …L
end

‚[ ‚®.__…M(a)
	‚D icl = a:…()
	icl.„¬ = 0
	‚O icl
end

‚O Item]==],['itemarray.lua']= [==[‚D G = ‚H('lib.‚U.G')

-- „¦ „§
‚D …N = {}

-- „¦ „·
‚[ …N.new()
	‚D o = {}
	‚\(o, …N)
	…N.__‚] = …N
	‚O o
end

‚[ …N:has(i)
	for k, v in ‚p(…/) do
		if i == v ‚K
			‚O (i.„¬ == 0) or (i.„¬ <= v.„¬)
		end
	end
	‚O ‚b
end

‚[ …N:…O(i)
	for k, v in ‚p(…/) do
		if v:„¹(i) ‚K
			‚O v.„¬ >= i.„¬
		end
	end
	‚O ‚b
end

‚[ …N:…P(ia)
	for k, v in ‚p(ia) do
		if not …/:has(v) ‚K
			‚O ‚b
		end
	end
	‚O ‚_
end

‚[ …N:…Q(ia)
	for k, v in ‚p(ia) do
		if not …/:…O(v) ‚K
			‚O ‚b
		end
	end
	‚O ‚_
end

‚[ …N:„Ï(i)
	‚D c = 0
	for k, v in ‚p(…/) do
		if i == v ‚K
			c = c + v.„¬
		end
	end
	‚O c
end

‚[ …N:add(i)
	for k, v in ‚p(…/) do
		if v:„¹(i) ‚K
			…/[k].„¬ = …/[k].„¬ + i.„¬
			‚O …/[k]
		end
	end
	i.‚m(…/, i:…())
	‚O i
end

‚[ …N:…(ia)
	if ‚U(ia) == 'i' ‚K
		if ‚¬(ia) ~= …N ‚K
			„¸('Can\'t add non-„£ „ù.')
		end
	‚i
		„¸('Can\'t add ' .. ‚U(ia) .. '.')
	end
	
	for k, v in ‚p(ia) do
		…/:add(v)
	end
	‚O ia
end

‚[ …N:‚²(i)
	for k, v in ‚p(…/) do
		if i == v ‚K
			‚O i.‚²(…/, k)
		end
	end
	‚O nil
end

‚[ …N:…R(i)
	for k, v in ‚p(…/) do
		if i:„¹(v) ‚K
			‚O i.‚²(…/, k)
		end
	end
	‚O nil
end

‚[ …N:„ı(i)
	‚D …S = i:…()
	for k, v in ‚p(…/) do
		if i == v ‚K
			…S.„¬ = v.„¬ - …S.„¬
			if …S.„¬ < 0 ‚K
				…/:‚²(v)
				…S.„¬ = -…S.„¬
			‚i
				v.„¬ = …S.„¬
				‚O nil
			end
		end
	end
	‚O …S
end

‚[ …N:pop()
	‚O i.‚²(…/)
end

‚[ …N:…()
	if …/[#…/].„¬ <= 1 ‚K
		‚O i.‚²(…/)
	‚i
		…/[#…/].„¬ = …/[#…/].„¬ - 1
		‚O …/[#…/]:…()
	end
end

‚[ …N:‚](i)
	for k, v in ‚p(…/) do
		if i == v ‚K
			‚O k
		end
	end
	‚O nil
end

‚[ …N:get(i)
	‚O …/[…/:‚](i)]
end

‚[ …N:„µ(i)
	for k, v in ‚p(…/) do
		if i:„¹(v) ‚K
			‚O k
		end
	end
	‚O nil
end

‚[ …N:‚n()
	i.‚n(…/, ‚[(a, b) ‚O a.‚5 < b.‚5 end)
	‚O …/
end

-- …0
‚[ …N.__add(a, b)
	-- … „}. …  …!.
	if not ((‚¬(a) == …N) or (‚¬(a) == G)) or not ((‚¬(b) == …N) or (‚¬(b) == G)) ‚K
		„¸('…" to add …T …U …$ „ …N and ‚®. [' .. ‚U(b) .. ']')
	end
	
	‚D o = …N.new()
	if (‚¬(a) == G) ‚K
		‚D …V = ‚b
		for k, v in ‚p(o) do
			if a:„¹(v) ‚K
				o[k] = o[k] + a
				…V = ‚_
				„Õ
			end
		end
		if not …V ‚K
			o:add(a:…())
		end
	‚i
		for ks, vs in ‚p(a) do
			‚D …V = ‚b
			for kd, vd in ‚p(o) do
				if vs:„¹(vd) ‚K
					o[kd] = o[kd] + vs
				end
			end
		end
	end
	if (‚¬(b) == G) ‚K
		‚D …V = ‚b
		for k, v in ‚p(o) do
			if b:„¹(v) ‚K
				o[k] = o[k] + b
				…V = ‚_
				„Õ
			end
		end
		if not …V ‚K
			o:add(b:…())
		end
	‚i
		for ks, vs in ‚l(b) do
			‚D …V = ‚b
			for kd, vd in ‚p(o) do
				if vs:„¹(vd) ‚K
					o[kd] = o[kd] + vs
				end
			end
		end
	end
	‚O o
end

‚[ …N.__mul(a, b)
	-- … „}. …  …!.
	if (‚¬(a) ~= …N) or (‚U(b) ~= '…I') ‚K
		„¸(€À.„x('…J „£ „¬ …K: %s * %s.', ‚U(a), ‚U(b)))
	end
	
	‚D o = …N.new()
	for k, v in ‚p(a) do
		o[k] = a[k] * b
	end
	‚O o
end

‚O ItemArray]==],['itemcompound.lua']= [==[‚D G = ‚H('lib.‚U.G')
‚D ‚P = ‚H('lib.‚P')
‚D „ö = ‚H('lib.„ö')

-- „¦ „§
‚D …W = {
	‚Â = {}
}

-- „¦ „·
‚[ …W.„­(…X)
	‚D ic = {}
	‚\(i, …W)
	…W.__‚] = …W
	
	for k, v in ‚p(‚P.‚É(…X)) do
		i.‚m(ic.‚Â, G.new(v))
	end
	
	‚O ic
end

‚[ …W:„}(i)
	-- … „}. …  …!.
	if ‚¬(i) ~= G ‚K
		„¸('Can\'t add ' .. ‚U(i) .. ' to G „.')
	end
	
	for k, v in ‚p(…/.‚Â) do
		if i == v ‚K
			‚O ‚_
		end
	end
	‚O ‚b
end

‚[ …W:add(i)
	-- … „}. …  …!.
	if ‚¬(i) ~= G ‚K
		„¸('Can\'t add ' .. ‚U(i) .. ' to G „.')
	end
	
	for k, v in ‚p(…/.‚Â) do
		if i == v ‚K
			‚O v
		end
	end
	‚O i.‚m(…/.‚Â, ~i:…())
end

‚[ …W:‚²(i)
	-- … „}. …  …!.
	if ‚¬(i) ~= G ‚K
		„¸('Can\'t add ' .. ‚U(i) .. ' to G „.')
	end
	
	for k, v in ‚p(…/.‚Â) do
		if i == v ‚K
			i.‚²(…/.‚Â, v)
			‚O ‚_
		end
	end
	‚O ‚b
end

-- …0
‚[ …W.__‚¸(…Y)
	i.‚n(…Y.‚Â, ‚[(a, b) ‚O a.‚5 < b.‚5 end)
	‚O „ö.„M(…Y.‚Â, ',')
end

‚[ …W.__eq(a, b)
	-- Don't do …D …E. …F …G …H out.
	if (‚¬(a) ~= …W) and (‚¬(b) ~= …W) ‚K
		‚O ‚b
	end
	
	‚O ‚¸(a) == ‚¸(b)
end

‚O ItemCompound]==],['oredict.lua']= [==[‚D G = ‚H('lib.‚U.G')
‚D „ï = ‚H('lib.‚U.„ï')

-- „¦ „§
‚D …Z = {
	‚5 = '',
	…[ = {}
}

-- „¦ „·
‚[ …Z.new(‚5, …[)
	-- … „}. …  …!.
	if ‚¬(…[) ~= „ï ‚K
		„¸('Can\'t …\ „– ‚Ø ' .. ‚U(…[) .. '.')
	end

	‚D od = {}
	‚\(od, …Z)
	…Z.__‚] = …Z
	od.‚5 = ‚5
	od.…[ = …[ or {}
	‚O od
end

‚[ …Z:„}(i)
	‚O …[:„}(i)
end

-- …0
‚[ …Z.__‚¸(od)
	‚O ‚5
end

‚[ …Z.__eq(a, b)
	-- Don't do …D …E. …F …G …H out.
	if (‚¬(a) ~= …Z) and (‚¬(b) ~= …Z) ‚K
		‚O ‚b
	end
	
	‚O (a.‚5 == b.‚5) and (a.…[ == b.…[)
end

‚O OreDict]==]}},['oredict.db']= [==[ore:¤=€€:log|*,€€:u|*,:‚&_log|*
ore:€™=€€:€ª|*,:‚&_€ª|*
ore:‚==€€:€¡_€Æ|*
ore:²=€€:oak_€Ä,€€:€Ì_€Ä,€€:’_€Ä,€€:D_€Ä,€€:_€Ä,€€:t_oak_€Ä
ore:‚î=€€:€Í,€€:€Ì_€Í,€€:’_€Í,€€:D_€Í,€€:t_oak_€Í,€€:_€Í
ore:‚ï=€€:€Í_€Î,€€:€Ì_€Í_€Î,€€:’_€Í_€Î,€€:D_€Í_€Î,€€:t_oak_€Í_€Î,€€:_€Í_€Î
ore:£=€€:_€©,€€:’_€©,€€:t_oak_€©,€€:€¡_€©,€€:D_€©,€€:€Ì_€©
ore:€œ=€€:€Ë
ore:¢=€€:‚ğ|*,:‚&_‚ğ|*
ore:‚ñ=€€:‚ò|*,€€:‚ó|*,:‚&_‚ò|*
ore:=€€:
ore:‚ô=€€:€Ø_ore
ore:‚õ=€€:I_ore
ore:‚ö=€€:A_ore
ore:‚÷=€€:p_ore
ore:‚ø=€€:€ì_ore
ore:‚ù=€€:k_ore
ore:‚ú=€€:_ore
ore:‚û=€€:€¹_ore
ore:€³=€€:I_J
ore:.=€€:€Ø_J
ore:‚ü=€€:€Ç
ore:‚ı=€€:€õ
ore:à=€€:€Ø_€Ù
ore:«=€€:I_€Ù
ore:F=€€:p
ore:l=€€:k
ore:‚ş=€€:
ore:€è=€€:_‚ÿ
ore:€é=€€:_ƒ 
ore:€í=€€:€ì
ore:€Õ=€€:€ï_ƒ
ore:¼=€€:dye|4
ore:‚
=€€:€Ø_€°
ore:‚	=€€:I_€°
ore:ƒ=€€:A_€°
ore:‚=€€:p_€°
ore:·=€€:€ì_€°
ore:ƒ=€€:k_€°
ore:ƒ=€€:_€°
ore:Õ=€€:€¹_€°
ore:ƒ=€€:€¯
ore:ƒ=€€: 
ore:ƒ=€€:€ş
ore:ƒ=€€:€ó_€ö
ore:€¾=€€:ƒ	
ore:ƒ
=€€:ƒ
ore:dye=€€:dye|*,:¾|14
ore:€‚=€€:€‚
ore:€Ê=€€:€Ş_€ß
ore:a=€€:`_¦
ore:=€€:
ore:€¼=€€:€¼
ore:€À=€€:€À
ore:–=€€:€ó_Ã
ore:5=€€:5
ore:€ =€€:€ 
ore:egg=€€:egg
ore:ƒ=€€:ƒ_13,€€:ƒ_cat,€€:ƒ_ƒ,€€:ƒ_ƒ,€€:ƒ_far,€€:ƒ_ƒ,€€:ƒ_ƒ,€€:ƒ_ƒ,€€:ƒ_ƒ,€€:ƒ_ƒ,€€:ƒ_11,€€:ƒ_ƒ
ore:|=€€:|
ore:¥=€€:¥
ore:€Â=€€:€Â
ore:€Ã=€€:€Ã
ore:€–=€€:€–
ore:€•=€€:€•|*
ore:€İ=€€:€İ|*,€€:red_€İ|*
ore:Ë=€€:Ë
ore:b=€€:b
ore:€ï=€€:€ï
ore:ƒ=€€:end_€Â
ore:€¸=€€:€¸
ore:ƒ=€€:x_i
ore:ƒ=€€:€Ş
ore:ƒ=€€:
ore:ƒ=€€:|1
ore:ƒ=€€:|2
ore:=€€:€Â|1
ore:ƒ=€€:€Â|2
ore:=€€:€Â|3
ore:ƒ=€€:€Â|4
ore:=€€:€Â|5
ore:ƒ=€€:€Â|6
ore:€=€€:€‰
ore:¡=€€:€‰,€€:€†_€‰|*
ore:ƒ=€€:€‰_€Š
ore:ƒ=€€:€‰_€Š,€€:€†_€‰_€Š|*
ore:€µ=€€:€µ,€€:`_€µ,€€:€´_€µ
ore:€¶=€€:€µ,€€:€´_€µ
ore:ƒ =€€:`_€µ
ore:ƒ!=€€:€´_€µ
ore:€Ÿ=€€:dye
ore:‘=€€:€†_€‰|15
ore:ƒ"=€€:€†_€‰_€Š|15
ore:€ğ=€€:dye|1
ore:€ñ=€€:€†_€‰|14
ore:ƒ#=€€:€†_€‰_€Š|14
ore:+=€€:dye|2
ore:O=€€:€†_€‰|13
ore:ƒ$=€€:€†_€‰_€Š|13
ore:…=€€:dye|3
ore:†=€€:€†_€‰|12
ore:ƒ%=€€:€†_€‰_€Š|12
ore:=€€:dye|4,:¾|14
ore:=€€:€†_€‰|11
ore:ƒ&=€€:€†_€‰_€Š|11
ore:
=€€:dye|5
ore:=€€:€†_€‰|10
ore:ƒ'=€€:€†_€‰_€Š|10
ore:v=€€:dye|6
ore:w=€€:€†_€‰|9
ore:ƒ(=€€:€†_€‰_€Š|9
ore:/=€€:dye|7
ore:0=€€:€†_€‰|8
ore:ƒ)=€€:€†_€‰_€Š|8
ore:1=€€:dye|8
ore:P=€€:€†_€‰|7
ore:ƒ*=€€:€†_€‰_€Š|7
ore:=€€:dye|9
ore:=€€:€†_€‰|6
ore:ƒ+=€€:€†_€‰_€Š|6
ore:)=€€:dye|10
ore:*=€€:€†_€‰|5
ore:ƒ,=€€:€†_€‰_€Š|5
ore:€…=€€:dye|11
ore:€Œ=€€:€†_€‰|4
ore:ƒ-=€€:€†_€‰_€Š|4
ore:2=€€:dye|12
ore:3=€€:€†_€‰|3
ore:ƒ.=€€:€†_€‰_€Š|3
ore:&=€€:dye|13,:¾|3
ore:'=€€:€†_€‰|2
ore:ƒ/=€€:€†_€‰_€Š|2
ore:=€€:dye|14
ore:=€€:€†_€‰|1
ore:ƒ0=€€:€†_€‰_€Š|1
ore:€­=€€:dye|15
ore:€®=€€:€†_€‰
ore:ƒ1=€€:€†_€‰_€Š
ore:‚_€Ú_‚=:Ÿ|1
ore:Û=:ª,:ª|2
ore:ƒ2=:ª|1
ore:‚=:Æ
ore:ƒ3=:Æ|1
ore:ƒ4=:Æ|2
ore:ƒ5=:Æ|3
ore:ƒ6=:Æ|4
ore:ƒ7=:Æ|5
ore:ƒ8=:Æ|6
ore:ƒ9=:Æ|7
ore:ƒ:=:Ç
ore:ƒ;=:Ç|1
ore:ƒ<=:Ç|2
ore:ƒ==:Ç|3
ore:ƒ>=:È
ore:ƒ?=:È|1
ore:ƒ@=:É
ore:ƒA=:É|1
ore:ƒB=:Ê
ore:ƒC=:Ê|1
ore:ƒD=:Ê|2
ore:ƒE=:Ê|3
ore:ƒF=:Ê|4
ore:ƒG=:Ê|5
ore:ƒH=:¾
ore:ƒI=:¾|1
ore:ƒJ=:¾|2
ore:ƒK=:¾|3
ore:ƒL=:¾|4
ore:ƒM=:¾|5
ore:ƒN=:¾|6
ore:ƒO=:¾|7
ore:ƒP=:¾|8
ore:ƒQ=:¾|9
ore:ƒR=:¾|10
ore:ü=:¾|11
ore:ƒS=:¾|12
ore:ƒT=:¾|13
ore:ƒU=:¾|15,:¾|16
ore:ƒV=:¾|17
ore:ƒW=:Ü
ore:ƒX=:Ü|1
ore:ƒY=:Ü|2
ore:ƒZ=€€:I_€©
ore:ƒ[=:®|1
ore:Œ=€€:Œ
ore:ƒq=€€:€É,€€:€È_€É
ore:ƒr=€€:€ì_€¸
ore:ƒs=€€:`_¦
ore:oc:ƒt=ƒu:ƒv|7
ore:ƒw=ƒu:ƒx|29
ore:oc:ƒy=€€:end_€Â
ore:‚+=‚':ƒz|*
ore:‚:=‚':‚C|*
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