describe 'class PigLatinizer' do
  let!(:words) { PigLatinizer.new }


  it 'can create a new instance of a class' do
    expect(PigLatinizer.new).to be_an_instance_of(PigLatinizer)
  end

  it 'piglatinizes an individual word' do
    expect(words.piglatinize("pork")).to eq("orkpay")
    expect(words.piglatinize("I")).to eq("Iway")
    expect(words.piglatinize("hello")).to eq("ellohay")
    expect(words.piglatinize("tomorrow")).to eq("omorrowtay")
    expect(words.piglatinize("until")).to eq("untilway")
    expect(words.piglatinize("Enumeration")).to eq("Enumerationway")
  end

  it 'has a method splits the sentence to piglatinize each word' do
    expect(words.to_pig_latin("i love programming")).to eq("iway ovelay rogrammingpay")
  end

end
