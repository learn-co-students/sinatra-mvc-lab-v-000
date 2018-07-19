class PigLatinizer
  attr_accessor :words

# this is hideous need to refactor - barf
  def piglatinize(words)
    word = words.split(" ")

    word.map do |w|
      case w
      # three consonants
      when /(^[b-df-hj-np-tv-z]{3})/i
        three = w[0..2]
        w.slice!(0..2)
        w + three + "ay"
      # one consonant
      when /(^[b-df-hj-np-tv-z][aeiou])/i
        first = w[0]
        w.slice!(0)
        w + first + "ay"
      # two consonant
      when /(^[b-df-hj-np-tv-z]{2})/i
        two = w[0..1]
        w.slice!(0..1)
        w + two + "ay"
      # vowel
      when /(^[aeiou])/i
        w + "way"
      end
    end
    .join(" ")
  end

end # PigLatinizer
