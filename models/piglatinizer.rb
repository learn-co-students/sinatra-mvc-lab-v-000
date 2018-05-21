class PigLatinizer


  def piglatinize(string)
    words = string.split(' ')
    words.collect do |word|
      translate(word)
    end.join(' ')
  end

  def translate(string)
    str = string.downcase
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels
    const_split = string.split(/([aeiou].*)/)
    if vowels.include?(str[0])
      string + 'way'
    # elsif consonants.include?(str[0]) && consonants.include?(str[1])
    #
    #   string[2..-1] + string[0..1] + 'ay'
    # elsif consonants.include?(str[0])
    #   string[1..-1] + string[0] + 'ay'
    else
      const_split[1] + const_split[0] + 'ay'
       # return unchanged
    end
  end

end
