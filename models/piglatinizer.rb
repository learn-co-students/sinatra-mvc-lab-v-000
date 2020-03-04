class PigLatinizer
  attr_reader :text

  def initialize
    @text = text
  end

  def consonant?(letter)
    !letter.match(/[AEIOUaeiou]/)
  end

  def piglatinize(text)
  #handles individual words

    if !consonant?(text[0]) # if 1st letter is a vowel
      word = text + "w"
    elsif # if first 3 letters are consonants
      consonant?(text[0]) && consonant?(text[1]) && consonant?(text[2])
      word = text.slice(3..-1) + text.slice(0..2)

    elsif # if first 2 letters are consonants
      consonant?(text[0]) && consonant?(text[1])
      word = text.slice(2..-1) + text.slice(0..1)

    else # if first letter is consonant
      word = text.slice(1..-1) + text.slice(0)
    end
    word + "ay"
  end

  def to_pig_latin(text)
  # handles sentences
  phrase = text.split.collect! do |word|
    piglatinize(word)
  end
  phrase.join(" ")
  end
end
