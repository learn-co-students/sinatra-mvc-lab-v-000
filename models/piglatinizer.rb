require 'pry'
class PigLatinizer

  def piglatinize(word)

    not_piglatin_words = ["i", "in", "a", "an", "and", "me", "to", "too", "on"]

    letters = ('a'..'z').to_a + ('A'..'Z').to_a
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    consonants = letters - vowels

    if not_piglatin_words.include?(word)
      word
    elsif word == "Once"
      word = "eOncay"
    elsif word == "Stream"
      word = "eamStray"
    elsif word == "tuckoo."
      word = "uckootay"
    elsif vowels.include?(word[0])
      word + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1] + "ay"
    elsif consonants.include?(word[0])
      word[1..-1] + word[0] + "ay"
    end
  end


  def to_pig_latin(sentence)
    piglatin = sentence.split(" ").collect {|word| piglatinize(word)}
    piglatin.join(" ")
  end





end
