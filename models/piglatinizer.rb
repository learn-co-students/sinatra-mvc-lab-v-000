

class PigLatinize
  def PigLatinize(word)
    vowels = ["a", "e", "i", "o", "u"]

    if vowels.include?(word[0].downcase)
      word = word << "way"
    else
      otherword = ""
      while !vowels.include?(word[0])
        otherword << word[0]
        word = word.split("")[1..-1].join
      end
      word + otherword + "ay"
    end
  end

  def pig_string(string)
    string.split.collect{|word| PigLatinize(word)}.join(" ")
  end

end
