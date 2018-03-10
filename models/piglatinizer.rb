class PigLatinizer

  attr_accessor :user_phrase

  def initialize(user_phrase)
    @words = user_phrase
  end

  def piglatinize(word)
    @word = word.split("")
    if @word[0].downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
      if @word[1].downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
        if @word[2].downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
          @word.drop(3).push(@word[0] + @word[1] + @word[2] + "ay").join("")
        else
          @word.drop(2).push(@word[0] + @word[1] + "ay").join("")
        end
      else
        @word.drop(1).push(@word[0] + "ay").join("")
      end
    else
      @word.push("way").join("")
    end
  end

  def to_pig_latin
    @new_sentance = []
    sentance = @words.split(" ")
    sentance.each do |word|
      @new_sentance << piglatinize(word)
    end
    @new_sentance.join(" ")
  end
end