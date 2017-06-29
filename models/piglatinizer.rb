class PigLatinizer

  def piglatinize(word)
    parts = word.split(/([aeiouAEIOU].*)/)
    if !parts[0].empty?
      parts[1] + parts[0] + "ay"
    else
      parts[1]+"way"
    end
  end

  def to_pig_latin(sentence)
    words = sentence.split(" ")
    words.map {|word| self.piglatinize(word)}.join(" ")
  end
end
