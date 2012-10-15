require 'rubygems'
require 'net/https'
require 'json'
require 'open-uri'

ARGV.each do|a|
  puts "Argument: #{a}"
end

base_url = 'www.yammer.com'
port = 443
access_token = "UqM9tvECgDSh9mawkcrA"

# Create connection and authentication for deleting messages

connection = Net::HTTP.new(base_url, port) # Create the connection to Yammer API
connection.use_ssl = true # Enable SSL
page = 1
 
current_result = ["not empty"] # the fact of having text in makes not empty (you can put anything variable)
# current result is the page of results

while not current_result.empty? # while this is not true keep iterating thru the while loop
    url = "https://www.yammer.com/api/v1/users.json?page=#{page}&access_token=#{access_token}"
    puts url
    puts page

    response = connection.get(url) # get the response from this URL (will have headers etc.)

    current_result = JSON.parse(response.body) # take the body of the response and parse it > converting to a Json object and put it into Current Result
    p current_result
    page = page + 1
    sleep 1

#    if current_result.empty? # if it runs and finds it empty it will print out "Its empty" and exit the while loop
#        puts "It's empty!"
#    else
#
#        current_result.each { |r| # for every object inside of current_result we call it R > we pull the information from it. Consuder R is a person... R has all the prooperties defined by Yammer 
#            if r['mugshot_url_template'] == 'https://mug0.assets-yammer.com/mugshot/images/{width}x{height}/no_photo.png' # left side of the hash map "mugshot_url_template"
#                puts 'The user ' + r['first_name'] + ' ' + r['last_name'] + ' has no profile pic'
#            else
#                profilepic = r['first_name'] + r['last_name'] + ".gif" # profilepic <variable> 
#                profile_48 = r['mugshot_url'] # the default url is 48x48 pxls  > variable 
#                # puts profilepic
#
#                profile_100 = profile_48.sub("48x48","100x100") # defining a new variable > calling method on the old variable called .sub (subsitiion / substring) > search for 48 x 48 it replaces it by 100 x 100 = look at the url {width}x{height}/no_photo.png
#
#                profile_dest = "./profilepics/" + profilepic # defining variable > mapping the directory > name of the essiehamani.gif 
#
#                # puts profile_100
#
#                open(profile_dest, "wb")  do |file| # open is a method > 2 arguments are made w/n the method and Writing Binary > creating a temporary vaariable thats named file > Study "Do"
#                    file << open(profile_100).read # variable > open and reading profile_100 (url) > dumping it to a file 
#                end
#            end
#        }
#    end
end

