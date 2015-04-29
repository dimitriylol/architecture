import proj
import unittest


def reset_test():
    proj.app.task._Task__shipment = [[5, 5]]
    proj.app.task._Task__truck = 10


class ProjectTestCase(unittest.TestCase):
    def setUp(self):
        proj.app.fl.config['TESTING'] = True
        reset_test()
        self.app = proj.app.fl.test_client()

    def tearDown(self):
        pass

    def test_get_task(self):
        part_task = self.app.get('/task/1')
        self.assertEqual(part_task.data, {"truck": 10, "shipment": [5, 5]}.__str__())

    def test_pop_from_shipment(self):
        reset_test()
        self.app.get('/task/1')
        self.assertEqual(proj.app.task._Task__shipment, [])

    def test_percent(self):
        reset_test()
        self.app.get('/task/1')
        self.assertEqual(100,proj.app.task.percent())

    def test_dict_client(self):
        reset_test()
        self.app.get('/task/1')
        self.assertEqual(proj.app.task.connected_clients['1'], [5, 5])

    def test_get_result(self):
        res = self.app.post('/return-result/1', data={'result': '1'})
        self.assertEqual(1, proj.app.task.result)


if __name__ == '__main__':
    unittest.main()