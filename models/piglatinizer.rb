require 'pry'

class PigLatinizer

  def piglatinize(input)
    if input.split(" ").length == 1
      piglatinize_input(input)
    else
      piglatinize_phrase(input)
    end
  end

  def piglatinize_input(word)
    if vowel?(word[0])
      word = word + "w"
    elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    elsif !vowel?(word[0]) && !vowel?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def vowel?(letter)
    letter.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_phrase(string)
    string.split.collect { |word| piglatinize_input(word) }.join(" ")
  end

end
