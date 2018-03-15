class PigLatinizer


  def begins_with_consonant?(text)
    vowels = ["A","a","e","E","i","I","o","O","u","U"]
    !vowels.include?(text)

  end

  def piglatinize(word)
    if !begins_with_consonant?(word)[0]
      word = word + "way"


    elsif begins_with_consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2) + "ay"


    elsif begins_with_consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3) + "ay"

    else word = word.slice(1..-1) + word.slice(0,2) + "ay"
    end
    word
  end

  def translate(sentence)
    sentence.split.collect { |word| piglatinize(word).join(" ")}
  end
end
