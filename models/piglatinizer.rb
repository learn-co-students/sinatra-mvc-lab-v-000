class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    if !(word.downcase)[0].scan(/[aeiou]/).empty?
      word + 'way'
    else
      word[word.split(/[aeiou]/)[0].length..-1] + word.split(/[aeiou]/)[0] + 'ay'
    end
  end

  def to_pig_latin(words)
    words.split(' ').collect do |w|
      word = PigLatinizer.new
      word.piglatinize(w)
    end.join(' ')
  end
end
