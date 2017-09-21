class PigLatinizer
  attr_reader :text

  def initialize
    @text = text
  end

  def piglatinize(text)
    letters = text.split("")

    if letters[letters.length-2] == "a" && letters[letters.length-1] == "y"
      new = "ay" + letters.join
    #word begins with three consonants
    elsif /[^aeiouAEIOU]/.match(letters[0]) != nil && /[^aeiou]/.match(letters[1]) != nil && /[^aeiou]/.match(letters[2]) != nil
      const1 = letters.shift
      const2 = letters.shift
      const3 = letters.shift
      new = letters.join + const1 + const2 + const3 + "ay"
    #word begins with two consonants
    elsif /[^aeiouAEIOU]/.match(letters[0]) != nil && /[^aeiou]/.match(letters[1]) != nil
      const1 = letters.shift
      const2 = letters.shift
      new = letters.join + const1 + const2 + "ay"

    elsif letters[letters.length-1] == "s" && letters.size > 3
      s = letters.pop
      new = "ay" + s + letters.join
    #word begins with a vowel
    elsif /[aeiouAEIOU]/.match(letters[0]) != nil #&& /[^aeiou]/.match(letters[1]) != nil
      new = letters.join + "way"
    elsif letters.size == 1
      new = letters.join + "way"
    else
      first_letter = letters.shift
      new = letters.join + first_letter + "ay"
    end
    new
  end

  def to_pig_latin(phrase)
    pig_words = Array.new
    words = phrase.split(" ")
    words.each do |word|
      pig_words << piglatinize(word)
    end
    pig_words.join(" ")
  end

end
