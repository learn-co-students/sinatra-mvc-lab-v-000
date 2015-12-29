class PigLatinizer
  
  attr_accessor :input

  def initialize(input = "")
    @input = input
  end

  def piglatinize(input_word)
    deleted_segment = ""
    while !input_word.start_with?("a","e","i","o","u","A","E","I","O","U")  
      deleted_segment += input_word[0]
      input_word[0]=''
    end
    input_word += "#{deleted_segment}" + "ay" if input_word.length >1
    input_word
  end

  def to_pig_latin(input_string)
    output = []
    @input = input_string.split(" ")
    @input.each do |word|
      output << piglatinize(word)
    end
    @input = output.join(" ")
  end
end