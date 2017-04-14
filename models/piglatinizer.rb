require 'pry'
class PigLatinizer

def piglatinize(word)

  c = 0
  letter = []
    #The following while will take care of all the beginning consonants in a word
  while word[0].downcase.scan(/^[bcdfghjklmnpqrstvwxyz]/).count == 1 do
    letter <<  word[0]
    word.slice!(0)
    word = word.split("").push(letter[c]).join("")
     c += 1
# binding.pry
  end
 c > 0 ? word + "ay" : word +"way"

end

def to_pig_latin(phrase)
 word_array = phrase.split(" ")
 piglatinized_phrase = []
 word_array.each{|word| piglatinized_phrase.push(piglatinize(word))}
 piglatinized_phrase.join(" ")
end

end
