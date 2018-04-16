class PigLatinizer

  def piglatinize(string)
    i = (string.split(" ").length==1) ? pl_word(string) : pl_phrase(string)
    i
  end

  def pl_word(word)
    if !consonant?(word[0])
      word = word + "w"
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end


  def pl_phrase(phrase)
  i = phrase.split.map do |word|
    pl_word(word)
  end
  i.join(' ')
  end



  def consonant?(charecter)
    !charecter.match(/[aAeEiIoOuU]/)
  end


end #End of class
