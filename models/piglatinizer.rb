class PigLatinizer
  def is_vowel?(letter)
    ["a", "e", "i", "o", "u"].include?(letter.downcase)
  end

  def piglatinize(word)
    letters = word.split("")

    if is_vowel?(letters[0])
      ordway = letters.join
      ordway += "way"
      ordway

    else
      cons = []
      i = 0
      until is_vowel?(letters[i])
        # binding.pry
        cons << letters[i]
        i += 1
      end

      ordway = (letters[i..-1] + cons).join
      ordway += "ay"
    end
  end

  def to_pig_latin(phrase)
    phrase.split(" ").collect do |word|
      piglatinize(word)
    end.join(" ")
  end
end
