class PigLatinizer

  attr_accessor :user_text, :capitalized

  def initialize
  end

  def piglatinize(user_text)
    @user_text = user_text
    format
    rearrange
    reformat
  end

  def format
    if @user_text.scan(/[A-Z]/) == []
      @capitalized = false
    else
      @capitalized = true
    end
    @user_text = @user_text.downcase.split(" ")
  end

  def rearrange
    @user_text = @user_text.collect do |t|
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
    @user_text = @user_text.join(" ")
    if @capitalized == true
      @user_text = @user_text.capitalize
    else
      @user_text
    end
  end
end
