require 'pry'

class PigLatinizer

  def piglatinize(word)
    vowels = %w[a e i o u A E I O U]

    if vowels.include?(word[0])
      word + 'way'
    else
      idx = word.index(/[aeiouAEIOU]/)
      word[idx, word.length-idx] + word[0, idx] + "ay"

      # #index gives you the index number of the first element that returns true for the given condition in block
      # difference between .. and , in array ranges
      # word[0, 2] – starting with index 0, give me 2 elements
      # word[0…2] – give me elements 0 until 2
    end
  end

  def to_pig_latin(phrase)
    # #split string into separate strings for each word
    # #collect array of piglatinized words
    # #join with a space betwen each word and make into string

    phrase.split.collect{|word| piglatinize(word)}.join(" ")
  end
end
