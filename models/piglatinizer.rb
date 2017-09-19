class PigLatinizer

  def piglatinize(text)
    text_ary = split_sentence(text)

    text_ary.collect! do |w|

      arr = w.split("")
      # arr[0].match(/[A-Z]/) ? capitalized=true : capitalized=false

      if arr.length > 1
        consonants = []
        arr.each_with_index do |c, i|
          if c.match(/[^aeiouAEIOU]/)
            consonants << c
          else
            break
          end
        end
        arr << consonants.join
        arr.slice!(0...consonants.length)
        if consonants.length == 0
          arr << "way"
        else
          arr << "ay"
        end
        self.move_punctuation(arr)
        new_word = arr.join #.downcase
      else
        arr << "way"
        self.move_punctuation(arr)
        new_word = arr.join
      end
      #new_word.capitalize! if capitalized
      new_word
    end
    text_ary.join(" ")
  end


  def split_sentence(sentence)
    sentence_ary = sentence.split
  end

  def move_punctuation(arr)
    arr.each_with_index do |c, i|
      if c.match(/(?!')[\W]/)
        arr.insert(-1, arr.delete_at(i))
      end
    end
  end

  def to_pig_latin(text)
    self.piglatinize(text)
  end

end
