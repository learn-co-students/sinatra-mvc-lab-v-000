require 'pry'
class PigLatinizer


 @@non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]



  def piglatinize(word)

    if word =~ /\A[^aeiou]/
      consonants = ""
      while word =~ /\A[^aeiou]/
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + 'ay'
    elsif @@non_pig_latin_words.include?(word)
      word
    else
      word << 'yay'
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end





end
