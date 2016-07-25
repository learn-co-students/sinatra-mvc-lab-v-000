class PigLatinizer

# PigLatin Rules:
# begins_with_consonant => move letter to end + 'ay'
# begins_with_consonant_cluster => cluster to end + 'ay'
# begins_with_vowel => only add 'way' to end

  def piglatinize(word)
    vowels = %w[a e i o u A E I O U]

    if vowels.include?(word[0])
      word + "way"
    else
      new_word = []
      until vowels.include?(new_word[0])
      new_word = word.downcase.split(//)
      new_word << new_word.shift
      new_word.join
    end
    new_word.join + "ay"
    end
  end

  def to_pig_latin(phrase)
    phrase.split.collect {|word| piglatinize(word)}.join(" ")
  end
end
