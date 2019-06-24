local fs = require('filesystem')
local sh = require('shell')
local cd = sh.getWorkingDirectory()

local dict = {'local','isRobotAcquired','robot','xpcall','require','debug','traceback','then','print','load','module','return','stringlib','resproc','rawdb','craftingdb','inventory','crafting','type','item','Command','class','start','usage','func','function','setmetatable','index','running','true','slot','changed','false','wrongUsage','command','Invalid','arguments','commands','help','else','such','cmdlist','pairs','table','insert','sort','printbuffer','ipairs','pagedPrint','exit','stdout','write','Changes','been','made','Would','like','save','before','exiting','userInput','stdin','read','string','lower','elseif','reload','Resources','loaded','successfully','rescan','scan','Inventory','scanned','saved','analyze','shaped','shapeless','ignoreMetadata','processor','processors','shape','Check','result','scanSlot','select','throw','Crafting','obstructed','Scan','pattern','craftingArea','scanPattern','slotScan','ignoreDamage','damage','Shrink','Craft','component','craft','width','height','scanCraftingArea','show','peek','look','lookup','Nothing','getmetatable','keep','Item','discard','Slot','cleared','remove','processing','Removed','removed','list','List','tostring','sortedCraftingPairs','traceraw','itemAdded','itemAvailable','trace','isCraftable','Crafted','failed','enough','items','clear','clearCraftingArea','Cleared','while','craftmgr','commandstr','split','commandname','unpack','unrecognized','shell','filesystem','args','path','resolve','exists','File','found','dofile','open','close','Crash','collected','argument','expected','stack','machine','tail','calls','field','main','chunk','global','process','Format','output','name','quantity','recipe','array','metadata','minecraft','121212','stick','chest','11111111','planks','1111','diamond','11122','pickaxe','furnace','cobblestone','gold','nugget','ingot','iron','bars','111111','ladder','1111111','paper','reeds','stone','button','wooden','opencomputers','case2','121343151','material','1213','redstone','keyboard','111123','111232111','111111111','1112324','screen1','121234121','glass','sand','itemarray','Class','Meta','Init','craftingdbpath','dimension','craftingParams','size','tonumber','npat','Loading','craftingCount','format','itemoutput','itemoutputq','itemshape','itemUsed','itemsNeeded','itemPattern','indexDamage','allitems','Functions','error','compareDamage','base','first','Override','original','otype','controller','Missing','invctrl','slots','math','floor','inventorySize','getStackInInternalSlot','updateSlot','Scanning','Done','isInExcludedSlot','excludedSlots','isInCraftingArea','transfer','slotDest','amount','transferTo','find','itemSlots','count','pull','ignoreCraftingArea','destSlot','itemTypes','pulled','break','srcSlot','Fill','curSlot','maxSize','moveSize','Lastly','fill','empty','isAvailable','getinventorySize','isUpAvailable','getUpinventorySize','request','TODO','external','send','deposit','front','specific','selected','transferOut','exSlot','dropIntoSlot','transferIn','suckFromSlot','rawdbpath','rawCount','from','package','tablelib','ResProc','getItemRecipe','object','addItem','createdItem','tryTakeItem','minus','processItem','ceil','satisfiable','externalItem','Merge','with','allItems','addAll','Unsatisfied','unsatisfiedItems','Drain','populate','unsatisfied','until','unsatisfiedItem','popSingle','craftings','unsatisfiedCraftings','unsatisfiedCrafting','ingredients','availability','allAvailable','this','singleItem','event','delim','gmatch','screenWidth','screenHeight','getResolution','lineCount','brokeLines','stay','brokenTableBuffer','down','clone','Safety','check','Reduces','headache','Attempting','thing','other','than','newtable','cloneAll','concat','splitter','next','make','needs','anything','into','beside','zero','itemsneeded','self','Metamethods','buff','Empty','expecting','construction','compareTo','compare','comparison','operation','different','number','Incompatible','scaling','completename','bnot','ItemArray','hasDamage','hasAll','hasAllDamage','removeDamage','unresolvedItem','incompatible','types','added'}

