require 'pry'
class PigLatinizer

  #pig latinize each word
  def piglatinize(word)
    letters = word.split("")

    if letters[0].match(/\A[aeiouAEIOU]/)
      word + "way"
    else
      shifted_letters = []
      until letters[0].match(/\A[aeiouAEIOU]/)
        first_letter = letters.shift
        shifted_letters.push(first_letter)
      end
      letters.join("") + shifted_letters.join("") + "ay"
    end
  end

  #put words back into sentence
  def to_pig_latin(sentence)
    sentence.split(" ").collect do |word|
      piglatinize(word)
    end.join(" ")
  end

end
