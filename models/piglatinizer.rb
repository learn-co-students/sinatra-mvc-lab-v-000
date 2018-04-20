class PigLatinizer

  def consonant?(first_letters)
    true if first_letters.downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
  end

  def one_word(text)
    new_word = text.split('')

    if consonant?(text[0]) && consonant?(text[1]) && consonant?(text[2])
      newer_word = new_word.rotate(3)
      newer_word.join('') << "ay"
    elsif consonant?(text[0]) && consonant?(text[1])
      newer_word = new_word.rotate(2)
      newer_word.join('') << "ay"
    elsif consonant?(text[0])
      newer_word = new_word.rotate(1)
      newer_word.join('') << "ay"
    else
      text.concat("way")
    end
  end

  def sentence(text)
    words = text.split(' ')
    words.collect do |w|
      one_word(w)
    end.join(' ')
  end

  def piglatinize(text)
    if text.split(' ').size == 1
      one_word(text)
    else
      sentence(text)
    end
  end
end