local files = {['craftmgr.lua']= [==[€€ €, €‚ = €ƒ(€„, €….€†, '€‚')
if not € €‡
	€ˆ('Can\'t €‰ €‚ €Š.')
	€‹
end

€€ €Œ = €„('lib.€Œ')
€€ € = €„('lib.€')
€€ € = €„('lib.€')
€€ € = €„('lib.€')
€€ € = €„('lib.€')

€€ €‘ = €„('lib.€’.€‘')
€€ €“ = €„('lib.€’.€“')

-----------------------
-- €” €• €–
-----------------------
€€ €” = {['€—'] = '', ['€˜'] = nil}

€™ €”.new()
	€€ o = {}
	€š(o, €”)
	€”.__€› = €”
	o.€— = ''
	o.€˜ = nil
	€‹ o
end
-----------------------
-- €” €• end
-----------------------

€€ €œ = €
€€ € = {}
€€ €Ÿ = € 

€€ €™ €¡(€¢)
	€ˆ('€£ €¤!')
	€ˆ(€¢.€—)
end

€€ €¥ = {}

€¥.€¦ = €”.new()
€¥.€¦.€— = '€¦'
€¥.€¦.€˜ = €™(€¢)
	if €¢ ~= nil €‡
		if €¥[€¢] ~= nil €‡
			€ˆ(€¥[€¢].€—)
			€‹
		€§
			€ˆ('No €¨ €¢.')
		end
	end
	€€ €© = {}
	for k, v in €ª(€¥) do
		€«.€¬(€©, v.€—)
	end
	€«.€­(€©)
	€€ €® = ''
	for k, v in €¯(€©) do
		€® = €® .. v .. '\n'
	end
	€Œ.€°(€®)
end

€¥.€± = €”.new()
€¥.€±.€— = '€±'
€¥.€±.€˜ = €™()
	if €Ÿ €‡
		io.€²:€³('€´ has €µ €¶. €· you €¸ to €¹ all €º €»? [y/n/C]')
		€€ €¼ = io.€½:€¾('*l')
		if €¿.€À(€¼) == 'y' €‡
			€¥.€¹.€˜()
			€œ = € 
		€Á €¿.€À(€¼) == 'n' €‡
			€œ = € 
		end
	€§
		€œ = € 
	end
end

€¥.€Â = €”.new()
€¥.€Â.€— = '€Â'
€¥.€Â.€˜ = €™()
	€.€‰()
	€ˆ('€Ã €Ä €Å.')
end

€¥.€Æ = €”.new()
€¥.€Æ.€— = '€Æ'
€¥.€Æ.€˜ = €™()
	€.€Ç()
	€ˆ('€È €É.')
end

€¥.€¹ = €”.new()
€¥.€¹.€— = '€¹'
€¥.€¹.€˜ = €™()
	€.€¹()
	€ˆ('€Ã €Ê €Å.')
end

€¥.€Ë = €”.new()
€¥.€Ë.€— = '€Ë <€‘> <€Ì/€Í> [€Î]'
€¥.€Ë.€˜ = €™(€Ï, ...)
	if €Ï == nil €‡
		€¥.€¦.€˜('€Ë')
		€‹
	end

	€€ €Ğ = {}
	€Ğ.€‘ = €™(€Ñ, €Î)
		if €Ñ == nil €‡
			€¥.€¦.€˜('€Ë')
			€‹
		€Á (€Ñ ~= '€Ì') and (€Ñ ~= '€Í') €‡
			€¥.€¦.€˜('€Ë')
			€‹
		end
		€€ €Ì = (€Ñ == '€Ì') and € or € 
		
		-- €Ò €Ó €
		if €.€Ô(8) ~= nil €‡
			€.€Õ(8)
			if not €.€Ö() €‡
				€ˆ('€× €Ø.')
				€‹
			end
		end
		
		-- €Ù €Ú
		€€ €Û = {1, 2, 3, 5, 6, 7, 9, 10, 11}
		€€ €Ü = {}
		for k, v in €¯(€Û) do
			€€ €İ = €.€Ô(v)
			if €İ ~= nil €‡
				€Ü[k] = ~€İ
				if €Î == € €‡
					€Ü[k]:€Ş()
				€Á €Î == nil €‡
					if €Ü[k].€ß == 0 €‡
						€Ü[k]:€Ş()
					end
				end
			end
		end
		
		€€ €Ú = {}
		€€ w, h, ox, oy
		if €Ì €‡
			-- €à €Ú
			w, h, ox, oy = 3, 3, 0, 0
			€€ €™ r(n)
				€€ d = € 
				for i = (n-1)*3+1, n*3 do
					d = d or (€Ü[i] ~= nil)
				end
				€‹ d
			end
			€€ €™ c(n)
				€€ d = € 
				for i = 0, 2 do
					d = d or (€Ü[(i*3)+n] ~= nil)
				end
				€‹ d
			end
			
			if c(1) and c(3) €‡
				w, ox = 3, 0
			€Á (c(1) and c(2)) or (c(2) and c(3)) €‡
				w, ox = 2, c(1) and 1 or 2
			€Á c(1) or c(2) or c(3) €‡
				w, ox = 1, c(1) and 1 or (c(2) and 2 or 3)
			€§
				w, ox = 0, 0
			end
			
			if r(1) and r(3) €‡
				h, oy = 3, 0
			€Á (r(1) and r(2)) or (r(2) and r(3)) €‡
				h, oy = 2, r(1) and 1 or 2
			€Á r(1) or r(2) or r(3) €‡
				h, oy = 1, r(1) and 1 or (r(2) and 2 or 3)
			€§
				h, oy = 0, 0
			end
			
			€€ €™ xy(x, y, w, h)
				€‹ x + y * w
			end
			for y = 1, h do
				for x = 1, w do
					€Ú[xy(x-1, y-1, w, h)+1] = €Ü[xy(x+ox-2, y+oy-2, 3, 3)+2]
				end
			end
		€§
			w, h = 0, 0
			for k, v in €ª(€Ü) do
				€Ú[#€Ú+1] = v
			end
		end
		
		-- €á €“
		if not €â.€‘.€ã(1) €‡
			€ˆ('Can\'t €ã!')
			€‹
		end
		€€ €Ó = €.€Ô(8)
		
		-- Put €‘ in €
		€ = €‘.new({€ä = w, €å = h}, €Ú, €Ì, €Ó)
		€ˆ('Put €‘ in €.')
	end
	
	if €Ğ[€¿.€À(€Ï)] == nil €‡
		€¥.€¦.€˜('€Ë')
		€‹
	€§
		€Ğ[€¿.€À(€Ï)](...)
	end
	
	€.€æ()
end

€¥.€ç = €”.new()
€¥.€ç.€— = '€ç/see/€è/€é <€/€“>'
€¥.€ç.€˜ = €™(it)
	if it == nil €‡
		€¥.€¦.€˜('€ç')
		€‹
	end
	
	€€ sit
	if it == '€' €‡
		sit = €
	€§
		sit = €.€ê(~€“.new(it))
	end
	
	€€ €Ğ = {}
	€Ğ.€‘ = €™(ii)
		€ˆ(ii)
	end
	
	if sit == nil €‡
		€ˆ('€ë to €ç.')
		€‹
	€Á €ì(sit) == €‘ €‡
		€Ğ.€‘(sit)
	end
end

€¥.see = €¥.€ç
€¥.€è = €¥.€ç
€¥.€é = €¥.€ç

€¥.€í = €”.new()
€¥.€í.€— = '€í <€/€“>'
€¥.€í.€˜ = €™(it)
	if it == nil €‡
		€¥.€¦.€˜('€í')
		€‹
	€Á it == '€' €‡
		if € == nil €‡
			€ˆ('€ë to €í.')
			€‹
		€§
			€.€í(€)
			if €ì(€) == €‘ €‡
				€Ÿ = €
				€ˆ('€× €í.')
			end
		end
	€§
		€.€í(~€“.new(it))
		€Ÿ = €
		€ˆ('€î €í to raw.')
	end
end

€¥.€ï = €”.new()
€¥.€ï.€— = '€ï'
€¥.€ï.€˜ = €™()
	€ = nil
	€ˆ('€ğ €ñ.')
end

€¥.€ò = €”.new()
€¥.€ò.€— = '€ò <€“>'
€¥.€ò.€˜ = €™(it)
	if it == nil €‡
		€¥.€¦.€˜('€ò')
		€‹
	end

	€€ €ó = €.€ò(€“.new(it))
	if €ì(€ó) == €‘ €‡
		€Ÿ = €
		€ˆ('€ô €‘.')
	€Á €ì(€ó) == €“ €‡
		€Ÿ = €
		€ˆ('Raw €õ.')
	€§
		€ˆ('€ë €õ.')
	end
end

€¥.€ö = €”.new()
€¥.€ö.€— = '€ö <raw/€‘>'
€¥.€ö.€˜ = €™(€Ï)
	€€ €® = ''
	if €Ï == 'raw' €‡
		€® = '€÷ of raw:\n'
		for k, v in €¯(€.db) do
			€® = €® .. €ø(v) .. '\n'
		end
	€Á €Ï == '€‘' €‡
		€® = '€÷ of €‘:\n'
		for k, v in €.€ù() do
			€® = €® .. €ø(~k) .. '\n'
		end
	€§
		€¥.€¦.€˜('€ö')
		€‹
	end
	€Œ.€°(€®)
end

€¥.€Õ = €”.new()
€¥.€Õ.€— = '€Õ <€>'
€¥.€Õ.€˜ = €™(sl)
	€.€Õ(€ø(sl))
end

€¥.€ú = €”.new()
€¥.€ú.€— = '€ú <€“>'
€¥.€ú.€˜ = €™(it)
	€€ sit
	if it ~= nil €‡
		sit = €“.new(it)
	€§
		€¥.€¦.€˜('€ú')
		€‹
	end
	
	if €.€ê(sit) ~= nil €‡
		if €ì(€.€ê(sit)) ~= €“ €‡
			€€ €®
			if €ì(€.€ê(sit)) == €‘ €‡
				€® = '€×: ' .. €ø(€.€ê(sit).€Ó) .. '\n'
			end
			€€ €û, €ü = €.€ú(sit)
			for k, v in €¯(€û) do
				€® = €® .. €ø(v) .. '\n'
			end
			€Œ.€°(€®)
		€§
			€ˆ('It\'s an €“')
		end
	€§
		€ˆ('Can\'t €ı.')
	end
end

€¥.€ã = €”.new()
€¥.€ã.€— = '€ã <€“>'
€¥.€ã.€˜ = €™(it)
	€€ sit
	if it ~= nil €‡
		sit = €“.new(it)
	€§
		€¥.€¦.€˜('€ã')
		€‹
	end
	
	if €.€ş(sit) €‡
		if €.€ã(sit) €‡
			€ˆ('€ÿ €Å.')
		€§
			€ˆ('€×  .')
		end
	€§
		€ˆ('Not   to €ã.')
	end
end

€¥. = €”.new()
€¥..€— = ''
€¥..€˜ = €™(...)
	if €.() €‡
		€ˆ('.')
	€§
		€ˆ('Can\'t !')
	end
end

 €œ do
	io.€²:€³('>')
	€€  = €Œ.	(io.€½:€¾('*l'))
	€€ 
 = €¿.€À(€«.€ò(, 1))
	if €¥[
] ~= nil €‡
		€¥[
].€˜(€«.())
	€§
		€ˆ('€” .')
	end
end]==],['ct.lua']= [==[€€  = €„('')
€€ fs = €„('')

€€  = {...}
€€  = .(€«.€ò(, 1))

if not fs.() €‡
	if fs.( .. '.lua') €‡
		 =  .. '.lua'
	€§
		€ˆ(' not .')
		€‹
	end
end

€€ a, b = €ƒ(, €….€†, , €«.())
if not a €‡
	€€ f = io.('ct.txt', 'w')
	f:€³(b)
	f:()
	€ˆ(' .')
end]==],['ct.txt']= [==[/mnt/cf4/lib/€.lua:75: bad  #1 to '€ò' (€« )
 €†:
	:796: in €™ <:791>
	[C]: in €™ '€«.€ò'
	/mnt/cf4/lib/€.lua:75: in €™ </mnt/cf4/lib/€.lua:72>
	(... ...)
	/mnt/cf4/.lua:297: in   '€˜'
	/mnt/cf4/.lua:403: in ! "
	(... ...)
	[C]: in €™ '€ƒ'
	:791: in # '€ƒ'
	/mnt/cf4/ct.lua:16: in ! "
	(... ...)
	[C]: in €™ '€ƒ'
	:791: in # '€ƒ'
	/lib/$.lua:63: in €™ </lib/$.lua:59>]==],['db']={['crafting.db']= [==[#%:
#'€î & '' '€“ & (' 'sd=€Ì/sl=€Í' 'wh' '€“ €Ñ' '€“ ) *|+'
,:bow 1 sd 33 - ,:. ,:€¿ 
,:/ 1 sd 33 0 ,:1 
,:€‘_€« 1 sd 22 2 ,:1 
,:3_axe 1 sd 23 4 ,:3 ,:. 
,:3_5 1 sd 33 4 ,:3 ,:. 
,:6 1 sd 33 0 ,:7 
,:8_9 9 sd 00 1 ,:8_: 
,:;_axe 1 sd 23 4 ,:;_: ,:. 
,:;_< 16 sd 32 = ,:;_: 
,:;_9 9 sd 00 1 ,:;_: 
,:;_5 1 sd 33 4 ,:;_: ,:. 
,:> 3 sd 33 ? ,:. 
,:@ 3 sd 31 111 ,:A 
,:1|0 4 sd 00 1 ,:log|0 
,:. 4 sd 12 11 ,:1 
,:B_axe 1 sd 23 4 ,:7 ,:. 
,:B_C|0 1 sd 00 1 ,:B|0 
,:B_C 1 sd 00 1 ,:B|0 
,:B_5 1 sd 33 4 ,:7 ,:. 
,:D_5 1 sd 33 4 ,:1 ,:. 
E:F 1 sd 33 G ,:8_: E:H|8 ,:;_< ,:/ E:H|4 
E:€â|7 1 sd 32 I E:H|7 E:H|8 E:H|4 
E:€â|1 1 sd 33 G ,:8_9 ,:J E:H|8 E:H|11 E:H|10 
E:K 1 sd 32 L E:H|14 E:H|15 E:H|16 
E:H|15 1 sd 32 2 ,:B_C 
E:H|14 1 sd 32 = ,:B_C 
E:H|8 4 sd 33 M ,:8_9 ,:J E:H|6 
E:H|7 8 sd 33 M ,:;_9 ,:J E:H|6 
E:H|16 1 sd 33 N ,:B_C 
E:H|6 8 sd 33 O ,:;_: ,:8_9 ,:@ ,:J 
E:P 1 sd 33 Q ,:;_: ,:J E:H|7 ,:R 
]==],['raw.db']= [==[,:7
,:3
,:R
,:8_:
,:;_:
,:;_9
,:log|0
,:J
,:A
,:S
,:B|0
,:€¿
E:H|4
]==]},['lib']={['craftingdb.lua']= [==[€€ €“ = €„('lib.€’.€“')
€€ T = €„('lib.€’.T')
€€ €‘ = €„('lib.€’.€‘')

€€ €Œ = €„('lib.€Œ')

-- U V
€€ € = {
	db = {}
}

-- U W
€€ X = 'db/€‘.db'
€™ €.€‰()
	€€ f = io.(X, 'r')
	€€ l = f:€¾('*l')
	 l ~= nil do
		if (l:sub(1,1) ~= '#') and (l ~= '') €‡
			€€ Y = {€ä = 0, €å = 0}
			€€ €Ú = {}
			€€ €Ì = €
			€€ €Ó = {}
			€€ Z = €Œ.	(l)
			€Ó = €“.new(Z[1])
			€Ó.[ = \(Z[2])
			€Ì = (Z[3] == 'sd')
			Y.€ä, Y.€å = \(Z[4]:sub(1,1)), \(Z[4]:sub(2,2))
			€€ pat = Z[5]
			€€  = T.new()
			for i = 6, #Z do
				:add(~€“.new(Z[i]))
			end
			for ] = 1, #pat do
				€Ú[]] = [\(pat:sub(], ]))]
			end
			€.db[€Ó] = €‘.new(Y, €Ú, €Ì, €Ó)
		end
		l = f:€¾('*l')
	end
	f:()
end
io.€³('^ €... ')
€.€‰()
€€ _ = 0
for k, v in €ª(€.db) do
	_ = _ + 1
end
io.€³ (€¿.`('%d €Ä.\n', _))

€™ €.€ù()
	€€ a = {}
	for n in €ª(€.db) do €«.€¬(a, n) end
	€«.€­(a, €™(a, b) if a.' == nil or b.' == nil €‡ €ˆ(a,b) end; €‹ a.' < b.' end)
	€€ i = 0
	€‹ €™()
		i = i + 1
		if a[i] == nil €‡
			€‹ nil
		€§
			€‹ a[i], €.db[a[i]]
		end
	end
end

€™ €.€¹()
	-- %: '€î & '' '€“ & (' 'sd=€Ì/sl=€Í' 'wh' '€“ €Ñ' '€“ ) *|+'
	€€ f = io.(X, 'w')
	f:€³("#%:\n#'€î & '' '€“ & (' 'sd=€Ì/sl=€Í' 'wh' '€“ €Ñ' '€“ ) *|+'\n")
	for k, v in €.€ù() do
		€€ a = €ø(~k)
		€€ b = €ø(k.[)
		€€ c = v and 'sd' or 'sl'
		€€ dim = €ø(v.Y.€ä) .. €ø(v.Y.€å)
		€€ d = v:e()
		€€ f = ''
		for k, v in €ª(v.€Ú) do
			f = f .. d:g(v) or '0'
		end
		€€ h = ''
		for k, v in €¯(d) do
			h = h .. €ø(~v) .. ' '
		end
		h = h:sub(1, #h)
		f:€³(a .. ' ' .. b .. ' ' .. c .. ' ' .. dim .. ' ' .. f .. ' ' .. h .. '\n')
	end
	f:()
end

-- U i
€™ €.get(i)
	for k, v in €ª(€.db) do
		if i == k €‡
			€‹ v
		end
	end
	€‹ nil
end

€™ €.set(€‘)
	if €‘ == nil €‡
		j('Can\'t add nil to €!')
	end
	€.db[€‘.€Ó] = €‘
	€‹ €.db[€‘.€Ó]
end

€™ €.€ò(i)
	for k, v in €ª(€.db) do
		if i:k(k) €‡
			€€ tmp = €.db[k]
			€.db[k] = nil
			€‹ tmp
		end
	end
	€‹ nil
end

€‹ craftingdb]==],['init.lua']= [==[-- Lib l. Run m.

-- n €’
€€ o_€’ = €’
€™ €’(v)
	€€ p = o_€’(v)
	if p == '€«' €‡
		if v.€’ ~= nil €‡
			€‹ v.€’
		end
	end
	€‹ p
end]==],['inventory.lua']= [==[€€ €, €‚ = €ƒ(€„, €….€†, '€‚')
if not € €‡
	€ˆ('Can\'t €‰ €‚ €Š.')
	€‹
end

€€ €â = €„('€â')
if €â.€_q == nil €‡
	€ˆ('r € q!')
	€‹
end
€€ s = €â.€_q

€€ €“ = €„('lib.€’.€“')
€€ T = €„('lib.€’.T')

-- U V
€€ €È = {
	t = {},
	[ = u.v(€‚.w()),
	ex = {}
}

-- U i
€™ €È.€Õ(€)
	€‹ €‚.€Õ(€)
end

€™ €È.€Ô(€)
	€€ t = s.x(€)
	if t == nil €‡
		€‹ nil
	end
	€‹ €“.new(t)
end

€™ €È.y(€)
	€È.t[€] = €È.€Ô(€)
	€‹ €È.t[€]
end

€™ €È.€Ç()
	for i = 1, €È.[ do
		€È.y(i)
	end
end
io.€³('z €... 00')
for i = 1, €È.[ do
	€È.y(i)
	io.€³('\8\8' .. €¿.`('%02d', i))
end
io.€³(' {.\n')

€™ €È.€æ()
	€€ €Û = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	for k, v in €¯(€Û) do
		€È.y(v)
	end
end

€™ €È.|(€, })
	for k, v in €¯(}) do
		if € == v €‡
			€‹ €
		end
	end
	€‹ € 
