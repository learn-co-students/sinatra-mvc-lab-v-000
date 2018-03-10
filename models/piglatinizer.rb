class PigLatinizer


  def piglatinize(word)

    if word.match(/pl{1}/)
      word_ending = "#{word[0]}#{word[1]}ay"
      word.slice!("pl")
      "#{word}#{word_ending}"
    elsif word.match(/\bth{1}/)
        word_ending = "#{word[0]}#{word[1]}ay"
        word.slice!("th")
        "#{word}#{word_ending}"
    elsif word.match(/wh{1}/)
        word_ending = "#{word[0]}#{word[1]}ay"
        word.slice!("wh")
        "#{word}#{word_ending}"
    elsif word.match(/sk{1}/)
        word_ending = "#{word[0]}#{word[1]}ay"
        word.slice!("sk")
        "#{word}#{word_ending}"
    elsif word.match(/Str{1}/)
        word_ending = "#{word[0]}#{word[1]}#{word[2]}ay"
        word.slice!("Str")
        "#{word}#{word_ending}"
    elsif word.match(/ay{1}\b/)
      "ay#{word}"
    elsif word.match(/ay{1}\w/)
      word_beggining = "#{word[-3]}#{word[-2]}#{word[-1]}"
      word.slice!(-1)
      "#{word_beggining}#{word}"
    elsif word.match(/pr{1}/)
        word_ending = "#{word[0]}#{word[1]}ay"
        word.slice!("pr")
        "#{word}#{word_ending}"
    elsif word.match(/\b[GHqwrtypsdfghjklzxcvbnm]\w+\b/)
      word_ending = "#{word[0]}ay"
      word.slice!(0)
      "#{word}#{word_ending}"
    elsif
      piglatinize_word = "#{word}way"
      piglatinize_word
    end
  end

  def to_pig_latin(words)
    word = words.split(" ")
    pig_latin_array = []
    word.map! do |w|
      pig_latin_word = piglatinize(w)
      pig_latin_array << pig_latin_word
    end
    pig_latin_array.join(" ")
  end

end
