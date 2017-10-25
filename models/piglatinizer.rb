class PigLatinizer
  attr_reader :text

  def piglatinize(word)
    if word =~/^[AEIOUaeiou]/
      word = word << "way"
    else
      parts = word.partition(/[aeiou]/)
      word = parts[1] + parts[2] + parts[0] + "ay"
    end
  end

  def to_pig_latin(text)
    phrase = []
    phrase_array = text.split
    phrase_array.collect do |word|
      piglatinize(word)
    end.join(" ")
  end
end
