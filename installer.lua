local fs = require('filesystem')
local sh = require('shell')
local cd = sh.getWorkingDirectory()

local dict = {'local','isRobotAcquired','robot','xpcall','require','debug','traceback','then','print','load','module','return','stringlib','resproc','rawdb','craftingdb','inventory','crafting','type','item','Command','class','start','usage','func','function','setmetatable','index','running','true','slot','changed','false','wrongUsage','command','Invalid','arguments','commands','help','else','such','cmdlist','pairs','table','insert','sort','printbuffer','ipairs','pagedPrint','exit','stdout','write','Changes','been','made','Would','like','save','before','exiting','userInput','stdin','read','string','lower','elseif','reload','Resources','loaded','successfully','rescan','scan','Inventory','scanned','saved','analyze','shaped','shapeless','ignoreMetadata','processor','processors','shape','Check','result','scanSlot','select','throw','Crafting','obstructed','Scan','pattern','craftingArea','scanPattern','slotScan','ignoreDamage','damage','Shrink','Craft','component','craft','width','height','scanCraftingArea','show','peek','look','lookup','Nothing','getmetatable','keep','Item','discard','Slot','cleared','remove','processing','Removed','removed','list','List','tostring','sortedCraftingPairs','traceraw','itemAdded','itemAvailable','trace','isCraftable','Crafted','failed','enough','items','clear','clearCraftingArea','Cleared','while','craftmgr','commandstr','split','commandname','unpack','unrecognized','shell','filesystem','args','path','resolve','exists','File','found','dofile','open','close','Crash','collected','argument','expected','stack','machine','tail','calls','field','main','chunk','global','process','Format','output','name','quantity','recipe','array','metadata','minecraft','121212','stick','chest','11111111','planks','1111','diamond','11122','pickaxe','furnace','cobblestone','gold','nugget','ingot','iron','bars','111111','ladder','1111111','paper','reeds','stone','button','wooden','opencomputers','case2','121343151','material','1213','redstone','keyboard','111123','111232111','111111111','1112324','screen1','121234121','glass','sand','itemarray','Class','Meta','Init','craftingdbpath','dimension','craftingParams','size','tonumber','npat','Loading','craftingCount','format','itemoutput','itemoutputq','itemshape','itemUsed','itemsNeeded','itemPattern','indexDamage','allitems','Functions','error','compareDamage','base','first','Override','original','otype','controller','Missing','invctrl','slots','math','floor','inventorySize','getStackInInternalSlot','updateSlot','Scanning','Done','isInExcludedSlot','excludedSlots','isInCraftingArea','transfer','slotDest','amount','transferTo','find','itemSlots','count','pull','ignoreCraftingArea','destSlot','itemTypes','pulled','break','srcSlot','Fill','curSlot','maxSize','moveSize','Lastly','fill','empty','isAvailable','getinventorySize','isUpAvailable','getUpinventorySize','request','TODO','external','send','deposit','front','specific','selected','transferOut','exSlot','dropIntoSlot','transferIn','suckFromSlot','rawdbpath','rawCount','from','package','tablelib','ResProc','getItemRecipe','object','addItem','createdItem','tryTakeItem','minus','processItem','ceil','satisfiable','externalItem','Merge','with','allItems','addAll','Unsatisfied','unsatisfiedItems','Drain','populate','unsatisfied','until','unsatisfiedItem','popSingle','craftings','unsatisfiedCraftings','unsatisfiedCrafting','ingredients','availability','allAvailable','this','singleItem','event','delim','gmatch','screenWidth','screenHeight','getResolution','lineCount','brokeLines','stay','brokenTableBuffer','down','clone','Safety','check','Reduces','headache','Attempting','thing','other','than','newtable','cloneAll','concat','splitter','next','make','needs','anything','into','beside','zero','itemsneeded','self','Metamethods','buff','Empty','expecting','construction','compareTo','compare','comparison','operation','different','number','Incompatible','scaling','completename','bnot','ItemArray','hasDamage','hasAll','hasAllDamage','removeDamage','unresolvedItem','incompatible','types','added'}

