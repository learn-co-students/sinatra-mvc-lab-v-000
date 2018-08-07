require 'pry'
class PigLatinizer
  attr_reader :string

  def initialize(sting = nil)
    @string = string
  end

  def piglatinize(string)
    #binding.pry
    x = (string.split(" ").length == 1) ? piglatinize_word(string) : piglatinize_sentence(string)
      puts x
    x
  end

  def piglatinize_word(word)

    vowels = ["a", "e", "i", "o", "u"]
    alpha = ("a".."z").to_a
    consonants = alpha - vowels
    downcase_word = word.downcase
    #binding.pry


    if vowels.include?(downcase_word[0]) #does the word start with a vowel? == word + "way"
      word + 'way'
    elsif consonants.include?(downcase_word[0]) && consonants.include?(downcase_word[1]) && consonants.include?(downcase_word[2]) #first 3 letters consonants? == word[3..-1] + word[0..2] + "way"
      word[3..-1] + word.slice(0,3) + 'ay'
    elsif consonants.include? (downcase_word[0]) && consonants.include?(downcase_word[1]) #first two letters consonants? == word[2..-1] + word[0..1] + "way"
      word[2..-1] + word.slice(0,2) + 'ay'
    elsif consonants.include?(downcase_word[0]) #first word only start with a consonant? == word[1..-1] + word[0] + "way"
      word[1..-1] + word[0] + 'ay'
    else #else, return (word)
      word # return unchanged
    end
  end

  def piglatinize_sentence(sentence)
    split_phrase = sentence.split
    piglatin_array = []

    split_phrase.each do |word|
    piglatin_array << piglatinize(word)
  end

    piglatin_array.join(" ")
  end

end
