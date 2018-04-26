require 'pry'
class PigLatinizer
  attr_accessor :phrase

  def initialize(phrase = nil)
    @phrase = phrase
    # self.piglatinizer(@phrase)
  end

  def piglatinize(phrase = nil)
  @phrase = phrase if phrase != nil
  arr = @phrase.split(" ")
  new_arr = []
  arr.each do |word|
    count = 0
    word.split("").each do |letter|
      if word[0].downcase.start_with?('a', 'e', 'i', 'o', 'u')
        new_word = word + "way"
        new_arr << new_word
        break;
      elsif letter.start_with?('a', 'e', 'i', 'o', 'u')
        test = word.slice!(0..count-1)
        new_word = word + test + "ay"
        new_arr << new_word
        break;
      else
        count += 1
      end
    end
  end
  new_arr.join(" ")
end








end
