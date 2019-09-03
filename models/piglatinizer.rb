class PigLatinizer
  VOWELS = /a|e|i|o|u/i

  def piglatinize(word)
    if word[0] =~ VOWELS
      word + 'way'
    else
      pieces = word.split(VOWELS)
      first_consonant = pieces.first
      word[first_consonant.length..-1] + first_consonant + 'ay'
    end
  end

  def to_pig_latin(str)
    str.split(" ").map do |word|
      piglatinize(word)
    end.join(" ")
  end
end
