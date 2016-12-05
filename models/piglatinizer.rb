require 'pry'

class PigLatinizer
  attr_accessor :text

  def initialize
    @text = text
  end

  def piglatinize(word)
    letters = []
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    if word.start_with?('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')
      word << "way"
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join()
      end
      word + consonants + "ay"
    end
  end

  def to_pig_latin(phrase)
    phrase.split.map do |word|
      piglatinize(word)
    end.join(" ")  
  end
end  


# consonants = ""
#       while !vowels.include?(word[0])
#         consonants << word[0]
#         word = word.split("")[1..-1].join()
#       end
#       word + consonants + "ay"


#       def piglatinize(word)
#     vowels = ["a", "e", "i", "o", "u"]
#     if word.start_with?('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')
#       word << "way"
#     elsif vowels.include?(word[0])
#       word << "ay"
#     else
#       consonants = ""
#       while !vowels.include?(word[0])
#         consonants << word[0]
#         word = word.split("")[1..-1].join()
#       end
#       word + consonants + "ay"

#   end

