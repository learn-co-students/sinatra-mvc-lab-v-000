class PigLatinizer
  attr_reader :text

  def initialize
    
  end

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    consonants = []

    if vowels.include?(word[0])
       word + 'way'
    else
      until vowels.include?(word[0])
         consonants << word.slice!(0)
      end
       word + consonants.join + "ay"
    end
   end

   def to_pig_latin(sentence)
     sentence.split.map {|word| piglatinize(word)}.join(" ")
   end

end
