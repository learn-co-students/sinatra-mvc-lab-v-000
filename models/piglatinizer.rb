
class PigLatinizer
  attr_accessor :words


  def piglatinize(user_input)
    user_input = gets.chomp
    split_words = user_input.split_words
    #Need to take the first element and make it the last element here
    split_words.rotate(1)
    split_words.push("a")
    split_words.push("y")
    binding.pry

  end


end
