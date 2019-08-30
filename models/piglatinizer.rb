class PigLatinizer

def piglatinize(word)
  vowels = ["a", "e", "i", "o", "u"]

  if vowels.include?(word[0].downcase)
    word = word << "way"
  else
    other_word = ""
    while !vowels.include?(word[0].downcase)
      other_word << word[0]
      word = word.split("")[1..-1].join
    end
      word + other_word + "ay"
  end
end

def to_pig_latin(string)
  string.split.collect{|word| piglatinize(word)}.join(" ")
end

end
