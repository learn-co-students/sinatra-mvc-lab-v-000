class PigLatinizer

  def piglatinize(word)
    letters = word.split("")
    vowels = ["a", "e", "i", "o", "u"]

    if word[0].scan(/[aeiouAEIOU]/).count == 0
      vowel_index = letters.each_index.detect {|i| vowels.include?(letters[i])}
      first_part = letters.drop(vowel_index)
      second_part = letters.shift(vowel_index)
      pig_latin = first_part.join("") + second_part.join("") + "ay"
    else
      pig_latin = word + "way"
    end
    pig_latin
  end

  def to_pig_latin(sentence)
    words = sentence.split(" ")
    pig_latin_words = words.collect {|w| piglatinize(w)}
    pig_latin_sentence = pig_latin_words.join(" ")
    pig_latin_sentence
  end



end
