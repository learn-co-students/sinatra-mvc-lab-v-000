class PigLatinizer
  VOWELS = %w[a e i o u]

  def piglatinize(word)
    return word if %w[i to too a an and on in me].include?(word)

    index = ""
    word = word.gsub(".", "")
    word.split("").each_with_index do |c, i|
      if VOWELS.include?(c)
        index = i
        break
      end
    end
    starts_with_vowel?(word) || "#{word[index..-1]}#{word[0..(index-1)]}ay"
  end

  def starts_with_vowel?(word)
    if VOWELS.include?(word[0])
      "#{word}ay"
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect{|word| piglatinize(word)}.join(" ")
  end
end
