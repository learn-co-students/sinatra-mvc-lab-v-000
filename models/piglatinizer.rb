class PigLatinizer

  def piglatinize(user_phrase)
    @new_word = user_phrase.downcase.split("")
    vowels = ["a", "e", "i", "o", "u"]
    if vowels.include?(@new_word[0])
      latinized_word = begins_with_vowel.join("")
    else
      latinized_word = begins_with_consonant.join("")
    end
    latinized_word
  end

  def begins_with_vowel
    vowel_word = @new_word << "ay"
  end

  def begins_with_consonant
    if @new_word[0] == "q" && @new_word[1] == "u"
      qu = @new_word[0, 2].join("")
      spliced_word = @new_word.slice(2, 3)
      spliced_word << qa + "ay"
    else
      first_letter = @new_word[0]
      spliced_word = @new_word[1..-1]
      spliced_word << first_letter + "ay"
    end
  end

end
