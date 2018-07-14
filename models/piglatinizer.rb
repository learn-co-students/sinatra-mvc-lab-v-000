class PigLatinizer

  attr_accessor :text


  def piglatinize(text)
    @text = text
    #split words in an array
    text_array = @text.split(" ")

    #iterate over words and add
    new_array = text_array.collect do |word|
      if word.slice(0,1) =~ (/[AEIOUaeiou]/)
        word = word + "way"
      else
        word = word.slice(1,word.size) + word.slice(0,1)
        if  word.slice(0,1) =~ (/[aeiou]/)
          word = word + "ay"
        else
          word = word.slice(1,word.size) + word.slice(0,1)
          if word.slice(0,1) =~ (/[aeiou]/)
            word = word + "ay"
          else
            word = word.slice(1, word.size) + word.size(0,1) + "ay"
          end
        end
      end
    end
  new_phrase = word.join(" ")
 end
end
