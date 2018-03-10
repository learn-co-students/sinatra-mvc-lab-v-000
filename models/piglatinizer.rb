require 'pry'

class PigLatinizer

  def piglatinize(string)
    letters = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = letters - vowels

    string.gsub(/\w+/) do |word|
      if vowels.include?(word.downcase[0])
        word + "way"
      else
        idx = word.index(/[aeiou]/)
        word[idx, word.length-idx] + word[0,idx] + "ay"
      end
    end
  end

  def to_pig_latin(string)
    letters = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = letters - vowels

    string.gsub(/\w+/) do |word|
      if vowels.include?(word.downcase[0])
        word + "way"
      else
        idx = word.index(/[aeiou]/)
        word[idx, word.length-idx] + word[0,idx] + "ay"
      end
    end
  end

end
