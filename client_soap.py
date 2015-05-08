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