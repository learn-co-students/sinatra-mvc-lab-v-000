
class PigLatinizer
 attr_accessor :text

  def piglatinize(word)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    if vowels.include?(word[0].downcase)
      word + 'way'
    elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase) && consonants.include?(word[2].downcase)
      word[3..-1] + word[0..2] + 'ay'
    elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase)
      word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include?(word[0].downcase)
      word[1..-1] + word[0] + 'ay'
    else
      word # return unchanged
    end
  end

  def to_pig_latin(text)
    result = []
    words = text.split(" ")
    words.each do |word|
      result << piglatinize(word)
    end
    result.join(' ')
  end

end
