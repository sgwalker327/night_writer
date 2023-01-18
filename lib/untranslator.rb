require './lib/braille_dictionary'

class Untranslator
  
  include BrailleDictionary
  
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def braille_array
    input_splits = input.split()
    braille = input_splits.each_slice(3).map do |lines|
      lines.map do |line|
      line.scan(/../)
      end
    end
    braille.map do |short_line|
        short_line.transpose
    end
  end

  def braille_eng_translation
    eng_string = braille_array.map do |char|
          char.map do |s|
            braille_dictionary[s]
          end
      end.join
    eng_string.scan(/.{40}|.+/).join("\n")
  end
end