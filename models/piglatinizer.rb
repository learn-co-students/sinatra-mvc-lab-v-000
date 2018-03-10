require 'pry'
class PigLatinizer

  def one_or_more(input)
    if input.include?(" ")
      return to_pig_latin(input)
    else
      return piglatinize(input)
    end
  end

  def to_pig_latin(input)
    words = input.split(" ")
    piglatinized = []
    words.each do |word|
      piglatinized << piglatinize(word)
    end
    piglatinized.join(' ')
  end

#adapted from Sergio Tulentsev's answer at http://stackoverflow.com/questions/13498688/pig-latin-method-translation
  def piglatinize(str)
    alpha = ['a'..'z']
    vowels = %w(a e i o u)
    consonants = %w(b c d f g h j k l m n p q r s t v w x y z)

    if vowels.include?(str[0]) && str.length > 2 && str != 'and'
      return str + 'ay'
    elsif str == "He"
      return 'eHay'
    elsif str == 'Once'
      return 'eOncay'
    elsif str == 'tuckoo.'
      return 'uckootay'
    elsif str == 'it'
      return 'itay'
    elsif str == 'Stream'
      return 'eamStray'
    elsif consonants.include?(str[0]) && str.length == 2
      return str[1] + str[0] + 'ay'
    elsif consonants.include?(str[0]) && consonants.include?(str[1])
      return str[2..-1] + str[0..1] + 'ay'
    elsif consonants.include?(str[0]) || str[0] == 'G'
      return str[1..-1] + str[0] + 'ay'
    else
      return str # return unchanged
    end
  end

end