require 'rubygems'
require 'net/https'
require 'json'
require 'uri'

access_token = 'kKt9fmPfLVm61SrTJsx2g'

base_url = 'www.yammer.com'
port = 443
found = false

yammer_api = Net::HTTP.new(base_url, port) #create the connection to Yammer API
yammer_api.verify_mode = OpenSSL::SSL::VERIFY_NONE
yammer_api.use_ssl = true # Enable SSL

email_raw = "ehamadani+10992991929@essieqa.com"
email = URI.escape(email_raw, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))

puts response

if r['email'] == email_raw
  found = true
  
end
  
  
if found == false
  response = yammer_api.post("https://www.yammer.com/api/v1/users.json?access_token=#{access_token}&email=#{email}", nil)
else # would be for true case 
  puts "That user already exists"
end