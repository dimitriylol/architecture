import random



def generate_shipment(num, num_shipment):
    res = []
    for i in xrange(num_shipment):
        res.append([random.randint(1, 10) for x in xrange(i*num, (i+1)*num)])
    return res


class Task():
    """Class for handling task by variant """
    def __init__(self):
        self.__n = 20
        self.__shipment = generate_shipment(500, self.__n)
        self.__truck = 25
        self.__result = 0
        self.__connected_clients = {}

    @property
    def truck(self):
        return self.__truck

    @property
    def result(self):
        return self.__result

    @result.setter
    def result(self, val):
        self.__result = val

    @property
    def connected_clients(self):
        return self.__connected_clients

    @connected_clients.setter
    def connected_clients(self, value):
        self.__connected_clients = value

    def pop_part(self):
        return self.__shipment.pop()

    def append_part(self, lst):
        return self.__shipment.append(lst)

    def percent(self):
        return 100 - 100*len(self.__shipment)/self.__n
