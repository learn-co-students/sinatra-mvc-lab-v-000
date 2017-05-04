class PigLatinizer

  def piglatinize(str)
    alphabet = ('a'..'z').to_a + ('A'..'Z').to_a
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    consonants = alphabet - vowels

    if vowels.include?(str[0])
      str + 'way'
    elsif consonants.include?(str[0]) && consonants.include?(str[1]) && consonants.include?(str[2])
      str[3..-1] + str[0..2] + 'ay'
    elsif consonants.include?(str[0]) && consonants.include?(str[1])
      str[2..-1] + str[0..1] + 'ay'
    elsif consonants.include?(str[0])
      str[1..-1] + str[0] + 'ay'
    else
      str
    end
  end

  def to_pig_latin(words)
    words_arr = words.split(" ")

    words_arr.map do |word|
      self.piglatinize(word)
    end.join(" ")
  end
end
