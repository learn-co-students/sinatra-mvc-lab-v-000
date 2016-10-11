class PigLatinizer
  attr_accessor :word

  Alpha = ('a'..'z').to_a + ('A'..'Z').to_a
  Vowels = %w[a e i o u A E I O U]
  Consonants = Alpha - Vowels

  def piglatinize(word)
    if Vowels.include?(word[0])
      word + 'way'
    elsif Consonants.include?(word[0]) && Consonants.include?(word[1]) && Consonants.include?(word[2])
      word[3..-1] + word[0..2] + 'ay'
    elsif Consonants.include?(word[0]) && Consonants.include?(word[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif Consonants.include?(word[0])
      word[1..-1] + word[0..0] + 'ay'
    end
  end

  def to_pig_latin(sentence)
    words = sentence.split(' ')
    words.map{|word| piglatinize(word)}.join(' ')
  end

end