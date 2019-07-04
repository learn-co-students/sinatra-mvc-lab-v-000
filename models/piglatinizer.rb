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
      elsif ["spr"].any? {|consonant_blend| word[0..2].include? consonant_blend}
        word = word.split("")
        first_letter = word.shift
        second_letter = word.shift
        third_letter = word.shift 
        word = word.join
        @result = "#{word}#{first_letter}#{second_letter}#{third_letter}ay"
      elsif ["bl", "br", "ch", "ck", "cl", "cr", "dr", "fl", "fr", "gh", "gl", "gr", "ng", "ph", "pl", "pr", "qu", "sc", "sh", "sk", "sl", "sm", "sn", "sp", "st", "sw", "th", "tr", "tw", "wh", "wr"].any? {|consonant_blend| word[0..1].include? consonant_blend}
        word = word.split("")
        first_letter = word.shift
        second_letter = word.shift 
        word = word.join
        @result = "#{word}#{first_letter}#{second_letter}ay"
      else
        word = word.split("")
        first_letter = word.shift
        word = word.join 
        @result = "#{word}#{first_letter}ay"
      end
    @result
  end 
  
end 