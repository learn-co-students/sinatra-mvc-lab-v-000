class PigLatinizer
  attr_accessor :text

    def piglatinize(word)
      vowel= ["a", "e", "i", "o", "u"]
      letter_array=word.split('')
      if vowel.include?(letter_array[0].downcase)
        letter_array<< "way"
        final_word = letter_array.join('')
      else
        until vowel.include?(letter_array[0].downcase)
          letter_array.rotate!
        end
        letter_array<< "ay"
        final_word = letter_array.join('')
      end
      final_word
    end

    def to_pig_latin(phrase)
      final_phrase=[]
      words_array = phrase.split(' ')
      words_array.collect do |word|
        final_phrase << piglatinize(word)
      end
      final_phrase.join(" ")
    end

end