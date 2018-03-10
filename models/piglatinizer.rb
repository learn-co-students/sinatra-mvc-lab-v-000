class PigLatinizer

  def piglatinize(string)
    vowels = ["A","E","I","O","U"]

    if vowels.include?(string[0].upcase)
        "#{string}" + "way"
    else
        parts = string.split(/([aeiou].*)/)
        parts.reverse.join('') + 'ay'
      end
  end

  def to_pig_latin(phrase)
    phrase.split.map {|word| self.piglatinize(word)}.join(" ")
  end

end
