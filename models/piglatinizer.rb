class PigLatinizer

  attr_accessor :user_phrase

  def initialize
    @user_phrase = user_phrase
  end

  def to_pig_latin(words)
    translation = []
    words.split(" ").each do |word|
      translation << piglatinize(word)
    end
    translation.join(" ")
  end

  def piglatinize(user_phrase)
    vowels = ["a","e","i","o","u","A","E","I","O","U"]
    
      if  vowels.include?(user_phrase[0])
        user_phrase + "way"
      else 
        one = user_phrase.split(/([aeiouAEIOU].*)/)[0]
        two = user_phrase.split(/([aeiouAEIOU].*)/)[1]
        two + one + "ay"
      end
    end

end # => end class