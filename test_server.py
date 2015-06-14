import unittest
from mock import *
from client_soap import *


class ServerTestCase(unittest.TestCase):
    def setUp(self):
        print "test begin"

    def tearDown(self):
        print "test done"

    def test_Create(self):
        record = "test"
        acc = "'cn=test,dc=test' -w test"
        client.Create = MagicMock()
        client.Create(record_to_add=interface_add(lambda: "test"),
                            account=interface_account(lambda: "test "))
        client.Create.assert_called_once_with(record_to_add=record,
                                              account=acc)
        del client.Create

    def test_Read(self):
        record = "'test' '(test)'"
        client.Read = MagicMock()
        client.Read(base_and_filter=interface_search(lambda: "test "))
        client.Read.assert_called_once_with(base_and_filter=record)

    def test_Update(self):
        record = "test"
        value = "test"
        acc = "'cn=test,dc=test' -w test"
        client.Update = MagicMock()
        client.Update(record_to_update=interface_delete(lambda: "test"),
                      new_value=interface_update(lambda: "test"),
                      account=interface_account(lambda: "test "))
        client.Update.assert_called_once_with(record_to_update=record,
                                              new_value=value,
                                              account=acc)

    def test_Delete(self):
        record = "test"
        acc = "'cn=test,dc=test' -w test"
        client.Delete = MagicMock()
        client.Delete(record_to_delete=interface_delete(lambda: "test"),
                      account=interface_account(lambda: "test "))
        client.Delete.assert_called_once_with(record_to_delete=record,
                                              account=acc)


