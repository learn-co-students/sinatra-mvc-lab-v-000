class PigLatinizer
  attr_reader :user_text
  # 
  # def initialize(user_text)
  #   @user_text = user_text
  # end

  def vowel?(char)
    "aeiouAEIOU".include?(char)
  end


  def piglatinize(string)
    words = string.split
    words.collect do |word|
      if vowel?(word[0])
        word += "way"
      else
        until vowel?(word[0]) do
          word = word[1..-1] + word[0]
        end
        word = word + "ay"
      end
    end.join(" ")
  end


end
