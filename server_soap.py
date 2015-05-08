from pysimplesoap.server import SoapDispatcher, SOAPHandler
from BaseHTTPServer import HTTPServer
from ldap import *

dispatcher = SoapDispatcher(
    'my_dispatcher',
    location = "http://localhost:8000/",
    action = 'http://localhost:8000/', # SOAPAction
    namespace = "http://example.com/sample.wsdl", prefix="ns0",
    trace = True,
    ns = True)


dispatcher.register_function('Read', read, returns={'ReadResult': str}, args={'base_and_filter': str})

dispatcher.register_function('Create', create, returns={'CreateResult': str},
                             args={'record_to_add': str, 'account': str})

dispatcher.register_function('Update', update, returns={'UpdateResult': str},
                             args={'record_to_update': str, 'new_value': str, 'account': str})

dispatcher.register_function('Delete', delete, returns={'DeleteResult': str},
                             args={'record_to_delete': str, 'account': str})



print "Starting server..."
httpd = HTTPServer(("", 8000), SOAPHandler)
httpd.dispatcher = dispatcher
httpd.serve_forever()