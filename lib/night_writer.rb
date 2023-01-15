message = File.open(ARGV[0], "r")

incoming_text = message.read

message.close

braille_text = incoming_text

braille_file = File.open(ARGV[1], "w")

braille_file.write(braille_text)

braille_file.close
require 'pry'; binding.pry

puts "Created '#{ARGV[1]}' containing #{incoming_text.length} characters"