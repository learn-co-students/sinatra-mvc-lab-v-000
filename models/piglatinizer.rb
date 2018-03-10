class PigLatinizer
  def piglatinize(word)
    index = 0
    word.split('').each {|char|
      if char.downcase.match(/[aeiou]/)
        break
      end
      index += 1
    }
    if index == 0
      word + 'way'
    else
      word[index..-1] + word[0..(index-1)] + 'ay'
    end
  end

  def to_pig_latin(sentence)  
    words = sentence.split.map {|word|
      piglatinize(word)
    }
    words.join(' ')
  end
end