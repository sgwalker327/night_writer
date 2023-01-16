require './lib/Translator'

input = File.open(ARGV[0], "r")
incoming_text = input.read

translator = Translator.new(incoming_text)

output = File.open(ARGV[1], "w")
output_text = translator.eng_braille_translate
output.write(output_text)

puts "Created '#{ARGV[1]}' containing #{output_text.length} characters"