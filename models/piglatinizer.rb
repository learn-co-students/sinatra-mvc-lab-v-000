class PigLatinizer
  def piglatinize(word) # piglatinizes a single word
    word = word.to_s

    if word[0].match(/[aeiouAEIOU]/)
      word + "way"
    else
      suffix = ""
      until word[0].match(/[aeiouAEIOU]/)
        suffix += word[0]
        word = word.slice(1..-1)
      end
      word + suffix + "ay"
    end
  end

  def to_pig_latin(string) # splits a string for piglatinization
    string.split(" ").collect {|word| piglatinize(word)}.join(" ")
  end
end
