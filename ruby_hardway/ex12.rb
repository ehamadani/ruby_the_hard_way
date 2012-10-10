require 'open-uri'

open("http://www.ruby-lang.org/en") do |f|
	f.each_line {|line| p line}
	puts f.base_uri			#<URI::HTTP:0x40e6ef2 URL:http//www.ruby-lang.org/en/>
	puts f.content_type		# "text/html"
	puts f.charset			#"iso-8859-1"
	puts f.content_encoding	#[]
	puts f.last_modified	# Thu Dec 05 02:45:02 UTC 2002
end

# includes and requires run other files. It also tracks what you've required in the past
# and what require the same file twice. To run another file w/o this added functionality,
# you can use the load method.

#http://stackoverflow.com/questions/318144/what-is-the-difference-between-include-and-require-in-ruby
