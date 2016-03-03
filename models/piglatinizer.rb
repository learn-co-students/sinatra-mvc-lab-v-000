class PigLatinizer

  def piglatinize(word)
    if word.length == 1 || word == "and" || word == "an" || word == "in"
      word
    elsif %w(a e i o u).include?(word[0])
      word << "ay"
    else
      if word[-1] == "."
        index = word =~ /[aeiou]/
        word.slice(index..-2) + word.slice(0..index-1) + "ay"
      else
        index = word =~ /[aeiou]/
        word.slice(index..-1) + word.slice(0..index-1) + "ay"
      end
    end
  end

  def to_pig_latin(phrase)
    phrase.split.collect do |word|
      piglatinize(word)
    end.join(" ")
  end

end
