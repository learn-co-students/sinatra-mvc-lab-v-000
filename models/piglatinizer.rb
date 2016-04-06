class PigLatinizer

  
  def piglatinize(word)
    pig = word.split("")
    if !pig[0].match(/[aeiouAEIOU]/)
      back = pig[0]
      pig.shift
      if pig[0].match(/[aeiou]/)
        pig.join.gsub(",","")<<back<<"ay"
      else
        back<<pig[0]
        pig.shift
        if pig[0].match(/[aeiou]/)
          pig<<back<<"ay"
          pig.join.gsub(",","")
        else
          back<<pig[0]
          pig.shift
          pig.join.gsub(",","")<<back<<"ay"
        end
      end
    else
      pig.join.gsub(",","")<<"way"
    end   
  end

  def to_pig_latin(words)
    split_words = words.split(" ")
    split_words.collect do |x|
      if x.include?(".")
        
        pig = piglatinize(x.gsub(".", ""))
        pig<<"."
      else
        pig = piglatinize(x)
        pig
      end
    end.join(" ")

  end








end