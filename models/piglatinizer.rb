class PigLatinizer
  attr_reader :text

  def piglatinize(text)
    @text = text.downcase
    if text.length == 1
      piglatinize_word
    else
      piglatinize_sentence
      # binding.pry
    end
  end

  def piglatinize_sentence

  end

  def piglatinize_word(word)
    consonant = text.scan(/[bcdfghjklmnpqrstvwxyz]/)
    vowel = text.scan(/[aeoui]/)

    # if word.start_with?(consonant)

  end

end
