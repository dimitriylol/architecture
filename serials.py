# coding: utf-8

import sys
import urllib
import re
import time
import gevent
from HTMLParser import HTMLParser
import gevent.monkey
gevent.monkey.patch_socket()

reload(sys)
sys.setdefaultencoding('utf8')


def get_list_url(name_file_xml, openfile=open):
    # with openfile(name_file_xml,'r') as f:
    #     f = f.read()
    somefile = openfile(name_file_xml, 'r')
    f = somefile.read()
    p = re.compile(r'http://\w[-.\w]*\w.\w[/\w-]*\.?\w*')
    somefile.close()
    return p.findall(f)


def url_to_html(page_name):
    return urllib.urlopen(page_name).read()


def type_time(line):
    p = re.compile('\d\d:\d\d')
    if p.match(line):
        return True
    return False


def new_line(line):
    p = re.compile('\\r\\n')
    if p.match(line):
        return True
    return False


def in_slot(line, begin_time, end_time):
    serials_time = time.strptime(line, "%H:%M")
    if begin_time <= serials_time <= end_time:
        return True
    return False


def dict_suitable_show(title, show_time):
    my_dict = {}
    for elem_title, elem_show_time in zip(title, show_time):
        my_dict[elem_title] = elem_show_time
    return my_dict


class SerialHTMLParser(HTMLParser):
    def __init__(self, beg_time, end_time):
        HTMLParser.__init__(self)
        self.beg_time = time.strptime(beg_time, "%H:%M")
        self.end_time = time.strptime(end_time, "%H:%M")
        self.time_list = []
        self.find = False
        self.titles_list = []

    def handle_data(self, data):
        if self.find:
            if new_line(data):
                return
            else:
                self.titles_list.append(data)
                self.find = False
        if type_time(data) and in_slot(data, self.beg_time, self.end_time) \
                and data not in self.time_list:
            self.time_list.append(data)
            self.find = True


def parse_html(page_name, beg_time, end_time, url_html=url_to_html):
    html_page = url_html(page_name)
    parser = SerialHTMLParser(beg_time, end_time)
    parser.feed(html_page)
    return dict_suitable_show(parser.titles_list, parser.time_list)


def to_xml_file(list_dict_program):
    i = 1
    teg_open = "<program"
    teg_close = "</program"
    f = open('lab1res.xml', "w")
    f.write('<?xml version="1.0" encoding="UTF-8"?>\n<schedule>\n')
    for dictionary in list_dict_program:
        for item in dictionary:
            f.write(teg_open + str(i) + '>' + str(item) + ' - ' +
                    dictionary[item] + teg_close + str(i) + '>' + '\n')
            i += 1
    f.write('</schedule>')
    f.close()
    return True


def sync_main_function(name_xml, begin_time, end_time):
    start_sync = time.time()
    result = []
    for url in get_list_url(name_xml):
        result.append(parse_html(url, begin_time, end_time))
    to_xml_file(result)
    return time.time() - start_sync


def async_main_function(name_xml, begin_time, end_time):
    start_async = time.time()
    threads = []
    result = []
    for url in get_list_url(name_xml):
        threads.append(gevent.spawn(parse_html, url, begin_time, end_time))
    gevent.joinall(threads)
    for result_parsing in threads:
        result.append(result_parsing.value)
    to_xml_file(result)
    return time.time() - start_async

if sys.argv[1] == "sync":
    print "Synchronous:"
    print sync_main_function("lab1.xml", "10:00", "11:00")
elif sys.argv[1] == "async":
    print "Asynchronous:"
    print async_main_function("lab1.xml", "10:00", "11:00")
elif sys.argv[1]:
    print "wrong parameter"