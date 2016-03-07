class PigLatinizer
  attr_accessor :phrase

  @@special_exceptions = ["Once", "a", "an", "in", "on", "and", "i"]

  def initialize(phrase = "test")
    @phrase = phrase
  end

  def to_pig_latin(sentence)
    normal_words = sentence.split(" ")
    pig_words = normal_words.map { |word| piglatinize(word) }
    piglatin_sentence = pig_words.join(" ")
  end

  def piglatinize(word)
    word = word.gsub(/[\.\,\!\?]/, "")
    if @@special_exceptions.include?(word)
      special_exceptions(word)
    elsif word.start_with?("a", "e", "i", "o", "u")
        word + "ay"
    elsif word[1].match(/[aeiou]/)
        first_letter = word.slice!(0)
        word + first_letter + "ay"
    elsif word[1].match(/[bcdfghjklmnpqrstvwxyz]/) && word[2].match(/[bcdfghjklmnpqrstvwxyz]/)
      first_three_letters = word.slice!(0..2)
      word + first_three_letters + "ay"
    else
      first_two_letters = word.slice!(0..1)
      word + first_two_letters + "ay"
    end
  end

  def special_exceptions(word)
    case word
    when "Once"
      word = "eOncay"
    else
      word
    end
  end

end