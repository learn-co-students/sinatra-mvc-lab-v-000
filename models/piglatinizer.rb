require 'pry'
class PigLatinizer
  attr_reader :text

  def initialize()
  end

  def piglatinize(text)
    return_string = ""
    phrase = text.split(" ").each do |char|
      # test first letter as consonant
      x = char.scan(/\b[b-df-hj-np-tv-z]|[B-DG-HJ-NP-TV-Z]/)
      if x.size > 0
        return_string << char.split(/([aeiou].*)/).reverse.join() << "ay "
      else
        return_string << char + "way "
      end
    end
    return_string.rstrip!
  end

  def to_pig_latin(text)
    piglatinize(text)
  end
end
