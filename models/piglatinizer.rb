require 'pry'

class PigLatinizer

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u"]
    word_split = word.split('')
    first = []
    word_split.each do |letter|
      if vowels.include?(letter)
        first << letter
      else
        exit
      end
    end

    # if vowels.include? word_split[0].downcase
    #   @piggy = word + "way"
    # else
    #   first = word_split.shift
    #   start_of_word = word_split.join("")
    #   @piggy = start_of_word + first + "ay"
    # end
    # @piggy
  end

end
