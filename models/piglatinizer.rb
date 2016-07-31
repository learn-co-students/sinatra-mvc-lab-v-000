class PigLatinize
  attr_accessor :user_phrase

  def initialize(user_phrase)
    @user_phrase = user_phrase
  end

  def translate(str)
    str = @user_phrase.split(", ")
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels

    if vowels.include?(str[0])
      str + 'ay'
    elsif consonants.include?(str[0]) && consonants.include?(str[1])
      str[2..-1] + str[0..1] + 'ay'
    elsif consonants.include?(str[0])
      str[1..-1] + str[0] + 'ay'
    else
      str # return unchanged
    end
    @user_phrase.join(" ")
  end
end
