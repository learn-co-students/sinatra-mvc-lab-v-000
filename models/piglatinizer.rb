require 'pry'
class PigLatinizer

#str = iamlegend

def piglatinize(word)
  #start with a vowel
 vowels = "AEIOUaeiou"
 #one syllable exceptions
 exceptions = ["and", "an", "in"]
#binding.pry
 if vowels.include? word[0]
     word << "way"
  elsif exceptions.include?(word)
    word
  else
    consonants = ""
    while !vowels.include?(word[0])
      consonants << word[0]
      word = word[1..-1]
    end
    word + consonants + "ay"
  end
end

def to_pig_latin(phrase)
   phrase.split.collect{|word| piglatinize(word)}.join(" ").gsub(".", "")
 end

end
