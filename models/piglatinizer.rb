class PigLatinizer

  attr_accessor :words

  def initialize
    @words = words
  end

  def consonant(char)
    !char.match(/[aeiouAEIOU]/)

  end

  def piglatinize(words)

    x = (words.split(" ").length == 1) ? piglatinize_word(words) : piglatinize_sentence(words)
    puts x

    x
  end

  def piglatinize_word(word)
    if !consonant(word[0]) #checking if the word starts with a vowel
      word += "w"
    elsif consonant(word[0]) && consonant(word[1]) && consonant(word[2]) #checking if first 3 letters are consonants
      word = word.slice(3..-1) + word.slice(0,3)
    elsif consonant(word[0]) && consonant(word[1]) #checking if first 2 letters are consonants
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0) #checking if first 1 letter is a consonant
    end
    word += "ay"
  end

  def piglatinize_sentence(sentence)
    sentence.split.collect {|word| piglatinize_word(word)}.join(" ")
  end

end
