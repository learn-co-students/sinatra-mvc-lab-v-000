class PigLatinizer

  def piglatinize(word)
      word_array = word.split('')
    while !%w(a e i o u).include?(word_array.first.downcase)
      word_array << word_array.shift
    end

    if word_array.join == word
      word_array << "w"
    end
    word_array << "ay"
    word_array.join
  end

  def to_pig_latin(phrase)
    piglatin_phrase = phrase.split.collect do |word|
      piglatinize(word)
    end
    piglatin_phrase.join(" ")
  end
end
