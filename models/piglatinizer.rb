require 'pry'

class PigLatinizer
  attr_accessor :word, :phrase
  @@vowels = %w[a e i o u A E I O U]

  def piglatinize(word)
    @word = word
    if @@vowels.include?(@word[0])
      @word + 'way'
    else
      idx = @word.index(/[aeiouAEIOU]/)
      @word[idx, @word.length-idx] + @word[0, idx] + "ay"

      # #index gives you the index number of the first element that returns true for the given condition in block
      # difference between .. and , in array ranges
      # word[0, 2] – starting with index 0, give me 2 elements
      # word[0…2] – give me elements 0 until 2
    end
  end

  def to_pig_latin(phrase)
    @phrase = phrase
    words = phrase.split(" ") 
    words.collect! do |word|
      if @@vowels.include?(word[0])
        word + 'way'
      else
        idx = word.index(/[aeiouAEIOU]/)
        word[idx, word.length-idx] + word[0, idx] + "ay"
      end
    end
    words.join(" ")
  end
end