$: << File.join(File.dirname(__FILE__), "/../lib") 
require 'spec' 
require 'mashup_service'
require 'computer_information_service'
require 'software_management_service'
require 'package_information_service'
require 'user_information_service'
require 'fakeweb'
# Force all requests in the test environment through here
FakeWeb.allow_net_connect = false

def empty_stub(method,url, return_value={})
  FakeWeb.register_uri(method, url, :body =>return_value.to_json, :content_type => "text/plain")
end
