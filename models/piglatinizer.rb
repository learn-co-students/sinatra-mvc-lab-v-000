class PigLatinizer
attr_reader :words

  def initialize
    @words = words
    
  end

  def piglatinize(word)
    letters = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = letters - vowels
    word.gsub!(".","")
     if word == "and" || word == "in" || word == "an" || word.length <2
       word 
     else
        idx = word.index(/[aeiou]/)
        word[idx, word.length-idx] + word[0,idx] + "ay"
     end
  end

  def to_pig_latin(words)
    
    words = words.split(" ").collect{|x| piglatinize(x)}
    words.join(" ")
  end
end