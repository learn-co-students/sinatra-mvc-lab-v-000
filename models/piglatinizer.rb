require 'pry'

class PigLatinizer

  attr_reader :string

  def piglatinize(str)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u A E I O U]
    consonants = alpha - vowels
    if vowels.include?(str[0])
      (str + 'way')
    elsif consonants.include?(str[0]) && consonants.include?(str[1]) && consonants.include?(str[2])
      (str[3..-1] + str[0..2] + 'ay')
    elsif consonants.include?(str[0]) && consonants.include?(str[1])
      (str[2..-1] + str[0..1] + 'ay')
    elsif consonants.include?(str[0])
      (str[1..-1] + str[0] + 'ay')
    else
      str
    end
  end

  def to_pig_latin(str)
    result = []
    alpha = ('a'..'z').to_a
    alpha_caps = ('A'..'Z').to_a
    vowels = %w[a e i o u A E I O U]
    consonants = (alpha + alpha_caps) - vowels
    words = str.split(" ")

    words.each do |w|
      if vowels.include?(w[0])
        result << (w + 'way')
      elsif consonants.include?(w[0]) && consonants.include?(w[1]) && consonants.include?(w[2])
        result << (w[3..-1] + w[0..2] + 'ay')
      elsif consonants.include?(w[0]) && consonants.include?(w[1])
        result << (w[2..-1] + w[0..1] + 'ay')
      elsif consonants.include?(w[0])
        result << (w[1..-1] + w[0] + 'ay')
      else
        result << w
      end
    end
    result.join(" ")
  end
end
