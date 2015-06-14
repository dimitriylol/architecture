# coding: utf-8
from pysimplesoap.client import SoapClient, SoapFault
from interface import *


# create a simple consumer
client = SoapClient(
    location = "http://localhost:8000/",
    action = 'http://localhost:8000/', # SOAPAction
    namespace = "http://example.com/sample.wsdl",
    soap_ns='soap',
    # trace = True,
    ns = False)

choose = 0
if __name__ == '__main__':
    while 1:
        print "Введіть від 1 до 5\n 1. Create \n 2. Read \n 3. Update \n 4. Delete \n 5. Exit"
        try:
            choose = int(stdin.readline())
        except ValueError:
            print "Вводьте лише числа"
            continue
        if choose == 1:
            print client.Create(record_to_add=interface_add(), account=interface_account()).CreateResult
        elif choose == 2:
            print client.Read(base_and_filter=interface_search()).ReadResult
        elif choose == 3:
            print client.Update(record_to_update=interface_delete(), new_value=interface_update(),
                                account=interface_account()).UpdateResult
        elif choose == 4:
            print client.Delete(record_to_delete=interface_delete(), account=interface_account()).DeleteResult
        elif choose == 5:
            break
        else:
            print "Неправильно введене число"
# call the remote method
# response = client.Read(base_and_filter=interface_search())
# extract and convert the returned value
# print response.ReadResult

# response = client.Create(record_to_add=interface_add(), account=interface_account())
# print response.CreateResult

# response = client.Delete(record_to_delete=interface_delete(), account=interface_account())
# print response.DeleteResult

# response = client.Update(record_to_update=interface_delete(), new_value=interface_update(),
#                          account=interface_account())
# print response.UpdateResult