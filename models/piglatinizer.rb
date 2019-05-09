require 'pry'
class PigLatinizer


  def starts_with_vowel?(word)
    !word.match(/[aeiouAEIOU]/)
  end

  def split_words(words)
    words.split(' ')
  end

  def piglatinize(words)
    new_word = split_words(words).map do |word|
      letter_index = word.index(/[aeiouAEIOU]/)
      if letter_index == 0
        word + "way"
      else
        ay = word[0..(letter_index - 1)] + "ay"
        word.sub(word[0..(letter_index - 1)], "") + ay
      end
    end
    new_word.join(' ')


    # if starts_with_vowel?(word)
    #   return_word = word + "way"
    #   return_word
    # else #starts_with_vowel?(word) == true
    #   first_letter = word[0]
    #   pop = word[1..-1]
    #   return_word = pop + first_letter + "ay"
    #   return_word
    #  end
  end

end
