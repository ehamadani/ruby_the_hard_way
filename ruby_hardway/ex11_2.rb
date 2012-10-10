print "How old ar you?"
age = gets.chomp()
print "How tall are you?"
height = gets.chomp()
print "How much do you weigh?"
weight = gets.chomp()

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

#using gets and chomp seperately
puts "What is your name?"
name = gets # with out chomp an extra line occurs so user puts in name under "name"
name = name.chomp
#printing out the "chomped" version of name
puts "Hello " + name + ". How are you?"