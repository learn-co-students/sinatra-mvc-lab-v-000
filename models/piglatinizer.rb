require 'pry'

class PigLatinizer
  #Converts string into piglatin

  def piglatinize(user_input)
    text = user_input.split(" ")

    if text.size == 1
      word_piglatinize(text.first).join
    else text.size >= 2
      sentence_piglatinize(text).join(" ")
    end
  end

    def word_piglatinize(word)
      vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
      word= word.split('')
      if !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
        new_word = word.rotate(3)

      elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
        new_word = word.rotate(2)

      elsif !vowels.include?(word[0])
        new_word = word.rotate(1)

      else
        new_word = word << "w"
      end
      new_word << "ay"
    end

    def sentence_piglatinize(sentence)
      vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
      sentence.map do |word|
        word_piglatinize(word).join
      end
    end






end
