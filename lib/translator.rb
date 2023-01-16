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

  def braille_split
    line1 = []
    line2 = []
    line3 = []
    eng_braille_array.flatten.each_with_index do |character, index|
      if (index + 1) % 3 == 0
        line3.push(character)
      elsif (index + 1) % 3 == 1
        line1.push(character)
      else
        line2.push(character)
      end
    end
    [line1, line2, line3]
  end

  def eng_braille_translate
    newline1 = braille_split[0].to_s.gsub(/[^0.]/, "")
    newline2 = braille_split[1].to_s.gsub(/[^0.]/, "")
    newline3 = braille_split[2].to_s.gsub(/[^0.]/, "")

    new_lines = "#{newline1}\n" "#{newline2}\n" + "#{newline3}"
  end
end