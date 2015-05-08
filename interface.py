# coding: utf-8
from sys import stdin


def interface_search():
    print "Введіть базу для пошуку набором атрибутів через кому та натисніть Enter"
    string = "'" + stdin.readline()[:-1] + "'"
    print "Введіть фільтр пошуку та натисніть Enter"
    string += " '("+stdin.readline()[:-1]+"')"
    return string


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


def interface_delete():
    print "Введіть назву запису та натисніть Enter"
    return stdin.readline()


def interface_update():
    print "Введіть назву та нове значення атрибуту та натисніть Enter"
    return stdin.readline()