local files = {['craftmgr.lua']= [==[�� ��, �� = ��(��, ��.��, '��')
if not �� ��
	��('Can\'t �� �� ��.')
	��
end

�� �� = ��('lib.��')
�� �� = ��('lib.��')
�� �� = ��('lib.��')
�� �� = ��('lib.��')
�� �� = ��('lib.��')

�� �� = ��('lib.��.��')
�� �� = ��('lib.��.��')

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
		��.��(��, v.��)
	end
	��.��(��)
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
		�� ��.��(��) == 'n' ��
			�� = ��
		end
	��
		�� = ��
	end
end

��.�� = ��.new()
��.��.�� = '��'
��.��.�� = ��()
	��.��()
	��('�� �� ��.')
end

��.�� = ��.new()
��.��.�� = '��'
��.��.�� = ��()
	��.��()
	��('�� ��.')
end

��.�� = ��.new()
��.��.�� = '��'
��.��.�� = ��()
	��.��()
	��('�� �� ��.')
end

��.�� = ��.new()
��.��.�� = '�� <��> <��/��> [��]'
��.��.�� = ��(��, ...)
	if �� == nil ��
		��.��.��('��')
		��
	end

	�� �� = {}
	��.�� = ��(��, ��)
		if �� == nil ��
			��.��.��('��')
			��
		�� (�� ~= '��') and (�� ~= '��') ��
			��.��.��('��')
			��
		end
		�� �� = (�� == '��') and �� or ��
		
		-- �� �� ��
		if ��.��(8) ~= nil ��
			��.��(8)
			if not ��.��() ��
				��('�� ��.')
				��
			end
		end
		
		-- �� ��
		�� �� = {1, 2, 3, 5, 6, 7, 9, 10, 11}
		�� �� = {}
		for k, v in ��(��) do
			�� �� = ��.��(v)
			if �� ~= nil ��
				��[k] = ~��
				if �� == �� ��
					��[k]:��()
				�� �� == nil ��
					if ��[k].�� == 0 ��
						��[k]:��()
					end
				end
			end
		end
		
		�� �� = {}
		�� w, h, ox, oy
		if �� ��
			-- �� ��
			w, h, ox, oy = 3, 3, 0, 0
			�� �� r(n)
				�� d = ��
				for i = (n-1)*3+1, n*3 do
					d = d or (��[i] ~= nil)
				end
				�� d
			end
			�� �� c(n)
				�� d = ��
				for i = 0, 2 do
					d = d or (��[(i*3)+n] ~= nil)
				end
				�� d
			end
			
			if c(1) and c(3) ��
				w, ox = 3, 0
			�� (c(1) and c(2)) or (c(2) and c(3)) ��
				w, ox = 2, c(1) and 1 or 2
			�� c(1) or c(2) or c(3) ��
				w, ox = 1, c(1) and 1 or (c(2) and 2 or 3)
			��
				w, ox = 0, 0
			end
			
			if r(1) and r(3) ��
				h, oy = 3, 0
			�� (r(1) and r(2)) or (r(2) and r(3)) ��
				h, oy = 2, r(1) and 1 or 2
			�� r(1) or r(2) or r(3) ��
				h, oy = 1, r(1) and 1 or (r(2) and 2 or 3)
			��
				h, oy = 0, 0
			end
			
			�� �� xy(x, y, w, h)
				�� x + y * w
			end
			for y = 1, h do
				for x = 1, w do
					��[xy(x-1, y-1, w, h)+1] = ��[xy(x+ox-2, y+oy-2, 3, 3)+2]
				end
			end
		��
			w, h = 0, 0
			for k, v in ��(��) do
				��[#��+1] = v
			end
		end
		
		-- �� ��
		if not ��.��.��(1) ��
			��('Can\'t ��!')
			��
		end
		�� �� = ��.��(8)
		
		-- Put �� in ��
		�� = ��.new({�� = w, �� = h}, ��, ��, ��)
		��('Put �� in ��.')
	end
	
	if ��[��.��(��)] == nil ��
		��.��.��('��')
		��
	��
		��[��.��(��)](...)
	end
	
	��.��()
end

��.�� = ��.new()
��.��.�� = '��/see/��/�� <��/��>'
��.��.�� = ��(it)
	if it == nil ��
		��.��.��('��')
		��
	end
	
	�� sit
	if it == '��' ��
		sit = ��
	��
		sit = ��.��(~��.new(it))
	end
	
	�� �� = {}
	��.�� = ��(ii)
		��(ii)
	end
	
	if sit == nil ��
		��('�� to ��.')
		��
	�� ��(sit) == �� ��
		��.��(sit)
	end
end

��.see = ��.��
��.�� = ��.��
��.�� = ��.��

��.�� = ��.new()
��.��.�� = '�� <��/��>'
��.��.�� = ��(it)
	if it == nil ��
		��.��.��('��')
		��
	�� it == '��' ��
		if �� == nil ��
			��('�� to ��.')
			��
		��
			��.��(��)
			if ��(��) == �� ��
				�� = ��
				��('�� ��.')
			end
		end
	��
		��.��(~��.new(it))
		�� = ��
		��('�� �� to raw.')
	end
end

��.�� = ��.new()
��.��.�� = '��'
��.��.�� = ��()
	�� = nil
	��('�� ��.')
end

��.�� = ��.new()
��.��.�� = '�� <��>'
��.��.�� = ��(it)
	if it == nil ��
		��.��.��('��')
		��
	end

	�� �� = ��.��(��.new(it))
	if ��(��) == �� ��
		�� = ��
		��('�� ��.')
	�� ��(��) == �� ��
		�� = ��
		��('Raw ��.')
	��
		��('�� ��.')
	end
end

��.�� = ��.new()
��.��.�� = '�� <raw/��>'
��.��.�� = ��(��)
	�� �� = ''
	if �� == 'raw' ��
		�� = '�� of raw:\n'
		for k, v in ��(��.db) do
			�� = �� .. ��(v) .. '\n'
		end
	�� �� == '��' ��
		�� = '�� of ��:\n'
		for k, v in ��.��() do
			�� = �� .. ��(~k) .. '\n'
		end
	��
		��.��.��('��')
		��
	end
	��.��(��)
end

��.�� = ��.new()
��.��.�� = '�� <��>'
��.��.�� = ��(sl)
	��.��(��(sl))
end

��.�� = ��.new()
��.��.�� = '�� <��>'
��.��.�� = ��(it)
	�� sit
	if it ~= nil ��
		sit = ��.new(it)
	��
		��.��.��('��')
		��
	end
	
	if ��.��(sit) ~= nil ��
		if ��(��.��(sit)) ~= �� ��
			�� ��
			if ��(��.��(sit)) == �� ��
				�� = '��: ' .. ��(��.��(sit).��) .. '\n'
			end
			�� ��, �� = ��.��(sit)
			for k, v in ��(��) do
				�� = �� .. ��(v) .. '\n'
			end
			��.��(��)
		��
			��('It\'s an ��')
		end
	��
		��('Can\'t ��.')
	end
end

��.�� = ��.new()
��.��.�� = '�� <��>'
��.��.�� = ��(it)
	�� sit
	if it ~= nil ��
		sit = ��.new(it)
	��
		��.��.��('��')
		��
	end
	
	if ��.��(sit) ��
		if ��.��(sit) ��
			��('�� ��.')
		��
			��('�� � .')
		end
	��
		��('Not � � to ��.')
	end
end

��.� = ��.new()
��.�.�� = '�'
��.�.�� = ��(...)
	if ��.�() ��
		��('�.')
	��
		��('Can\'t �!')
	end
end

� �� do
	io.��:��('�>')
	�� � = ��.�	(io.��:��('*l'))
	�� �
 = ��.��(��.��(�, 1))
	if ��[�
] ~= nil ��
		��[�
].��(��.�(�))
	��
		��('�� �.')
	end
end]==],['ct.lua']= [==[�� � = ��('�')
�� fs = ��('�')

�� � = {...}
�� � = �.�(��.��(�, 1))

if not fs.�(�) ��
	if fs.�(� .. '.lua') ��
		� = � .. '.lua'
	��
		��('� not �.')
		��
	end
end

�� a, b = ��(�, ��.��, �, ��.�(�))
if not a ��
	�� f = io.�('ct.txt', 'w')
	f:��(b)
	f:�()
	��('� �.')
end]==],['ct.txt']= [==[/mnt/cf4/lib/��.lua:75: bad � #1 to '��' (�� �)
� ��:
	�:796: in �� <�:791>
	[C]: in �� '��.��'
	/mnt/cf4/lib/��.lua:75: in �� </mnt/cf4/lib/��.lua:72>
	(...� �...)
	/mnt/cf4/�.lua:297: in �  '��'
	/mnt/cf4/�.lua:403: in �! �"
	(...� �...)
	[C]: in �� '��'
	�:791: in �# '��'
	/mnt/cf4/ct.lua:16: in �! �"
	(...� �...)
	[C]: in �� '��'
	�:791: in �# '��'
	/lib/�$.lua:63: in �� </lib/�$.lua:59>]==],['db']={['crafting.db']= [==[#�%:
#'�� �& �'' '�� �& �(' 'sd=��/sl=��' 'wh' '�� ��' '�� �) �*|�+'
�,:bow 1 sd 33 �- �,:�. �,:�� 
�,:�/ 1 sd 33 �0 �,:�1 
�,:��_�� 1 sd 22 �2 �,:�1 
�,:�3_axe 1 sd 23 �4 �,:�3 �,:�. 
�,:�3_�5 1 sd 33 �4 �,:�3 �,:�. 
�,:�6 1 sd 33 �0 �,:�7 
�,:�8_�9 9 sd 00 1 �,:�8_�: 
�,:�;_axe 1 sd 23 �4 �,:�;_�: �,:�. 
�,:�;_�< 16 sd 32 �= �,:�;_�: 
�,:�;_�9 9 sd 00 1 �,:�;_�: 
�,:�;_�5 1 sd 33 �4 �,:�;_�: �,:�. 
�,:�> 3 sd 33 �? �,:�. 
�,:�@ 3 sd 31 111 �,:�A 
�,:�1|0 4 sd 00 1 �,:log|0 
�,:�. 4 sd 12 11 �,:�1 
�,:�B_axe 1 sd 23 �4 �,:�7 �,:�. 
�,:�B_�C|0 1 sd 00 1 �,:�B|0 
�,:�B_�C 1 sd 00 1 �,:�B|0 
�,:�B_�5 1 sd 33 �4 �,:�7 �,:�. 
�,:�D_�5 1 sd 33 �4 �,:�1 �,:�. 
�E:�F 1 sd 33 �G �,:�8_�: �E:�H|8 �,:�;_�< �,:�/ �E:�H|4 
�E:��|7 1 sd 32 �I �E:�H|7 �E:�H|8 �E:�H|4 
�E:��|1 1 sd 33 �G �,:�8_�9 �,:�J �E:�H|8 �E:�H|11 �E:�H|10 
�E:�K 1 sd 32 �L �E:�H|14 �E:�H|15 �E:�H|16 
�E:�H|15 1 sd 32 �2 �,:�B_�C 
�E:�H|14 1 sd 32 �= �,:�B_�C 
�E:�H|8 4 sd 33 �M �,:�8_�9 �,:�J �E:�H|6 
�E:�H|7 8 sd 33 �M �,:�;_�9 �,:�J �E:�H|6 
�E:�H|16 1 sd 33 �N �,:�B_�C 
�E:�H|6 8 sd 33 �O �,:�;_�: �,:�8_�9 �,:�@ �,:�J 
�E:�P 1 sd 33 �Q �,:�;_�: �,:�J �E:�H|7 �,:�R 
]==],['raw.db']= [==[�,:�7
�,:�3
�,:�R
�,:�8_�:
�,:�;_�:
�,:�;_�9
�,:log|0
�,:�J
�,:�A
�,:�S
�,:�B|0
�,:��
�E:�H|4
]==]},['lib']={['craftingdb.lua']= [==[�� �� = ��('lib.��.��')
�� �T = ��('lib.��.�T')
�� �� = ��('lib.��.��')

�� �� = ��('lib.��')

-- �U �V
�� �� = {
	db = {}
}

-- �U �W
�� �X = 'db/��.db'
�� ��.��()
	�� f = io.�(�X, 'r')
	�� l = f:��('*l')
	� l ~= nil do
		if (l:sub(1,1) ~= '#') and (l ~= '') ��
			�� �Y = {�� = 0, �� = 0}
			�� �� = {}
			�� �� = ��
			�� �� = {}
			�� �Z = ��.�	(l)
			�� = ��.new(�Z[1])
			��.�[ = �\(�Z[2])
			�� = (�Z[3] == 'sd')
			�Y.��, �Y.�� = �\(�Z[4]:sub(1,1)), �\(�Z[4]:sub(2,2))
			�� pat = �Z[5]
			�� � = �T.new()
			for i = 6, #�Z do
				�:add(~��.new(�Z[i]))
			end
			for �] = 1, #pat do
				��[�]] = �[�\(pat:sub(�], �]))]
			end
			��.db[��] = ��.new(�Y, ��, ��, ��)
		end
		l = f:��('*l')
	end
	f:�()
end
io.��('�^ ��... ')
��.��()
�� �_ = 0
for k, v in ��(��.db) do
	�_ = �_ + 1
end
io.�� (��.�`('%d ��.\n', �_))

�� ��.��()
	�� a = {}
	for n in ��(��.db) do ��.��(a, n) end
	��.��(a, ��(a, b) if a.�' == nil or b.�' == nil �� ��(a,b) end; �� a.�' < b.�' end)
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
	-- �%: '�� �& �'' '�� �& �(' 'sd=��/sl=��' 'wh' '�� ��' '�� �) �*|�+'
	�� f = io.�(�X, 'w')
	f:��("#�%:\n#'�� �& �'' '�� �& �(' 'sd=��/sl=��' 'wh' '�� ��' '�� �) �*|�+'\n")
	for k, v in ��.��() do
		�� �a = ��(~k)
		�� �b = ��(k.�[)
		�� �c = v and 'sd' or 'sl'
		�� dim = ��(v.�Y.��) .. ��(v.�Y.��)
		�� �d = v:�e()
		�� �f = ''
		for k, v in ��(v.��) do
			�f = �f .. �d:�g(v) or '0'
		end
		�� �h = ''
		for k, v in ��(�d) do
			�h = �h .. ��(~v) .. ' '
		end
		�h = �h:sub(1, #�h)
		f:��(�a .. ' ' .. �b .. ' ' .. �c .. ' ' .. dim .. ' ' .. �f .. ' ' .. �h .. '\n')
	end
	f:�()
end

-- �U �i
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
		�j('Can\'t add nil to ��!')
	end
	��.db[��.��] = ��
	�� ��.db[��.��]
end

�� ��.��(i)
	for k, v in ��(��.db) do
		if i:�k(k) ��
			�� tmp = ��.db[k]
			��.db[k] = nil
			�� tmp
		end
	end
	�� nil
end

�� craftingdb]==],['init.lua']= [==[-- Lib �l. Run �m.

-- �n ��
�� �o_�� = ��
�� ��(v)
	�� �p = �o_��(v)
	if �p == '��' ��
		if v.�� ~= nil ��
			�� v.��
		end
	end
	�� �p
end]==],['inventory.lua']= [==[�� ��, �� = ��(��, ��.��, '��')
if not �� ��
	��('Can\'t �� �� ��.')
	��
end

�� �� = ��('��')
if ��.��_�q == nil ��
	��('�r �� �q!')
	��
end
�� �s = ��.��_�q

�� �� = ��('lib.��.��')
�� �T = ��('lib.��.�T')

-- �U �V
�� �� = {
	�t = {},
	�[ = �u.�v(��.�w()),
	ex = {}
}

-- �U �i
�� ��.��(��)
	�� ��.��(��)
end

�� ��.��(��)
	�� t = �s.�x(��)
	if t == nil ��
		�� nil
	end
	�� ��.new(t)
end

�� ��.�y(��)
	��.�t[��] = ��.��(��)
	�� ��.�t[��]
end

�� ��.��()
	for i = 1, ��.�[ do
		��.�y(i)
	end
end
io.��('�z ��... 00')
for i = 1, ��.�[ do
	��.�y(i)
	io.��('\8\8' .. ��.�`('%02d', i))
end
io.��(' �{.\n')

�� ��.��()
	�� �� = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	for k, v in ��(��) do
		��.�y(v)
	end
end

�� ��.�|(��, �})
	for k, v in ��(�}) do
		if �� == v ��
			�� ��
		end
	end
	�� ��
