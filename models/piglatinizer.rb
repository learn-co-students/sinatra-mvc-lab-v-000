require 'pry'
class PigLatinizer 

 attr_accessor :user_phrase 
  
  def piglatinize(user_phrase)
    user_words = user_phrase.split(" ")
    @final_result = user_words.map {|word| piglatinize_word(word)}
    @final_result.join(" ") 
  end
  
  def consonant?(char)    
    !char.match(/[aAeEiIoOuU]/)  
  end
  

  def piglatinize_word(word)
    if consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.split("")
      first_letter = word.shift
      second_letter = word.shift
      third_letter = word.shift 
      word = word.join
      @result = "#{word}#{first_letter}#{second_letter}#{third_letter}ay"
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.split("")
      first_letter = word.shift
      second_letter = word.shift 
      word = word.join
      @result = "#{word}#{first_letter}#{second_letter}ay"
    elsif consonant?(word[0])
      word = word.split("")
      first_letter = word.shift
      word = word.join 
      @result = "#{word}#{first_letter}ay"
    else 
      @result = "#{word}way"
    end 
    
  end 
end 