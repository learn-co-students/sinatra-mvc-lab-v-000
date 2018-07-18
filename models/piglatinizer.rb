require "pry"
class PigLatinizer
  attr_reader :words

  def piglatinize(input)
    converter = ''
    if input.split(' ').length == 1
      converter += piglatinize_word(input)
    else
      converter += piglatinize_sentence(input)
    end
    converter
  end

  def match?(start)
  !start.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    if !match?(word[0])
      word = word + "w"
    elsif match?(word[0]) && match?(word[1]) && match?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    elsif match?(word[0]) && match?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def piglatinize_sentence(sentence)
    sentence.split.collect{|words| piglatinize_word(words)}.join(' ')
  end




end


# "pig" = "igpay"
# "latin" = "atinlay"
# "banana" = "ananabay"
