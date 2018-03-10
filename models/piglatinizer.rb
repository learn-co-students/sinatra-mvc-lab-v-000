class PigLatinizer
  attr_accessor :text

  def piglatinize(word)
    first_vowel = word.index(/[aeiouAEIOU]/)
    if first_vowel == 0
      pig_word = word + "way"
    else
      before_vowel = word.slice(0, first_vowel)
      pig_word = word.slice(first_vowel, word.length - first_vowel) + before_vowel + "ay"
    end
  end

  def to_pig_latin(sentence)
    pig_words = []
    word_array = sentence.split
    word_array.each do |word|
      pig_words << piglatinize(word)
    end
    pig_sentence = pig_words.join(" ")
  end
end
