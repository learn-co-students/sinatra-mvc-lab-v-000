class PigLatinizer

  attr_accessor :word

  def initialize
    @word = word
  end

  def piglatinize(word)
    if word.start_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
      word + "way"
    else
         removed_word = ""
       while !word.start_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
        removed_word << word.slice(0)
        word = word.split("")[1..-1].join
       end
     word + removed_word +
      "ay"
    end
  end

  def to_pig_latin(sentence)
    array = sentence.split(" ")
    new_sentence = []
      array.each do |word|
        new_sentence << self.piglatinize(word)
      end
    new_sentence.join(" ")
  end




end
