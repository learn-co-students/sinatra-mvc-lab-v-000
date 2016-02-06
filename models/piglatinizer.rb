class PigLatinizer
  def to_pig_latin(words)
    words.chomp!(".")
    split(words).collect do |w|
      piglatinize(w)
    end.join(" ")
  end

  def piglatinize(word)
    return word if !word.match(/[^AEIOUaeiou]/)
    back = word.slice!(/^[^AEIOUaeiou]+/)
    #return word if !back
    back = "" if !back
    word + back + "ay"
  end

  def split(words)
    words.split(" ")
  end
end
