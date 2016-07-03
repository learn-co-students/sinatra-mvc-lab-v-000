class PigLatinizer

  attr_accessor :text
  def initialize(text="")
    @text = text
  end

  def piglatinize(word)
    letters = word.split("")
    if letters[0..2].join.scan(/[bcdfghjklmnpqrstvwxyz]/).count == 3
      piglatin = letters[3..letters.count].join + letters[0..2].join + "ay"
    elsif letters[0].scan(/[bcdfghjklmnpqrstvwxyz]/) != [] && letters[1].scan(/[bcdfghjklmnpqrstvwxyz]/) != []
      piglatin = letters[2..letters.count].join + letters[0..1].join + "ay"
    elsif letters[0].scan(/[bcdfghjklmnpqrstvwxyz]/) != []
      piglatin = letters[1..letters.count].join + letters[0] + "ay"
    elsif ['a','e','i','o','u','A','E', 'I', "O", 'U'].include?(letters[0])
      piglatin = letters.join + 'way'
    end
    piglatin
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect {|word| piglatinize(word)}.join(" ")
  end

end