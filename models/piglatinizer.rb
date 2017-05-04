class PigLatinizer

  def to_pig_latin(phrase)
    words = phrase.split(" ")
    latinized_words = words.collect do |word|
      piglatinize(word)
    end
    latinized_words.join(" ")
  end

  def piglatinize(word)
    letters_array = word.split("")
    # if there's a vowel at the front, add "way" to the end
    if /[aeiouAEIOU]/ === letters_array[0]
      letters_array.push("way")
    # if there's a consonant at the front, move it to the end. Repeat until there's a vowel at the front, then add "ay" to the end
    else
      until /[aeiouAEIOU]/ === letters_array[0]
        first_letter = letters_array.shift()
        letters_array << first_letter
      end
      letters_array << "ay"
    end
    letters_array.join("")
  end

end
