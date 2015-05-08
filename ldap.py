# coding: utf-8

import shlex
import subprocess
from sys import stdin
import os


def interface_account():
    dn = "'cn="
    print "Введіть ваш Обліковий запис та натисніть Enter"
    dn += stdin.readline()[:-1]+","
    print "Введіть ваш домен та натисніть Enter"
    dn += reduce(lambda x, y: x+y, map(lambda dc: "dc="+dc+",", stdin.readline().split(".")))[:-2] + "'"
    print "Введіть ваш пароль та натисніть Enter"
    dn += " -w " + stdin.readline()[:-1]
    return dn


def interface_add():
    print "Введіть запис, який ви хочете додати та завершити пустим рядком"
    a = ""
    while 1:
        tmp = stdin.readline()
        if tmp != "\n":
            a += tmp
        else:
            break
    return a


def interface_search():
    print "Введіть базу для пошуку набором атрибутів через кому та натисніть Enter"
    string = "'" + stdin.readline()[:-1] + "'"
    print "Введіть фільтр пошуку та натисніть Enter"
    string += " '("+stdin.readline()[:-1]+"')"
    return string


def interface_delete():
    print "Введіть назву запису та натисніть Enter"
    return stdin.readline()


def interface_update():
    print "Введіть назву та нове значення атрибуту та натисніть Enter"
    return stdin.readline()


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
    command = "ldapadd -f add.ldif -x -D "+"'cn=Manager,dc=example,dc=com' -w secret"
    return helper("dn: " + record_to_add, command)


def update(record_to_update, new_value, account):
    str_ldif = "dn: " + record_to_update + "changetype: modify\n" + \
               "replace: " + new_value.split(":")[0] + "\n" + new_value
    command = "ldapadd -f add.ldif -x -D "+"'cn=Manager,dc=example,dc=com' -w secret"
    return helper(str_ldif, command)


def delete(record_to_delete, account):
    str_ldif = "dn: "+record_to_delete+"changetype: delete"
    command = "ldapadd -f add.ldif -x -D "+"'cn=Manager,dc=example,dc=com' -w secret"
    return helper(str_ldif, command)


# tmp = read(interface_search())
# tmp = create(interface_add(), "")
# tmp = update(interface_delete(),interface_update(),"")
# tmp = delete(interface_delete(), "")
# print "message is ", tmp
