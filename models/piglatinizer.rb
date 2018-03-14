class PigLatinizer
  attr_reader :text

  def initialize
    @text = text
  end

  def piglatinize(text)

    if !consonant?(text[0])
      word = text + "w"
    elsif consonant?(text[0]) && consonant?(text[1]) && consonant?(text[2])
      word = text.slice(3..-1) + text.slice(0..2)
    elsif consonant?(text[0]) && consonant?(text[1])
      word = text.slice(2..-1) + text.slice(0..1)
    else
      word = text.slice(1..-1) + text.slice(0)
    end
    word + "ay"
  end

  def consonant?(letter)
    !letter.match(/[AaEeIiOoUu]/)
  end

  def to_pig_latin(text)
  text.split.collect! { |word| piglatinize(word)}.join(" ")
  end
end
