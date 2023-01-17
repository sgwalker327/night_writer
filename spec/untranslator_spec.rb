require 'spec_helper'

RSpec.describe Untranslator do
  describe '#initialize' do
    it 'exists and has attributes' do
      untranslator = Untranslator.new("0.\n..\n..")
      expect(untranslator).to be_a(Untranslator)
      expect(untranslator.input).to eq("0.\n..\n..")
    end
  end

  describe '#braille_eng_array' do
    it 'can take braille string input and find corresponding english character' do
      untranslator = Untranslator.new("0.\n..\n..")
      expect(untranslator.braille_eng_array).to eq("")
    end
  end
end