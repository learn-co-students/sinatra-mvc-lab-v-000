class PigLatinizer
  attr_accessor :user_text
  attr_reader :vowels, :consonants

  def initialize
    @vowels = ["a","e","i","o","u","A","E","I","O","U"]
    @consonants = "bcdfghjklmnpqrstvwxyz"
  end

  def piglatin_processor
    @user_text.split(" ").collect { |word| piglatinize(word) }.join(" ")
  end

  def piglatinize(phrase)
    word = phrase.split("")

    if @vowels.include?(word[0])
      pig_word = word << "way"
    else
      arr = []
      while !@vowels.include?(word[0])
        arr << word.slice!(0)
      end
      arr << "ay"
      pig_word = word.push(arr).flatten
    end
    pig_word.join
  end

  def to_pig_latin(user_phrase)
    @user_text = user_phrase
    self.piglatin_processor
  end

end
