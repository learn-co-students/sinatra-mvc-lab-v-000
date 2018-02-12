require 'pry'

class PigLatinizer
  attr_accessor :text

  def initialize(text = nil)
    @text = text
  end

  def piglatinize(text)
    if text =~ /\A[aeiou]/i
      "#{text}way"
    elsif text =~ /\A[^aeiou]{3}/i
      "#{text[3..-1]}#{text[0..2]}ay"
    elsif text =~ /\A[^aeiou]{2}/i
      "#{text[2..-1]}#{text[0..1]}ay"
    elsif text =~ /\A[^aeiou]/i
      "#{text[1..-1]}#{text[0]}ay"
    end
  end

  def to_pig_latin(text)
    text_array = text.split(" ")
    text_array.map do |word|
      # if word == text_array.first
      #   self.piglatinize(word).capitalize
      # else
        self.piglatinize(word)
      # end
    end.join(" ")
  end

  # def initialize(text = nil)
  #   @text = text
  # end
  #
  # def piglatinize
  #   text_array = @text.split(" ")
  #   text_array.map do |word|
  #     if word.start_with?(/aeoui/)
  #       "#{text}way"
  #     elsif word.start_with?(/bcdfghjklmnpqrstvwxyz/)
  #       "#{text[1..-1]}way#{text[0]}"
  #     end
  #   end
  #   text_array.join(" ")
  # end

  # make string into array
  # check whether each word starts with consonant or vowel
  # alter each appropriately
  # join back into string

end
