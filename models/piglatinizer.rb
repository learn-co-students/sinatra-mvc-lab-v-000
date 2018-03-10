class PigLatinizer
  def piglatinize(string)
    string_array = string.split('')
    last_consonant = nil
    string_array.each_with_index do |letter, index|
      next unless is_a_vowel?(letter)
      last_consonant = index - 1 unless index == 0
      break
    end
    pig = string_array.slice!(0..last_consonant) if last_consonant
    if pig
      string_array.push(pig).push('ay').flatten.join
    else
      string_array.push('way').flatten.join
    end
  end

  def to_pig_latin(string)
    string_array = string.split(' ')
    string_array.map { |word| piglatinize(word) }.join(' ')
  end

  def is_a_vowel?(letter)
    letter.match(/[aieouAIEUO]/)
  end
end
