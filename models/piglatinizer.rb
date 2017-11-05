class PigLatinizer
#take a string, take the first letter + add 'ay'
attr_accessor :word

  def initialize
  end

  def piglatinize(string)
    if string[0].downcase.match(/a|e|i|o|u/)
      string << 'way'
    elsif
      string[0].downcase.match(/[bcdfghjklmnpqrstvwxyz]/) && string[1].downcase.match(/[bcdfghjklmnpqrstvwxyz]/) && string[2].downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
      step1 = string.slice!(0..2)
      pig = "#{string}" + "#{step1}" + "ay"
    elsif
      string[0].downcase.match(/[bcdfghjklmnpqrstvwxyz]/) && string[1].downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
      step1 = string.slice!(0..1)
      pig = "#{string}" + "#{step1}" + "ay"
    else
      step1 = string.slice!(0)
      pig = "#{string}" + "#{step1}" + "ay"
    end
  end

  def to_pig_latin(sentence)
    words = sentence.split(" ")
    word_pig = piglatinize(words[0])
    words[1..-1].each { |word|
      word_pig << " " + piglatinize(word)
    }
    word_pig
  end
end
