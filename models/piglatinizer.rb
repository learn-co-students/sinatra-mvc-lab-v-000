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
    first = word.scan(/\A[^aeiouAEIOU]+/).join('')
    if first.empty?
      "#{word}way"
    elsif word.start_with?(first)
      prefix = word.slice!(0, first.length)
      word << prefix << "ay" 
    end
  end

end
