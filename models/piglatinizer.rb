require 'pry'
class PigLatinizer

  # attr_accessor :text
  #
  # def initialize
  #   @text =text
  # end

    def piglatinize(word)
  # w = []
  # w = word.split("")
      if word[0].match(/\b[aeiouAEIOU]/)
        words = word + "way"
      else
        vowel = word.index(/[aeiouAEIOU]/)
        word[vowel..99] + word[0..(vowel-1)] + "ay"
        # words = word[1..-1] + word[0] + "ay"
      end
      # words
    end


    def to_pig_latin(string)
      string.split.collect{|word| piglatinize(word)}.join(" ")
    end
end
