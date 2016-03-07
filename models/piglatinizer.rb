class PigLatinizer
  attr_accessor :phrase

  @@special_exceptions = ["Once", "a", "an", "in", "on", "and"]

  def initialize(phrase = "test")
    @phrase = phrase
  end

  def to_pig_latin(sentence)
    normal_words = sentence.split(" ")
    pig_words = normal_words.map { |word| word.piglatinize }
    piglatin_sentence = pig_words.join(" ")
  end

  def piglatinize(word)
    if @@special_exceptions.include?(word)
      special_exceptions(word)
    else

      # regular rules: strip off the first letter (or first two if both are consonants), put on end, add "ay"
    end
  end

  def special_exceptions(word)
    case word
    when "Once"
      word = "eOncay"
    when "a" || "an" || "in" || "on" || "and"
      word
    end
  end


end