require 'pry'
class PigLatinizer


  def piglatinize(word)
    if %w(a e i o u A E I O U).include?(word[0])
      piglatin_word = word + "way"
    else
      while !%w(a e i o u A E I O U).include?(word[0])
        #binding.pry
        word = word[1,word.length-1] + word[0]
      end
      piglatin_word = word + "ay"
    end
    piglatin_word

  end

  def to_pig_latin(sentence)
    words = sentence.split(" ")
    words.map! {|word| piglatinize(word)}.join(" ")
  end

end