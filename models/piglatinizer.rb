class PigLatinizer
  attr_accessor :phrase

  def piglatinize(word)
    if !word[0].scan(/[aeiouAEIOU]/).empty?
      word + "way"
    else
      word_split = word.split(/([aeiouAEIOU].*)/)
      word_split.reverse.join + "ay"
    end
  end

  def to_pig_latin(phrase)
    #word_array = phrase.split(" ")
    #word_array.collect{|word| piglatinize(word)}.join(" ")
    phrase.split(" ").collect{|word| piglatinize(word)}.join(" ")
  end
end
