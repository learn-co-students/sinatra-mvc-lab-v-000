class PigLatinizer
  attr_accessor :phrase

  def initialize
  end


  def to_pig_latin(phrase)
    word_s = phrase.split(" ")
    word_s.collect do |w|
      self.piglatinize(w)
    end.join(" ")
  end

  def piglatinize(word)
    constants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".split("")
    letters = word.split("")
    if constants.include?(letters[0])
      while constants.include?(letters[0])
      	front_letter = letters.shift
      	letters << front_letter
      end
      letters << "ay"
    else
      letters << "way"
    end

    letters.join("")
  end
end
