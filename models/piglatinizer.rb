class PigLatinizer
  attr_accessor :word

  def vowel_checker(letter)
    letter.match(/[AEIOUaeiou]/) ? true : false;
  end

  def piglatinize(words)
      word_array = words.split(" ")
      piglatinized = word_array.map do |word|
        if vowel_checker(word[0]) == true
          word += "way"
        else
          array = word.split /([aeiou].*)/
          "#{array[1] + array[0]}ay"
        end
      end
      piglatinized.join(" ")
  end

end
