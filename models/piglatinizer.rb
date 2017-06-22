class PigLatinizer
  def initialize(text = "")
  end
  def to_pig_latin(sentence)
    sentence.split(" ").collect do |word|
      piglatinize(word)
    end.join(" ")
  end
  def piglatinize(word)
    p_latinized = word
    if(self.class.isFirstLetterAVowel?(word))
      p_latinized.concat("way")
    else
      p_latinized = self.class.moveFirstConsonantsToTheBack(p_latinized)
      p_latinized.concat("ay")
    end
    return p_latinized
  end

  private

  def self.moveFirstConsonantsToTheBack(word)
    w = String.new(word)
    for x in 0..word.size-1
      if(self.isVowel?(word[x]))
        break
      else
        w << word[x]
        w[0] = ""
      end
    end
    return w
  end
  def self.isFirstLetterAVowel?(word)
    return self.isVowel?(word[0])
  end
  def self.isVowel?(character)
    c = character.downcase
    return true if(c == "a" || c == "e" || c == "i" || c == "o" || c == "u")
    return false
  end
end
