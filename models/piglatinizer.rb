require 'pry'
class PigLatinizer

#what we need to do is take in a phrase
#we then split up that phrase by word into an empty array
#we then iterate through the array
  #in that loop we find the first letter of each word
  #remove the first letter of each word and add it to the end of the word along with a + 'ay'
  #then enter(maybe shovel) that into a new empty array
  #then join the array together with a ' ' to turn it back into a string

  def piglatinize(word)
    word_split = word.partition(/[aeiouAEIOU]/)
    if word_split[0].empty?
      word + "way"
    else
      word_split[1]+word_split[2] + word_split[0] + "ay"
    end
  end

  def to_pig_latin(phrase)
    split_phrase = phrase.split(" ")
    converted_phrase = []
    split_phrase.each do |word|
      converted_phrase << self.piglatinize(word)
    end
    converted_phrase.join(" ")
  end















end