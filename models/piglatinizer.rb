require 'pry'
class PigLatinizer

   def piglatinize(word)
    non_pig_latin_words = ["me", "to", "too", "an", "in", "and", "on"]
    vowels = ["a", "e", "i", "o", "u"]
    vowel = false

    if vowels.include?(word[0].downcase)
      vowel = true
    end
      consonants = ""
      if !vowels.include?(word)
        #  binding.pry
        consonants = word[0]#.to_s
        # if word.length > 1
          word = word.split("")[1..-1].join
        # else
          # binding.pry
          # word = ""
        # end
      end
      if vowel
        word + consonants + "way"
      else
        word + consonants + "ay"
      end
      # binding.pry

  end


  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
