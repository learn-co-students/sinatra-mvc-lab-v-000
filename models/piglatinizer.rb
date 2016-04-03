class PigLatinizer

  def piglatinize(word)

    
    ignore = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
  
  if word.length > 1 && !ignore.include?(word)
    if word[0].match(/[aeiou]/)
      word + "ay"
    else
      split = word.index(/[aeiou]/)
      word[split..-1] + word[0..split-1] + "ay"
    end
  else
    word
    end
  end

  def to_pig_latin(input)
    words = input.to_s.gsub(/[^a-zA-z ]/, '').split(" ")
    words.collect {|word| piglatinize(word)}.join(" ")
  end


end