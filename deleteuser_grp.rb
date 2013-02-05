require 'rubygems'
require 'net/https'
require 'json'
require 'uri'

access_token = 'kKt9fmPfLVm61SrTJsx2g'

base_url = 'www.yammer.com'
port = 443
# groupID = "829319"
#email = URI.escape("essietest@essieqa.com", Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))

yammer_api = Net::HTTP.new(base_url, port) #create the connection to Yammer API
yammer_api.verify_mode = OpenSSL::SSL::VERIFY_NONE
yammer_api.use_ssl = true # Enable SSL

response = yammer_api.delete("https://www.yammer.com/api/v1/group_memberships/812413.json")

parse_response = JSON.parse(response.body)
# puts parse_response[0]["id"]