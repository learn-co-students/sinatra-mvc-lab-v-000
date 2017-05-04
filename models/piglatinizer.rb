class PigLatinizer

  def piglatinize(word)
    if word[/\A[AEIOUaeiou]/]
      "#{word}" + "way"
    elsif word[/\A[BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz][BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz][BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]/]
      word_array = word.split("")
      counter = 0
      while counter < 3
      word_array << word_array.shift
      counter += 1
      end
      "#{word_array.join}" + "ay"
    elsif word[/\A[bcdfghjklmnpqrstvwxyz][bcdfghjklmnpqrstvwxyz]/]
      word_array = word.split("")
      counter = 0
      while counter < 2
      word_array << word_array.shift
      counter += 1
      end
      "#{word_array.join}" + "ay"
    else
      word_array = word.split("")
      word_array << word_array.shift
      "#{word_array.join}" + "ay"
    end
  end

  def to_pig_latin(phrase)
    part1 = phrase.split(" ")
    part2 = []
    part1.map do |each|
      part2 << piglatinize(each)
    end
    part2.join(" ")
  end

end
