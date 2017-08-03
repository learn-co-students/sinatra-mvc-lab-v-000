require 'pry'
class PigLatinizer


  def piglatinize(string)
    vowels = ['a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U']

      if vowels.include? string[0]
        string + 'way'
      elsif !vowels.include? string[0]
        string.sub(string[0], '') + string[0] + 'ay'
        #regex
      end
    end

    def pig_latin_generator(input)
      input.split.collect do |word|
        piglatinize(word).join(' ')
      end 
    end


end
