class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    final = ""
    if word[0].match(/[aeiou]/i)
      word = word + "way"
      final << word
    else
      letters = word.chars #word is now in seperate letters
      consonants = ''
      i = 0
      while !letters[i].match(/[aeiou]/) && i < letters.length-1
        consonants << letters[i]
        i += 1
      end
      word = word[consonants.length..-1] + consonants + "ay"
      final << word
    end
  end

  def to_pig_latin(text)
    sentence_array = text.split(" ").map do |word|  #["i", "love", "programming"]
      piglatinize(word)
    end
    sentence_array.join(" ")
  end

end
