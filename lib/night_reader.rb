require './lib/untranslator'

input = File.open(ARGV[0], "r")
incoming_text = input.read

untranslator = Untranslator.new(incoming_text)

output = File.open(ARGV[1], "w") 
output_text = untranslator.braille_eng_translation
output.write(output_text)

puts "Created '#{ARGV[1]}' containing #{output_text.length} characters"