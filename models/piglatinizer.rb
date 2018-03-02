require 'pry'

class PigLatinizer

  def to_pig_latin(sentence)
    words = sentence.split(" ")
    new_words = []
    words.select do |word|
    new_words <<  piglatinize(word)
    end
    new_words.join(" ")
end

  def piglatinize(word)
    first = word.scan(/\A[^aeiouAEIOU]+/)
    if first.empty?
      "#{word}way"
    else
      word.gsub(first[0], "") << first[0] + "ay"
    end
  end


end
