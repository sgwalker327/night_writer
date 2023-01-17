require './lib/braille_dictionary'

class Untranslator
  
  include BrailleDictionary
  
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def braille_eng_array
    input_splits = input.split("\n")
    english = braille_dictionary[input_splits]
    english
  end
end