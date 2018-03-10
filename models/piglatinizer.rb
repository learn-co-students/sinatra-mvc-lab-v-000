class PigLatinizer
  attr_accessor :pl_words


  def to_pig_latin(words)
    words = words.split
    words.collect do |word|
      piglatinize(word)
    end.join(" ")
  end

  def piglatinize(word)
    if word.downcase  =~ /\A[aeiou]/
      vowel(word)
    elsif word.downcase =~ /\A(?i:(?![aeiou])[a-z]){3}/
      consonant(word, 3)
    elsif word.downcase =~ /\A(?i:(?![aeiou])[a-z]){2}/
      consonant(word, 2)
    else
      consonant(word, 1)
    end
  end

  def consonant(word, num)
    word = word[num..-1] + word[0..num-1]
    word += "ay"
  end

  def vowel(word)
    word += "way"
  end

end
