tang, bang, rang, clang = ARGV

puts "script name #{$0}."
print "whats your name?"
# name = gets.chomp() # gave us an error
name = STDIN.gets.chomp()
puts "Hello #{name}, it looks like you are reading #{tang}, it looks like you are reading #{tang} #{bang} #{rang} #{clang}."
# puts "Your first day is the best. Your last is not #{STDIN.gets.chomp()}."
# puts "Semen is better in her eye #{bang}."
# puts "Your words are not funny #{rang}"

