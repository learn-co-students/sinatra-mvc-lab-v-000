class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    if word.length > 1 && word != "in" && word != "an" && word != "and"
      first_vowel = word.index(/[aeiouAEIOU]/)
      word = word + word[0...first_vowel] + "ay"
      word[0...first_vowel] = ""
      return word
    else
      return word
    end
  end

  def to_pig_latin(words)
    words = words.gsub(".","")
    pig_latinized = ""
    words.split(" ").each do |word|
      pig_latinized << piglatinize(word) + " "
    end
    pig_latinized.strip
  end
end