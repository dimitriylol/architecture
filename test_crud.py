import unittest
from ldap import *


class CrudTest(unittest.TestCase):
    def setUp(self):
        self.acc = "'cn=Manager,dc=example,dc=com' -w secret"
        delete("cn=testcreate,dc=example,dc=com\n", self.acc)

    def test_create(self):
        record = """dn: cn=testcreate,dc=example,dc=com
objectClass: person
sn: sometest
cn: testcreate"""
        name = '"cn=testcreate,dc=example,dc=com"'
        self.assertEqual("adding new entry " + name, create(record, self.acc))

    def test_read(self):
        record = """dn: cn=testread,dc=example,dc=com
objectClass: person
sn: sometest
cn: testread"""
        name = '"cn=testread,dc=example,dc=com"'
        delete("cn=testread,dc=example,dc=com\n", self.acc)
        create(record, self.acc)
        self.assertEqual(record, read(name + " '(objectclass=*)'"))

    def test_update(self):
        self.assertEqual('modifying entry "cn=testread,dc=example,dc=com"',
                         update("cn=testread,dc=example,dc=com\n", "sn: testupdate\n", self.acc))

    def test_delete(self):
        self.assertEqual('deleting entry "cn=testread,dc=example,dc=com"',
                         delete("cn=testread,dc=example,dc=com\n", self.acc))
