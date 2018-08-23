class PigLatinizer

  attr_reader :text

    def piglatinize(text)
        text.split.map do |word|
          if /\A[aeiou]/i.match(word)
            "#{word}way"
          else
            #finds where the word needs to be split.
            cons = word.split(/[aeiou]/).first
            #substitutes the beginning of word(cons) with blank, then tacks consonant + latinzed bit on end
            "#{word.sub(cons,"")}#{cons}ay"
          end
          end.join(' ')
        end

    def to_pig_latin(text)
      piglatinize(text)
    end
  end


  # Old - Doesn't work.
  # class PigLatinizer
  #   # Create a constant array of vowels
  #   VOWELS = %w[a e i o u A E I O U]
  #
  #
  #   # need to split the sentence
  #   def to_pig_latin(phrase)
  #     # splits the sentence, then collect -- iterate over each word - piglatinize each word - then rejoin the collected words back into a sentence
  #     phrase.split.collect{|word| piglatinize(word)}.join(" ")
  #   end
  #
  #   def piglatinize(word)
  #     return word << "way" if VOWELS.include?(word[0])
  #     word = word.split("")
  #
  #     until VOWELS.include?(word[0])
  #       letter = word.shift
  #       word = word << letter
  #     end
  #
  #     word.join + "ay"
  #   end
  #
  # end


# 
#   class PigLatinizer
#
# Too Bloody Convoluted! wtf?
#   def piglatinize(word)
#
#     #words that start with a vowel
#     if !consonant?(word[0])
#       word = word + "w"
#       #words start with 3 consonants
#     elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
#       word = word.slice(3..-1) + word.slice(0,3)
#       #word starst with 2 consonants
#     elsif consonant?(word[0]) && consonant?(word[1])
#       word = word.slice(2..-1) + word.slice(0,2)
#       #word starts with 1 consonant
#     else
#       word = word.slice(1..-1) + word.slice(0)
#     end
#     word << "ay"
#   end
#
#   def consonant?(char)
#     !char.match(/[aAeEiIoOuU]/)
#   end
#
#   def to_pig_latin(sentence)
#     sentence.split.collect { |word| piglatinize(word) }.join(" ")
#   end
# end
