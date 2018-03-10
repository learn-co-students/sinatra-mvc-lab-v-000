class PigLatinizer

  def split_word(text)
    new_word = text.split(" ")
    new_word
  end

  def to_pig_latin(text)
    word = split_word(text)
    pig_arr = []
    word.each do |i|
      pig_arr << piglatinize(i)
    end
    pig_arr.join(" ")
  end

  def piglatinize(text)
    first = text.split(/([aeiouAEIOU].*)/)[0]
    second = text.split(/([aeiouAEIOU].*)/)[1]
    if first == ""
      second + "way"
    else
      second + first + "ay"
    end
  end
end
