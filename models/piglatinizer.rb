class PigLatinizer

  def piglatinize(input)
  first_vowel = input.index(/[aeiou]/i)

    if first_vowel == 0
      input + 'way'
    else
      a = input.slice!(0..first_vowel-1)
      input + a + 'ay'
    end

  end

  def to_pig_latin(input)
    input.split(" ").map {|word| piglatinize(word)}.join(" ")
  end

end
