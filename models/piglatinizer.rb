class PigLatinizer
  
  def piglatinize(word)
    first_vowel = word.scan(/[aeiou]/).first
    split_array = word.split(//)
    if split_array.count > 1
      if split_array.index(first_vowel) == 0
        split_array << "yay"
        split_array.join
      else
        last_syllable = split_array.shift(split_array.index(first_vowel))
        split_array << last_syllable
        split_array << "ay"
        split_array.join
      end
    else
      word
    end
  end
  
  def to_pig_latin(words)
    sentence = words.split(" ")
    sentence.collect do |word|
      piglatinize(word)
    end.join(" ")
  end
  
end