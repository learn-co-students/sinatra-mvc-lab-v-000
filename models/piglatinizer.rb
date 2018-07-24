class PigLatinizer
  
  def piglatinize(string)
    if string.match(/\s/)
      words = string.split(" ")
      piglatin_array = words.collect do |word|
        piglatinize_string(word)
      end
      piglatin_array.join(" ")
    else
      piglatinize_string(string)
    end
  end
  
  def piglatinize_string(string)
    if string.match(/\A+[bcdfghjklmnpqrstvwxyz]{3}/)
      new_string = string[3..-1]
      new_string << string[0..2]
      "#{new_string}ay"
    elsif string.match(/\A+[bcdfghjklmnpqrstvwxyz]{2}/)
      new_string = string[2..-1]
      new_string << string[0..1]
      "#{new_string}ay"
    elsif string.match(/\A+[bcdfghjklmnpqrstvwxyz]/)
      new_string = string[1..-1]
      new_string << string[0]
      "#{new_string}ay"
    elsif string.downcase.match(/\A+[aeiou]/)
      "#{string}way"
    end
  end
    
end
