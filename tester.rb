require 'pry'
def pig_latin(string)
  vowels = ["A","E","I","O","U"]
  word = string.upcase.split("")
    case !vowels.include?(word[0])
      when true
          first_letter = word[0]
          new_word = word.shift
          piged_word = word.push(first_letter, "a", "y")
          piged_word.join.downcase
      when false 
         "#{string}" + "yay"
      end
end
#word = string.upcase.split("")
 def piglatinize(string)
    vowels = ["A","E","I","O","U"]

    case !vowels.include?(string[0])
      when true
          parts = string.split(/([aeiou].*)/)
          parts.reverse.join('') + 'ay'
      when false 
         "#{string}" + "way"
      end
  end




  if word.include?("ay")
