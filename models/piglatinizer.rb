class PigLatinizer

  def piglatinize(word)
    letter_array = word.split("")
    first_vowel = 0

    letter_array.each do |letter|
      if letter.downcase =~ /[aeiou]/
        break
      end
      first_vowel+= 1
    end

    if first_vowel == 0
      piglatin_word = word + "way"
    else
      piglatin_word = word[first_vowel..-1] + word[0..first_vowel-1] + "ay"
    end

    piglatin_word
  end

  def to_pig_latin(phrase)
    words = phrase.split(" ")
    words.collect!{|word| piglatinize(word)}.join(" ")
  end
end
