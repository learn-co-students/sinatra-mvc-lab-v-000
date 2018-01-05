class PigLatinizer

  def piglatinize(str)
    str2 = str.downcase
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    if vowels.include?(str2[0])
      str + 'way'
    elsif consonants.include?(str2[0]) && consonants.include?(str2[1]) && consonants.include?(str2[2])
      str[3..-1] + str[0..2] + 'ay'
    elsif consonants.include?(str2[0]) && consonants.include?(str2[1])
      str[2..-1] + str[0..1] + 'ay'
    elsif consonants.include?(str2[0])
      str[1..-1] + str[0] + 'ay'
    else
      str # return unchanged
    end
  end

  def to_pig_latin(text)
    arr = text.split(" ")
    arr2 = arr.map {|word| piglatinize(word)}
    arr2.join(" ")
  end
end
