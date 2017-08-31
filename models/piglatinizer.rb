class PigLatinizer
  attr_accessor :text_array, :vowels

  def initialize
     @vowels = ["a","e","i","o","u","A","E","I","O","U"]
   end

  def piglatinize(word)
    to_add = []
    index = ""

    if @vowels.include?(word[0])
      word + "way"
    else
      word.split("").each_with_index do |letter, i|
        if !@vowels.include?(letter)
          to_add << letter
          index = i
        else
          return word.slice(index+1..-1) + to_add.join("") + "ay"
        end
      end
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
