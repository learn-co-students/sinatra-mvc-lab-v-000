class PigLatinizer

  def piglatinize(word)
    if word[/\A[AEIOUaeiou]/]
      "#{word}" + "way"
    elsif word[/\A[^aeiouAEIOU]{3}/]
      word_array = word.split("")
      counter = 0
      while counter < 3
      word_array << word_array.shift
      counter += 1
      end
      "#{word_array.join}" + "ay"
    elsif word[/\A[^aeiouAEIOU]{2}/]
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
    phrase = phrase.split(" ")
    phrase_array = []
    phrase.map do |word|
      phrase_array << piglatinize(word)
    end
    phrase_array.join(" ")
  end

end
