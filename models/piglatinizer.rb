require 'pry'

class PigLatinizer

  attr_accessor :text

  def initialize(text=nil)
    @text = text
    @text = to_pig_latin(@text) if @text
  end

  def piglatinize(word)
    word = word.gsub(/[^\w\s\d]/,'')
    new_word = word
    non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    if non_pig_latin_words.include?(new_word)
      word
    elsif new_word[0].match(/[aeiou]/)
      new_word = word << "ay"
    elsif !new_word[0].match(/[aeiou]/) && !new_word[1].match(/[aeiou]/) && !new_word[2].match(/[aeiou]/)
      new_word = word << (word[0..2] + "ay")
      new_word = word[3...word.length]
    elsif !new_word[0].match(/[aeiou]/) && !new_word[1].match(/[aeiou]/)
      new_word = word << (word[0..1] + "ay")
      new_word = word[2...word.length]
    else
      new_word = word << (word[0] + "ay")
      new_word = word[1...word.length]
    end
    new_word
  end

  def to_pig_latin(text=nil)
    text.split(" ").map {|word| piglatinize(word)}.join(" ")
  end
end