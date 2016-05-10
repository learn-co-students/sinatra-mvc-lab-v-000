class PigLatinizer

  def piglatinize(word)
    arr = word.split("")
    if arr.first.match(/[aeiouAEIOU]/)
      pig_word = arr.join
      pig_word << "way"
    else
      loop do
        if arr[0].match(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
          letter = arr.shift
          arr << letter
        else
          break
        end
      end
      arr << "ay"
      pig_word = arr.join
    end
    pig_word

  end

  def to_pig_latin(phrase)
    phrase.split(" ").collect {|word| piglatinize(word)}.join(" ")
  end

end
