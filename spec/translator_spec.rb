require 'spec_helper'

RSpec.describe Translator do 

  describe '#initialize' do
    it 'exists and contains a hash' do
      translator = Translator.new("a")
      expect(translator).to be_a(Translator)
      expect(translator.input).to eq("a")
    end
  end

  
  describe '#eng_braille_array' do
    it 'converts english to braille array' do
      translator = Translator.new("a")
      expect(translator.eng_braille_array).to eq([["0.", "..", ".."]])
      translator = Translator.new("ab")
      # require 'pry'; binding.pry
      expect(translator.eng_braille_array).to eq([["0.", "..", ".."], ["0.", "0.", ".."]])
    end
  end

  describe '#array_format' do
    it 'can format text into appropriate length lines' do
      translator = Translator.new("the quick brown fox jumps over the lazy dog")
      # require 'pry'; binding.pry
      expected = ".00.0...000..0000...0.0.0..000..000.00...00.0000.0..0.0.0.0....00.0...0.0.0.00..\n0000.0..00..0.......0.00.000.0..0..0....00....0.0....00..000..0000.0..0....0.0..\n0.......0.00....0.....0.0..00.....0.00....000.0.0...0.00..0...0.......0...0000..\n000.00\n.0.000\n..0..."
      expect(translator.array_format).to eq(expected)
    end
  end
end