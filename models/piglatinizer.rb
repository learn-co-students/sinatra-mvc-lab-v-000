require 'pry'

class PigLatinizer

  def piglatinize(string)
    string_split = string.split(" ")
    holder = []
    if string_split.size > 1
      string_split.each do |word|
        new_word = piglatinize_word("#{word}")
        holder << new_word
      end
      holder.join(' ')
    else
      piglatinize_word(string)
    end
  end

  def piglatinize_word(word)
    word_split = word.split('')
    first_vowel = word_split.find_index {|x| vowel?(x)}
    if first_vowel.to_i > 0
      leading_letters = word_split[0..first_vowel-1]
      remainder_of_word = word_split[first_vowel..-1]
      @pig = remainder_of_word.join('') + leading_letters.join("") + "ay"
    else
      @pig = word_split.join("") + "way"
    end
    @pig
  end

  def vowel?(letter)
    vowels = ["a", "e", "i", "o", "u"]
    downcased = letter.downcase
    vowels.include?(downcased)
  end

end
