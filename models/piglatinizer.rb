require 'pry'
class PigLatinizer
  attr_accessor :text

  def initialize
  end

  def piglatinize(text)
    all = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = all - vowels
    @text = text
    if @text.downcase.size == 1
      @text + 'way'
    elsif vowels.include?(@text[0].downcase)
      @text + 'way'
    elsif consonants.include?(@text[0].downcase) && consonants.include?(@text[1].downcase) && consonants.include?(@text[2].downcase)
      @text[3..-1] + @text[0..2] + 'ay'
    elsif consonants.include?(@text[0].downcase) && consonants.include?(@text[1].downcase)
      @text[2..-1] + @text[0..1] + 'ay'
    elsif consonants.include?(@text[0].downcase)
      @text[1..-1] + @text[0] + 'ay'
    else
      @text
    end
  end

  def to_pig_latin(phrase)
    all = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = all - vowels
    @phrase = phrase
    new_pig_latin_array = @phrase.split(" ").collect do |word|
      if word.downcase.size == 1
        word + 'way'
      elsif vowels.include?(word[0].downcase)
        word + 'way'
      elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase) && consonants.include?(word[2].downcase)
        word[3..-1] + word[0..2] + 'ay'
      elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase)
        word[2..-1] + word[0..1] + 'ay'
      elsif consonants.include?(word[0].downcase)
        word[1..-1] + word[0] + 'ay'
      else
        word
      end
    end
    new_pig_latin_array.join(" ")
  end
end
