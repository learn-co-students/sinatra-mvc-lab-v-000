class PigLatinizer
  attr_accessor :phrase

  def initialize(phrase = nil)
    @phrase = phrase
  end

  def to_pig_latin(words)
    split_sentence = words.split(' ')
    piggy_array = []

    split_sentence.each do |word|
      piggy_array << piglatinize(word)
    end
    piggy_array.join(" ")
  end

  def piglatinize(word = nil)
    if word[0].match(/[aeiouAEIOU]/)
      word = word + "way"
    else
      word = word.split('')
      while word[0].match(/[^aeiouAEIOU]/)
        letter = word.shift
        word.push(letter)
      end
      word = word.join('') + "ay"
    end
    word
  end




end
