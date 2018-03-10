class PigLatinizer

  def piglatinize(input)
    if input[0].match(/[aeiouAEIOU]/)
      input + "way"
    else
      split_word = input.split(/([aeiou].*)/)
      split_word[1] + split_word[0] + "ay"
    end
  end

  def to_pig_latin(words)
    sentence = []
    words.split.collect do |word|
      sentence << piglatinize(word)
    end
    sentence.join(" ")
  end

end