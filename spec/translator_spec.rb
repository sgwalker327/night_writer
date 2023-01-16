require './lib/translator'

RSpec.describe Translator do 
  let(:translator) { Translator.new("a") }

  describe '#initialize' do
    it 'exists and contains a hash' do
      expect(translator).to be_a(Translator)
      expect(translator.input).to eq("a")
    end
  end

  describe '#eng_braille_array' do
    it 'converts english to braille array' do
      expect(translator.eng_braille_array).to eq([["0.", "..", ".."]])
    end
  end

  describe '#braille_split' do
    it "splits the braille array into 3 lines" do
    expect(translator.braille_split).to eq([["0."], [".."], [".."]])
    end
  end

  describe '#eng_braille_translate' do
    it 'will return the braille arrays in formated lines' do
      expect(translator.eng_braille_translate).to eq("0.\n..\n..")
    end
  end


end