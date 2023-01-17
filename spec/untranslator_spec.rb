require 'spec_helper'

RSpec.describe Untranslator do
  describe '#initialize' do
    it 'exists and has attributes' do
      untranslator = Untranslator.new("0.\n..\n..")
      expect(untranslator).to be_a(Untranslator)
      expect(untranslator.input).to eq("0.\n..\n..")
    end
  end

  describe '#braille_array' do
    it 'can take braille string input and convert them to a usable organized nested array' do
      untranslator = Untranslator.new("0.\n..\n..")
      expect(untranslator.braille_array).to eq([["0.", "..", ".."]])
      untranslator = Untranslator.new("0.0.\n..0.\n....")
      expect(untranslator.braille_array).to eq([["0.", "..", ".."], ["0.", "0.", ".."]])
      untranslator = Untranslator.new("0.0.00\n..0...\n......")
      expect(untranslator.braille_array).to eq([["0.", "..", ".."], ["0.", "0.", ".."], ["00", "..", ".."]])
    end
  end

  describe '#braille_eng_translate' do
    it 'can take the nested braille array and transform it into a string of english characters' do
      untranslator = Untranslator.new("0.0.00\n..0...\n......")
      expect(untranslator.braille_eng_translation).to eq("abc")
    end
  end
end