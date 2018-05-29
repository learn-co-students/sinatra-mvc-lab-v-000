class PigLatinizer
  LETTERS = ('a'..'z').to_a
  VOWELS = %w{ a e i o u y }
  CONSONANTS = LETTERS - VOWELS

  def piglatinize(text)
    # call self.piglatinize_text on each word
    # and return the colected the results
    
    return text.split(' ').collect do |word|
      self.piglatinize_word(word)
    end.join(' ')
  end

  def piglatinize_word(word)
    word = word.split('')

    if word[-2] =='a' && word.last == 'y'
      # if word ends with ay add ay to the beginning instead

      word.unshift('ay')

    elsif CONSONANTS.include?(word[0].downcase) && CONSONANTS.include?(word[1].downcase) && CONSONANTS.include?(word[2].downcase)
      # When words begin with consonant clusters (multiple consonants that form one
      # sound), the whole sound is added to the end when speaking or writing.

      word.rotate!(3)
      word << 'ay'

    elsif CONSONANTS.include?(word[0].downcase) && CONSONANTS.include?(word[1].downcase)
      # When words begin with consonant clusters (multiple consonants that form one
      # sound), the whole sound is added to the end when speaking or writing.

      word.rotate!(2)
      word << 'ay'

    elsif CONSONANTS.include?(word[0].downcase)
      # For words that begin with consonant sounds, all letters before the initial
      # vowel are placed at the end of the word sequence. Then, "ay" is added

      word.rotate!
      word << 'ay'

    elsif VOWELS.include?(word[0].downcase)
      # For words that begin with vowel sounds, one just adds "way" to the end

      word << 'way'
    end

    word.join('')
  end
end
