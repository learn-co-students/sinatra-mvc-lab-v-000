class PigLatinizer
  attr_accessor :text
  attr_reader :piglatinize, :to_pig_latin

  def result
    words = @text.split(" ")
    words.collect! do |word|
      if ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"].include? word.chars[0]
        word = word + "way"
      else
        first_vowel = word.chars.detect {|el| ["a", "e", "i", "o", "u"].include?(el) }
        position = word.index(first_vowel)
        word = word.slice(position..word.length) + word.slice(0..position-1) + "ay"
      end
    end
    words.join(" ")
  end

  def piglatinize(input)
    word = input
    if ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"].include? word.chars[0]
      word = word + "way"
    else
      first_vowel = word.chars.detect {|el| ["a", "e", "i", "o", "u"].include?(el) }
      position = word.index(first_vowel)
      word = word.slice(position..word.length) + word.slice(0..position-1) + "ay"
    end
    word
  end

  def to_pig_latin(input)
    words = input.split(" ")
    words.collect! do |word|
      if ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"].include? word.chars[0]
        word = word + "way"
      else
        first_vowel = word.chars.detect {|el| ["a", "e", "i", "o", "u"].include?(el) }
        position = word.index(first_vowel)
        word = word.slice(position..word.length) + word.slice(0..position-1) + "ay"
      end
    end
    words.join(" ")
  end

end
