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

body_raw = "This is another test in my pants."
topic = "RealTest" #name
body = URI.escape(body_raw, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
response = yammer_api.post("https://www.yammer.com/api/v1/messages.json?access_token=#{access_token}&body=#{body}&topic1=#{topic}", nil)

#response = yammer_api.delete("https://www.yammer.com/api/v1/messages/132864979.json?access_token=#{access_token}"

puts body
puts response

