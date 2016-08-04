require 'pry'

class PigLatinizer 
  attr_accessor :text


  def piglatinize(text)
    vowels = ["a","e","o","u","i"]
    if vowels.include?(text[0].downcase)
      word = text + "way"
    else
      consontants = ""
      until vowels.include?text[0]
        consontants = (consontants + text[0])
        text = text[1..-1]
      end 
      word = text + consontants + "ay"
    end 
  word
  end 

  def to_pig_latin(text)
    (text.split(" ").map{|word| piglatinize(word)}).join(" ")
  end 
end 






 
=begin
  def count_of_vowels
    @text.downcase.scan(/[aeoui]/).count
  end
 
  def count_of_consonants
    @text.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end
 
def most_used_letter
    all_letters_in_string = @text.downcase.gsub(/[^a-z]/, '').split('') #gets rid of spaces and turns it into an array
    letters_to_compare = all_letters_in_string.uniq
    most_used_letter = ""
    letter_count = 0
 =end



=begin

  it 'piglatinizes an individual word' do 
    expect(words.piglatinize("pork")).to eq("orkpay")
    expect(words.piglatinize("I")).to eq("Iway")
    expect(words.piglatinize("hello")).to eq("ellohay")
    expect(words.piglatinize("please")).to eq("easeplay")
    expect(words.piglatinize("tomorrow")).to eq("omorrowtay")
    expect(words.piglatinize("until")).to eq("untilway")
    expect(words.piglatinize("this")).to eq("isthay")
    expect(words.piglatinize("Enumeration")).to eq("Enumerationway")
    expect(words.piglatinize("spray")).to eq("ayspray")
    expect(words.piglatinize("prays")).to eq("ayspray")


end
=end
