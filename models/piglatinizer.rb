require 'pry'
class PigLatinizer
  attr_accessor :word

  # def initialize(word)
  #   @word = word
  # end

  def piglatinize(word)
    lowercase_alphabet = ("a".."z").to_a
    uppercase_alphabet = ("A".."z").to_a
    alphabet = lowercase_alphabet + uppercase_alphabet
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    consonants = alphabet - vowels

    #convert word to array
    word = word.split("")

    if vowels.include?(word[0])   #if starts with vowel, add 'way' to end
      piglatinized_word = word.join("") + "way"
    elsif word[0] == "q" && word[1] == "u"  && vowels.include?(word[2]) #if starts with qu then vowel, split to first vowel, shift qu to back, add 'ay'
      piglatinized_word = word[2..-1].join("") + word[0] + word[1] + "ay"
    else #keep shifting initial consonant to back of array until the first element is a vowel
      while consonants.include?(word[0])
        word.rotate!
      end
      piglatinized_word = word.join("") + "ay"
    end
  end

  def to_pig_latin(words) #splits phrase into words,then piglatinizes each word
    word_array = words.split(" ")

    word_array.collect do |word|
      piglatinize(word)
    end.join(" ")
  end

end
