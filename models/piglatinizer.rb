class PigLatinizer
  attr_accessor :string
  
  def initialize
    @string = string
  end

 def piglatinize(string)
    vowels = ["A","E","I","O","U"]

    if vowels.include?(string[0].upcase)
        "#{string}" + "way"
    else
        parts = string.split(/([aeiou].*)/)
        parts.reverse.join('') + 'ay' 
      end
  end

  def to_pig_latin(sentence)
    words = sentence.split(" ")
    words.map do |word|
      piglatinize(word)
      end.join(" ")
  end


end



