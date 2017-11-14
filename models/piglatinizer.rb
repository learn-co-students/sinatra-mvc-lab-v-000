class PigLatinizer
  attr_accessor :text

  def piglatin(text)
    if text.length == 1
      piglatinize(text)
    elsif text.length > 1
      to_pig_latin(text)
    end
  end

  def start_with_vowel(word)
    word + "way"
  end

  def start_with_consonant(word)
    vowels = "aeiouAEIOU"
    word.chars.each_index do |idx|
      if vowels.include?(word[idx])
        return word[idx..-1] + word[0...idx] + "ay"
      end
    end
  end

  def to_pig_latin(text)
    words = text.split(" ")
    new_words = words.map do |word|
      if word.start_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
        start_with_vowel(word)
      else
        start_with_consonant(word)
      end
    end
    new_words.join(" ")
  end

  def piglatinize(text)
    if text.downcase.start_with?("a", "e", "i", "o", "u")
      start_with_vowel(text)
    else
      start_with_consonant(text)
    end
  end
end
