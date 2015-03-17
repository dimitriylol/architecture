# coding: utf-8
__author__ = 'dimitriy'

from serials.serials import *
import unittest
import time
import StringIO


class TestFunction (unittest.TestCase):

    def test_get_list_url(self):
        self.assertSequenceEqual(get_list_url("<url>http://www.google.com</url> <url1> http://docs.python.org </url1>",
                                              lambda x, y: StringIO.StringIO(x)),
                                 ["http://www.google.com", "http://docs.python.org"], "fail get list url", list)

    def test_type_time(self):
        self.assertTrue(type_time("12:12"),"fail type time")

    def test_new_line(self):
        self.assertTrue(new_line("\r\n   "), "fail checking new line")

    def test_in_slot(self):
        self.assertTrue(in_slot("14:14", time.strptime("13:00", "%H:%M"), time.strptime("15:00", "%H:%M")),
                        "fail checking time in time slot")

    def test_dict_suitable_show(self):
        list1 = ["abc", "def", "xyz"]
        list2 = ["10", "20", "30"]
        dictionary = {"abc": "10", "def": "20", "xyz": "30"}
        self.assertDictEqual(dict_suitable_show(list1,list2), dictionary, "fail building dictionary")

    def test_data_analyze(self):
        test = SerialHTMLParser("10:00", "12:00")
        test.handle_data("10:20")
        self.assertEqual(test.time_list, ["10:20"], "fail appending in member class time_list")
        self.assertTrue(test.find, "fail changing flag in status found")
        test.handle_data("some title")
        self.assertEqual(test.titles_list, ["some title"], "fail appending in member class titles_list")
        self.assertFalse(test.find, "fail changing flag in status not found")

    def test_parse_html(self):
        self.assertDictEqual(parse_html("<time>10:20</time><name>Сериал</name>", "10:00", "11:00",
                                        lambda x: x), {"Сериал": "10:20"}, "fail parsing html file")

    def test_to_xml_file(self):
        self.assertTrue(to_xml_file([{"Сериал": "10:20"}]), "fail run to_xml_file")
        res = '<?xml version="1.0" encoding="UTF-8"?>\n<schedule>\n<program1>Сериал - 10:20</program1>\n</schedule>'
        with open("lab1res.xml", "r") as f:
            f = f.read()
        self.assertEqual(res, f, "fail writing to xml")

    def test_main(self):
        self.assertIsInstance(sync_main_function("lab1.xml", "10:00", "11:00"), float, "fail main sync")
        self.assertIsInstance(async_main_function("lab1.xml", "10:00", "11:00"), float, "fail main async")
