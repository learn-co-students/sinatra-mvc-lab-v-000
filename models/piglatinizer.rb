require 'pry'

class PigLatinizer
  attr_accessor :text

  def initialize
    @text = text
  end

  def split_phrase
    words = text.split(" ")
  end

  def piglatinize
    array = []
    words = split_phrase
    words.map do |word|
      if word.match(/[aeiouAEIOU]/)
        word + 'ay'
    binding.pry
      end
    end
  end

    # @words.map do |word|
    #   if (word =~ /yY/) == 0
    #     words_array << word[1..-1] + 'y' + 'ay'
    #   else
    #     vowel_location = first_vowel(word)
    #     words_array << word[vowel_location..-1] + word[0..vowel_location-1] + 'ay'
    #   end
    # end
    # words_array.join(" ")

  def first_vowel(word)
    word =~ /[aeiouAEIOU]/
  end

end
