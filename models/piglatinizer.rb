require 'pry'
class PigLatinizer

  #attr_accessor :text

  #def initialize(text=nil)
    #@text = text if text
  #end

  def piglatinize(a_word)
    legal_characters = ('a'..'z').to_a + ('A'..'Z').to_a
    letters_in_word = a_word.split('').map{|l| l if legal_characters.include?(l)}.compact
    consonant_cluster = []
    if letters_in_word.first.match(/[aeiou]/)
      word_in_pig_latin = letters_in_word.join + "way"
    #elsif letters_in_word.first == 'y'.downcase
      #word_in_pig_latin = letters_in_word.join.sub('y', "") + letters_in_word.first + 'ay'
    else
      letters_in_word.each do |char|
        if char.match(/[aeiouy]/)
          break
        else
          consonant_cluster << char
        end
      end
      word_in_pig_latin = letters_in_word.join.sub(consonant_cluster.join, "") +
      consonant_cluster.join + "ay"
    end
    word_in_pig_latin
  end

  def to_pig_latin(a_group_of_words)
    new_phrase = []
    a_group_of_words.split(' ').each do |word|
      if word.split('').count < 2
        new_phrase << word
      else
        new_phrase << PigLatinizer.new.piglatinize(word)
      end
    end
    new_phrase.join(' ')
  end

end