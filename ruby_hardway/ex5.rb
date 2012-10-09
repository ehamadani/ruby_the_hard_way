name = 'Zed A. Shaw'
age = 35 # not a lie
height = 74 # inches
weight = 180 # Lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "Let's talk about %s." % name
puts "He's %d inches tall." % [height * 2.54] # this is a temporary conversion 
puts "He's %d pounds heavy." % [weight / 2.2] # this is a temporary conversion into kilograms 
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth
puts "I am not %f years old." % age
puts "I do have %s colored hair and I wish I was %s old." % [hair, age]

# this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." % [age, height, weight, age + height + weight]



# b - Convert argument as a binary number. 
# c - Argument is the numeric code for a single character. 
# d - Convert argument as a decimal number. 
# E - Equivalent to `e', but uses an uppercase E to indicate the exponent. 
# e - Convert floating point argument into exponential notation with one digit before the decimal point. The precision determines the number of fractional digits (defaulting to six). 
# f - Convert floating point argument as [-]ddd.ddd, where the precision determines the number of digits after the decimal point. 
# G - Equivalent to `g', but use an uppercase `E' in exponent form. 
# g - Convert a floating point number using exponential form if the exponent is less than -4 or greater than or equal to the precision, or in d.dddd form otherwise. 
# i - Identical to `d'. 
# o - Convert argument as an octal number. 
# s - Argument is a string to be substituted. If the format sequence contains a precision, at most that many characters will be copied. 
# u - Treat argument as an unsigned decimal number. 
# X - Convert argument as a hexadecimal number using uppercase letters. 
# x - Convert argument as a hexadecimal number.


