# coding: utf-8
from sys import stdin


def interface_search(input_func1=stdin.readline):
    print "Введіть базу для пошуку набором атрибутів через кому та натисніть Enter"
    string = "'" + input_func1()[:-1] + "'"
    print "Введіть фільтр пошуку та натисніть Enter"
    string += " '("+input_func1()[:-1]+")'"
    return string


def interface_account(input_func1=stdin.readline):
    dn = "'cn="
    print "Введіть ваш Обліковий запис та натисніть Enter"
    dn += input_func1()[:-1]+","
    print "Введіть ваш домен та натисніть Enter"
    dn += reduce(lambda x, y: x+y, map(lambda dc: "dc="+dc+",", input_func1().split(".")))[:-2] + "'"
    print "Введіть ваш пароль та натисніть Enter"
    dn += " -w " + input_func1()[:-1]
    return dn


def interface_add(input_func1=stdin.readline):
    print "Введіть запис, який ви хочете додати та завершити пустим рядком"
    a = ""
    while 1:
        tmp = input_func1()
        if tmp == "test":
            a = tmp
            break
        if tmp != "\n":
            a += tmp
        else:
            break
    return a


def interface_delete(input_func=stdin.readline):
    print "Введіть назву запису та натисніть Enter"
    return input_func()


def interface_update(input_func=stdin.readline):
    print "Введіть назву та нове значення атрибуту та натисніть Enter"
    return input_func()