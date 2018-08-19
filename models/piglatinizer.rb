class PigLatinizer
  attr_accessor :text
  
  def latinize(text)
    words = text.split(" ")
    words.collect do |word|
      if word[0].match(/\b[aeiouAEIOU]/)
        word + "way"
      else
        until word[0].match(/\b[aeiouAEIOU]/)
          word = word[1..-1] + word[0]
        end
        word + "ay"
      end
    end  
  end

  def piglatinize(text)
    latinize(text).join(" ")
  end
end