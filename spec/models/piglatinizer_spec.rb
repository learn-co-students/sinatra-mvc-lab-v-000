describe 'class GoatAramaicizer' do
  let!(:words) { GoatAramaicizer.new }


  it 'can create a new instance of a class' do
    expect(GoatAramaicizer.new).to be_an_instance_of(GoatAramaicizer)
  end

  it 'piglatinizes an individual word' do
    expect(words.goataramaicize("pork")).to eq("orkpackh")
    expect(words.goataramaicize("I")).to eq("Itasah")
    expect(words.goataramaicize("hello")).to eq("ellohackh")
    expect(words.goataramaicize("please")).to eq("easeplackh")
    expect(words.goataramaicize("tomorrow")).to eq("omorrowtackh")
    expect(words.goataramaicize("until")).to eq("untiltasah")
    expect(words.goataramaicize("this")).to eq("isthackh")
    expect(words.goataramaicize("Enumeration")).to eq("Enumerationtasah")
    expect(words.goataramaicize("spray")).to eq("aysprackh")
    expect(words.goataramaicize("prays")).to eq("aysprackh")
  end

  it 'has a method splits the sentence to piglatinize each word' do
    expect(words.to_goat_aramaic("i love programming")).to eq("itasah ovelackh ogrammingprackh")
  end

end
