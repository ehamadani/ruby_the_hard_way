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

email_raw = "ehamadani+988888@essieqa.com"
email = URI.escape(email_raw, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
response = yammer_api.post("https://www.yammer.com/api/v1/users.json?access_token=#{access_token}&email=#{email}", nil)