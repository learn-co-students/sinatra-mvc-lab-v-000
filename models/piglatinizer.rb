#solution on master class with my modifications on lines 7, 10, 11, 13

class PigLatinizer

  def piglatinize(word)

    #non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    #if non_pig_latin_words.include?(word) [this rule is invalid, commented out]
      #word
    if vowels.include? word[0]
      word << "way" #should push in 'way' not 'ay' as in the original code
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + 'ay'
    end
  end


  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end

p = PigLatinizer.new

puts p.piglatinize("pork")

#my solution that works but is not speced to tests.

#class PigLatinizer
  #attr_accessor :phrase

#  def initialize(phrase = nil)
  #  @phrase = phrase
  #end

  #def piglatinize(phrase)
    #phrase_array = phrase.split(" ")
    #phrase_array.map! do |w|
      #if w.chars.first.match(/[AaEeIiOoUu]/) != nil
      #  "#{w}way"
    #  else
      #  wn = w.reverse
      #  wnp = wn[0..-2].reverse + wn[-1]
      #  "#{wnp}ay"
    #  end
  #  end
  #  phrase_to_print = phrase_array.join(" ")
  #  "#{phrase_to_print}"
#  end

#end
