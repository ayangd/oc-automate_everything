def findAlnums(s):
    alnums = []
    resolved = ''
    i = 0
    while i < len(s):
        if (resolved + s[i]).isalnum():
            resolved += s[i]
        else:
            if len(resolved) > 8:
                if resolved not in alnums:
                    alnums.append(resolved)
            resolved = ''
        i += 1
    return alnums

def compress(s, an):
    buffer = b''
    resolved = ''
    i = 0
    while i < len(s):
        if (resolved + s[i]).isalnum():
            resolved += s[i]
        else:
            if len(resolved) > 8:
                if resolved in an:
                    buffer += (an.index(resolved) + 0xf000).to_bytes(2,'big')
                    resolved = ''
            buffer += resolved.encode()
            resolved = ''
        i += 1
    return buffer

def tryy(fin, fout):
    sfin = open(fin, 'r')
    sfout = open(fout, 'wb')
    s = sfin.read()
    an = findAlnums(s)
    comp = compress(s, an)
    sfout.write(comp)
    sfin.close()
    sfout.close()
    return len(s), len(an), len(comp)
