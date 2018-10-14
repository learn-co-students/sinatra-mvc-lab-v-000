class PigLatinizer

  def piglatinize(string)
    words = string.split(/\W+/)
    pl = words.collect do |word|
      self.pl_word(word)
    end
    pl.join(" ")
  end


  def consonant? (char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def pl_word(word)
    letters = word.chars

    if consonant?(letters[0]) && consonant?(letters[1]) && consonant?(letters[2])
      new_word = word.slice(3..-1) + word.slice(0..2)
    elsif consonant?(letters[0]) && consonant?(letters[1])
      new_word = word.slice(2..-1) + word.slice(0..1)
    elsif consonant?(letters[0])
      new_word = word.slice(1..-1) + word.slice(0)
    else
      new_word = word + "w"
    end

    pl = new_word + "ay"
    pl
  end

end
