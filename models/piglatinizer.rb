class PigLatinizer

  def piglatinize(input)
    @output = []
    parse_sentence(input)
    @output.join(' ')
  end
  
  def parse_sentence(input)
    input_array = input.split(' ')
    input_array.each {|word| parse_word(word)}
  end
  
  def parse_word(input)
    input_array = input.split('')
    
    first_letters = []
    last_letters = []
    
    input_array.each do |letter|
      if !['a','e','i','o','u'].include?(letter.downcase) && first_letters.empty?
        last_letters << letter
      else
        first_letters << letter
      end
    end
    
    if ['a','e','i','o','u'].include?(input_array.first.downcase)
      pl_word = (first_letters << last_letters << "way").join
    else
      pl_word = (first_letters << last_letters << "ay").join
    end
    
    @output << pl_word
  end
  
end