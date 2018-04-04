require_relative '../config/environment'

class PigLatinizer
  attr_accessor :name

  def initialize
    @name = "piglatinizer"
  end

  def piglatinize(user_phrase)
    each_word_array = user_phrase.split(" ")
    piglatinized_word_array = each_word_array.map do |word|
      if word.start_with?('a','e','i','o','u', 'A','E','I','O','U')
        word << "way"
      else
        beginning = word.split(/\b[^aeiou\W]{1,}/).reject{|i| i.empty?}.first
        ending = word.split(/[aeiou].?/).first
        beginning << ending << "ay"
      end
    end
    piglatinized_word_array.join(" ")
  end

end
