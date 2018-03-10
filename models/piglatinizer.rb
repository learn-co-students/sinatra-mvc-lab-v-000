class PigLatinizer

# PigLatin Rules:
# begins_with_consonant => move letter to end + 'ay'
# begins_with_consonant_cluster => cluster to end + 'ay'
# begins_with_vowel => only add 'way' to end

  def piglatinize(word)
    vowels = %w[a e i o u A E I O U]

    if vowels.include? word[0]
      word << "way"
    else
      new_word = ""
      while !vowels.include?(word[0])
        new_word << word[0]
        word = word.split(//)[1..-1].join
      end
      word + new_word + "ay"
    end
  end

  def to_pig_latin(phrase)
    phrase.split.collect {|word| piglatinize(word)}.join(" ")
  end
end
