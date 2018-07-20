require 'pry'
class PigLatinizer
  attr_accessor :phrase

  def initialize

  end

  def piglatinize
    phrase_array = @phrase.split(" ")
    pg_array = []

        pg_array = phrase_array.map do |word|
          word_array = []
          word_array = word.split(/([aeiouAEIOU].*)/)
          if word.split(/([aeiouAEIOU].*)/).first == word
            pg_word = word
            pg_word << "way"
          else
            pg_word = word_array.reverse.join("")
            pg_word << "ay"
          end
        end
    pg_array = pg_array.join(" ")
  end

end
