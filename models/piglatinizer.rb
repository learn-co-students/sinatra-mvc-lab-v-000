class PigLatinizer

  def piglatinize(word)
    not_pig_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    vowels = ["a", "e", "i", "o", "u"]
    punctuation = [".", ",", "!", ":", ";", "?"]
    word.split.pop if word[-1] == "."
    if punctuation.include?(word[-1])
      array = word.split("")
      array.pop
      word = array.join
    end
    if not_pig_words.include?(word)
      word
    elsif vowels.include?(word[0])
      word << "ay"
    else
      consonants = ""
        while !vowels.include?(word[0])
         consonants << word[0]
         word = word.split("")[1..-1].join
        end
       word + consonants + "ay"
    end
  end


  def to_pig_latin(text)
    text.split.collect {|word| piglatinize(word)}.join(" ")
  end
end
