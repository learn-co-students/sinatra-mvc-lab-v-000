describe 'class PigLatinizer' do 
  let!(:words) { PigLatinizer.new }


  it 'can create a new instance of a class' do 
    expect(PigLatinizer.new).to be_an_instance_of(PigLatinizer)
  end

  it 'piglatinizes an individual word' do 
    expect(words.piglatinize("pork")).to eq("orkpay")
  end

  it 'has a method splits the sentence to piglatinize each word' do
    expect(words.to_pig_latin("i love programming")).to eq("i ovelay ogrammingpray") 
  end
  
end

# "eHay asway anay olday anmay owhay ishedfay aloneay inay a iffskay inay ethay ulfGay eamStray anday ehay adhay onegay eightyay ourfay aysday ownay ithoutway akingtay a ishfay" to include 
# "eHay asway an olday anmay owhay ishedfay aloneay in a iffskay in ethay ulfGay eamStray and ehay adhay onegay eightyay ourfay aysday ownay ithoutway akingtay a ishfay"