class PigLatinizer
  attr_accessor :word

  def piglatinize(word)
    new_word = word.split("")
    
    if new_word.first.match(/[AEIOUaeiou]/)
    "#{word}way"
    elsif new_word[2].match(/[AIOUaeiou]/)
      first = word.slice!(0..1)
      "#{word}#{first}ay"
    elsif word.slice(-2..-1) == "ay"
    "ay#{word}"
    elsif new_word[1] == "l"
      first = word.slice!(0..1)
      "#{word}#{first}ay"
    else
      first  = word.slice!(0)
       "#{word}#{first}ay"
    end
  end

  def to_pig_latin(string)
      string.split.collect{|word| piglatinize(word)}.join(" ")
  end


end
