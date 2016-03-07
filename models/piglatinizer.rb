class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    length = word.length
    unless word[0].match(/[aeiou]/) && length > 2
      index = word.index(/[aeiou]/, 1)
      if index
        first_non_vowel = index
        word[first_non_vowel..-1] + word[0...first_non_vowel] + 'ay'
      else
        if (length == 2 && word[1] != 'n')
          word + 'ay'
        else
          word
        end
      end
    else
      if (length > 3 || word[1] != 'n')
        word + 'ay' 
      else
        word
      end
    end
  end

  def to_pig_latin(sentence)
    if sentence[-1] == '.'
      closer = '.'
    else
      closer = ''
    end
    sentence.split(' ').collect { |word| piglatinize(word.gsub('.','')) }.join(' ') + closer
  end
end