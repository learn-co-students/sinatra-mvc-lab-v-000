class PigLatinizer

  attr_accessor :word

  def to_pig_latin(string)
    stripped = string.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
    word_array = stripped.split(" ")
    pig_array = word_array.collect do |word|
      if word == "a"
        "a"
      elsif word == "and"
        "and"
      elsif word == "i"
        "i"
      else
        piglatinize(word)
      end 
    end
    pig_array.join(" ")
  end

  def piglatinize(word)
    reverse_word = word.split(/([aeiou].*)/).reverse.join+"ay"
  end

end