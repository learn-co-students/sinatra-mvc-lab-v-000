class PigLatinizer

  def to_pig_latin(text)
    if text.include?(" ")
      text.split(" ").collect do |word|
        piglatinize(word)
      end.join(" ")
    else
      piglatinize(text)
    end
  end

  def piglatinize(word)
    letters = word.split("")
    first_vowel = letters.index {|letter| letter =~ /[aeiouAEIOU]/}
    if first_vowel == 0
      letters << "way"
    else
      beginning = letters.slice(0,first_vowel)
      letters.slice!(0,first_vowel)
      letters << beginning.join + "ay"
    end
    letters.join
  end

end
