require 'pry'

class PigLatinizer

  attr_accessor :text

  def piglatinize(text)
      consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
      vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
      word = text.split('')
      consonant_array = []
      i = 0

      while i <= word.count
        letter = word[i]
        if vowels.include?(letter) && consonant_array.empty?
            latinized_word = word.join('') + "way"
            i = latinized_word.length
        elsif !vowels.include?(letter)
            i = i + 1
            consonant_array << letter
        else
            latinized_word = word.rotate(i).join('') + "ay"
            i = latinized_word.length
        end
      end
      latinized_word
    end

    def to_pig_latin(text)
      words = text.split(' ')

      words.collect {|word| piglatinize(word) }.join(' ')
   end


end
