# coding: utf-8

import shlex
import subprocess
import os


def call_command(command_str):
    try:
        response = subprocess.check_output(shlex.split(command_str))
    except subprocess.CalledProcessError as e:
        response = 'Error'
    return response


def helper(str_ldif, str_command):
    with open('add.ldif', 'w') as f:
        f.write(str_ldif)
    response = call_command(str_command)
    os.remove('add.ldif')
    return response


def read(base_and_filter):
    return call_command("ldapsearch -LLL -x -b "+base_and_filter)


def create(record_to_add, account):
    command = "ldapadd -f add.ldif -x -D " + account
    return helper(record_to_add, command)


def update(record_to_update, new_value, account):
    str_ldif = "dn: " + record_to_update + "changetype: modify\n" + \
               "replace: " + new_value.split(":")[0] + "\n" + new_value
    command = "ldapadd -f add.ldif -x -D "+"'cn=Manager,dc=example,dc=com' -w secret"
    return helper(str_ldif, command)


def delete(record_to_delete, account):
    str_ldif = "dn: " + record_to_delete + "changetype: delete"
    command = "ldapadd -f add.ldif -x -D " + account
    return helper(str_ldif, command)


# tmp = read(interface_search())
# tmp = create(interface_add(), "")
# tmp = update(interface_delete(),interface_update(),"")
# tmp = delete(interface_delete(), "")
# print "message is ", tmp
