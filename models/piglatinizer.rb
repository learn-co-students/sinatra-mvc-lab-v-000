class PigLatinizer

  attr_accessor :phrase

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    if vowels.include? word[0]
      word << "way"
    else
      word << word.slice!(/^[^aeiou]*/i || "") + 'ay'
    end
  end

  def to_pig_latin(phrase)
    phrase.split.each{|word| piglatinize(word)}.join(" ")
  end
end