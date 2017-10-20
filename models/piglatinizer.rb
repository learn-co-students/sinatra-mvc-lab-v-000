require 'pry'

class PigLatinizer


  def piglatinize(word)
    vowels = "AEIOUaeiou"

    # Check to see if 1st letter is a vowel, if so, add 'way' to end
    if vowels.include?(word[0])
      "#{word}way"
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join
        binding.pry
      end
      word + consonants + 'ay'
    end
  end

  def to_pig_latin(input)
    input.split.map { |word| piglatinize(word) }.join(" ")
  end
end
