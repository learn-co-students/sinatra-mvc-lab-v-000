class PigLatinizer

  def piglatinize(word)
    first_letter = word[0]
    if !first_letter.scan(/[^aeiouy]/i).empty? && !word.match(/[aeiouy]/).nil?
      first_voyel = word.match(/[aeiouy]/)[0]
      voyel_position =  word.index(first_voyel)
      to_paste = word[0..voyel_position-1] + "ay"
      pig_word = word[voyel_position..-1]
      pig_word << to_paste
    elsif first_letter.match(/[aeiouy]/i)[0]
      word + "way"
    else
      puts "not a good word, try again"
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect { |w| piglatinize(w) }.join(" ")
  end

end
