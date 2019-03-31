require 'pry'

class PigLatinizer
  attr_accessor :user_phrase

  def initialize(user_phrase)
    @user_phrase = user_phrase
  end

  def piglatinize
    binding.pry
    array = user_phrase.split(" ")
    array.count
  end

  def vowels?

  end

end
