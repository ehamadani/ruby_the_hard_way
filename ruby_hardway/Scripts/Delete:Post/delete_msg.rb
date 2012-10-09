require 'rubygems'
require 'net/https'
require 'json'
require 'uri'

access_token = 'kKt9fmPfLVm61SrTJsx2g'

base_url = 'www.yammer.com'
port = 443

yammer_api = Net::HTTP.new(base_url, port) #create the connection to Yammer API
yammer_api.verify_mode = OpenSSL::SSL::VERIFY_NONE
yammer_api.use_ssl = true # Enable SSL

body_raw = "Hey guys We are learning some stuff."
body = URI.escape(body_raw, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
response = yammer_api.post("https://www.yammer.com/api/v1/messages.json?access_token=#{access_token}%body=#{body}", nil)

response = yammer_api.delete("https://www.yammer.com/api/v1/messages/170868422.json?access_token=#{access_token}", nil) #170868422 make sure to change this to the correct id
# this is for a Thread Starter > in More drop Down > View Conversation. 
# response = yammer_api.delete("https://www.yammer.com/api/v1/messages/166612343.json?access_token=#{access_token}") 
# this is for a Thread Starter > in More drop Down > View Conversation. 
puts body
puts response

