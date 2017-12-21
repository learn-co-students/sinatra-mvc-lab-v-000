class PigLatinizer
  attr_reader :text


def piglatinize(words)
  if words[0].match(/a|e|i|o|u|A|E|I|O|U/)
            words = words << "way"
  elsif words[0].match(/[bcdfghjklmnpqrstvwxyz]/) && words[1].match(/[bcdfghjklmnpqrstvwxyz]/)&& words[2].match(/[bcdfghjklmnpqrstvwxyz]/)
      words = words[3..-1]<<words[0..2]
      words << "ay"
  elsif words[0].match(/[bcdfghjklmnpqrstvwxyz]/) && words[1].match(/[bcdfghjklmnpqrstvwxyz]/)
    words = words[2..-1]<<words[0..1]
    words << "ay"
  else
    words = words[1..-1]<<words[0]
    words << "ay"
  end
  words
end

def to_pig_latin(words)
  words.split.collect{|word| piglatinize(word)}.join(" ")

end
end
