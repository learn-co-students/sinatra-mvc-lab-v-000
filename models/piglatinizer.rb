class PigLatinizer

  attr_accessor :user_text

  def initialize(user_text)
    @user_text = user_text
  end

  def format
    @user_text = @user_text.downcase.split(" ")
  end
end
