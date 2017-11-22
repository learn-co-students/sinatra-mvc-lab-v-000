class PigLatinizer
  attr_reader :phrase


  def piglatinize(string)
    array_of_words = string.split

    array_of_words.map! do |word|
      if word.start_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
        word << "way"
      elsif word.start_with?("th", "ch", "sh", "sm", "pl", "pr", "wh", "sk", "Th", "Ch", "Sh", "Sm", "Pl", "Pr", "Wh", "Sk")
        word << word.slice!(0..1) + "ay"
      elsif word.start_with?("spr", "str", "Spr", "Str")
        word << word.slice!(0..2) + "ay"
      else
        word << word.slice!(0) + "ay"
      end
    end
    array_of_words.join(" ")
  end

  def to_pig_latin(string)
    self.piglatinize(string)
  end
end
