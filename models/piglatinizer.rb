require 'pry'
class PigLatinizer
  attr_accessor :text

  def initialize(:user_phrase)
    @text = text
  end

  # def piglatinize(text)
  #   binding.pry
  #   chopped = text.slice!(0)
  #   if text.size < 2
  #     text + chopped + "way"
  #   else
  #     text + chopped + "ay"
  #   end
  # end

  # def piglatinize(text)
  #   if text.start_with?('a','e','i','o','u','A','E','I','O','U')
  #     text = text + "way"
  #   else
  #     find = text.find
  #     chopped = text.slice!(0)
  #     text = text + chopped + "ay"
  #   end
  #   text
  # end
# end

  def piglatinize(text)
    alpha_low = ('a'..'z').to_a
    alpha_high = ('A'..'Z').to_a
    alpha_combined = alpha_low + alpha_high
    vowels = %w[a A e E i I o O u U]
    consonants = alpha_combined - vowels

    if vowels.include?(text[0])
      text + 'way'
    elsif consonants.include?(text[0]) && consonants.include?(text[1]) && consonants.include?(text[2])
      text[3..-1] + text[0..2] + 'ay'
    elsif consonants.include?(text[0]) && consonants.include?(text[1])
      text[2..-1] + text[0..1] + 'ay'
    elsif consonants.include?(text[0])
      text[1..-1] + text[0] + 'ay'
    else
      text # return unchanged
    end
  end

  def to_pig_latin(sentence)
    new_sentence = []
    split_sentence = sentence.split(" ")
    split_sentence.each do |i|
      word = piglatinize(i)
      new_sentence << word
    end
    sentence = new_sentence.join(" ")
    sentence

  end
end

# if text starts with vowel
#   add yay
# elsif text doesnt start with vowel, find vowel, chop, and place at end with ay
# end