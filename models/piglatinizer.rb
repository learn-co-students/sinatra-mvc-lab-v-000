
class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    letters = word.split('')
    if letters[0].downcase.match(/[aeoui]/)
      letters << ['w', 'a', 'y']
    else
      until letters[0].downcase.match(/[aeoui]/)
        letters.rotate!
      end
      letters << ['a', 'y']
    end
    letters.join
  end

  def to_pig_latin(words)
    translation = []
    words.split(" ").each do |word|
      translation << piglatinize(word)
    end
    translation.join(" ")
  end

end
