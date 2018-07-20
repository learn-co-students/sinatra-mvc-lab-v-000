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
          #binding.pry
          if word.capitalize.match(/\A+[AEIOU]/)
            word << "way"
            pg_word = word
            #binding.pry
          else
            word_array = word.split(/([aeiouAEIOU].*)/)
            pg_word = word_array.reverse.join("")
            pg_word << "ay"
          end
        end

    pg_array = pg_array.join(" ")
  end

end
