class PigLatinizer
  def piglatinize(text)
    answer = text.split(' ').collect do |word|
      if first_letter_helper(word) > 0
        first_letter = word.slice!(0 .. first_letter_helper(word) - 1 )
        word + first_letter + "ay"
      else
        word + "way"
      end
    end
    answer.join(' ')
  end

  def to_pig_latin(text)
    piglatinize(text)
  end

  def first_letter_helper(word)
    vowels = ['a', 'e', 'i', 'o', 'u']
    arr = ''
    word.downcase.split('').each do |letter|
      break if vowels.include?(letter)
      arr << letter
    end
    arr.length
    # if word[0].scan(/[aeiou]/i).length == 1
    #   "vowel"
    # elsif word[0].scan(/[aeiou]/i).length == 0 && word[1].scan(/[aeiou]/i).length == 0
    #   "double consonant"
    # else
    #   "consonant"
    # end
  end
end
