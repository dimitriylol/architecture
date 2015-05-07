# coding: utf-8

import shlex, subprocess
from sys import stdin


def dn_pass():
    dn = "'cn="
    print "Введіть  ваш Обліковий запис та натисніть Enter"
    dn += stdin.readline()[:-1]+","
    print "Введіть  ваш домен та натисніть Enter"
    dn += reduce(lambda x, y: x+y, map(lambda dc: "dc="+dc+",", stdin.readline().split(".")))[:-2] + "'"
    print "Введіть  ваш пароль та натисніть Enter"
    dn += " -w " + stdin.readline()[:-1]
    return dn


def split_to_dict(string):
    elements = string.split(":")
    if elements.__len__() != 1:
        return {elements[0]: elements[1]}


def search():
    print "Введіть базу для пошуку набором атрибутів через кому та натисніть Enter"
    string = "'" + stdin.readline()[:-1] + "'"
    print "Введіть фільтр пошуку та натисніть Enter"
    string += " '("+stdin.readline()[:-1]+"')"
    return string


def read():
    command = "ldapsearch -LLL -x -b "
    try:
        response = subprocess.check_output(shlex.split(command + search()))
    except subprocess.CalledProcessError:
        response = [{'ERROR': None}]
    if type(response) is str:
        response = map(split_to_dict, response.split("\n"))
        # return map(split_to_dict, response.split("\n"))
    print response
    return response


# class LdapCreate(Ldap):
#     def __init__(self):
#         self.command = "ldapadd -f add.ldif -x -D "
#         self.arguments()
#
#     def run(self):
#         response = subprocess.check_call(shlex.split(self.command + self.D + " " + self.password))
#         return response


# print subprocess.check_call(shlex.split("ldapsearch -x -b 'cn=Manager,dc=example,dc=com' '(objectClass=*)'"))
tmp = read()
