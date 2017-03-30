describe 'class PigLatinizer' do
  let!(:words) { PigLatinizer.new }


  it 'can create a new instance of a class' do
    expect(PigLatinizer.new).to be_an_instance_of(PigLatinizer)
  end

  it 'piglatinizes an individual word' do
    expect(words.piginize("pork")).to eq("orkpay")
    expect(words.piginize("I")).to eq("Iway")
    expect(words.piginize("hello")).to eq("ellohay")
    expect(words.piginize("please")).to eq("easeplay")
    expect(words.piginize("tomorrow")).to eq("omorrowtay")
    expect(words.piginize("until")).to eq("untilway")
    expect(words.piginize("this")).to eq("isthay")
    expect(words.piginize("Enumeration")).to eq("Enumerationway")
    expect(words.piginize("spray")).to eq("ayspray")
    expect(words.piginize("prays")).to eq("ayspray")
  end

  it 'has a method splits the sentence to piglatinize each word' do
    expect(words.to_pig_latin("i love programming")).to eq("iway ovelay ogrammingpray")
  end

end
