class PigLatinizer

  attr_reader :text

  def piglatinize(text)
    if text.start_with?('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')
      text = text + "way"
    else
      num = text.index(/[aeiou]/)
      t_string = text.slice!(0..num - 1)
      text = text + t_string + "ay"
    end
    text
  end

  def to_pig_latin(phrase)
    pig_words = phrase.split
    pig_words.collect{ |p| piglatinize(p)}.join(" ")
  end

end
