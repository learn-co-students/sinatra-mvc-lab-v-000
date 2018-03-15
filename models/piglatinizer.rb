class PigLatinizer

  def piglatinize(text)
    piglatinized_text = text.split(" ").collect do |word|
      case word
      when /\A[^aeiouAEIOU]/
        words_beginning_with_consonant(word)
      when /\A[aeiouAEIOU]/
        words_beginning_with_vowel(word)
      end
    end
    piglatinized_text.join(" ")
  end

  def words_beginning_with_consonant(word)
    first_vowel_index = word.index(/[aeiou]/)
    word[first_vowel_index..-1] + word[0..first_vowel_index-1] + "ay"
  end

  def words_beginning_with_vowel(word)
    word + "way"
  end
end
