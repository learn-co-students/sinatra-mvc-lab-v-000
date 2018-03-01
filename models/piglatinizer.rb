class PigLatinizer

  def to_pig_latin(string)
    if string == ""
      puts "You have to give me something to PigLatinize!"
    else
      string.split(" ").map {|word| piglatinize(word)}.join(" ")
    end
  end

  def piglatinize(word)
    if word.match?(/^[aeiou]\w*/i)
      word.concat("way")
    else
      word.concat(word.slice!(/^[^aeiou]*/i || "")).concat("ay")
    end
  end

end
