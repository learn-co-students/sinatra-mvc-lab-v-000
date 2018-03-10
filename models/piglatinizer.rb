class PigLatinizer
  attr_accessor :phrase
  @@vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]



  def to_pig_latin(phrase)
    words = phrase.split(" ")
    words.collect! do |word|
      latinize_word(word)
    end
    final_phrase = words.join(" ")
  end

  def piglatinize(word)
    latinize_word(word)
  end

  def latinize_word(word)
    if @@vowels.include?(word[0])
      word << "way"
      return word
    elsif @@vowels.include?(word[1])
      letter_array = word.split("")
      consonant = letter_array.shift()
      letter_array << consonant
      letter_array << "ay"
      word = letter_array.join("")
      return word
    elsif @@vowels.include?(word[2])
      letter_array = word.split("")
      consonant1 = letter_array.shift()
      consonant2 = letter_array.shift()
      letter_array << consonant1
      letter_array << consonant2
      letter_array << "ay"
      word = letter_array.join("")
    else
      letter_array = word.split("")
      consonant1 = letter_array.shift()
      consonant2 = letter_array.shift()
      consonant3 = letter_array.shift()
      letter_array << consonant1
      letter_array << consonant2
      letter_array << consonant3
      letter_array << "ay"
      word = letter_array.join("")
      return word
    end
  end


end
