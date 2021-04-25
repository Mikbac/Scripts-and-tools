# -*- coding: utf-8 -*-
import sys

#
# cat pl.dic | python3 slimDictionary.py > slim_pl.dic
#

chars = ['ą', 'Ą', 'ć', 'Ć', 'ę', 'Ę', 'ł', 'Ł', 'ń', 'Ń', 'ó', 'Ó', 'ś', 'Ś', 'ź', 'Ż', 'ż', 'Ź']

for line in sys.stdin:
	isPrint = True
	for c in chars:
		if c in line:
			isPrint = False

	if isPrint:
		print(line.lower(), end='')
