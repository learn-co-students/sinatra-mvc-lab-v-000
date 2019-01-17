

class PigLatinizer
  attr_accessor :string 
  @@all = []
  
  def initiatlize(string=nil)
    @string = string 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  
  def piglatinize(string)
    string_array = string.split(" ")
    constants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
    new_string = []
    vowels = ["a","e","i","o","u"]
    
    if string_array.size == 1 
        if vowels.include?(string_array[0])
          new_string << string_array + "ay"
          elsif constants.include?(string_array[1]) && constants.include?(string_array[2]) 
            new_string << (string_array[2..-1] + string_array[0..1] + "ay")
            elsif constants.include?(string_array[1]) && vowels.include?(string_array[2])
              new_string << (string_array[1..-1] + string_array[0] + "ay")
        end 
     
    
    else string_array.map do |word|
        #If word starts with vowel, we just add ay#
        if vowels.include?(word[0])
          new_string << word + "ay"
          # If word's first 2 letters are constants, we move full constant to the end
          elsif constants.include?(word[1]) && constants.include?(word[2]) 
            new_string << (word[2..-1] + word[0..1] + "ay")
            # If word just starts with one constant, we move just the constant to the end
            elsif constants.include?(word[1]) && vowels.include?(word[2])
              new_string << (word[1..-1] + word[0] + "ay")
        end
      end 
    end 
    binding.pry
  end 

end 