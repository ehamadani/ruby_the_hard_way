binary = "binary" # This is a variable with in the string interpolation 
do_not = "don't"  # this is the same thing 
x = "There are #{10} types of people." # however here, the number is actually its own variable 
y = "Those who know #{binary} and those who #{do_not}." # from step 1 and # 1 string with in a string 

puts x # this writes out x 
puts y # this writes out y 

puts "I said #{x}." # in addition to outputting I said - it also outputs the variable of x # 2 string with a string 
puts "I also said: '#{y}'." # Same here # 3 string with in a string 


hilarious = false
joke_evaluation = "Isn't that hose so funny?! #{hilarious}" # variables with varialbes # 4 string with in a string 

puts joke_evaluation # outputs the above variable 

w = "This is the left side of..."
e = "a string with a right side" 

puts w + e # left and right of the string. You are adding strings....