first, second, third = ARGV

puts "The script is called: #{$0}" # this is automatically filled in with the name of the script - is this called an argument? 
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

# ARGV is in all caps because its a constant, meaning you should't change the value once its been assigned.
# It just says "Take whatever is in ARGV, unpack it, and assign it to all of these varailes on the left in order"
