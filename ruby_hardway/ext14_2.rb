user_firstname = ARGV.first
user_lastname = ARGV.last

prompt = "#{$0} >>" # for this to work as a string interpolation it needs to have doouble quotes 

puts "Hi #{user_firstname} #{user_lastname}, I'm the #{$0} script." # this requires the user to input two arguments - the script name and your name 
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_firstname} #{user_lastname}?"
print prompt
likes = STDIN.gets.chomp()

puts "Where do you live #{user_firstname} #{user_lastname}?"
print prompt
lives = STDIN.gets.chomp()

puts "What kind of computer do you have? #{user_firstname} #{user_lastname}"
print prompt
computer = STDIN.gets.chomp()

puts <<ASSBALLS
Alright, so you said #{likes} about liking me.
You live and love in a world where nothing makes you happy.
Where is #{lives}? Not sure where that is. And you have a #{computer} computer. Nice!
ASSBALLS