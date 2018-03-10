require 'pry'
class PigLatinizer
  attr_accessor :text

  def initialize
    @text = text

  end

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
      text
    end
  end

  def to_pig_latin(sentence)
    new_sentence = []
    split_sentence = sentence.split(" ")
    split_sentence.each do |i|
      word = piglatinize(i)
      new_sentence << word
    end
    sentence1 = new_sentence.join(" ")
    sentence1
  end
end