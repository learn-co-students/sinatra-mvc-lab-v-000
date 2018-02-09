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
    if is_vowel?(word[0])
      new_word = word + "way"
    else
      char = word[0]
      new_word = word.slice(1, word.length - 1) + char + "ay"
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
