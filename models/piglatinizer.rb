require 'pry'
class PigLatinizer

  def piglatinize(text)
    words = text.split(" ")
    piglatinized_words = []
    words.each{|word| piglatinized_words << piglatinize_word(word)}
    piglatinized_words.join(" ")
  end

  def piglatinize_word(word)
    letters = word.split('')
    piglatinized_word = word
    if vowel?(letters.first)
      piglatinized_word << "way"
    else
      consonants = letters[0]
      letters.delete_at(0)
      until vowel?(letters[0])
        consonants << letters[0]
        letters.delete_at(0)
      end
      piglatinized_word = letters.join
      piglatinized_word << consonants
      piglatinized_word << "ay"
    end

    piglatinized_word

  end

  def vowel?(letter)
    letter.downcase == "a" || letter.downcase == "e" || letter.downcase == "i" || letter.downcase == "o" || letter.downcase == "u"
  end

end
