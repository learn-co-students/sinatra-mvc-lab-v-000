require 'pry'
class PigLatinizer

  #rules of pig latin - if words:
  #begin with consonants all c's before 1st vowel are added to ay at end
  #begin w/cluster of consonants all c's before 1st vowel are added to ay at end
  #begin with vowel add "way" or "yay" to end

   def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u"]
    consonants = ""

    if word == "I" || word == "A"
      word + "way"

    elsif vowels.include?(word[0].downcase)
      word + "way"

    elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
      word2 = word.split("")[3..-1].join
      word2 + word[0] + word[1] + word[2] + "ay"

    elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
      word2 = word.split("")[2..-1].join
      word2 + word[0] + word[1] + "ay"

      elsif
      !vowels.include?(word[0])
       word2 = word.split("")[1..-1].join
       word2 + word[0] + "ay"

    end
   end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
