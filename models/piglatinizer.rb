require 'pry'

class PigLatinizer

  attr_accessor :input

  def initialize
  end

  def piglatinize(words)
    arr = words.split(' ')
    if arr.size == 1
      self.char_move(words)
    elsif arr.size > 1
      arr.map do |word|
        self.char_move(word)
      end.join(' ')
    else
      "No words provided"
    end
  end

  def is_vowel?(letter)
    case letter
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

  def char_move(word)
    new_word = ""
    i = 0
    if is_vowel?(word[0])
      new_word = word + "way"
    else
      until is_vowel?(word[i +1])
        chars_to_add += word[i]
      new_word = word.slice(i, word.length - i) + chars_to_add + "way"
    end
    new_word
  end

  def to_pig_latin(words)
    arr = words.split(' ')
    if arr.size == 1
      self.char_move(words)
    elsif arr.size > 1
      arr.map do |word|
        self.char_move(word)
      end.join(' ')
    else
      "No words provided"
    end
end
end
