class PigLatinizer
  
  def split_on_vowels(word)
    word.split(/([aeiou].*)/)
  end

  def piglatinize(word)
    if %w(a e i o u).include?(word[0].downcase)
      word + 'way'
    else
      arr = split_on_vowels(word)
      arr[1] + arr[0] + 'ay'
  end
end

  def to_pig_latin(phrase)
  phrase.split(' ').collect { |word| piglatinize(word) }.join(' ')
  end

end