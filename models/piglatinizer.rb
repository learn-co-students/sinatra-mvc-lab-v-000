# class PigLatinizer


#   def to_pig_latin(phrase)
#     words = phrase.split(" ")
#     words.collect {|w| piglatinize(w)}.join(" ")
#   end

#   def piglatinize(word)
#     @word = word
#     if (start_with_vowel?)
#       word = piglatin_vowel
#     elsif (start_with_consonant?)
#       word = piglatin_constant
#     end
#     word
#   end

#   def start_with_consonant?
#       consonant_word = @word.downcase
#       consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
#       consonants.any? { |c| consonant_word.start_with?(c) }
#   end

#     def piglatin_constant
#       split_words = @word.split /([aeiou].*)/
#       first_letter = split_words[0]
#       rest_of_word = split_words[1]
#       "#{rest_of_word}#{first_letter}ay"
#     end

#     def start_with_vowel?
#       vowel_word = @word.downcase
#       vowels = ["a", "e", "i", "o", "u"]
#       vowels.any? { |v| vowel_word.start_with?(v) }
#     end

#     def piglatin_vowel
#         "#{@word}way"
#     end

# end
class PigLatinizer
    attr_reader :text

    def piglatinize(text)
        arr = text.split(' ')
        arr.map do |word|
            if word.match(/\b[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
                new_word = word.split(/([aeiouAEIOU].*)/)
                new_word[0], new_word[1] = new_word[1], new_word[0]
                pl = new_word.join("") << "ay"
                pl.gsub(/\W/, '')
            elsif word.match(/\b[aeouiAEIOU]/)
                word << "way"
                word.gsub(/\W/, '')
            end
        end.join(" ")
    end
    
end