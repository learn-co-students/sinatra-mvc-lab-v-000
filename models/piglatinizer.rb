class PigLatinizer

  def piglatinize(text)
    letters = text.split("")
    vowel_index = letters.index { |l| l.match(/[aeiou]/i) }
    vowel_index.times { letters << letters.shift }
    letters.join + (vowel_index == 0 ? "way" : "ay")
  end

  def to_pig_latin(sentence)
    sentence.split.map { |w| piglatinize(w) }.join(" ")
  end

end
