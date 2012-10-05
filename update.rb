require 'rubygems'
require 'net/https'
require 'json'
require 'uri'

access_token = 'kKt9fmPfLVm61SrTJsx2g'

base_url = 'www.yammer.com'
port = 443

payload = "Essie"

yammer_api = Net::HTTP.new(base_url, port) #create the connection to Yammer API
yammer_api.verify_mode = OpenSSL::SSL::VERIFY_NONE
yammer_api.use_ssl = true # Enable SSL

response = yammer_api.put("https://www.yammer.com/api/v1/users/9817658.json?access_token=#{access_token}&full_name=Essie%20Hamadani", payload, 

{
  "Content-Type" => "application/json",
  "Content-Length" => payload.length.to_s
})


puts response
puts payload.length.to_s

