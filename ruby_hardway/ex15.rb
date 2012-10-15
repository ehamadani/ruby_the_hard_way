     1  filename = ARGV.first # this is placing the name filename in variables called out in the script
     2  
     3  prompt = ">" # another variable with new prompt
     4  txt = File.open(filename) # the first use of the "file object" where we use a new command. Object is File. Open is the command. 
     # filename will be passed from command line 
     5  
     6  puts "Here's your file #{filename}"# prints out the string and adds the filename passed on the command line 
     7  puts txt.read() # we are making an object of "txt" which is File.open  but using the txt label instead. () has no specific variable - it is outputting from the file - therefore its empty. 
     8  
     9  puts "Type the filename again:" # outputs in the screen 
    10  print prompt # prints prompt and doesn't skip to next line 
    11  file_again = STDIN.gets.chomp() # file again is the variable associated with whatever is typed into the command line. STDIN.gets.chomp() will directly output this from keyboard whereever "file_again" variable is called. 
    12  
    13  txt_again = File.open(file_again) # it looks like we are creating a new variable txt_again using File "Class" and open "method" and file_again "variable". Class.method(variable) 
    14  puts txt_again.read() # this is dumping the file content () means whatever is in the file. 
    
    # IO class/Module > File standard subclass > open method/functions/commands