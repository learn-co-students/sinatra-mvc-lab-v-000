require 'pry'
class PigLatinizer

  def piglatinize(text)
    @piglatin_words = []
    words = text.split(" ")
    words.each {|word| @piglatin_words << piglatinize_word(word)}
    @piglatin_words.join(" ")
  end

  def vowel?(char)
    char.downcase == "a" || char.downcase == "e" || char.downcase == "i" || char.downcase == "o" || char.downcase == "u"
  end

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    #words that start with vowels
    if vowel?(word[0])
      word = word + "way"
    #words that start with 3 consonants
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
      word << "ay"
    #words that start with 2 consonants
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
      word << "ay"
    #words that start with 1 consonant
    else
      word = word.slice(1..-1) + word.slice(0)
      word << "ay"
    end
  end

  def piglatinize_sentence(sentence)
    sentence.split.collect {|word| piglatinize_word(word) }.join(" ")
  end


end
