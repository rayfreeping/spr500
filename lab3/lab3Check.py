#!/usr/bin/env python3
import os

def get_name2ip(textfile):
    ''' get user info mapping to network number 
    
    textfile is the name of the mapping file, which maps network number to user_id, etc.
    e.g. file name "name2ip.txt"
         1st line: (column name)
                   network_number,
                   user_id,
                   stud_id,
                   last_name,
                   first_name
         2nd line onward: data line

    return data dictionay from data in the name2ip.txt

    stud_infos = { user_id: { "network_number": nn_value, "user_id": ui_value,
                              "stud_id": si_value, "last_name": ln_value, 
                              "first_name": fn_value}
'''

    n2ip = open(textfile)
    lines = n2ip.readlines()
    n2ip.close()

    stud_infos = {}
    header = lines[0] # first line is column heading
    users = lines[1:] # from 2nd line is user data
    heads = header.strip().split()

    for user in users:
        user_info  = user.strip().split()
        user_dict = {}
        for i in range(0,len(heads)):
            user_dict[heads[i]] = user_info[i] 
        stud_infos[user_info[0]] = user_dict
    
    return stud_infos

if __name__ == '__main__':
    textfile = 'name2ip.txt'
    map_info = get_name2ip(textfile)
    for item in map_info:
        print(item,'-->',map_info[item])

