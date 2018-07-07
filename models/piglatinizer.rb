class PigLatinizer
  attr_reader :text

  def initialize

  end

  def piglatinize(text)
    @text = text
    aray = @text.split(" ")
    new_aray = aray.collect do |word|
      if word.slice(0,1) =~ (/[AEIOUaeiou]/)
        word = word + "way"
      else
        word = word.slice(1,word.length) + word.slice(0,1)
        if word.slice(0,1) =~ (/[aeiou]/)
          word = word + "ay"
        else
          word = word.slice(1,word.length) + word.slice(0,1)
          if word.slice(0,1) =~ (/[aeiou]/)
            word = word + "ay"
          else
            word = word.slice(1,word.length) + word.slice(0,1) + "ay"
          end
        end
      end
    end
   new_phrase = new_aray.join(" ")
  end
end
