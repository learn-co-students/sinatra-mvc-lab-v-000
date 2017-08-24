class PigLatinizer
 attr_accessor :text_array, :vowels

  def initialize
    @vowels = ["a","e","i","o","u","A","E","I","O","U"]
  end

  def pig_latinized_array(text)
    @text_array = text.split(" ")
    @text_array.collect do |word|
      piglatinize(word)
    end
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

  def to_pig_latin(text)
    self.pig_latinized_array(text).join(" ")
  end

end
