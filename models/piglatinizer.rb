class PigLatinizer
  #attr_accessor :string

  #def initialize(string = nil)
  #  @string = string
  #end


  def piglatinize(word)
    piglatinized_word = ""
    if word.match(/^[aeiouAEIOU]/)
      piglatinized_word = word + "way"
    elsif word.downcase.match(/^[b-df-hj-np-tv-z]{3}/)
      letters = word.split("")
      first = letters.slice!(0,3)
      piglatinized_word = letters.join + first.join + "ay"
    elsif word.downcase.match(/^[b-df-hj-np-tv-z]{2}/)
      letters = word.split("")
      first = letters.slice!(0,2)
      piglatinized_word = letters.join + first.join + "ay"
    else
      letters = word.split("")
      consonant = letters.shift
      piglatinized_word = letters.join + consonant + "ay"
    end
    piglatinized_word
  end

  def to_pig_latin(string)
    string_array = string.split(" ")
    pig_latinized = []
    string_array.each do |word|
      if word.match(/^[aeiouAEIOU]/)
        pig_latinized << word + "way"
      elsif word.downcase.match(/^[b-df-hj-np-tv-z]{3}/)
        letters = word.split("")
        first = letters.slice!(0,3)
        pig_latinized << letters.join + first.join + "ay"
      elsif word.downcase.match(/^[b-df-hj-np-tv-z]{2}/)
        letters = word.split("")
        first = letters.slice!(0,2)
        pig_latinized << letters.join + first.join + "ay"
      else
        letters = word.split("")
        consonant = letters.shift
        pig_latinized << letters.join + consonant + "ay"
      end
    end
    pig_latinized.join(" ")
  end

end
