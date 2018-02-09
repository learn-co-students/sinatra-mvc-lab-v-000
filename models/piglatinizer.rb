require 'pry'

class PigLatinizer
  # Create a constant array of vowels
  VOWELS = %w[a e i o u A E I O U]


  # need to split the sentence
  def to_pig_latin(phrase)
    # splits the sentence, then collect -- iterate over each word - piglatinize each word - then rejoin the collected words back into a sentence
    phrase.split.collect{|word| piglatinize(word)}.join(" ")
  end

  def piglatinize(word)
    return word << "way" if VOWELS.include?(word[0])
    word = word.split("")

    until VOWELS.include?(word[0])
      letter = word.shift
      word = word << letter
    end

    word.join + "ay"
  end

end


# def piglatinize(word)
#   if VOWELS.include?(word[0]) == true
#     word << "way"
#   else
#     last = word.slice(1..-1)
#     first = word.slice(0)
#     last + first + "ay"
#   end
