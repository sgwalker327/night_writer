# require './lib/untranslator'

input = File.open(ARGV[0], "r")
incoming_text = input.read

untranslator = incoming_text

output = File.open(ARGV[1], "w") 
output_text = untranslator
output.write(output_text)

puts "Created '#{ARGV[1]}' containing #{output_text.length} characters"