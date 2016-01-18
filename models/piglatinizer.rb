class PigLatinizer

  def piglatinize(word)
    if !word.scan(/\A[aeiou]/i).empty?
      word << "way"
    else
      slice = word.scan(/\A[^aeiou]+/i).first
      word.sub!(slice, "") << "#{slice}ay"
    end
  end

  def to_pig_latin(phrase)
    arr = phrase.chomp(".").split(" ")
    arr.map do |word|
      piglatinize(word)
    end.join(" ")
  end

end
