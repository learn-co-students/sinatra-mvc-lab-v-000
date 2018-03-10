class PigLatinizer

  def piglatinize(word)
    if (word[0] =~ /[aeiou]/i)
      case word[-1]
      when /[aeiou]/
        word += "way"
      when /y/
        word += "way"
      else
        word += "way"
      end
    else
      consonants = word.slice!(/^[^aeiou]*/)
      word += consonants + "ay"
    end
  end


  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end

p = PigLatinizer.new

puts p.piglatinize("pork")
