require 'pry'
class PigLatinizer

  def piglatinize(word)

    vowels = ["a", "e", "i", "o", "u","A","E","I","O","U"]

    letters = word.scan(/./)

    if vowels.include?(letters.first)
      letters = letters.join + "way"
      letters
    else
      until vowels.include?(letters.first)
      letters = letters.rotate
      end
      letters.join + "ay"
    end
  end

  def to_pig_latin(phrase)
    if phrase.include?(".")
      words = phrase.gsub!(".", "").split(' ')
    else
      words = phrase.split(' ')
    end
    words.collect{|word| piglatinize(word)}.join(' ')
  end

end