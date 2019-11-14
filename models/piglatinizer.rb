class PigLatinizer
  def to_pig_latin(user_phrase)
    user_phrase.split(" ").map { |word| piglatinize(word) }.join(" ")
  end

  def piglatinize(word)
 		if word.downcase.start_with?("a", "e", "i", "o", "u")
 			word += "way"
 		else
 			word.partition(/[aeio]|(?<!q)u/i).rotate.push("ay").join()
 		end
  end
end
