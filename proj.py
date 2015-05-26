# coding=utf-8
# coding: utf-8
import random

from flask import *
import time
from Task import Task
from threading import Thread


class MyApp():
    """Small class for holding flask application
    object Task()
    list of all connected clients"""
    def __init__(self):
        self.fl = Flask(__name__)
        self.task = Task()
        self.ping_lst = []
        self.st_time = time.time()
        self.delta = 0

app = MyApp()


class Ping(Thread):
    """Thread for controlling response from client at regular time intervals"""
    def __init__(self, client, time_ping):
        Thread.__init__(self)
        self.client = client
        self.__begin_ping = time_ping
        self.__end_ping = time_ping
        self.start()

    def ping(self, time_ping):
        """Set time of getting response"""
        self.__end_ping = time_ping

    def run(self):
        """Main function of thread in which at regular intervals checking response"""
        while 1:
            time.sleep(2)
            if self.__end_ping - self.__begin_ping > 3:
                break
            else:
                self.__begin_ping = self.__end_ping
                self.__end_ping += 4
        print "miss response"
        if app.task.percent() != 100:
            app.task.append_part(app.task.connected_clients[self.client])
        else:
            app.delta = time.time() - app.st_time
        del app.task.connected_clients[self.client]


@app.fl.route('/')
def index():
    """Main page"""
    return render_template("test.htm", var=random.randint(1,9999))


@app.fl.route('/task/<client_id>', methods=['GET'])
def part_task(client_id):
    """Sending task to worker"""
    try:
        app.task.connected_clients[client_id] = app.task.pop_part()
    except IndexError:
        return "null"
    return {"truck": app.task.truck,
            "shipment": app.task.connected_clients[client_id]}.__str__()


@app.fl.route('/ping/<client_id>', methods=['POST'])
def ping(client_id):
    """Get response from worker, that it's alive"""
    tmp = filter(lambda x: x.client == client_id, app.ping_lst)
    if tmp:
        tmp[0].ping(time.time())
    else:
        print "init"
        app.ping_lst.append(Ping(client_id, time.time()))
    return "null"


@app.fl.route('/log')
def log():
    """ Render log-page """
    return render_template('log.html',
                               clients=app.task.connected_clients.__len__(),
                               percent=app.task.percent(),
                               n=app.task.result,
                               delta = app.delta)


@app.fl.route('/return-result/<client_id>', methods=['POST'])
def return_result(client_id):
    """Receive result from worker"""
    app.task.result += int(request.form['result'])
    return 'Null'


if __name__ == '__main__':
    app.fl.run(host='0.0.0.0')