end

�� ��.�~(��)
	�� ��.�|(��, {1, 2, 3, 5, 6, 7, 8, 9, 10, 11})
end

�� ��.�(��, ��)
	�� res = ��.��(��, ��)
	��.�y(��.��())
	��.�y(��)
	�� res
end

�� ��.��(i)
	�� �� = {}
	for �� = 1, ��.�[ do
		if ��.�t[��] ~= nil ��
			if i == ��.�t[��] ��
				��.��(��, ��)
			end
		end
	end
	�� ��
end

�� ��.��(i)
	�� c = 0
	for k, v in ��(��.��(i)) do
		c = c + ��.�t[v].�[
	end
	�� c
end

�� ��.��(i, ��)
	�� �� = i.�[
	�� �� = ��
	if �� == nil �� �� = �� end
	�� �� = ��.��()
	�� �� = �T.new()
	for k, v in ��(��.��(i)) do
		��:add(��.�t[v])
	end
	for k, v in ��(��) do
		if ��.��(v) >= �� ��
			for kf, vf in ��(��.��(v)) do
				 if not (�� or ��.�~(vf)) ��
					if �� > 0 ��
						��.��(vf)
						�� �� = ��.�t[vf].�[
						if not ��.�(��, ��) ��
							�� ��
						end
						�� = �� - ��
					��
						��.��(��)
						�� ��
					end
				 end
			end
			��
		end
	end
	��.��(��)
	�� ��
end

�� ��.��(��, ��, �})
	�� �� = ��.��()
	�� �� = �� or ��.�t[��].�[
	�� �� = ��
	if �� == nil �� �� = �� end
	�� �} = �} or {}
	
	-- �� � �m
	for k, v in ��(��.��(��.�t[��])) do
		if not (�� or ��.�~(v)) and not ��.�|(v, �}) ��
			�� �� = ��.�t[v]
			if ��.�[ < ��.�� ��
				�� �� = �u.min(��.�� - ��.�[, ��)
				if not ��.�(v, ��) ��
					�� ��
				end
				�� = �� - ��
				if �� == 0 ��
					�� ��
				end
			end
		end
	end
	
	-- ��, �� �� �t
	for �� = 1, ��.�[ do
		if not (�� or ��.�~(��)) and not ��.�|(��, �}) ��
			if ��.�t[��] == nil ��
				if not ��.�(��, ��) ��
					�� ��
				end
				�� ��
			end
		end
	end
	
	�� ��
end

�� ��.�()
	for k, v in ��({1, 2, 3, 5, 6, 7, 8, 9, 10, 11}) do
		if ��.�t[v] ~= nil ��
			��.��(v)
			if not ��.��(��.�t[v].�[, ��) ��
				�� ��
			end
		end
	end
	�� ��
end

�� ��.ex.��()
	�� ��.ex.��() ~= nil
end

�� ��.ex.��()
	�� ��.ex.��() ~= nil
end

�� ��.ex.��()
	�� �s.��(3)
end

�� ��.ex.��()
	�� �s.��(1)
end

�� ��.ex.��(��)
	�� t = �s.�x(3, ��)
	if t == nil ��
		�� nil
	end
	�� ��.new(t)
end

�� ��.ex.��(i, ��)
	-- ��: �� �� ��
end

�� ��.ex.��(i, ��)
	-- ��: �� �� to �� in ��
end

�� ��.ex.��(��, ��)
	-- ��: �� �� �� of �� �� in ��
end

�� ��.ex.��(��, ��)
	�� �s.��(3, ��, ��)
end

�� ��.ex.��(��, ��)
	�� �s.��(3, ��, ��)
end

�� Inventory]==],['rawdb.lua']= [==[�� �� = ��('lib.��.��')
�� �T = ��('lib.��.�T')

�� �� = ��('lib.��')

-- �U �V
�� �� = {
	db = {}
}

-- �U �W
�� �� = 'db/raw.db'

�� ��.��()
	��.��(��.db, ��(a, b) �� a.�' < b.�' end)
end

�� ��.��()
	��.db = {}
	�� f = io.�(��, 'r')
	�� l = f:��('*l')
	� l ~= nil do
		��.��(��.db, ~��.new(l))
		l = f:��('*l')
	end
	��.��()
	f:�()
end
io.��('�^ ��... ')
��.��()
�� �� = 0
for k, v in ��(��.db) do
	�� = �� + 1
end
io.��(��.�`('%d ��.\n', ��))

�� ��.��()
	��.��()
	�� f = io.�(��, 'w')
	for k, v in ��(��.db) do
		f:��(��(v) .. '\n')
	end
	f:�()
end

-- �U �i
�� ��.get(i)
	if ��(i) ~= �� ��
		�j('Can\'t �� ' .. ��(��) .. ' �� ��.')
	end
	for k, v in ��(��.db) do
		if i:�k(v) ��
			�� v
		end
	end
	�� nil
end

�� ��.has(i)
	�� ��.get(i) ~= nil
end

�� ��.add(i)
	if ��(i) ~= �� ��
		�j('Can\'t add ' .. ��(��) .. ' to ��.')
	end
	for k, v in ��(��.db) do
		if i:�k(v) ��
			�� i
		end
	end
	��.��(��.db, i)
	��.��()
	�� i
end

�� ��.��(i)
	for k, v in ��(��.db) do
		if i:�k(v) ��
			�� ��.��(��.db, k)
		end
	end
	�� nil
end

�� rawdb]==],['reset.lua']= [==[��.��['lib.��'] = nil
��.��['lib.��'] = nil
��.��['lib.��'] = nil
��.��['lib.��'] = nil
��.��['lib.��'] = nil
��.��['lib.��'] = nil
��.��['lib.��.��'] = nil
��.��['lib.��.��'] = nil
��.��['lib.��.�T'] = nil]==],['resproc.lua']= [==[�� ��, �� = ��(��, ��.��, '��')
if not �� ��
	��('Can\'t �� �� ��.')
	��
end

�� �� = ��('lib.��.��')
�� �T = ��('lib.��.�T')
�� �� = ��('lib.��')
�� �� = ��('lib.��')
�� �� = ��('lib.��.��')
�� �� = ��('lib.��')

-- �U �V
�� �� = {}

-- �U �i
�� ��.��()
	��.��()
	��.��()
end

�� ��.��()
	��.��()
	��.��()
end

�� ��.��(i)
	if ��.get(i) ~= nil ��
		�� ��.get(i)
	end
	�� nil
end

�� ��.��(it)
	if ��(it) == '��' ��
		if ��(it) ~= �� ��
			�j('Can\'t �� non-�� ��.')
		end
	��
		�j('Can\'t �� ' .. ��(it) .. '.')
	end

	�� �� = �T.new()
	�� �� = �T.new()
	
	�� �� ��(i)
		��:add(i)
		��:add(i)
	end
	
	�� �� ��(i)
		��:add(i)
	end
	
	�� �� ��(i)
		if ��:has(i) ��
			��:��(i)
			�� ��
		end
		�� ��
	end
	
	�� �� ��(i)
		if ��.has(i) ��
			��(i)
		�� ��.��(i) ~= nil ��
			for ite = 1, �u.��(i.�[ / ��.��(i).��.�[) do
				for k, v in ��(��.��(i):�e()) do
					� not ��(v) do
						��(v)
					end
				end
				��(��.��(i).��)
			end
		��
			��(i)
		end
	end
	
	��(it)
	��:��()
	��:��()
	�� ��, ��
end

�� ��.�()
	�� �� = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	for k, v in ��(��) do
		if ��.�t[v] ~= nil ��
			��.��(v)
			if not ��.��() ��
				�� ��
			end
		end
	end
end

�� ��.��(it)
	if ��.get(it) ~= nil ��
		�� ��.get(it)
	�� ��.get(it) ~= nil ��
		�� ��.get(it)
	��
		�� nil
	end
end

�� ��.��(��)
	if ��(��) == �� ��
		�� ��.set(��)
	�� ��(��) == �� ��
		�� ��.add(��)
	��
		�� nil
	end
end

�� ��.��(it)
	if ��.get(it) ~= nil ��
		�� ��.��(it)
	�� ��.get(it) ~= nil ��
		�� ��.��(it)
	��
		�� nil
	end
end

�� ��.��(��, ��)
	-- �� �� � �� �� �
	�� �� = �T.new()
	for k, v in ��(��.�t) do
		��:add(v)
	end
	if �� ~= nil ��
		��:��(��)
	end
	
	-- �� �
	�� �� = �T.new()
	��:add(��)
	
	-- �� and �� �� � �� it's ��
	� #�� ~= 0 do
		�� �� = ��.��(��, 1)
		if not ��:has(��) ��
			if (��.��(��) == nil) or ��.has(��) ��
				�� ��
			��
				��:��(��.��(��):�e() * ��.�[)
			end
		end
	end
	�� ��
end

�� ��.��(��, ��)
	-- �� �� � �� �� �
	�� �� = �T.new()
	for k, v in ��(��.�t) do
		��:add(v)
	end
	if �� ~= nil ��
		��:��(��)
	end
	
	-- �� �
	�� �� = �T.new()
	��:add(��)
	
	-- �� and �� �� � �� it's ��
	� #�� ~= 0 do
		�� �� = ��:��()
		if not ��:has(��) ��
			if (��.get(��) == nil) or ��.has(��) ��
				�� ��
			��
				��:��(��.get(��):�e())
				��:add(��.get(��).��)
			end
		��
			��:��(��)
		end
	end
	�� ��
end

�� ��.��(��)
	if ��.get(��) == nil ��
		�j('Can\'t �� ' .. ��(��) .. '.')
	end
	
	-- �� ��
	�� �� = {}
	��.��(��, ��.get(��))
	
	� #�� ~= 0 do
		�� �� = ��[#��]
		
		-- �� �� ��
		�� �� = ��
		for k, v in ��(��:�e()) do
			if ��.��(v) < v.�[ ��
				�� = ��
				if (��.get(v) == nil) or ��.has(v) ��
					��('�� 1')
					�� ��
				��
					for kc, vc in ��(��) do
						if vc == ��.get(v) ��
							��.��(��, kc)
						end
					end
					��.��(��, ��.get(v))
				end
			end
		end
		
		if �� ��
			if not ��.�() ��
				��('�� 2')
				�� ��
			end
			��('��')
			if ��.�� ��
				�� �� = {{1, 2, 3}, {5, 6, 7}, {9, 10, 11}}
				for y = 1, ��.�Y.�� do
					for x = 1, ��.�Y.�� do
						if ��.��[(y - 1) * ��.�Y.�� + x] ~= nil ��
							��.��(��[y][x])
							��.��(��.��[(y - 1) * ��.�Y.�� + x]:��(), ��)
						end
					end
				end
			��
				�� �� = {1, 2, 3, 5, 6, 7, 9, 10, 11}
				for k = 1, #��.�� do
					��.��(��[k])
					��.��(��.��[k]:��(), ��)
				end
			end
			��.��(8)
			if not ��.��.��(1) ��
				��('�� 3')
				�� ��
			end
			��.��()
			��.��(��)
		end
	end
	
	�� ��
end

�� ResProc]==],['stringlib.lua']= [==[�� �� = ��('��')
�� �� = ��('��')
if ��.gpu == nil ��
	��('�r gpu!')
	��
end
�� gpu = ��.gpu

-- �U �V
�� �� = {}

-- �U �i
�� ��.�	(s, ��)
	�� = �� or '%s'
	�� t = {}
	for str in ��.��(s, '([^'..��..']+)') do
		��.��(t, str)
	end
	�� t
end

�� ��.��(s)
	�� ��, �� = gpu.��()
	�� �� ��(str)
		�� = 1
		for i = 1, #str do
			if str:sub(i, i) == '\n' ��
				�� = �� + 1
			end
		end
		�� ��
	end
	�� �� ��(str)
		�� t = {}
		�� l = ''
		for i = 1, #str do
			if str:sub(i, i) == '\n' ��
				t[#t+1] = l
				l = ''
			�� #l == �� - 1 ��
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
		�� a - �u.�v(a / b) * b
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
			��.��('key_��', nil, 32.0)
		end
	end
	io.��('\n')
end

�� stringlib]==],['tablelib.lua']= [==[�� �� = {}

�� ��.��(t)
	-- �� ��. �� ��.
	if ��(t) ~= '��' ��
		�j('�� to �� �� �� �� ��.')
	end

	�� �� = {}
	for k, v in ��(t) do
		��[k] = v
	end
	
	�� ��
end

�� ��.��(t)
	-- �� ��. �� ��.
	if ��(t) ~= '��' ��
		�j('�� to �� �� �� �� ��.')
	end

	�� �� = {}
	for k, v in ��(t) do
		if ��(v) == '��' ��
			��[k] = ��.��(v)
		��
			��[k] = v
		end
	end
	
	�� ��
end

�� ��.��(t, ��)
	�� buf = ''
	for k, v in ��(t) do
		buf = buf .. ��(v)
		if ��(t, k) ~= nil ��
			buf = buf .. ��
		end
	end
	�� buf
end

�� tablelib]==],['type']={['crafting.lua']= [==[�� �� = ��('lib.��')
�� �� = ��('lib.��.��')
�� �T = ��('lib.��.�T')

-- �U �V
�� �� = {
	�Y = { �� = 0, �� = 0 },
	�� = {},
	�� = ��,
	�� = {}
}

-- �U �i
�� ��.new(�Y, ��, ��, ��)
	-- �� ��. �� ��.
	if (�Y == nil) or (�� == nil) or (�� == nil) ��
		�j('Can\'t �� nil ��.')
	end
	if (�Y.�� == nil) or (�Y.�� == nil) ��
		�j('�� �� �Y!')
	end
	if (��(��) ~= ��) ��
		�j('Can\'t put �� �� �� �� �� ��!')
	end
	if (��.�[ == 0) ��
		�j('Can\'t �� �� ��!')
	end
	
	�� o = {}
	��(o, ��)
	��.__�� = ��
	o.�Y = �Y
	o.�� = ��
	o.�� = ��
	o.�� = ��
	�� o
end

�� ��:�e()
	�� �� = �T.new()
	for k, v in ��(��.��) do
		if v ~= nil ��
			��:add(v:��())
		end
	end
	�� ��
end

-- ��
�� ��.__��(cr)
	�� �� = ��.�`('(%dx%d) ', cr.�Y.��, cr.�Y.��) .. (cr.�� and '�� ' or '�� ') .. ��(cr.��) .. ':\n'
	
	if cr.�� ��
		for c = 1, cr.�Y.�� * cr.�Y.�� do
			�� = �� .. ��.�`('[%d] %s\n', c, cr.��[c])
		end
	��
		for c = 1, #cr.�� do
			�� = �� .. ��.�`('[%d] %s\n', c, cr.��[c])
		end
	end
	�� = ��:sub(1, #�� - 1)
	
	�� ��
end

�� Crafting]==],['item.lua']= [==[�� �� = ��('lib.��')

-- �U �V
�� �� = {
	�' = '',
	�� = nil,
	�[ = 1,
	�� = 1
}

-- �U �i
�� ��.new(...)
	�� � = {...}
	�� i = {}
	��(i, ��)
	��.__�� = ��
	
	if ��(�[1]) == '��' ��
		if �[1] == '' ��
			�j('�� �� �'.')
		end
		i.�' = ��.�	(�[1], '|')[1]
		i.�� = �\(��.�	(�[1], '|')[2])
		i.�[ = 1
		i.�� = 1
	�� ��(�[1]) == '��' ��
		i.�' = �[1].�'
		if �[1].�� ~= nil ��
			i.�� = �u.�v(�[1].��)
		end
		i.�[ = �u.�v(�[1].�[) or 1
		i.�� = �u.�v(�[1].��) or 1
	�� #� == 0 ��
		�j('Not �� nil or �� �.')
	��
		�j('�� �� �.')
	end
	
	�� i
end

�� ��:��()
	��.�� = nil
	�� ��
end

�� ��:��()
	�� icl = ��:��()
	icl.�[ = 1
	�� icl
end

�� ��:��()
	�� ��.new(��)
end

�� ��:��(i)
	-- �� ��. �� ��.
	if ��(i) ~= �� ��
		�j('�� to �� �� ' .. ��(i) .. '.')
	end

	if ��.�� == nil ��
		�� ��.�' == i.�'
	��
		�� (��.�' == i.�') and (��.�� == i.��)
	end
end

�� ��:�k(i)
	-- �� ��. �� ��.
	if ��(i) ~= �� ��
		�j('�� to �� �� ' .. ��(i) .. '.')
	end
	
	�� (��.�' == i.�') and (��.�� == i.��)
end

-- ��
�� ��.__eq(a, b)
	-- �� ��. �� ��.
	if (��(a) ~= ��) or (��(b) ~= ��) ��
		�j(��.�`('�� to do �� �� �� �� �� ��. (%s, %s)', ��(a), ��(b)))
	end

	�� a:��(b)
end

�� ��.__add(a, b)
	-- �� ��. �� ��.
	if (��(a) ~= ��) or (��(b) ~= ��) ��
		�j('�� to do �� �� �� �� �� ��.')
	end

	�� n = a:��()
	if (a.�' == b.�') and (a.�� == b.��) and (a.�� == b.��) ��
		n.�[ = a.�[ + b.�[
	��
		�j(��.�`('Can\'t add �� �.'))
	end
	�� n
end

�� ��.__sub(a, b)
	-- �� ��. �� ��.
	if (��(a) ~= ��) and (��(b) ~= ��) ��
		�j('�� to do �� �� �� �� �� ��.')
	end

	�� n = a:��()
	if (a.�' == b.�') and (a.�� == b.��) and (a.�� == b.��) ��
		n.�[ = a.�[ - b.�[
	��
		�j('Can\'t sub �� �.')
	end
	�� n
end

�� ��.__mul(a, b)
	-- �� ��. �� ��.
	if (��(a) ~= ��) and (��(b) ~= '��') ��
		�j(��.�`('�� �� �[ ��: %s * %s.', ��(a), ��(b)))
	end
	
	�� n = a:��()
	n.�[ = n.�[ * b
	�� n
end

�� ��.__unm(a)
	�� icl = a:��()
	icl = a.�� - a.�[
	�� icl
end

�� ��.__len(a)
	�� a.�[;
end

�� ��.__��(a)
	�� �� = a.�'
	if a.�� ~= nil ��
		�� = �� .. '|' .. ��(a.��)
	end

	if a.�[ ~= 0 ��
		�� ��.�`('%d %s', a.�[, ��)
	end
	�� ��
end

�� ��.__��(a)
	�� icl = a:��()
	icl.�[ = 0
	�� icl
end

�� Item]==],['itemarray.lua']= [==[�� �� = ��('lib.��.��')

-- �U �V
�� �� = {}

-- �U �i
�� ��.new()
	�� o = {}
	��(o, ��)
	��.__�� = ��
	�� o
end

�� ��:has(i)
	for k, v in ��(��) do
		if i == v ��
			�� (i.�[ == 0) or (i.�[ <= v.�[)
		end
	end
	�� ��
end

�� ��:��(i)
	for k, v in ��(��) do
		if v:�k(i) ��
			�� v.�[ >= i.�[
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

�� ��:��(i)
	�� c = 0
	for k, v in ��(��) do
		if i == v ��
			c = c + v.�[
		end
	end
	�� c
end

�� ��:add(i)
	for k, v in ��(��) do
		if v:�k(i) ��
			��[k].�[ = ��[k].�[ + i.�[
			�� ��[k]
		end
	end
	��.��(��, i:��())
	�� i
end

�� ��:��(ia)
	if ��(ia) == '��' ��
		if ��(ia) ~= �� ��
			�j('Can\'t add non-�T ��.')
		end
	��
		�j('Can\'t add ' .. ��(ia) .. '.')
	end
	
	for k, v in ��(ia) do
		��:add(v)
	end
	�� ia
end

�� ��:��(i)
	for k, v in ��(��) do
		if i == v ��
			�� ��.��(��, k)
		end
	end
	�� nil
end

�� ��:��(i)
	for k, v in ��(��) do
		if i:�k(v) ��
			�� ��.��(��, k)
		end
	end
	�� nil
end

�� ��:��(i)
	�� �� = i:��()
	for k, v in ��(��) do
		if i == v ��
			��.�[ = v.�[ - ��.�[
			if ��.�[ < 0 ��
				��:��(v)
				��.�[ = -��.�[
			��
				v.�[ = ��.�[
				�� nil
			end
		end
	end
	�� ��
end

�� ��:pop()
	�� ��.��(��)
end

�� ��:��()
	if ��[#��].�[ <= 1 ��
		�� ��.��(��)
	��
		��[#��].�[ = ��[#��].�[ - 1
		�� ��[#��]:��()
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

�� ��:�g(i)
	for k, v in ��(��) do
		if i:�k(v) ��
			�� k
		end
	end
	�� nil
end

�� ��:��()
	��.��(��, ��(a, b) �� a.�' < b.�' end)
	�� ��
end

-- ��
�� ��.__add(a, b)
	-- �� ��. �� ��.
	if not ((��(a) == ��) or (��(a) == ��)) or not ((��(b) == ��) or (��(b) == ��)) ��
		�j('�� to add �� �  �� �� �� and ��. [' .. ��(b) .. ']')
	end
	
	�� o = ��.new()
	if (��(a) == ��) ��
		�� � = ��
		for k, v in ��(o) do
			if a:�k(v) ��
				o[k] = o[k] + a
				� = ��
				��
			end
		end
		if not � ��
			o:add(a:��())
		end
	��
		for ks, vs in ��(a) do
			�� � = ��
			for kd, vd in ��(o) do
				if vs:�k(vd) ��
					o[kd] = o[kd] + vs
				end
			end
		end
	end
	if (��(b) == ��) ��
		�� � = ��
		for k, v in ��(o) do
			if b:�k(v) ��
				o[k] = o[k] + b
				� = ��
				��
			end
		end
		if not � ��
			o:add(b:��())
		end
	��
		for ks, vs in ��(b) do
			�� � = ��
			for kd, vd in ��(o) do
				if vs:�k(vd) ��
					o[kd] = o[kd] + vs
				end
			end
		end
	end
	�� o
end

�� ��.__mul(a, b)
	-- �� ��. �� ��.
	if (��(a) ~= ��) or (��(b) ~= '��') ��
		�j(��.�`('�� �T �[ ��: %s * %s.', ��(a), ��(b)))
	end
	
	�� o = ��.new()
	for k, v in ��(a) do
		o[k] = a[k] * b
	end
	�� o
end

�� ItemArray]==]}}}

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