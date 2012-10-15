require 'rubygems'
require 'net/https'
require 'json'
require 'uri'

access_token = 'kKt9fmPfLVm61SrTJsx2g'

base_url = 'www.yammer.com'
port = 443

connection = Net::HTTP.new(base_url, port) # Create the connection to Yammer API
connection.use_ssl = true # Enable SSL

email = "ehamadani@essieqa.com" 
# email = URI.escape(email_raw, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
url = "https://www.yammer.com/api/v1/users/by_email.json?access_token=#{access_token}&email=#{email}"
#response = yammer_api.get("https://www.yammer.com/api/v1/users/by_email.json?access_token=#{access_token}&email=#{email}", nil)
response = connection.get(url) # get the response from this URL (will have headers etc.)
puts response
