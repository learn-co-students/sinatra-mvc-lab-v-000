class PigLatinizer

  def piglatinize(word)
    if word.downcase.start_with?("a","e","i","o","u")
      [word].push("way").join
    else
      consonants = word.split(/[aeiou]\w*/) #=> ["p"]
      vowels = word.scan(/[aeiou]\w*/) #=> ["ork"]
      vowels.push(consonants, "ay").join
    end
  end

  def to_pig_latin(text)
    text.split(" ").collect { |word| self.piglatinize(word) }.join(" ")
  end

end
