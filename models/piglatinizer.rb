require 'pry'
# https://www.youtube.com/watch?v=gCY8ZWi7RKs
class PigLatinizer

  def piglatinize_word(input)
     vowels = ["a", "e", "i", "o", "u"]
     word = input.gsub(/[^a-z]/i, '')
     #it gets rid of any character if it's not an alphabet
  	 letters = word.split('')
     #splits the letters of the word up into an array

      if vowels.include?(letters[0].downcase)
        word + "way" #=> "Enumerationway"
      elsif vowels.include?(letters[1].downcase)
        #if second letter is a vowel, replace word from the 2nd letter to the rest of letters
        new_word = word.slice(1, word.length) #=>ork
        x = letters.shift #=>p
        new_word + x + "ay" #orkpay
      elsif vowels.include?(letters[2].downcase)
        new_word = word.slice(2, word.length)#=>th
        x = letters.shift(2).join
        new_word + x + "ay"
      elsif vowels.include?(letters[3].downcase)
        new_word = word.slice(3, word.length)#=>th
        x = letters.shift(3).join
        new_word + x + "ay"
      end
  end

  def piglatinize(sentence)

    sentence.split.collect {|word| piglatinize_word(word)}.join(" ")
  end


end
