class PigLatinizer
  attr_reader :content
  
  def piglatinize(input)
    parse_input(input)
    input_array = input.split('')
    ending = input_array.first.split('').push("a").push("y")
    beginning = input_array[1..-1]
    (beginning + ending).join
  end
  
  def parse_input(input)
    #binding.pry
    input_array = input.split('')
    
    first_letters = []
    last_letters = []
    
    input_array.each do |letter|
      case
        when !['a','e','i','o','u'].include?(letter) && first_letters.empty?
          last_letters << letter
        else
          first_letters << letter
      end
    end
    
    if ['a','e','i','o','u'].include?(input_array.first)
      word = (first_letters << last_letters << "way").join
    else
      word = (first_letters << last_letters << "ay").join
    end
    
    
    binding.pry
  end
  
end