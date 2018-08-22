class PigLatinizer

  VOWELS = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]

  def piglatinize(sentence)
    sentence_array = sentence.split(" ")

    array = sentence_array.map do |word|
        piglatinize_word(word)
    end
     array.join(" ")
  end

    def piglatinize_word(word)
      word_array = word.split("")
      if VOWELS.include?(word_array.first)
        word + "way"
      else

        while !VOWELS.include?(word_array.first)
          word_array.rotate!
        end
        word_array.join + 'ay'
      end
    end
end
