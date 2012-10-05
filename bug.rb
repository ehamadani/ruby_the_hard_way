require 'rubygems'
require 'net/https'
require 'json'
require 'uri'

access_token = 'kKt9fmPfLVm61SrTJsx2g'


base_url = 'www.yammer.com'
port = 443
  
yammer_api = Net::HTTP.new(base_url, port) #create the connection to Yammer API / new class making new HTTP calls!!! 
yammer_api.verify_mode = OpenSSL::SSL::VERIFY_NONE
yammer_api.use_ssl = true # Enable SSL

topic1 = "this is a test"
topic = URI.escape(topic1, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
response = yammer_api.delete("https://www.yammer.com/api/v1/messages/172108065/access_token=#{access_token}&topic=#{topic1}", nil)