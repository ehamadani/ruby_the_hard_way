# escape sequeneces 
# "I am 6\'2 tall" using double quotes
# 'I am 6\'2 tall' using single quotes 

tabby_cat = "\tI'm tabbed in." # tabbing and using double quotes 
persian_cat = "I'm split\non a line"
backslash_cat = "I'm \\ a \\ cat."

fat_cat = <<MY_HEREDOC
I'll do a list:
\t* Cat Food
\t* Finishes 
\t* Catnip\n\t* Grass  
MY_HEREDOC

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

puts "-" * 75

# \" – double quote
# \\ – single backslash
# \a – bell/alert
# \b – backspace
# \r – carriage return
# \n – newline
# \s – space
# \t – tab

puts tabby_cat , "It\'s that time of day."
puts "I know this is \n \t #{persian_cat}." # this needs to be in quotes for this #{variable to work}....
