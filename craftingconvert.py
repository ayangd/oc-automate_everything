fi = open('crafting.db', 'r')
fo = open('craftingr.db', 'w')

lines = fi.readlines()
for line in lines:
	if (not line == '') or (not line[1] == '#'):
		if line[1] == '#':
			fo.write(line)
		else:
			l = line[:-1].split(' ')
			arr = l[:4] + l[-1:] + l[4:-1]
			fo.write(' '.join(arr) + '\n')
			print(' '.join(arr))

fi.close()
fo.close()
print('Done.')
