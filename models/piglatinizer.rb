class PigLatinizer
  attr_accessor

  def initialize
  end

  def piglatinize(word)
    if word[0].upcase == "A" || word[0].upcase == "E" || 
      word[0].upcase == "I" || word[0].upcase == "O" || 
      word[0].upcase == "U"
      word << "way"
    else
      first_vowel = word.index(/([aeiou])/)
      word_start = word[0...first_vowel]
      word = word[first_vowel..-1] << "#{word_start}ay"
    end
    word
  end

  def to_pig_latin(sentence)
    string = ""
    sentence.split(" ").each do |x|
      string << "#{piglatinize(x)} "
    end
    string[0...-1]
  end

end