class PigLatinizer

  def piglatinize(word)
    if word =~ (/\A[aeiou]/i)
      word = word + 'way'
    elsif word =~ (/\A[^aeiou]/i)
      match = /\A[^aeiou]*/i.match(word)
       word = match.post_match + match.to_s + 'ay'
    end
    word
  end

  def to_pig_latin(text)
    words = text.split(" ")
    sentence = []

    words.each do |word|
    sentence << self.piglatinize(word)
    end

    sentence.join(" ")
  end

end
