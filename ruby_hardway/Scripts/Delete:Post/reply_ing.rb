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

body_raw = "All This What is."
body = URI.escape(body_raw, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
response = yammer_api.post("https://www.yammer.com/api/v1/messages.json?access_token=#{access_token}&body=#{body}", nil)

# p response.body

message_info = JSON.parse(response.body)
first_message_id = message_info["messages"][0]["id"]
# this is for a Thread Starter > in More drop Down > View Conversation. 

# p message_id

body_raw_2 = "This is a test"
body = URI.escape(body_raw_2, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
response = yammer_api.post("https://www.yammer.com/api/v1/messages.json?access_token=#{access_token}&replied_to_id=#{first_message_id}&body=#{body}", nil)

p JSON.methods

message_info = JSON.parse(response.body)
second_message_id = message_info["messages"][0]["id"]

sleep (5)
response = yammer_api.delete("https://www.yammer.com/api/v1/messages/#{first_message_id}?access_token=#{access_token}", nil)

sleep (10)
response = yammer_api.delete("https://www.yammer.com/api/v1/messages/#{second_message_id}?access_token=#{access_token}", nil)






# 
# get = https://www.yammer.com/api/v1/messages.json




# reponse = yammer_api.delete("https://www.yammer.com/api/v1/messages/#{body}", nil) 

# puts body
# puts response

