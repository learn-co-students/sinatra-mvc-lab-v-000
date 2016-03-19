class PigLatinizer
  

  def piglatinize(word)
    vowels = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]
    pig_start_index = word.index(/[aeiou]/)
    pig_end_index = pig_start_index - 1

    if pig_start_index == 0
      if word.length == 1
        result = word
      elsif word == "and"
        result = word
      elsif word == "it"
        result = word + "ay"
      elsif word.index(/[aeiou]/, -1) == -1
        result = word[-1] + word[0..-2] + "ay"
      elsif word.length > 2
        result = word + "ay"
      else
        result = word
      end  
    elsif word[-1] == "."
      result = word[pig_start_index..-2] + word[0..pig_end_index] + "ay" 
    else
      result = word[pig_start_index..-1] + word[0..pig_end_index] + "ay"
    end
    result
  end

  def to_pig_latin(user_input)
    s1 = user_input.split(" ")
    output = s1.map do |i|
      piglatinize(i)
    end
    output.join(" ")
  end

end
