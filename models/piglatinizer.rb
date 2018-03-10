class PigLatinizer

  def piglatinize(word)
    if %w(A E I O U a e i o u).include? word[0]
      word + "way"
    else
      parts = word.split(/([aeiou].*)/)
      parts[1] + parts[0] + "ay"
    end
  end

  def to_pig_latin(sentence)
    words = sentence.split(" ")
    words.collect! do |word|
      piglatinize(word)
    end
    words.join(" ")
  end
end