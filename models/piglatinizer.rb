class PigLatinizer

  def piglatinize(phrase)
    split_phrase = phrase.split(' ')
    new_phrase = []
    consonants = [ 'b', 'B', 'c', 'C', 'd', 'D', 'f', 'F', 'g', 'G', 'h', 'H', 'j', 'J', 'k', 'K', 'l', 'L', 'm', 'M', 'n', 'N', 'p', 'P', 'q', 'Q', 'r', 'R', 's', 'S', 't', 'T', 'v', 'V', 'x', 'X', 'z', 'Z', 'w', 'W', 'y', 'Y']
    vowels = ['a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U']

    split_phrase.each do |word|
      if consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
        new_word = word.slice(3, word.length)
        new_word << word.slice(0, 3)
        new_word << "ay"
        new_phrase << new_word
      elsif consonants.include?(word[0]) && consonants.include?(word[1])
        new_word = word.slice(2, word.length)
        new_word << word.slice(0, 2)
        new_word << "ay"
        new_phrase << new_word
      elsif consonants.include?(word[0])
        new_word = word.slice(1, word.length)
        new_word << word.slice(0, 1)
        new_word << "ay"
        new_phrase << new_word
      elsif vowels.include?(word[0])
        new_word = word << "way"
        new_phrase << new_word
      end
    end
    return new_phrase.join(' ')
  end


end
