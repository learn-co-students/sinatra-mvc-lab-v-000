class PigLatinizer

  def piglatinize_sentence(text)
    words = text.split(" ")
    words.map { |word| piglatinize(word) }.join(" ")
  end

  def piglatinize(word)
    vowels = "aeiou"
    if word.split(" ").length > 1
      piglatinize_sentence(word)
    else
      if vowels.include?(word.downcase[0])
        word + "way"
      else
        until vowels.include?(word.downcase[0])
          word = word[1..-1] + word[0]
        end
        word + "ay"
      end
    end
  end
end
