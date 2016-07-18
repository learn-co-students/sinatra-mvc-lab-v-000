require 'pry'
class PigLatinizer

  def piglatinize(word)
    if word =~ /^[aeiou]/i
      output = word << "way"
    else
      word_array = word.split("")
      while word_array[0] =~ /[b-df-hj-np-tv-z]/i
        first_letter = word_array.shift
        word_array << first_letter
      end
      output = word_array.join
      output << "ay"
    end
  end

  def to_pig_latin(phrase)
    phrase_array = phrase.split(" ")
    piglatinized_array = phrase_array.collect do |word|
      piglatinize(word)
    end
    piglatinized_array.join(" ")
  end
end
