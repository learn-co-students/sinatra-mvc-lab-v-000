class PigLatinizer

  def to_pig_latin(words)
    arr = words.split(" ")
    pig = arr.map{|w| piglatinize(w)}
    pig.join(" ")
  end

  def piglatinize(word)

    case category(word)
    when 0
      return word + "way"
    when 1
      return word.slice(1..-1) + word[0] + "ay"
    when 2
      return word.slice(2..-1) + word[0..1] + "ay"
    when 3
      return word.slice(3..-1) + word[0..2] + "ay"
    end
  end

  def category(word)
    return 0 if starts_with_vowel?(word) || word.length == 1
    return 1 unless starts_with_two_consonants?(word)
    return 2 unless starts_with_three_consonants?(word)
    return 3
  end

  def starts_with_vowel?(word)
    "aeiou".include?(word.downcase[0])
  end

  def starts_with_two_consonants?(word)
    "bcdfghjklmnpqrstvwxyz".include?(word.downcase[0]) && "bcdfghjklmnpqrstvwxyz".include?(word.downcase[1])
  end

  def starts_with_three_consonants?(word)
    "bcdfghjklmnpqrstvwxyz".include?(word.downcase[2])
  end

end
