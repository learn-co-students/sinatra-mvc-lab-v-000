require 'pry'
class PigLatinizer


  def piglatinize(word)
    #words that begin with a consonant
    if consonant?(word[0])
      word1 = word.slice(1..-1)
      word1 = word1 + word[0] + "ay"
      binding.pry

      #words that begin with 2 consanants

    elsif consonant?(word[0]) && consonant?([1])
      word1 = word.slice(2..-1)
      word1 = word1 + word[0] + word[1] + "ay"

    #words that begin with a vowel(maybe start with vowel and work down to consonants)
    else
      word = word + "way"
    end
  end

  def to_pig_latin(sentence)
    sentence.split.collect{|word|piglatinize(word)}.join(" ")
  end


  def consonant?(character)
    !character.match(/[aAeEiIoOuU]/)
  end


end
