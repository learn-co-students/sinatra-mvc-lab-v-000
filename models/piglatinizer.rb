class PigLatinizer

  def piglatinize(word)
    first_vowel_at_index = word.downcase.index(/[aeiou]/)
    if first_vowel_at_index == 0 
      word + "way"
    elsif 
      initial_consonants = word[0..first_vowel_at_index-1]
      rest_of_word = word[first_vowel_at_index..-1]
      rest_of_word + initial_consonants + "ay"
    end
  end

  def to_pig_latin(phrase)
    words = phrase.split(" ")
    words.map do |word|
      piglatinize(word)
    end.join(" ")
  end
end