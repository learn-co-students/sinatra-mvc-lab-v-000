require "pry"

class PigLatinizer
  
  def piglatinize(words)
    final_output_array = [ ]            
  
    
    word_array = words.split(" ")
    
    word_array.each do |word|
      letter_array = []
      x = word.scan(/\w/)
      if x.length == 1 
        final_output_array << "#{x[0]}way"
        elsif x.length == 2 && !x[0].match(/[AEIOUaeiou]/)
        final_output_array << "#{x[1]}#{x[0]}ay"
        elsif x[0].match(/[AEIOUaeiou]/)
        final_output_array << "#{word}way"
        else
          x.each do |letter|
            if letter.match(/[aeiou]/)
              letter_array << letter
            end
          end
          
          v = x.index(letter_array[0])
         
          y = x.slice(v, word.length - 1).join("")
          z = x.slice(0, v).join("")
          final_output_array << "#{y}#{z}ay"
        end
      end
    final_output_array.join(" ")
  end
end