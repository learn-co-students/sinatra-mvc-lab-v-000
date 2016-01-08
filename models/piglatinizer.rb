
class PigLatinizer

  def piglatinize(word)
    return word if %w[in an and].include?(word) 
    letters = word.split("")
    letters.delete_if {|letter| letter == "."}
    if letters.length > 1
      until vowel?(letters[0]) 
        letters << letters.shift
      end
      letters  << "ay"
    end
    letters.join
  end

  def to_pig_latin(text)
    words = text.split(" ")
    words.map! {|word| piglatinize(word)}
    words.join(" ")
  end

  def vowel?(letter)
    letter.downcase
    letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u"
  end

end