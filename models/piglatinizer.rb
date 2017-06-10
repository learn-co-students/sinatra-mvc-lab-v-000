class PigLatinizer

  attr_accessor :words



  def piglatinize(word)
    if word =~ /\A[aeiouAEIOU]/
      word << 'way'
    else
      lead_consonants = word.scan(/\A[^aeiou][^aeiou]*/)[0] + "ay"
      word.gsub!(/\A[^aeiou][^aeiou]*/, "")
      word << lead_consonants
    end
  end

  def to_pig_latin(sentence)
    @words = sentence.split(" ")
    pigged_words = @words.map {|word| piglatinize(word)}
    pigged_words.join(" ")
  end
end
