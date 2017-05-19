class PigLatinizer

  def to_pig_latin(phrase)
    phrase.split.collect {|word| self.piglatinize(word)}.join(" ")
  end

  def piglatinize(word)
    if slug = word.scan(/^[^AEIOUaeiou]{1,}/).first
      word.gsub(slug, "") + slug + "ay"
    else
      word + "way"
    end
  end
end

#First attempt at pig latin method:

def piglatinize(word)
  letters = word.scan(/[A-Za-z]/)


  if letters.count > 1 && letters[0..1].join.match(/[^AEIOUaeiou\s]{2}/)
    letters << letters.shift.downcase until letters.first.match(/[AEIOUaeiou]/)
    letters << "ay"
  elsif letters.first.match(/[^AEIOUaeiou\s]/)
    letters << "#{letters.shift.downcase}ay"
  else
    letters << "way"
  end

  letters.join
end
