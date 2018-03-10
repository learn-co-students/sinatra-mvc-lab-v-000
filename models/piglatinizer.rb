class PigLatinizer

  def piglatinize word
    first_letters = []
    word = word.split("")
    if /[aeiou]/.match(word[0].downcase)
      word << "way"
      word = word.join("")
    else
      until /[aeiou]/.match(word[0].downcase)
        first_letters << word.shift
      end
      word << first_letters.join
      word << "ay"
      word = word.join
    end
  end

  def to_pig_latin text
    text.split(" ").map{|word| piglatinize(word)}.join(" ")
  end
end