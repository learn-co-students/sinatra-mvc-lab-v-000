class PigLatinizer

  def piglatinize(word)
    if word[0].match(/[aeiou]/i)
      word + "way"
    else
      part1 = []
      part2 = []
      index = word.split("").find_index{|i| i.match(/[aeiou]/i)}

      for i in 0...index
        part1 << word[i]
      end
      for i in index...word.length
        part2 << word[i]
      end

      (part2 + part1).join("") + "ay"
    end
  end

  def to_pig_latin(string)
    string.split(" ").collect {|word| piglatinize(word)}.join(" ")
  end

end
