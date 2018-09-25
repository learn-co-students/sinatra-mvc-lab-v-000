require 'pry'
class PigLatinizer

  attr_reader :text

  # def initialize
  #   @text = text.downcase
  # end

  def piglatinize(text)
    #Vowels to consider
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    #Special cases to consider
    two_letter_consonants = ["ch", "sh", "qu", "th", "br", "pl", "pr", "sk", "wh"]
    three_letter_consonants = ["thr", "sch", "squ", "spr", "Str"]
    # Seperate each word from the phrase given
    text = text.split(" ")
    #empty array to store converted words
    result = [];
  #   until vowels.include?(text[0])
  #     sliced_letter = text.slice![0]
  #     result << text + sliced_letter + "ay"
  #   end
  #   result.join(" ")
  # end



    text.each do |word|
      # Words that start with a vowels
      if vowels.include? word[0]
        result << "#{word}way"
        # Words that start with a consonant
      elsif three_letter_consonants.include? ("#{word[0]}#{word[1]}#{word[2]}")
          # Slice off first three letters
          first_three_letters = word.slice!(0,3)
          # Add letters to end of word with 'ay'
          result << word + first_three_letters + 'ay'
        elsif  two_letter_consonants.include? ("#{word[0]}#{word[1]}")
          # Slice off first two letters
          first_two_letters = word.slice!(0,2)
          # Add the letters to end of word with 'ay'
          result << word + first_two_letters + 'ay'
        else
          # Slice off first letter...
          first_letter = word.slice!(0)
          # Add first letter to end of word with 'ay'
          result << word + first_letter + 'ay'
        end #End of special consonant check
      end #End of vowel check
       #End of words.each
    #Present the translated words as a single string
    return result.join(" ")
  end #End of convert function
end
