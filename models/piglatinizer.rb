class PigLatinizer

  def initialize(user_input = "")
    @user_input = user_input
  end

  def piglatinize(word)
    case
    when word.downcase.match(/^[aeiou]/)
      word + "yay"
    when word.downcase.match(/^[^aeiou])
      word.gsub(/(.)(.*)/,'\2\1ay')
    else
      "Not Guilty"
    end
  end
end
