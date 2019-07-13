class PigLatinizer


  def translate_word(text)

    if /^[aeiou]/i.match(text)
      "#{text}way"
    else
      parts = text.split(/([aeiou].*)/)
      "#{parts[1]}#{parts[0]}ay"

    end

  end

  def piglatinize(text)

    words = text.split(' ')
    words.map {|word| translate_word(word)}.join(' ')

  end
end
