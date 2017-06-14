class PigLatinizer

  def piglatinize(word)
    first_vowel_index = word.downcase.index(/[aeiou]/)

    if first_vowel_index == 0
      word + 'way'
    else 
      word[first_vowel_index..-1] + word[0..first_vowel_index - 1] + 'ay'
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
 end
end