end

€™ €È.~(€)
	€‹ €È.|(€, {1, 2, 3, 5, 6, 7, 8, 9, 10, 11})
end

€™ €È.(€, )
	€€ res = €‚.‚(€, )
	€È.y(€È.€Õ())
	€È.y(€)
	€‹ res
end

€™ €È.ƒ(i)
	€€ „ = {}
	for € = 1, €È.[ do
		if €È.t[€] ~= nil €‡
			if i == €È.t[€] €‡
				€«.€¬(„, €)
			end
		end
	end
	€‹ „
end

€™ €È.…(i)
	€€ c = 0
	for k, v in €¯(€È.ƒ(i)) do
		c = c + €È.t[v].[
	end
	€‹ c
end

€™ €È.†(i, ‡)
	€€  = i.[
	€€ ‡ = ‡
	if ‡ == nil €‡ ‡ = € end
	€€ ˆ = €È.€Õ()
	€€ ‰ = T.new()
	for k, v in €ª(€È.ƒ(i)) do
		‰:add(€È.t[v])
	end
	for k, v in €¯(‰) do
		if €È.…(v) >=  €‡
			for kf, vf in €¯(€È.ƒ(v)) do
				 if not (‡ or €È.~(vf)) €‡
					if  > 0 €‡
						€È.€Õ(vf)
						€€ Š = €È.t[vf].[
						if not €È.(ˆ, ) €‡
							€‹ € 
						end
						 =  - Š
					€§
						€È.€Õ(ˆ)
						€‹ €
					end
				 end
			end
			‹
		end
	end
	€È.€Õ(ˆ)
	€‹ €
end

€™ €È.€Ö(, ‡, })
	€€ Œ = €È.€Õ()
	€€  =  or €È.t[Œ].[
	€€ ‡ = ‡
	if ‡ == nil €‡ ‡ = € end
	€€ } = } or {}
	
	--   m
	for k, v in €ª(€È.ƒ(€È.t[Œ])) do
		if not (‡ or €È.~(v)) and not €È.|(v, }) €‡
			€€  = €È.t[v]
			if .[ < . €‡
				€€  = u.min(. - .[, )
				if not €È.(v, ) €‡
					€‹ € 
				end
				 =  - 
				if  == 0 €‡
					€‹ €
				end
			end
		end
	end
	
	-- ‘, ’ “ t
	for  = 1, €È.[ do
		if not (‡ or €È.~()) and not €È.|(, }) €‡
			if €È.t[] == nil €‡
				if not €È.(, ) €‡
					€‹ € 
				end
				€‹ €
			end
		end
	end
	
	€‹ €
end

€™ €È.()
	for k, v in €¯({1, 2, 3, 5, 6, 7, 8, 9, 10, 11}) do
		if €È.t[v] ~= nil €‡
			€È.€Õ(v)
			if not €È.€Ö(€È.t[v].[, € ) €‡
				€‹ € 
			end
		end
	end
	€‹ €
end

€™ €È.ex.”()
	€‹ €È.ex.•() ~= nil
end

€™ €È.ex.–()
	€‹ €È.ex.—() ~= nil
end

€™ €È.ex.•()
	€‹ s.•(3)
end

€™ €È.ex.—()
	€‹ s.•(1)
end

€™ €È.ex.€Ô(€)
	€€ t = s.x(3, €)
	if t == nil €‡
		€‹ nil
	end
	€‹ €“.new(t)
end

€™ €È.ex.˜(i, )
	-- ™: † š €“
end

€™ €È.ex.›(i, )
	-- ™: œ €“ to € in 
end

€™ €È.ex.€Ö(€, )
	-- ™: €Ö   of Ÿ € in 
end

€™ €È.ex. (¡, )
	€‹ s.¢(3, ¡, )
end

€™ €È.ex.£(¡, )
	€‹ s.¤(3, ¡, )
end

€‹ Inventory]==],['rawdb.lua']= [==[€€ €“ = €„('lib.€’.€“')
€€ T = €„('lib.€’.T')

€€ €Œ = €„('lib.€Œ')

-- U V
€€ € = {
	db = {}
}

-- U W
€€ ¥ = 'db/raw.db'

€™ €.€­()
	€«.€­(€.db, €™(a, b) €‹ a.' < b.' end)
end

€™ €.€‰()
	€.db = {}
	€€ f = io.(¥, 'r')
	€€ l = f:€¾('*l')
	 l ~= nil do
		€«.€¬(€.db, ~€“.new(l))
		l = f:€¾('*l')
	end
	€.€­()
	f:()
end
io.€³('^ €... ')
€.€‰()
€€ ¦ = 0
for k, v in €¯(€.db) do
	¦ = ¦ + 1
end
io.€³(€¿.`('%d €Ä.\n', ¦))

€™ €.€¹()
	€.€­()
	€€ f = io.(¥, 'w')
	for k, v in €¯(€.db) do
		f:€³(€ø(v) .. '\n')
	end
	f:()
end

-- U i
€™ €.get(i)
	if €ì(i) ~= €“ €‡
		j('Can\'t ƒ ' .. €’(€“) .. ' § €.')
	end
	for k, v in €¯(€.db) do
		if i:k(v) €‡
			€‹ v
		end
	end
	€‹ nil
end

€™ €.has(i)
	€‹ €.get(i) ~= nil
end

€™ €.add(i)
	if €ì(i) ~= €“ €‡
		j('Can\'t add ' .. €’(€“) .. ' to €.')
	end
	for k, v in €¯(€.db) do
		if i:k(v) €‡
			€‹ i
		end
	end
	€«.€¬(€.db, i)
	€.€­()
	€‹ i
end

€™ €.€ò(i)
	for k, v in €¯(€.db) do
		if i:k(v) €‡
			€‹ €«.€ò(€.db, k)
		end
	end
	€‹ nil
end

€‹ rawdb]==],['reset.lua']= [==[¨.€Ä['lib.€'] = nil
¨.€Ä['lib.€'] = nil
¨.€Ä['lib.€'] = nil
¨.€Ä['lib.€Œ'] = nil
¨.€Ä['lib.©'] = nil
¨.€Ä['lib.€'] = nil
¨.€Ä['lib.€’.€“'] = nil
¨.€Ä['lib.€’.€‘'] = nil
¨.€Ä['lib.€’.T'] = nil]==],['resproc.lua']= [==[€€ €, €‚ = €ƒ(€„, €….€†, '€‚')
if not € €‡
	€ˆ('Can\'t €‰ €‚ €Š.')
	€‹
end

€€ €“ = €„('lib.€’.€“')
€€ T = €„('lib.€’.T')
€€ € = €„('lib.€')
€€ € = €„('lib.€')
€€ €‘ = €„('lib.€’.€‘')
€€ € = €„('lib.€')

-- U V
€€ ª = {}

-- U i
€™ ª.€‰()
	€.€‰()
	€.€‰()
end

€™ ª.€¹()
	€.€¹()
	€.€¹()
end

€™ ª.«(i)
	if €.get(i) ~= nil €‡
		€‹ €.get(i)
	end
	€‹ nil
end

€™ ª.€ú(it)
	if €’(it) == '€«' €‡
		if €ì(it) ~= €“ €‡
			j('Can\'t €ı non-€“ ¬.')
		end
	€§
		j('Can\'t €ı ' .. €’(it) .. '.')
	end

	€€ €ü = T.new()
	€€ €û = T.new()
	
	€€ €™ ­(i)
		€ü:add(i)
		€û:add(i)
	end
	
	€€ €™ ®(i)
		€ü:add(i)
	end
	
	€€ €™ ¯(i)
		if €ü:has(i) €‡
			€ü:°(i)
			€‹ €
		end
		€‹ € 
	end
	
	€€ €™ ±(i)
		if €.has(i) €‡
			­(i)
		€Á ª.«(i) ~= nil €‡
			for ite = 1, u.²(i.[ / ª.«(i).€Ó.[) do
				for k, v in €ª(ª.«(i):e()) do
					 not ¯(v) do
						±(v)
					end
				end
				®(ª.«(i).€Ó)
			end
		€§
			­(i)
		end
	end
	
	±(it)
	€û:€­()
	€ü:€­()
	€‹ €û, €ü
end

€™ ª.()
	€€ €Û = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	for k, v in €¯(€Û) do
		if €.t[v] ~= nil €‡
			€.€Õ(v)
			if not €.€Ö() €‡
				€‹ € 
			end
		end
	end
end

€™ ª.€ê(it)
	if €.get(it) ~= nil €‡
		€‹ €.get(it)
	€Á €.get(it) ~= nil €‡
		€‹ €.get(it)
	€§
		€‹ nil
	end
end

€™ ª.€í(€ó)
	if €ì(€ó) == €‘ €‡
		€‹ €.set(€ó)
	€Á €ì(€ó) == €“ €‡
		€‹ €.add(€ó)
	€§
		€‹ nil
	end
end

€™ ª.€ò(it)
	if €.get(it) ~= nil €‡
		€‹ €.€ò(it)
	€Á €.get(it) ~= nil €‡
		€‹ €.€ò(it)
	€§
		€‹ nil
	end
end

€™ ª.³(€“, ´)
	-- µ €  ¶ š 
	€€ · = T.new()
	for k, v in €ª(€.t) do
		·:add(v)
	end
	if ´ ~= nil €‡
		·:¸(´)
	end
	
	-- ¹ 
	€€ º = T.new()
	º:add(€“)
	
	-- » and ¼ ½  ¾ it's “
	 #º ~= 0 do
		€€ ¿ = €«.€ò(º, 1)
		if not ·:has(¿) €‡
			if (ª.«(¿) == nil) or €.has(¿) €‡
				€‹ € 
			€§
				º:¸(ª.«(¿):e() * ¿.[)
			end
		end
	end
	€‹ €
end

€™ ª.€ş(€“, ´)
	-- µ €  ¶ š 
	€€ · = T.new()
	for k, v in €ª(€.t) do
		·:add(v)
	end
	if ´ ~= nil €‡
		·:¸(´)
	end
	
	-- ¹ 
	€€ º = T.new()
	º:add(€“)
	
	-- » and ¼ ½  ¾ it's “
	 #º ~= 0 do
		€€ ¿ = º:À()
		if not ·:has(¿) €‡
			if (€.get(¿) == nil) or €.has(¿) €‡
				€‹ € 
			€§
				º:¸(€.get(¿):e())
				·:add(€.get(¿).€Ó)
			end
		€§
			·:°(¿)
		end
	end
	€‹ €
end

€™ ª.€ã(€“)
	if €.get(€“) == nil €‡
		j('Can\'t €ã ' .. €ø(€“) .. '.')
	end
	
	-- ¹ Á
	€€ Â = {}
	€«.€¬(Â, €.get(€“))
	
	 #Â ~= 0 do
		€€ Ã = Â[#Â]
		
		-- €Ò Ä Å
		€€ Æ = €
		for k, v in €¯(Ã:e()) do
			if €.…(v) < v.[ €‡
				Æ = € 
				if (€.get(v) == nil) or €.has(v) €‡
					€ˆ('Ç 1')
					€‹ € 
				€§
					for kc, vc in €¯(Â) do
						if vc == €.get(v) €‡
							€«.€ò(Â, kc)
						end
					end
					€«.€¬(Â, €.get(v))
				end
			end
		end
		
		if Æ €‡
			if not €.() €‡
				€ˆ('Ç 2')
				€‹ € 
			end
			€ˆ('€ñ')
			if Ã.€Ì €‡
				€€ €Û = {{1, 2, 3}, {5, 6, 7}, {9, 10, 11}}
				for y = 1, Ã.Y.€å do
					for x = 1, Ã.Y.€ä do
						if Ã.€Ú[(y - 1) * Ã.Y.€ä + x] ~= nil €‡
							€.€Õ(€Û[y][x])
							€.†(Ã.€Ú[(y - 1) * Ã.Y.€ä + x]:È(), € )
						end
					end
				end
			€§
				€€ €Û = {1, 2, 3, 5, 6, 7, 9, 10, 11}
				for k = 1, #Ã.€Ú do
					€.€Õ(€Û[k])
					€.†(Ã.€Ú[k]:È(), € )
				end
			end
			€.€Õ(8)
			if not €â.€‘.€ã(1) €‡
				€ˆ('Ç 3')
				€‹ € 
			end
			€.€æ()
			€«.€ò(Â)
		end
	end
	
	€‹ €
end

€‹ ResProc]==],['stringlib.lua']= [==[€€ É = €„('É')
€€ €â = €„('€â')
if €â.gpu == nil €‡
	€ˆ('r gpu!')
	€‹
end
€€ gpu = €â.gpu

-- U V
€€ €Œ = {}

-- U i
€™ €Œ.	(s, Ê)
	Ê = Ê or '%s'
	€€ t = {}
	for str in €¿.Ë(s, '([^'..Ê..']+)') do
		€«.€¬(t, str)
	end
	€‹ t
end

€™ €Œ.€°(s)
	€€ Ì, Í = gpu.Î()
	€€ €™ Ï(str)
		… = 1
		for i = 1, #str do
			if str:sub(i, i) == '\n' €‡
				… = … + 1
			end
		end
		€‹ …
	end
	€€ €™ Ğ(str)
		€€ t = {}
		€€ l = ''
		for i = 1, #str do
			if str:sub(i, i) == '\n' €‡
				t[#t+1] = l
				l = ''
			€Á #l == Ì - 1 €‡
				t[#t+1] = l .. str:sub(i, i)
				l = ''
			€§
				l = l .. str:sub(i, i)
			end
		end
		if l ~= '' €‡ t[#t+1] = l end
		€‹ t
	end
	€€ €™ mod(a, b)
		€‹ a - u.v(a / b) * b
	end

	€€ Ñ = €
	€€ Ò = Ğ(s)
	for k, v in €ª(Ò) do
		if Ñ €‡
			io.€³(v)
			Ñ = € 
		€§
			io.€³('\n' .. v)
			if (#v == Ì) €‡ Ñ = € end
		end
		if mod(k, Í) == 0 €‡
			É.†('key_Ó', nil, 32.0)
		end
	end
	io.€³('\n')
end

€‹ stringlib]==],['tablelib.lua']= [==[€€ © = {}

€™ ©.Ô(t)
	-- Õ Ö. × Ø.
	if €’(t) ~= '€«' €‡
		j('Ù to Ô Ú Û Ü €«.')
	end

	€€ İ = {}
	for k, v in €ª(t) do
		İ[k] = v
	end
	
	€‹ İ
end

€™ ©.Ş(t)
	-- Õ Ö. × Ø.
	if €’(t) ~= '€«' €‡
		j('Ù to Ô Ú Û Ü €«.')
	end

	€€ İ = {}
	for k, v in €ª(t) do
		if €’(v) == '€«' €‡
			İ[k] = ©.Ş(v)
		€§
			İ[k] = v
		end
	end
	
	€‹ İ
end

€™ ©.ß(t, à)
	€€ buf = ''
	for k, v in €¯(t) do
		buf = buf .. €ø(v)
		if á(t, k) ~= nil €‡
			buf = buf .. à
		end
	end
	€‹ buf
end

€‹ tablelib]==],['type']={['crafting.lua']= [==[€€ €Œ = €„('lib.€Œ')
€€ €“ = €„('lib.€’.€“')
€€ T = €„('lib.€’.T')

-- U V
€€ €× = {
	Y = { €ä = 0, €å = 0 },
	€Ú = {},
	€Ì = €,
	€Ó = {}
}

-- U i
€™ €×.new(Y, €Ú, €Ì, €Ó)
	-- Õ Ö. × Ø.
	if (Y == nil) or (€Ú == nil) or (€Ó == nil) €‡
		j('Can\'t â nil €‘.')
	end
	if (Y.€ä == nil) or (Y.€å == nil) €‡
		j('€× ã Y!')
	end
	if (€ì(€Ó) ~= €“) €‡
		j('Can\'t put ä €§ å €Ó æ €“!')
	end
	if (€Ó.[ == 0) €‡
		j('Can\'t â ç €“!')
	end
	
	€€ o = {}
	€š(o, €×)
	€×.__€› = €×
	o.Y = Y
	o.€Ú = €Ú
	o.€Ì = €Ì
	o.€Ó = €Ó
	€‹ o
end

€™ €×:e()
	€€ è = T.new()
	for k, v in €ª(é.€Ú) do
		if v ~= nil €‡
			è:add(v:È())
		end
	end
	€‹ è
end

-- ê
€™ €×.__€ø(cr)
	€€ ë = €¿.`('(%dx%d) ', cr.Y.€ä, cr.Y.€å) .. (cr.€Ì and '€Ì ' or '€Í ') .. €ø(cr.€Ó) .. ':\n'
	
	if cr.€Ì €‡
		for c = 1, cr.Y.€ä * cr.Y.€å do
			ë = ë .. €¿.`('[%d] %s\n', c, cr.€Ú[c])
		end
	€§
		for c = 1, #cr.€Ú do
			ë = ë .. €¿.`('[%d] %s\n', c, cr.€Ú[c])
		end
	end
	ë = ë:sub(1, #ë - 1)
	
	€‹ ë
end

€‹ Crafting]==],['item.lua']= [==[€€ €Œ = €„('lib.€Œ')

-- U V
€€ €î = {
	' = '',
	€ß = nil,
	[ = 1,
	 = 1
}

-- U i
€™ €î.new(...)
	€€  = {...}
	€€ i = {}
	€š(i, €î)
	€î.__€› = €î
	
	if €’([1]) == '€¿' €‡
		if [1] == '' €‡
			j('ì €“ '.')
		end
		i.' = €Œ.	([1], '|')[1]
		i.€ß = \(€Œ.	([1], '|')[2])
		i.[ = 1
		i. = 1
	€Á €’([1]) == '€«' €‡
		i.' = [1].'
		if [1].€ß ~= nil €‡
			i.€ß = u.v([1].€ß)
		end
		i.[ = u.v([1].[) or 1
		i. = u.v([1].) or 1
	€Á # == 0 €‡
		j('Not í nil or “ .')
	€§
		j('€£ î .')
	end
	
	€‹ i
end

€™ €î:€Ş()
	é.€ß = nil
	€‹ é
end

€™ €î:È()
	€€ icl = é:Ô()
	icl.[ = 1
	€‹ icl
end

€™ €î:Ô()
	€‹ €î.new(é)
end

€™ €î:ï(i)
	-- Õ Ö. × Ø.
	if €ì(i) ~= €î €‡
		j('Ù to ğ ¶ ' .. €’(i) .. '.')
	end

	if é.€ß == nil €‡
		€‹ é.' == i.'
	€§
		€‹ (é.' == i.') and (é.€ß == i.€ß)
	end
end

€™ €î:k(i)
	-- Õ Ö. × Ø.
	if €ì(i) ~= €î €‡
		j('Ù to ğ ¶ ' .. €’(i) .. '.')
	end
	
	€‹ (é.' == i.') and (é.€ß == i.€ß)
end

-- ê
€™ €î.__eq(a, b)
	-- Õ Ö. × Ø.
	if (€ì(a) ~= €î) or (€ì(b) ~= €î) €‡
		j(€¿.`('Ù to do ñ ò ¶ ó ¬ €’. (%s, %s)', €’(a), €’(b)))
	end

	€‹ a:ï(b)
end

€™ €î.__add(a, b)
	-- Õ Ö. × Ø.
	if (€ì(a) ~= €î) or (€ì(b) ~= €î) €‡
		j('Ù to do ñ ò ¶ ó ¬ €’.')
	end

	€€ n = a:Ô()
	if (a.' == b.') and (a.€ß == b.€ß) and (a. == b.) €‡
		n.[ = a.[ + b.[
	€§
		j(€¿.`('Can\'t add ó .'))
	end
	€‹ n
end

€™ €î.__sub(a, b)
	-- Õ Ö. × Ø.
	if (€ì(a) ~= €î) and (€ì(b) ~= €î) €‡
		j('Ù to do ñ ò ¶ ó ¬ €’.')
	end

	€€ n = a:Ô()
	if (a.' == b.') and (a.€ß == b.€ß) and (a. == b.) €‡
		n.[ = a.[ - b.[
	€§
		j('Can\'t sub ó .')
	end
	€‹ n
end

€™ €î.__mul(a, b)
	-- Õ Ö. × Ø.
	if (€ì(a) ~= €î) and (€’(b) ~= 'ô') €‡
		j(€¿.`('õ €“ [ ö: %s * %s.', €’(a), €’(b)))
	end
	
	€€ n = a:Ô()
	n.[ = n.[ * b
	€‹ n
end

€™ €î.__unm(a)
	€€ icl = a:Ô()
	icl = a. - a.[
	€‹ icl
end

€™ €î.__len(a)
	€‹ a.[;
end

€™ €î.__€ø(a)
	€€ ÷ = a.'
	if a.€ß ~= nil €‡
		÷ = ÷ .. '|' .. €ø(a.€ß)
	end

	if a.[ ~= 0 €‡
		€‹ €¿.`('%d %s', a.[, ÷)
	end
	€‹ ÷
end

€™ €î.__ø(a)
	€€ icl = a:Ô()
	icl.[ = 0
	€‹ icl
end

€‹ Item]==],['itemarray.lua']= [==[€€ €“ = €„('lib.€’.€“')

-- U V
€€ ù = {}

-- U i
€™ ù.new()
	€€ o = {}
	€š(o, ù)
	ù.__€› = ù
	€‹ o
end

€™ ù:has(i)
	for k, v in €¯(é) do
		if i == v €‡
			€‹ (i.[ == 0) or (i.[ <= v.[)
		end
	end
	€‹ € 
end

€™ ù:ú(i)
	for k, v in €¯(é) do
		if v:k(i) €‡
			€‹ v.[ >= i.[
		end
	end
	€‹ € 
end

€™ ù:û(ia)
	for k, v in €¯(ia) do
		if not é:has(v) €‡
			€‹ € 
		end
	end
	€‹ €
end

€™ ù:ü(ia)
	for k, v in €¯(ia) do
		if not é:ú(v) €‡
			€‹ € 
		end
	end
	€‹ €
end

€™ ù:…(i)
	€€ c = 0
	for k, v in €¯(é) do
		if i == v €‡
			c = c + v.[
		end
	end
	€‹ c
end

€™ ù:add(i)
	for k, v in €¯(é) do
		if v:k(i) €‡
			é[k].[ = é[k].[ + i.[
			€‹ é[k]
		end
	end
	€«.€¬(é, i:Ô())
	€‹ i
end

€™ ù:¸(ia)
	if €’(ia) == '€«' €‡
		if €ì(ia) ~= ù €‡
			j('Can\'t add non-T ¬.')
		end
	€§
		j('Can\'t add ' .. €’(ia) .. '.')
	end
	
	for k, v in €¯(ia) do
		é:add(v)
	end
	€‹ ia
end

€™ ù:€ò(i)
	for k, v in €¯(é) do
		if i == v €‡
			€‹ €«.€ò(é, k)
		end
	end
	€‹ nil
end

€™ ù:ı(i)
	for k, v in €¯(é) do
		if i:k(v) €‡
			€‹ €«.€ò(é, k)
		end
	end
	€‹ nil
end

€™ ù:°(i)
	€€ ş = i:Ô()
	for k, v in €¯(é) do
		if i == v €‡
			ş.[ = v.[ - ş.[
			if ş.[ < 0 €‡
				é:€ò(v)
				ş.[ = -ş.[
			€§
				v.[ = ş.[
				€‹ nil
			end
		end
	end
	€‹ ş
end

€™ ù:pop()
	€‹ €«.€ò(é)
end

€™ ù:À()
	if é[#é].[ <= 1 €‡
		€‹ €«.€ò(é)
	€§
		é[#é].[ = é[#é].[ - 1
		€‹ é[#é]:È()
	end
end

€™ ù:€›(i)
	for k, v in €¯(é) do
		if i == v €‡
			€‹ k
		end
	end
	€‹ nil
end

€™ ù:get(i)
	€‹ é[é:€›(i)]
end

€™ ù:g(i)
	for k, v in €¯(é) do
		if i:k(v) €‡
			€‹ k
		end
	end
	€‹ nil
end

€™ ù:€­()
	€«.€­(é, €™(a, b) €‹ a.' < b.' end)
	€‹ é
end

-- ê
€™ ù.__add(a, b)
	-- Õ Ö. × Ø.
	if not ((€ì(a) == ù) or (€ì(a) == €“)) or not ((€ì(b) == ù) or (€ì(b) == €“)) €‡
		j('Ù to add ÿ ‚  Û Ü ù and €î. [' .. €’(b) .. ']')
	end
	
	€€ o = ù.new()
	if (€ì(a) == €“) €‡
		€€ ‚ = € 
		for k, v in €¯(o) do
			if a:k(v) €‡
				o[k] = o[k] + a
				‚ = €
				‹
			end
		end
		if not ‚ €‡
			o:add(a:Ô())
		end
	€§
		for ks, vs in €¯(a) do
			€€ ‚ = € 
			for kd, vd in €¯(o) do
				if vs:k(vd) €‡
					o[kd] = o[kd] + vs
				end
			end
		end
	end
	if (€ì(b) == €“) €‡
		€€ ‚ = € 
		for k, v in €¯(o) do
			if b:k(v) €‡
				o[k] = o[k] + b
				‚ = €
				‹
			end
		end
		if not ‚ €‡
			o:add(b:Ô())
		end
	€§
		for ks, vs in €ª(b) do
			€€ ‚ = € 
			for kd, vd in €¯(o) do
				if vs:k(vd) €‡
					o[kd] = o[kd] + vs
				end
			end
		end
	end
	€‹ o
end

€™ ù.__mul(a, b)
	-- Õ Ö. × Ø.
	if (€ì(a) ~= ù) or (€’(b) ~= 'ô') €‡
		j(€¿.`('õ T [ ö: %s * %s.', €’(a), €’(b)))
	end
	
	€€ o = ù.new()
	for k, v in €¯(a) do
		o[k] = a[k] * b
	end
	€‹ o
end

€‹ ItemArray]==]}}}

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