class PigLatinizer

VOWELS = ["A","E","I","O","U","a","e","i","o","u"]

  def piglatinize(words)
    @pl = words.split.map do |word|
      if VOWELS.include?(word[0])
        word + "way"
      elsif !VOWELS.include?(word[0]) && !VOWELS.include?(word[1]) && VOWELS.include?(word[2])
        word[2..-1] + word[0..1] + "ay"
      elsif !VOWELS.include?(word[0]) && !VOWELS.include?(word[1]) && !VOWELS.include?(word[2])
        word[3..-1] + word[0..2] + "ay"
      else
        word[1..-1] + word[0] + "ay"
      end
    end
    @pl.join(" ")
  end

  def to_pig_latin(words)
    piglatinize(words)
  end
end
