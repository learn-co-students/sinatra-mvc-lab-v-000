
class PigLatinizer

  def piglatinize(text)
    if sentence?(text)
      piglatinize_sentence(text)
    else
      piglatinize_word(text)
    end
  end


  # --- HELPER METHODS --- #


  def sentence?(text)
    text.include?(" ")
  end

  def starts_with_vowel?(text)
    text.downcase.start_with?("a", "e", "i", "o", "u")
  end

  def is_uppercase?(ary)
    ary[0].upcase == ary[0]
  end

  def first_two_consonants?(text)
    text = text.downcase
    text_ary = text.split("")
    consonants = ("a".."z").to_a - ["a", "e", "i", "o", "u"]
    consonants.include?(text_ary[0]) && consonants.include?(text_ary[1])
  end

  def first_three_consonants?(text)
    text = text.downcase
    text_ary = text.split("")
    consonants = ("a".."z").to_a - ["a", "e", "i", "o", "u"]
    consonants.include?(text_ary[0]) && consonants.include?(text_ary[1]) && consonants.include?(text_ary[2])
  end


  def piglatinize_sentence(text)
    sentence_ary = text.split(" ")
    pl_sentence_ary = []
    sentence_ary.each do |word|
      pl_sentence_ary << piglatinize_word(word)
    end
    new_text = pl_sentence_ary.join(" ")
    new_text
  end


  # PIGLATINIZE_WORD METHOD
  def piglatinize_word(text)

    if starts_with_vowel?(text)
      new_string = text + "way"
      new_string

    elsif first_three_consonants?(text)
      text_ary = text.split("")
      if is_uppercase?(text_ary)
        text_ary[0] = text_ary[0]
        text_ary = text_ary.rotate(3)
        new_string = text_ary.join + "ay"
        new_string
      else
        text_ary = text_ary.rotate(3)
        new_string = text_ary.join + "ay"
        new_string
      end

    elsif first_two_consonants?(text)
      text_ary = text.split("")
      if is_uppercase?(text_ary)
        text_ary[0] = text_ary[0]
        text_ary = text_ary.rotate(2)
        new_string = text_ary.join + "ay"
        new_string
      else

        text_ary = text_ary.rotate(2)
        new_string = text_ary.join + "ay"
        new_string
      end

    else
      text_ary = text.split("")
      if is_uppercase?(text_ary)
        text_ary[0] = text_ary[0]
        text_ary = text_ary.rotate(1)
        new_string = text_ary.join + "ay"
        new_string
      else
        text_ary = text_ary.rotate(1)
        new_string = text_ary.join + "ay"
        new_string
      end
    end
  end
  # END PIGLATINIZE_WORD METHOD

end
