class PigLatinizer

    def piglatinize(input_str)
      input_str.split(" ").length == 1 ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
    end
  
    private
  
    def consonant?(char)
      !char.match(/[aAeEiIoOuU]/)
    end
  
    def piglatinize_word(word)
      # word starts with vowel
      if !consonant?(word[0])
        word = word + "w"
      # word starts with 3 consonants
      elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
        word = word.slice(3..-1) + word.slice(0,3)
      # word starts with 2 consonants
      elsif consonant?(word[0]) && consonant?(word[1])
        word = word.slice(2..-1) + word.slice(0,2)
      # word starts with 1 consonant
      else
        word = word.slice(1..-1) + word.slice(0)
      end
      word << "ay"
    end
  
    def piglatinize_sentence(sentence)
      sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
    end
  
  end
# class PigLatinizer
#     attr_reader :text

#     def initialize(text)
#         @text = text
#     end

#     def piggify
#         vowels =['a','e','i','o','u']
#         words = text.split(" ")
#         words.map do |word|
#             letters = word.split("")
#             first_vowel_index = letters.index{|letter| vowels.include?(letter.downcase)}
#             if first_vowel_index > 0
#                 starting_consonant_chunk = letters.shift(first_vowel_index)
#                 piggy_word = letters.join.concat(starting_consonant_chunk.join).concat("ay")
#             else
#                 piggy_word = word.concat("way")
#             end
#         end.join(" ")
#     end
# end