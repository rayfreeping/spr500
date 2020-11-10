#!/usr/bin/env python3
n2ip = open('name2ip.txt')
all_records = n2ip.readlines()
n2ip.close()
for temp in all_records:
    rec = temp.strip().split()
    for field in rec:
        print('Field:',field)

