require 'pry'

class PigLatinizer

  def piglatinize(word)
    word = word.upcase
    word_array = word.split(//)
    if word.start_with?("A","E","I","O","U")
      pig_word = word + "YAY"
    else
      if word.start_with?("B","C","D","F","G","H","J","K","L","M","N","P","Q","R","S","T","V","X","Z")
        word_array.insert(-1, word_array.shift)
        until word_array[0] =="A" || word_array[0] =="E" || word_array[0] =="I" || word_array[0] =="O" || word_array[0] =="U"
          word_array.insert(-1, word_array.shift)
        end
      end
      word_array << "A"
      word_array << "Y"
      pig_word = word_array.join
    end
    pig_word.downcase
  end

  def to_pig_latin(string)
    pig_latinized_array = []
    array_of_strings = string.split(" ")
    
    array_of_strings.each do |word|
      pig_latinized_array << piglatinize(word) 
    end
    pig_latinized_array.join(" ")
  end
end

words = PigLatinizer.new
words.to_pig_latin("He was an old man who fished alone in a skiff in the Gulf Stream and he had gone eighty four days now without taking a fish")
