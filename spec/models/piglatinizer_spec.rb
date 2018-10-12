describe 'class PigLatinizer' do
  let!(:words) { PigLatinizer.new }


  it 'can create a new instance of a class' do
    expect(PigLatinizer.new).to be_an_instance_of(PigLatinizer)
  end

  it 'piglatinizes an individual word' do
    expect(words.piglatinize("pork")).to eq("orkpay")
    expect(words.piglatinize("I")).to eq("iway")
    expect(words.piglatinize("hello")).to eq("ellohay")
    expect(words.piglatinize("please")).to eq("leasepay")
    expect(words.piglatinize("tomorrow")).to eq("omorrowtay")
    expect(words.piglatinize("until")).to eq("ntiluway")
    expect(words.piglatinize("this")).to eq("histay")
    expect(words.piglatinize("Enumeration")).to eq("numerationeway")
    expect(words.piglatinize("spray")).to eq("praysay")
    expect(words.piglatinize("prays")).to eq("rayspay")
  end

  it 'has a method splits the sentence to piglatinize each word' do
    expect(words.piglatinize("i love programming")).to eq("iway ovelay rogrammingpay")
  end

end
