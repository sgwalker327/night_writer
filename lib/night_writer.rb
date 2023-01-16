input = File.open(ARGV[0], "r")
output = File.open(ARGV[1], "w")
incoming_text = input.read
output_text = incoming_text
output.write(output_text)

puts "Created '#{ARGV[1]}' containing #{incoming_text.length} characters"