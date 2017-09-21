class PigLatinizer
  attr_reader :text

  def initialize
    @text = text
  end

  def piglatinize(text)
    letters = text.split("")

    if letters[letters.length-2] == "a" && letters[leters.length-1] == "y"
      new = "ay" + letters.join
    elsif text.include?("ay")
      new = "ay" + letters[letters.length-1] +
    #word begins with two consonants
    elsif /[^aeiouAEIOU]/.match(letters[0]) != nil && /[^aeiou]/.match(letters[1]) != nil
      const1 = letters.shift
      const2 = letters.shift
      new = letters.join + const1 + const2 + "ay"
    #word begins with a vowel
    elsif /[aeiouAEIOU]/.match(letters[0]) != nil && /[^aeiou]/.match(letters[1]) != nil
      new = letters.join + "way"
    elsif letters.size == 1
      new = letters.join + "way"
    else
      first_letter = letters.shift
      new = letters.join + first_letter + "ay"
    end
    new
  end
end
