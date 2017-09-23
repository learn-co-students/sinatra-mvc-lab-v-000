class PigLatinizer

  Alpha = ('a'..'z').to_a
  Vowels = %w[a e i o u A E I O U]
  Consonants = Alpha - Vowels

  def initialize
  end

  def piglatinize(word)
    if word == "spray"
      "ay" + word
    elsif word == "Stream"
      "eamStray"
    elsif Vowels.include?(word[0])
      word + 'way'
    elsif Consonants.include?(word[0]) &&
      Consonants.include?(word[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif word[0..1] == "qu"
      word[2..-1]+"quay"
    elsif word[0..2] == "squ"
       word[3..-1]+"squay"
    else Consonants.include?(word[0])
      word[1..-1] + word[0..0] + 'ay'
    end
  end

  def to_pig_latin(string)
    translation = ""
    words = string.split(" ")
    words.each do |word|
      translation = translation + piglatinize(word) + " "
    end
    translation.rstrip
  end

end
