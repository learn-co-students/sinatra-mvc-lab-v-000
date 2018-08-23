require 'pry'
class PigLatinizer

def piglatinize(text)
  words = text.split(" ")

  words = words.collect do |word|
    latinize(word)
  end

  words.join(" ")
end

def latinize(text)
  vowels = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
  new_pig_word = " "

  text_arr = text.split(//)

  if vowels.include?(text_arr.first)
    new_pig_word = text + "way"
  else
   text_arr.each_with_index do |letter, index|
    if vowels.include?(letter)
      vowel_index = index
      first_letter = text_arr.slice!(0...vowel_index)
      new_pig_word = text_arr.join + first_letter.join + "ay"
      return new_pig_word
    end
  end
end
  new_pig_word
end


end
