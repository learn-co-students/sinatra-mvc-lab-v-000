class PigLatinizer

  def piglatinize(string)
    string.split(" ").map {|word| pig_latinize_word(word)}.join(" ")
  end

  def find_first_vowel(word)
    vowels = "aeiou"
    word.each_char.with_index do |char, i|
      return i if vowels.include?(char.downcase)
    end
  end

  def pig_latinize_word(word)
    vowels = "aeiou"
    first_vowel = find_first_vowel(word)
    if vowels.include?(word[0].downcase)
      word + "way"
    else
      word[first_vowel..-1] + word[0...first_vowel] + "ay"
    end
  end
end
