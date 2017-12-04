describe 'class PigLatinizer' do
  let!(:words) { PigLatinizer.new }


  it 'can create a new instance of a class' do
    expect(PigLatinizer.new).to be_an_instance_of(PigLatinizer)
  end

  it 'piglatinizes an individual word' do
    expect(words.to_pig_latin("pork")).to eq("orkpay")
    expect(words.to_pig_latin("I")).to eq("Iway")
    expect(words.to_pig_latin("hello")).to eq("ellohay")
    expect(words.to_pig_latin("please")).to eq("easeplay")
    expect(words.to_pig_latin("tomorrow")).to eq("omorrowtay")
    expect(words.to_pig_latin("until")).to eq("untilway")
    expect(words.to_pig_latin("this")).to eq("isthay")
    expect(words.to_pig_latin("Enumeration")).to eq("Enumerationway")
    expect(words.to_pig_latin("spray")).to eq("ayspray")
    expect(words.to_pig_latin("prays")).to eq("ayspray")
  end

  it 'has a method splits the sentence to piglatinize each word' do
    expect(words.to_pig_latin("i love programming")).to eq("iway ovelay ogrammingpray")
  end

end
