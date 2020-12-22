class PigLatinizer
  
  attr_accessor :user_input_text, :words, :piglatinized
  
  def piglatinize(user_input_text)
    
    @user_input_text = user_input_text
    @words = user_input_text.split(" ")
    result = []
    
    @words.each do |word|
      if word.start_with?(/[AEIOUaeiou]/)
        result << "#{word}way"
      elsif word.start_with?(/[sS][pt]r{1}/)
        result << "#{word[3..-1]}#{word[0..2]}ay"
      elsif word.start_with?(/\w[rhltk]/)
        result << "#{word[2..-1]}#{word[0..1]}ay"
      else
        result << "#{word[1..-1]}#{word[0]}ay"
      end
    end

    @piglatinized = result.join(" ")
      
  end 
  
  
end 