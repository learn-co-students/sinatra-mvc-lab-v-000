require 'pry'
class PigLatinizer

  def piglatinize(phrase)
    x = phrase.split(" ")
    if x.size == 1
      self.pig(x[0])
    else
      self.to_pig_latin(phrase)
    end
  end
    #differentiate between multiple words or one word
    #if one word continue as is
    #if multiple words
      #.split(" ")
#Onceway
      #return word if %w[and an in].include?(word)
  def pig(word)
    letters = word.split("")
    letters.keep_if {|letter| letter != "."}
      if letters.size == 1 || vowel?(letters[0])
        letters << "way"
      elsif letters.size > 1
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
      copy = letter.downcase
      copy == "o" || copy == "e" || copy == "a" || copy == "i" || copy == "u"
    end

end
