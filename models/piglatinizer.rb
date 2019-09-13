require 'pry'

class PigLatinizer

  attr_accessor :input

  def piglatinize(word)
    new_word = ""
    if is_vowel?(word[0])
      new_word = word + "way"
    else
      i = 0
      chars = ""
      until is_vowel?(word[i])
        chars += word[i]
        i += 1
      end
      new_word = word.slice(i, word.length - 1) + chars + "ay"
    end
    new_word
  end

def is_vowel?(letter)
  case letter.downcase
  when "a"
    true
  when "e"
    true
  when "i"
    true
  when "o"
    true
  when "u"
    true
  else
    false
  end
end

  def to_pig_latin(words)
    arr = words.split(' ')
    arr.map do |word|
      self.piglatinize(word)
    end.join(' ')
  end

end
