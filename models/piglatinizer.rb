class PigLatinizer
  VOWELS = ["a","e","i","o","u","A","E","I","O","U"]
  def piglatinize(word)
    a = word.split("")
    if vowel?(a[0])
      a << "way"
    else
      until vowel?(a[0]) do
        a = a.rotate
      end
      a << "ay"
    end
    a.join
  end

  def vowel?(letter)
    VOWELS.include?(letter)
  end

  def to_pig_latin(sent)
    sent.split.collect{|word| piglatinize(word)}.join(" ")
  end
end
