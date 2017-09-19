class PigLatinizer

attr_accessor :words

 def initialize
   @words
 end

def piglatinize(word)
#word = "pork"
char_array = word.scan(/\w/) #turn word into ["p", "o", "r", "k"]
if char_array[0].match(/[aeiouAEIOU]/) #checks to see if first item is a vowel
    char_array.join("") << "way" #if it's a vowel, add "way"


else
  consonant = word.split(/[aeiou].*/)
  consonant_split = consonant[0].split("")
    if consonant_split.count == 1
    char_array << consonant
    char_array.shift
    char_array.join("") << "ay"

  elsif consonant_split.count == 2
    char_array << consonant
    char_array.shift
    char_array.shift
    char_array.join("") << "ay"

  elsif consonant_split.count == 3
    char_array << consonant
    char_array.shift
    char_array.shift
    char_array.shift
    char_array.join("") << "ay"
   end
end
end

def to_pig_latin(sentence)
    sentence_array = sentence.split(" ")
  sentence_array.map do |word|
     piglatinize(word)
   end.join(" ")

end

end
