class PigLatinizer

  def piglatinize(word)
    consonants = []
    vowels = []
    flag = 0
    if ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"].include?(word[0])
      return word + "way"
    end
    word.chars do |letter|
      if !["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"].include?(letter) && flag == 0#if letter is a consonant
        consonants << letter
      elsif flag == 1
        vowels << letter
      else #vowel
        flag = 1
        vowels << letter
      end
    end
    converted = vowels.concat(consonants)
    converted << "ay"
    converted.join
  end

  def to_pig_latin(phrase)
    words = phrase.strip.split(" ")
    converted = words.map do |word|
      piglatinize(word)
    end
    converted.join(" ")
  end

end
