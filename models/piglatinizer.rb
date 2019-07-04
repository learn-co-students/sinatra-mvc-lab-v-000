require 'pry'
class PigLatinizer 

 attr_accessor :user_phrase 
  
  def piglatinize(user_phrase)
    user_words = user_phrase.split(" ")
    @final_result = user_words.map {|word| piglatinize_word(word)}
    @final_result.join(" ") 
  end
  
  def piglatinize_word(word)
      if ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"].include?(word[0])
        @result = "#{word}way"
      elsif ["bl", "br", "ch", "ck", "cl", "cr", "dr", "fl", "fr", "gh", "gl", "gr", "ng", "ph", "pl", "pr", "qu", "sc", "sh", "sk", "sl", "sm", "sn", "sp", "st", "sw", "th", "tr", "tw", "wh", "wr"]
      else
        word = word.split("")
        first_letter = word.shift
        word = word.join 
        @result = "#{word}#{first_letter}ay"
      end
    @result
  end 
  
end 