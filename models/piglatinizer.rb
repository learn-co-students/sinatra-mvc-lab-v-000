class PigLatinizer
  
  def is_vowel(char)
    /[aeiou]/.match(char)
  end
  
  def first_vowel(text)
    first_vowel_loc = -1
    i = 0
    while first_vowel_loc == -1 && i < text.length
      if is_vowel(text[i])
        first_vowel_loc = i
      end
      i += 1
    end
    first_vowel_loc
  end
  
  def piglatinize(text) 
    a = text.split(' ').map do |word|
      #have this outside the logic
      latin_word = nil
      if is_vowel(word[0].downcase)
        latin_word = word + "way"
      else
        vowel_to_split = first_vowel(word)
        latin_word = word.slice(vowel_to_split, word.length - vowel_to_split) + word.slice(0, vowel_to_split) + "ay"
      end
      latin_word
    end
    a.join(" ")
  end
end
