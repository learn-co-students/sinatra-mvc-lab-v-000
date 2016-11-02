require 'pry'
class PigLatinizer


    def piglatinize(words)
      vowels = %w{a e i o u}
      individual_words = words.split
      translated_words = individual_words.map do |word|
        if vowels.include?(word.downcase[0])
          word + "way"
        else
          consonant_method(word)
        end
        end
        translated_words.join(" ")
    end

    def consonant_method(words)
      vowels = %w{a e i o u}
      consonants = ""
      remaining_vowels = ""
      vowel_index = 0
      word_character_array = words.split("")
      word_character_array.each_with_index do |letter, index|
        if !(vowels.include?(letter))
          consonants += letter
        else
          vowel_index += index
          break
        end
        end
      remaining_vowels += words[(vowel_index..-1)]
      full_word = remaining_vowels + consonants + 'ay'
    end

    def to_pig_latin(words)
      piglatin_words = []
      words.split.map do |x|
        piglatin_words << piglatinize(x)
      end
      piglatin_words.join(" ")
    end

end
