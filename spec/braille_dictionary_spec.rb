require 'spec_helper'

RSpec.describe BrailleDictionary do 
  let(:braille_dictionary) { BrailleDictionary.new }

  describe '#initialize' do
    it 'exists and contains a hash' do
      expect(braille_dictionary).to be_a(BrailleDictionary)
      expect(braille_dictionary.braille_translation).to be_a(Hash)
      require 'pry'; binding.pry
    end
  end
end