require 'pry'
class PigLatinizer
  def  initialize
  end

  def piglatinize(string)
    if string.size > 1
      string = string.split("")
      constonants = Array.new
      starts_with_vowel = isVowel(string.first)
      while(!isVowel(string.first) && string.size > 0) do
        constonants << string.first
        string.shift
      end

      string = string.concat(constonants)
      (starts_with_vowel) ? string << "way" : string << "ay"
      string = string.join("")
    else
      string << "way"
    end
    string
  end

  def to_pig_latin(phrase)
    phrase = phrase.split(" ")
    phrase.collect do | word |
       piglatinize(word)
    end.join(' ')
  end

  def isVowel(letter)
    letter = letter.downcase
    vowels = ['a', 'e', 'i', 'o', 'u', 'y']
    return vowels.include?(letter)
  end
end
