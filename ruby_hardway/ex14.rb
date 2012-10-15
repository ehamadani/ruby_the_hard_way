user = ARGV.first
prompt = '>'

puts "Hi #{user}, I'm the #{$0} script." # this requires the user to input two arguments - the script name and your name 
puts "I'd like to ask you a few questions."
puts "Do you like me #{user}?"
print prompt
likes = STDIN.gets.chomp()

puts "Where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts <<ASSBALLS
Alright, so you said #{likes} about liking me.
You live and love in a world where nothing makes you happy.
Where is #{lives}? Not sure where that is. And you have a #{computer} computer. Nice!
ASSBALLS