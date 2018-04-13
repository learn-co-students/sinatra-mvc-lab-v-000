class PigLatinizer

  #attr_accessor :text

  #def initialize(text = nil)
  #  @text = text
  #end

  def piglatinize(text)

    # I was having trouble understanding the semantics of pig latin so i will develop my own code when i come back to it.

    text_arr = text.split(" ") # creates array of words from the text string
        result = []
        text_arr.each do |word|
          word_arr = word.scan(/\w/) # converts word into an array of characters
          if word_arr.first.scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]+/).size > 0 # detects if first letter is a vowel
            c_str = word.scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]+/).first # research later: all consonants before the first vowel of the word are shifted to the end of the word????
            word_str = word.sub!(c_str, "")
            result << word_str + c_str + "ay"
          else
            result << word + "way"
          end
        end
    result.join(' ')
    #binding.pry
    #vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    #word_array = []
    #letter_array = word.split(//)
    #first_letter = letter_array.shift
    #word_array << letter_array.join
    #second_letter = letter_array.shift
    #word_array << letter_array.join
    #third_letter = letter_array.shift
    #word_array << letter_array.join

    #binding.pry

    #if vowels.include?(first_letter)
    #  word + "way"
    #elsif first_letter + second_letter == "pl" || first_letter + second_letter == "th" || first_letter + second_letter == "sp"
    #  word_array[1] + first_letter + second_letter + "ay"
    #elsif first_letter + second_letter + third_letter == "spr"
    #  word_array[2] + first_letter + second_letter + third_letter + "ay"
    #else
    #  word_array[0] + first_letter + "ay"
    #end
    #binding.pry
  end

end
