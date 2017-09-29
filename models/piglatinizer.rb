class PigLatinizer
    attr_accessor :words

  def initialize
    @words = words
  end

  def piglatinize(word)
     first_split = word.split(/([aeiouAEIOU].*)/)[0]
     second_split = word.split(/([aeiouAEIOU].*)/)[1]
     if first_split == ""
       second_split + "way"
     else
       second_split + first_split + "ay"
     end
   end

   def split_phrase(phrase)
     new_phrase = phrase.split(" ")
     new_phrase
   end

   def to_pig_latin(word)
     phrase = split_phrase(word)
     latinized = []
     phrase.each do |words|
       latinized << piglatinize(words)
     end
     latinized.join(" ")
   end
end
