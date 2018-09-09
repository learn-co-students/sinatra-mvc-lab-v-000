class PigLatinizer

  attr_accessor :user_phrase, :capitalized

  def initialize
  end

  def piglatinize(user_phrase)
    @user_phrase = user_phrase
    format
    rearrange
    reformat
  end

  def format
    if @user_phrase.scan(/[A-Z]/) == []
      @capitalized = false
    else
      @capitalized = true
    end
    @user_phrase = @user_phrase.downcase.split(" ")
  end

  def rearrange
    @user_phrase = @user_phrase.collect do |t|
      pre_vowel = t.scan(/^[bcdfghjklmnpqrstvwkyz]+/)[0]
      if pre_vowel != nil
        t << pre_vowel + "ay"
        s1 = pre_vowel.size
        s2 = t.size
        t = t.slice(s1...s2)
      else
        t << "way"
      end
    end
  end

  def reformat
    @user_phrase = @user_phrase.join(" ")
    if @capitalized == true
      @user_phrase = @user_phrase.capitalize
    else
      @user_phrase
    end
  end
end
