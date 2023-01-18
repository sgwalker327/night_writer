require './lib/english_dictionary'

class Translator

  include EnglishDictionary 

  attr_reader :input

  def initialize(input)
    @input = input
  end

  def eng_braille_array
    braille = input.chars.map do |char|
      english_dictionary[char]
    end
    braille
  end

  def array_format
    eng_braille_array.each_slice(40).map do |array|
      array.transpose.filter_map do |letters|
        letters.join
      end.join("\n")
    end.join("\n")
  end
end