class PigLatinizer

  def piglatinize(text)
    words = text.split(' ')
    #The somehow move consonants to back = .push
    # Then concatenate the "ay"
    words.map {|word| translate_word(word)}.join(' ')
  end


end
