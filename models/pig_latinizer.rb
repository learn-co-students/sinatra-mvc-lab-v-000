class PigLatinizer
  # attr_accessor :words

  # def initialize
  #   @phrase = phrase
  # end

  def piglatinize(text)
    words = text.split(" ")
    pig_latin = []
    words.each do |word|
      if word.length == 1
        pig_latin << word + "way"
      elsif word.match(/^[aeiou]/i)
        pig_latin << word + "way"
      else
        consonants = word.split(/[aeiou]/).first
        cut = consonants.length
        pig_latin << word[cut...word.length] + consonants + "ay"
      end
    end
    pig_latin.join(" ")
  end
end
