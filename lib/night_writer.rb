message = File.open(ARGV[0], "r")

incoming_text = message.read

message.close

braille_text = incoming_text

braille_file = File.open(ARGV[1], "w")

braille_file.write(braille_text)

braille_file.close

puts "Created 'braille.txt' containing #{incoming_text.length} characters"