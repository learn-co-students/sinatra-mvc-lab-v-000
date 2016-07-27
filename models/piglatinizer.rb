# class PigLatinizer
#     attr_accessor :words
#
#     def initialize(words)
#       @words = words
#     end
#
# end
# class PigLatinizer
#   attr_accessor :user_input
#
#   def initialize(user_input)
#     @user_input = user_input
#   end
#
#   def split_words
#     @words = user_input.split(" ")
#     @words
#   end
#
#   def first_vowel(word)
#     word.scan(/[aeiou]/).first
#   end
#
#   def add_ay(word)
#     word + "ay"
#   end
#
#   def invert_at(letter, word)
#     split_array = word.split("#{letter}")
#     letter + split_array[1] + split_array[0]
#   end
#
#   def pig_latinize
#     words = user_input.split_words
#   end
#
# end

class PigLatinizer
  attr_accessor :phrase

  def initialize(words)
    @phrase = words
  end

  def translate
    return nil if (@phrase.empty?)

    word_array = @phrase.split(/\s/)
    word_array.collect! do |word|
      translate_word(word)
    end
    translated_phrase = word_array.join(" ")

    return translated_phrase
  end


  def translate_word(word)
    words = word.split("-")
    words.collect! do |word|
      punctuation = word.slice!(/\W/)

      if (word[0] =~ /[aeiou]/i)
        case word[-1]
        when /[aeiou]/
          word += "yay"
        when /y/
          word += "nay"
        else
          word += "ay"
        end
      else
        consonants = word.slice!(/^[^aeiou]*/)
        word.capitalize! if (consonants.downcase!)
        word += consonants + "ay"
      end

      if (punctuation)
        word << punctuation
      end

      word
    end
    return words.join("-")
  end

end
