require 'pry'

class PigLatinizer

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    consonants = ""
    
    if vowels.include? word[0]
      result = word + "way"
    elsif 
      vowels.include?(word[0]) == false && vowels.include?(word[1]) == true
      consonants << word[0]
      step_1 = word << consonants
      step_2 = step_1 + "ay"
      result = step_2[1..-1]
    elsif 
      vowels.include?(word[0] && word[1]) == false && vowels.include?(word[2]) == true
      consonants << word[0] + word[1]
      step_1 = word << consonants
      step_2 = step_1 + "ay"
      result = step_2[2..-1]
    elsif 
      vowels.include?(word[0] && word[1] && word[2]) == false 
      consonants << word[0] + word[1] + word[2]
      step_1 = word << consonants
      step_2 = step_1 + "ay"
      result = step_2[3..-1]   
    end
    result
  end

  def to_pig_latin(words)
    piglatinized = []
    split = words.split(" ")
    split.each do |x|
    pig = piglatinize(x)
    piglatinized << pig
    @result = piglatinized.join(" ")
  end
  @result
  end
end

    
