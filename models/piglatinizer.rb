require 'pry'

class PigLatinizer
  attr_accessor :text

   def to_pig_latin(text)
    sentence = ""
    text.split(' ').each do |word|
      returned_word = piglatinize(word)
      sentence = sentence + " " + returned_word
    end
    sentence.strip!.sub('.', '')
  end

  def piglatinize(text)

    new_word = []
    piglatin_word = []
    sentence = ""
    piglatin_word = text.split('')
    deleted_letters = []
    returned_word = []
    ignored_words = ["a", "an", "and", "i", "the", "in"]

    text.split('').each do |letter|

      if letter.match(/\A[^aeiouy]/)
          deleted_letters << text.split('').delete(letter)
          piglatin_word.slice!(piglatin_word.index(letter))
          new_word = piglatin_word + deleted_letters
          modified_word = new_word.join('') + "ay"
          returned_word << modified_word

          break if new_word.join('').start_with?("a","e","i","o","u","y")

      elsif text.start_with?("a","e","i","o","u","y") && !ignored_words.include?(text)
           modified_word = text + "way"
           returned_word << modified_word
           break
      elsif ignored_words.include?(text)
           returned_word << text
           break
      end
    end
    returned_word = returned_word.take_while {|word| word != nil}.last
  end
end