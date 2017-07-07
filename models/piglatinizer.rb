require 'pry'
class PigLatinizer
  attr_accessor :words

  def initialize
    @words = words
  end

  def piglatinize(words)
    letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

      #split the word in characters
      word = words.split("")
      #check first character in word
      #if vowel
        if vowels.include?(word[0])
      #place word.join + "way"
          words + "way"
        else
          piglatinword = ""
          for i in 0..(word.length - 1)
            # if the currently iterated character is not a vowel, then we want to rotate!
            if !vowels.include?(word.first)
              word.rotate!
            else
              piglatinword = word.join("") + "ay"
            end # end if
          end # end for in
          piglatinword
        end # end else
      end # end method

    def to_pig_latin(words)
    #split words in a sentence
    sentence = words.split(" ")
    #iterate over each word in the sentence
    sentence.collect do |word|
    #translate each word to piglatin
      piglatinize(word)
    #create a space between each word
    end.join(" ")
  end
end
