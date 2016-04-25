class PigLatinizer

  def piglatinize(word)
    vowels = ['a','e','i','o','u']
    letters = word.downcase.split('')
    if vowels.include?(letters[0])
      word + "way"
    else
      parts = word.split(/([aeiou].*)/)
      parts.reverse.join('') + "ay"
    end
  end

  def to_pig_latin(sentence)
    words = sentence.split(" ")
    pig_words = words.collect do |word|
      piglatinize(word)
    end
    pig_words.join(" ")
  end

end
