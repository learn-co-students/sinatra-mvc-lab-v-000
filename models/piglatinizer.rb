class PigLatinizer

  def piglatinize(word)
    ( word[0].match(/[aeiou]/i) ) ? word + 'way' : consonant_word(word)
  end

  def consonant_word(word)
    first_vowel_index = word.index(/[aeiou]/) || 0
   
    word[first_vowel_index, word.length] + word[0, first_vowel_index] + 'ay'
  end

  def to_pig_latin(sentence)
    sentence.split(' ').map { |word|  piglatinize(word) }.join(' ')
  end

end