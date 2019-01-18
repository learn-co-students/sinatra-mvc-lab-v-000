class PigLatinizer
  def piglatinize(str)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels
    str_array = str.split(" ")

    str_array.map do |str|
      test_str = str.downcase
      if vowels.include?(test_str[0])
        str + 'way'
      elsif consonants.include?(test_str[0]) && consonants.include?(test_str[1]) && consonants.include?(test_str[2])
        str[3..-1] + str[0..2] + 'ay'
      elsif consonants.include?(test_str[0]) && consonants.include?(test_str[1])
        str[2..-1] + str[0..1] + 'ay'
      elsif consonants.include?(test_str[0])
        str[1..-1] + str[0] + 'ay'
      end
    end.join(" ")
  end
end
