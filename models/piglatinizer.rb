require 'pry'

class PigLatinizer
  attr_reader :text

  #def initialize(text)
  #  @text = text
  #end

  def to_pig_latin(text)
    if text.split(" ").count > 1
      sentence = text.split(" ").collect {|word| piglatinize(word)}
      sentence.join(" ")
    else
      piglatinize(text)
    end
  end


  def piglatinize(text)
    if text.start_with?('a','A','e', 'E', 'i', 'I', 'o', 'O', 'u', 'U')
      text = text + 'way'
    else
      num = text.index(/[aeiou]/)
      tmp_str = text.slice!(0..num - 1)
      text = text + tmp_str + "ay"
    end
    text
  end



end
