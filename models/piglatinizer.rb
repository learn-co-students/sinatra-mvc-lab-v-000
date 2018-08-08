require 'pry'

class PigLatinizer

  def piglatinize(text)
    if text.include?(" ")
      latinize_sentence(text)
    else
      piglatinizer(text)
    end


  end

  def vowel?(letter)
    letter.match(/[AaEeIiOoUu]/)
  end

  def piglatinizer(word)
    if vowel?(word[0])
      word << "way"
    elsif !vowel?(word[0]) && !vowel?(word[1]) && !vowel?(word[2])
      word = word.slice(3..-1) + word.slice(0,3) + "ay"
    elsif !vowel?(word[0]) && !vowel?(word[1])
      word = word.slice(2..-1) + word.slice(0,2) + "ay"
    elsif !vowel?(word[0])
      word = word.slice(1..-1) + word.slice(0) + "ay"
    end
  end

  def latinize_sentence(sentence)
    sentence = sentence.split.collect do |word|
      piglatinizer(word)
    end
    sentence.join(" ")
  end





end
