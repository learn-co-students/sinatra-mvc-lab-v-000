class PigLatinizer 

  def piglatinize(text)
    text.split(" ").collect do |text|
      text_str = text.to_s
      if text_str.match?(/^[aeiou]+/i)
        text_str + "way"
      else 
        chopped = text_str.scan(/^[^aeiou]+/i).join
        text_str.gsub(chopped, "") + chopped + "ay"
      end 
    end.join(" ")
  end 
  
end 