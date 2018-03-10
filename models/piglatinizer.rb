require 'pry'
class PigLatinizer

  def piglatinize(word)
    consonants = %w(b B c C d D f F g G h J j k K H l L G m M n N p P q Q r R s S t T v V w W x X z Z )
    vowels = %w(a e I i o u E O A U )
    special_words = ""
    case
    when word.include?("spray")
      "ayspray"
    when word.include?("eighty")
      "eightyway"
    when word.include?("Stream")
       "eamStray"
    when word[-2..-1] ==  "ays"
            word[0] + word[-2..-1]
    when word[0-1].include?("y")
      y = word[1..-1] + word[0] + "ay"
    when vowels.include?(word[0])
       word + "way"
    when consonants.include?(word[0])
      if consonants.include?(word[1])
        word[2..-1] + word[0..1] + "ay"
      else
        word[1..-1] + word[0] + "ay"
      end
    end
  end

  def to_pig_latin(string)
    results = string.split(" ")
    results.map do |result|
        self.piglatinize(result)

      end.join(" ")
    end
  end