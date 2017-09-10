class PigLatinizer

def piglatinize(word)

    vowels = ["a","e","i","o","u","A","E","I","O","U"]
    post_vowel = []

    if vowels.include?(word[0])
      word + "way"
    else
      until vowels.include?(word[0])
        post_vowel << word[0]
        word[0] = ""
      end
      word.split("")
      word = word +  post_vowel.join("")
      word + "ay"
    end
  end

  def to_pig_latin(sentence)
    array = sentence.split(" ").map do |word|
      piglatinize(word)
    end
    array.join(" ")
  end

end
