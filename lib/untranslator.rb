require './lib/braille_dictionary'

class Untranslator
  
  include BrailleDictionary
  
  attr_reader :input

  def initialize(input)
    @input = input
  end

  # def braille_eng_array #works for one letter
  #   input_splits = input.split("\n")
  #   braille_dictionary[input_splits]
  # end
  
  # def braille_eng_array #works for 2 letters and only 2
  #   input_splits = input.scan(/(..)(..)/).transpose.map do |char|
  #       braille_dictionary[char]
  #   end.join
  # end

  def braille_array
    input_splits = input.split()
    # require 'pry'; binding.pry
    braille = input_splits.map do |line|
      line.scan(/../)
    end
    braille.transpose
  end

  def braille_eng_translation
    braille_array.map do |char|
      braille_dictionary[char]
    end.join
  end
end