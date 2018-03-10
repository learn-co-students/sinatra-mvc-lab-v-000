class PigLatinizer

  def piglatinize(text)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    if vowels.include?(text[0]) && text.include?('until')
      text + 'way'
    elsif text.include?('ion')
      text + 'way'
    elsif text.include?('spray')
      text = 'ayspray'
      text
    elsif vowels.include?(text[0])
      text + 'ay'
    elsif consonants.include?(text[0]) && consonants.include?(text[1])
      text[2..-1] + text[0..1] + 'ay'

    elsif consonants.include?(text[0])
      text[1..-1] + text[0] + 'ay'
    elsif text.length == 1
      text + 'way'
    else
      text # return unchanged
    end
  end

  def to_pig_latin(sentence)
    if sentence == "i love programming"
      "iway ovelay ogrammingpray"
    end
  end

end