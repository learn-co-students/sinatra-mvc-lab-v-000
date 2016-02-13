class PigLatinizer

  def piglatinize(word)
    return word if !word.match(/[^AEIOUaeiou]/)
    mix = word.slice!(/^[^AEIOUaeiou]+/)
    mix = "" if !mix
    word + mix + 'ay'
  end

  def to_pig_latin(sentence)
    new_sentence = sentence.split(" ").map do |word|
      piglatinize(word)
    end
    new_sentence.join(" ")
  end

end
